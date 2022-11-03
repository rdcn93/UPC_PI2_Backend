using Azure.Storage.Blobs;
using Azure.Storage.Blobs.Models;
using ClosedXML.Excel;
using DocumentFormat.OpenXml.Office2013.Drawing.ChartStyle;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.StaticFiles;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Auth;
using Microsoft.WindowsAzure.Storage.Blob;
using PremierBeef.Application.Services.Archivo;
using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Entities.Constantes;
using PremierBeef.Core.Entities;
using PremierBeef.Mail;
using System.ComponentModel;
using System.Data;
using System.Net.Http;
using System.Net.Http.Headers;
using static PremierBeef.Core.Entities.Constantes.Constantes;
using PremierBeef.Application.Services.Migracion;
using PremierBeef.Application.InputModel;
using Newtonsoft.Json;
using System.Text;
using System.Security.Cryptography.Xml;
using System.Security.Policy;
using System;
using DocumentFormat.OpenXml.Wordprocessing;
using static ClosedXML.Excel.XLPredefinedFormat;

namespace PremierBeef.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [Route("api/[controller]")]
    [ApiController]
    public class ArchivosController : Controller
    {
        private readonly IConfiguration _config;
        private readonly IArchivoService _archivoService;
        private readonly IMigracionService _migracionService;

        public ArchivosController(IConfiguration configuration
            , IArchivoService archivoService,
            IMigracionService migracionService
            )
        {
            _config = configuration;
            _archivoService = archivoService;
            _migracionService = migracionService;
        }

        [HttpPost]
        public async Task<IActionResult> Upload(IList<IFormFile> files)
        {
            string connStrBlobStorage = _config["AzureBlobStorage:ConnectionString"];
            string containerName = _config["AzureBlobStorage:ContainerVentas"];
            List<string> messages = new List<string>();

            var formCollection = await Request.ReadFormAsync();
            var filesForm = formCollection.Files;

            BlobContainerClient blobContainerClient = new BlobContainerClient(connStrBlobStorage, containerName);
            foreach (IFormFile file in filesForm) //files
            {
                var extension = Path.GetExtension(file.FileName);
                if (extension.ToLower() != ".xlsx")
                {
                    messages.Add("Solo se pueden cargar archivos de tipo .xls o .xlsx");
                    continue;
                }

                using (var stream = new MemoryStream())
                {
                    try
                    {
                        await file.CopyToAsync(stream);
                        stream.Position = 0;
                        var response = await blobContainerClient.UploadBlobAsync(file.FileName, stream);

                        int addMigracion = await _migracionService.AddMigracion(new MigracionModel()
                        {
                            nombreArchivo = file.FileName,
                            rutaArchivo = "",
                            tipoArchivo = 0,
                            estado = (int)Constantes.MigracionEstados.Registrado
                        });


                    }
                    catch (Exception ex)
                    {
                        messages.Add("Ocurrio un error al cargar el archivo " + file.FileName + ", posiblemente ya existe");
                    }
                }
            }

            if (messages.Count == 0)
                return Ok();
            else
                return StatusCode(500, messages);
        }

        
        //[HttpPost, DisableRequestSizeLimit]
        ////[Route("upload")]
        //public async Task<IActionResult> Upload()
        //{
        //    try
        //    {
        //        var formCollection = await Request.ReadFormAsync();
        //        var file = formCollection.Files.First();
        //        var folderName = Path.Combine("Resources", "Images");
        //        var pathToSave = Path.Combine(Directory.GetCurrentDirectory(), folderName);
        //        if (file.Length > 0)
        //        {
        //            var fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
        //            var fullPath = Path.Combine(pathToSave, fileName);
        //            var dbPath = Path.Combine(folderName, fileName);
        //            using (var stream = new FileStream(fullPath, FileMode.Create))
        //            {
        //                file.CopyTo(stream);
        //            }

                    //Core.Entities.MigracionArchivo newArchivo = new Core.Entities.MigracionArchivo() { 
                    //    nombre = "",
                    //    rutaArchivo = dbPath,
                    //    fecRegistro = DateTime.Now,
                    //    idUsuario = 0
                    //};

        //            //int archivoId = await _migracionService.AddMigracionArchivo(newArchivo);

        //            return Ok(new { dbPath });
        //        }
        //        else
        //        {
        //            return BadRequest();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        return StatusCode(500, $"Internal server error: {ex}");
        //    }
        //}

        [HttpGet]
        public async Task<IActionResult> GetArchivos()
        {
            string connStrBlobStorage = _config["AzureBlobStorage:ConnectionString"];
            string containerName = _config["AzureBlobStorage:ContainerVentas"];
            string containerNameHistory = _config["AzureBlobStorage:ContainerVentasHistory"];
            List<string> archivos = new List<string>();
            List<ArchivoViewModel> listArchivos = new List<ArchivoViewModel>();
            List<MigracionViewModel> listMigraciones = new List<MigracionViewModel>();

            try
            {
                BlobServiceClient blobServiceClient = new BlobServiceClient(connStrBlobStorage);
                BlobContainerClient containerClient = blobServiceClient.GetBlobContainerClient(containerName);

                // List all blobs in the container
                await foreach (BlobItem blobItem in containerClient.GetBlobsAsync())
                {
                    //Console.WriteLine("\t" + blobItem.Name);
                    archivos.Add(blobItem.Name);

                    listArchivos.Add(new ArchivoViewModel() { 
                        id = 0,
                        nombre = blobItem.Name,
                        rutaArchivo = ""
                    });
                }

                BlobContainerClient containerClientHistory = blobServiceClient.GetBlobContainerClient(containerNameHistory);

                // List all blobs in the container
                await foreach (BlobItem blobItem in containerClientHistory.GetBlobsAsync())
                {
                    //Console.WriteLine("\t" + blobItem.Name);
                    archivos.Add(blobItem.Name);

                    listArchivos.Add(new ArchivoViewModel()
                    {
                        id = 0,
                        nombre = blobItem.Name,
                        rutaArchivo = ""
                    });
                }

                listMigraciones = await _migracionService.GetMigraciones();

                return Ok(listMigraciones);
            }
            catch (Exception)
            {
                return StatusCode(500, "Something went wrong, internal Server Error");
            }
        }

        [HttpGet("DownloadFile")]
        public async Task<IActionResult> DownloadFile([FromQuery] string fileName)
        {
            string connStrBlobStorage = _config["AzureBlobStorage:ConnectionString"];
            string containerName = _config["AzureBlobStorage:ContainerVentas"];
            CloudBlockBlob blockBlob;
            await using (MemoryStream memoryStream = new MemoryStream())
            {
                CloudStorageAccount cloudStorageAccount = CloudStorageAccount.Parse(connStrBlobStorage);
                CloudBlobClient cloudBlobClient = cloudStorageAccount.CreateCloudBlobClient();
                CloudBlobContainer cloudBlobContainer = cloudBlobClient.GetContainerReference(containerName);
                blockBlob = cloudBlobContainer.GetBlockBlobReference(fileName);
                await blockBlob.DownloadToStreamAsync(memoryStream);
            }

            Stream blobStream = blockBlob.OpenReadAsync().Result;
            return File(blobStream, blockBlob.Properties.ContentType, blockBlob.Name);
        }

        [HttpGet, DisableRequestSizeLimit]
        [Route("download")]
        public async Task<IActionResult> Download([FromQuery] string fileName)
        {
            var filePath = Path.Combine(Directory.GetCurrentDirectory(), fileName);

            if (!System.IO.File.Exists(filePath))
                return NotFound();

            var memory = new MemoryStream();
            await using (var stream = new FileStream(filePath, FileMode.Open))
            {
                await stream.CopyToAsync(memory);
            }
            memory.Position = 0;

            return File(memory, GetContentType(filePath), filePath);
        }

        private string GetContentType(string path)
        {
            var provider = new FileExtensionContentTypeProvider();
            string contentType;

            if (!provider.TryGetContentType(path, out contentType))
            {
                contentType = "application/octet-stream";
            }

            return contentType;
        }

        [HttpDelete("{fileName}")]
        public async Task<IActionResult> DeleteFile(string fileName)
        {
            string connStrBlobStorage = _config["AzureBlobStorage:ConnectionString"];
            string containerName = _config["AzureBlobStorage:ContainerVentas"];
            CloudStorageAccount cloudStorageAccount = CloudStorageAccount.Parse(connStrBlobStorage);
            CloudBlobClient cloudBlobClient = cloudStorageAccount.CreateCloudBlobClient();
            CloudBlobContainer cloudBlobContainer = cloudBlobClient.GetContainerReference(containerName);
            var blob = cloudBlobContainer.GetBlobReference(fileName);
            var response = await blob.DeleteIfExistsAsync();
            

            if (response)
            {
                var objMigracion = _migracionService.GetMigracionByArchivo(fileName);

                if(objMigracion != null)
                {
                    bool delete = await _migracionService.RemoveMigracion(objMigracion.Id);
                }

                return Ok();
            }
            else
            {
                return StatusCode(500, "Ocurrió un error al eliminar el archivo");
            }                
        }
        [HttpPost]
        [Route("ProcesarMigracion")]
        public async Task<IActionResult> ProcesarMigracion()
        {
            string apiBasicUri = _config["AzureFunctions:AzureFunctionURL"];
            List<MigracionDetails> listMigracion = new List<MigracionDetails>();

            listMigracion.Add(new MigracionDetails() { FileName = "" });

            using (var client = new HttpClient())
            {
                try
                {
                    client.BaseAddress = new Uri(apiBasicUri);
                    var content = new StringContent(JsonConvert.SerializeObject(listMigracion), Encoding.UTF8, "application/json");

                    //var result = client.PostAsync(apiBasicUri, content);

                    //var response = client.GetAsync(apiBasicUri);

                    var result = await client.PostAsync(apiBasicUri, content);
                    var restrt = result.EnsureSuccessStatusCode();

                    if(restrt.StatusCode == System.Net.HttpStatusCode.OK)
                        return Ok();
                    else
                        return BadRequest("Ocurrió un error en el servicio de Migración");
                }
                catch (Exception)
                {
                    return BadRequest("Ocurrió un error al ejecutar el ProcesarMigracion");
                }
            }
        }
    }

    partial class MigracionDetails
    {
        [JsonProperty("FileName")]
        public string FileName { get; set; }
    }
}
