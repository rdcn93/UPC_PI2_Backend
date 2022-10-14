using Azure.Storage.Blobs;
using Azure.Storage.Blobs.Models;
using ClosedXML.Excel;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Auth;
using Microsoft.WindowsAzure.Storage.Blob;
using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Security;
using PremierBeef.Application.Services.Usuario;
using PremierBeef.Mail;
using System.Data;

namespace PremierBeef.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [Route("api/[controller]")]
    [ApiController]
    public class ArchivosController : Controller
    {
        private readonly IConfiguration _config;
        private string connStrBlobStorage = "";
        private string containerName = "";

        public ArchivosController(IConfiguration configuration)
        {
            _config = configuration;
            connStrBlobStorage = _config["AzureBlobStorage:ConnectionString"];
            containerName = _config["AzureBlobStorage:NameContainer"];
        }

        [HttpPost]
        public async Task<IActionResult> Upload(IList<IFormFile> files)
        {
            List<string> messages = new List<string>();

            BlobContainerClient blobContainerClient = new BlobContainerClient(connStrBlobStorage, containerName);
            foreach (IFormFile file in files)
            {
                using (var stream = new MemoryStream())
                {
                    try
                    {
                        await file.CopyToAsync(stream);
                        stream.Position = 0;
                        var response = await blobContainerClient.UploadBlobAsync(file.FileName, stream);
                    }
                    catch (Exception ex)
                    {
                        messages.Add("Ocurrio un error al cargar el archivo " + file.FileName + ", posiblemente ya existe");
                    }                    
                }
            }

            if (messages.Count == 0)
                return Ok("Se cargaron los archivos correctamente");
            else
                return StatusCode(500, messages);

            
        }

        [HttpGet]
        public async Task<IActionResult> GetArchivos()
        {
            List<string> archivos = new List<string>();            

            try
            {
                BlobServiceClient blobServiceClient = new BlobServiceClient(connStrBlobStorage);
                BlobContainerClient containerClient = blobServiceClient.GetBlobContainerClient(containerName);

                // List all blobs in the container
                await foreach (BlobItem blobItem in containerClient.GetBlobsAsync())
                {
                    //Console.WriteLine("\t" + blobItem.Name);
                    archivos.Add(blobItem.Name);
                }

                return Ok(archivos);
            }
            catch (Exception)
            {
                return StatusCode(500, "Something went wrong, internal Server Error");
            }
        }

        [HttpPost("DownloadFile")]
        public async Task<IActionResult> DownloadFile(string fileName)
        {
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

        [HttpDelete]
        public async Task<IActionResult> DeleteFile(string fileName)
        {
            CloudStorageAccount cloudStorageAccount = CloudStorageAccount.Parse(connStrBlobStorage);
            CloudBlobClient cloudBlobClient = cloudStorageAccount.CreateCloudBlobClient();
            CloudBlobContainer cloudBlobContainer = cloudBlobClient.GetContainerReference(containerName);
            var blob = cloudBlobContainer.GetBlobReference(fileName);
            var response = await blob.DeleteIfExistsAsync();

            if(response)
                return Ok("Archilo Eliminado");
            else
                return StatusCode(500, "Ocurrió un error al eliminar el archivo");

        }
    }
}
