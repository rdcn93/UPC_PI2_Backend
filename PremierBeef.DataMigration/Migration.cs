using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System.Collections.Generic;
using Azure.Storage.Blobs;
using ClosedXML.Excel;
using System.Data;
using Azure.Storage.Blobs.Models;
using Microsoft.WindowsAzure.Storage.Blob;
using Microsoft.WindowsAzure.Storage;
using PremierBeef.Core.Interfaces;
using PremierBeef.Core.Entities;
using PremierBeef.Infrastructure.Repository;
using System.Linq;
using DocumentFormat.OpenXml.Math;
using DocumentFormat.OpenXml.Spreadsheet;
using System.Globalization;
using DocumentFormat.OpenXml.Presentation;
using PremierBeef.Core.Entities.Constantes;
using static PremierBeef.Core.Entities.Constantes.Constantes;

namespace PremierBeef.DataMigration
{

    public class Migration
    {
        private readonly IProductoRepository _productoRepository;
        private readonly IClienteRepository _clienteRepository;
        private readonly IVentaRepository _ventaRepository;
        private readonly IPedidoRepository _pedidoRepository;
        private readonly ITipoComprobanteRepository _tipoComprobanteRepository;
        private readonly IUsuarioRepository _usuarioRepository;
        private readonly IAlmacenRepository _almacenRepository;
        private readonly ITipoDocumentoRepository _tipoDocumentoRepository;
        private readonly ICategoriaRepository _categoriaRepository;
        private readonly IProveedorRepository _proveedorRepository;
        private readonly IMigracionRepository _migracionRepository;

        public Migration(IProductoRepository productoRepository, 
            IPedidoRepository pedidoRepository,
            IClienteRepository clienteRepository,
            IVentaRepository ventaRepository,
            ITipoComprobanteRepository tipoComprobanteRepository,
            IUsuarioRepository usuarioRepository,
            IAlmacenRepository almacenRepository,
            ITipoDocumentoRepository tipoDocumentoRepository,
            ICategoriaRepository categoriaRepository,
            IProveedorRepository proveedorRepository,
            IMigracionRepository migracionRepository
            )
        {
            _productoRepository = productoRepository;
            _pedidoRepository = pedidoRepository;
            _clienteRepository = clienteRepository;
            _ventaRepository = ventaRepository;
            _tipoComprobanteRepository = tipoComprobanteRepository;
            _usuarioRepository = usuarioRepository;
            _almacenRepository = almacenRepository;
            _tipoDocumentoRepository = tipoDocumentoRepository;
            _categoriaRepository = categoriaRepository;
            _proveedorRepository = proveedorRepository;
            _migracionRepository = migracionRepository;
        }

        [FunctionName("Migration")]
        public async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", "post", Route = null)] HttpRequest req,
            //[TimerTrigger("0 0 7 * * 1-5")] TimerInfo myTimer,
            ILogger log)
        {
            log.LogInformation("C# HTTP trigger function processed a request to process information.");
            
            try
            {
                #region
                //// Create blank request body
                //string requestBody = String.Empty;

                //// Populate request body
                //using (StreamReader streamReader = new StreamReader(req.Body))
                //{
                //    requestBody = await streamReader.ReadToEndAsync();
                //}

                //log.LogInformation("Request body received.");

                //// Convert JSON string to object
                //var data = JsonConvert.DeserializeObject<InputData>(requestBody.ToString());

                //log.LogInformation("JSON deserialised and parsed through model.");
                #endregion

                var stream = await ReadTemplateFromBlobAsync();

                // Create new list of PersonalData and populate with InputData
                //List<PersonalDetails> personalDetailsList = data.PersonalDetails;

                // Create response
                //var response = req.HttpContext.Response;
                //response.ContentType = "application/json";

                // Create stream writer and memory stream
                //using StreamWriter streamWriter = new StreamWriter(response.Body);

                return new OkObjectResult("");

            }
            catch (Exception e)
            {
                log.LogInformation($"Error processing information: {e.Message}");
                
                return new BadRequestObjectResult(e.Message + "-----------" +e.InnerException+ "-------" + e.StackTrace + "-----------------" + e.Source);
            }
        }

        public async Task<bool> ReadTemplateFromBlobAsync()
        {
            string connectionString = GetEnvironmentVariable("BlobStorageConnectionString");
            string container = GetEnvironmentVariable("ContainerVentas");
            bool result = false;


            BlobServiceClient blobServiceClient = new BlobServiceClient(connectionString);
            BlobContainerClient containerClient = blobServiceClient.GetBlobContainerClient(container);

            // List all blobs in the container
            foreach (BlobItem blobItem in containerClient.GetBlobs())
            {
                Console.WriteLine(blobItem.Name);

                MemoryStream memoryStream = new MemoryStream();
                var blob = containerClient.GetBlobClient(blobItem.Name);

                blob.DownloadTo(memoryStream);

                string archivo = "";
                int tipoArchivo = 0;
                if (blobItem.Name.ToUpper().Contains("VENTA"))
                {
                    archivo = "Ventas";
                    tipoArchivo = (int)Constantes.TipoArchivos.Ventas;
                }                    
                else if (blobItem.Name.ToUpper().Contains("PRODUCTO"))
                {
                    archivo = "Productos";
                    tipoArchivo = (int)Constantes.TipoArchivos.Productos;
                }

                int idMigracion = 0;

                var objMigracion = await _migracionRepository.GetMigracionByArchivo(blobItem.Name);

                if(objMigracion != null)
                {
                    if(objMigracion.estado == (int)Constantes.MigracionEstados.Registrado || objMigracion.estado == (int)Constantes.MigracionEstados.Iniciado)
                    {
                        idMigracion = objMigracion.id;

                        bool updMigracion = await _migracionRepository.UpdateMigracion(new Migracion()
                        {
                            id = objMigracion.id,
                            nombreArchivo = blobItem.Name,
                            rutaArchivo = container,
                            fecInicio = DateTime.Now,
                            tipoArchivo = tipoArchivo,
                            estado = (int)Constantes.MigracionEstados.Iniciado
                        });

                        var excelStream = await PopulateExcelTable(memoryStream, archivo, idMigracion);

                        var resulMove = await MoveFileToLogContainer(blobItem.Name);
                    }
                }                
            }

            return result;
        }

        public async Task<bool> PopulateExcelTable(MemoryStream stream, string archivo, int idMigracion)
        {
            bool result = false;
            
            using (XLWorkbook workBook = new XLWorkbook(stream))
            {
                foreach (IXLWorksheet workSheet in workBook.Worksheets)
                {
                    //Create a new DataTable.
                    DataTable dt = new DataTable();

                    //Loop through the Worksheet rows.
                    bool firstRow = true;
                    foreach (IXLRow row in workSheet.Rows())
                    {
                        //Use the first row to add columns to DataTable.
                        if (firstRow)
                        {
                            foreach (IXLCell cell in row.Cells())
                            {
                                dt.Columns.Add(cell.Value.ToString());
                            }
                            firstRow = false;
                        }
                        else
                        {
                            //Add rows to DataTable.
                            dt.Rows.Add();
                            int i = 0;
                            foreach (IXLCell cell in row.Cells())
                            {
                                dt.Rows[dt.Rows.Count - 1][i] = cell.Value.ToString();
                                i++;
                            }
                        }
                    }

                    bool resultProccess = await ProccessSheet(dt, archivo, workSheet.Name, idMigracion);
                }                
            }

            MemoryStream memoryStream = stream;

            // Return stream
            return result;
        }

        public async Task<bool> MoveFileToLogContainer(string archivo)
        {
            bool result = false;
            string connectionString = GetEnvironmentVariable("BlobStorageConnectionString");
            string container = GetEnvironmentVariable("ContainerVentas");
            string containerHistory = GetEnvironmentVariable("ContainerVentasHistory");

            CloudStorageAccount sourceStorageConnectionString = CloudStorageAccount.Parse(connectionString);
            CloudStorageAccount destinationStorageConnectionString = CloudStorageAccount.Parse(connectionString);

            CloudBlobClient sourceCloudBlobClient = sourceStorageConnectionString.CreateCloudBlobClient();
            CloudBlobClient targetCloudBlobClient = destinationStorageConnectionString.CreateCloudBlobClient();

            //Get source and destination container name from app.config
            CloudBlobContainer sourceContainer = sourceCloudBlobClient.GetContainerReference(container);
            CloudBlobContainer destinationContainer = targetCloudBlobClient.GetContainerReference(containerHistory);

            //Get source blob name from app.config
            string blobName = archivo;

            //Create container into blob if not exists
            var created = await destinationContainer.CreateIfNotExistsAsync();

            Console.WriteLine("Started moving blob: " + blobName + " from container " + sourceContainer.Name + "  to " + destinationContainer.Name);

            CloudBlockBlob sourceBlob = sourceContainer.GetBlockBlobReference(blobName);
            CloudBlockBlob targetBlob = destinationContainer.GetBlockBlobReference(blobName);

            //copy blob from source to destination
            targetBlob.StartCopyAsync(sourceBlob).Wait();

            //check if blob exists into destination container
            bool exist = await targetBlob.ExistsAsync();
            bool eliminarArchivo = false;
            if (exist && eliminarArchivo)
            {
                //Delete blob from source container
                sourceBlob.DeleteAsync().Wait();
            }

            return result;
        }

        public async Task<bool> ProccessSheet(DataTable dt, string archivo, string sheet, int idMigracion)
        {
            //obtener clientes
            var lstClientes = await _clienteRepository.GetClientes();
            //obtener tipo comprbante
            var lstTipoComprobante = await _tipoComprobanteRepository.GetTipoComprobantes();
            //obtener usuarios
            var lstUsuario = await _usuarioRepository.GetUsuarios();
            //obtener almacenes
            var lstAlmacen = await _almacenRepository.GetAlmacens();
            //obtener tipo documento
            var lstTipoDocumento = await _tipoDocumentoRepository.GetTipoDocumentos();
            //obtener categorias
            var lstCategorias = await _categoriaRepository.GetCategorias();
            //obtener proveedores
            var lstProveedores = await _proveedorRepository.GetProveedores();


            bool result = false;
            List<Venta> ventas = new List<Venta>();
            int totalFilas = dt.Rows.Count;
            int totalRegistradas = 0;
            int totalObservadas = 0;

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                try
                {
                    if (archivo == "Ventas")
                    {
                        string nroDocumento = dt.Rows[i]["DOCUMENTO"].ToString();
                        string nombreCliente = dt.Rows[i]["CLIENTE"].ToString();
                        int idAlmacen = lstAlmacen.FirstOrDefault().id;

                        #region Obtener Tipo Comprobante
                        int idTipCompr = 0;
                        var objTipCompr = lstTipoComprobante.Where(x => x.nombre.ToUpper().Equals(sheet.ToUpper())).FirstOrDefault();
                        idTipCompr = objTipCompr != null ? objTipCompr.id : 0;
                        #endregion

                        #region Obtener Cliente
                        int idCliente = 0;
                        int idTipoDocumento = 0;
                        var objCli = await _clienteRepository.GetClienteByNroDocumento(new Cliente() { numeroDocumento = nroDocumento });

                        if (objCli == null)
                        {
                            string newNombre = "";
                            string newApePaterno = "";
                            string newApeMaterno = "";

                            idTipoDocumento = lstTipoDocumento.Where(x => x.longitudNumeroDocumento == nroDocumento.Length).FirstOrDefault().id;

                            if (nroDocumento.Length == 11)
                            {
                                newNombre = nombreCliente;
                            }
                            else
                            {
                                #region
                                string[] nombreCompleto = nombreCliente.Split(" ");

                                switch (nombreCompleto.Length)
                                {
                                    case 1:
                                        {
                                            newNombre = nombreCompleto[0];
                                            break;
                                        }
                                    case 2:
                                        {
                                            newNombre = nombreCompleto[0];
                                            newApePaterno = nombreCompleto[1];
                                            break;
                                        }
                                    case 3:
                                        {
                                            newNombre = nombreCompleto[0];
                                            newApePaterno = nombreCompleto[1];
                                            newApeMaterno = nombreCompleto[2];
                                            break;
                                        }
                                    case 4:
                                        {
                                            newNombre = nombreCompleto[0] + " " + nombreCompleto[1];
                                            newApePaterno = nombreCompleto[2];
                                            newApeMaterno = nombreCompleto[3];
                                            break;
                                        }
                                    default:
                                        {
                                            newNombre = nombreCliente;
                                            break;
                                        }
                                }
                                #endregion
                            }

                            Cliente newCli = new Cliente()
                            {
                                nombre = newNombre,
                                apePaterno = newApePaterno,
                                apeMaterno = newApeMaterno,
                                telefono = "",
                                direccion = "",
                                correo = "",
                                estado = true,
                                enviarPromociones = false,
                                idTipoDocumento = idTipoDocumento,
                                numeroDocumento = nroDocumento,
                                fecRegistro = DateTime.Now,
                                fecModificacion = DateTime.Now
                            };

                            var resultNewCli = await _clienteRepository.AddCliente(newCli);
                            idCliente = resultNewCli;
                        }
                        else
                            idCliente = objCli.id;
                        #endregion

                        #region Obtener Usuario
                        var objUsu = await _usuarioRepository.GetUsuarioByUsuario("usuariomigracion");
                        #endregion

                        string comprobanteVenta = dt.Rows[i]["SERIE"].ToString() + "-" + dt.Rows[i]["NUMERO"].ToString();

                        var venta = await _ventaRepository.GetVentaByComprobante(comprobanteVenta);

                        DateTime fechaVenta = DateTime.ParseExact(dt.Rows[i]["FECHA EMISION"].ToString(), "dd-MM-yyyy", CultureInfo.CreateSpecificCulture("es"));

                        if (venta == null)
                        {
                            var pedido = await _pedidoRepository.GetPedidoByComprobante(comprobanteVenta);

                            int idPedido = 0;

                            if (pedido == null)
                            {
                                Pedido newPedido = new Pedido()
                                {
                                    direccionEnvio = "",
                                    estado = 1,
                                    idUsuario = objUsu.id,
                                    idCliente = idCliente,
                                    idAlmacenPedido = idAlmacen,
                                    fecRegistro = DateTime.Now,
                                    fecModificacion = DateTime.Now
                                };

                                var newIdPedido = await _pedidoRepository.AddPedido(newPedido);
                                idPedido = newIdPedido;
                            }
                            else
                            {
                                idPedido = pedido.id;
                            }

                            Venta newVenta = new Venta()
                            {
                                idPedido = idPedido,
                                comprobanteVenta = comprobanteVenta,
                                fecVenta = fechaVenta,
                                idTipoComprobante = idTipCompr,
                                serieComprobante = dt.Rows[i]["SERIE"].ToString(),
                                numeroComprobante = dt.Rows[i]["NUMERO"].ToString(),
                                importeGrabado = dt.Rows[i]["BASE GRAVADA"].ToString() != "" ? Convert.ToDecimal(dt.Rows[i]["BASE GRAVADA"].ToString()) : 0,
                                importeIGV = dt.Rows[i]["IGV"].ToString() != "" ? Convert.ToDecimal(dt.Rows[i]["IGV"].ToString()) : 0,
                                importeTotal = dt.Rows[i][8].ToString() != "" ? Convert.ToDecimal(dt.Rows[i][8].ToString()) : 0
                            };

                            ventas.Add(newVenta);

                            var resultNewVenta = await _ventaRepository.AddVenta(newVenta);

                            if (resultNewVenta != 0)
                                totalRegistradas++;
                        }
                        else
                        {
                            totalObservadas++;
                        }
                    }
                    else if (archivo == "Productos")
                    {
                        //obtener pedido por comprobante
                        string comprobanteVenta = dt.Rows[i][8].ToString();
                        var pedido = await _pedidoRepository.GetPedidoByComprobante(comprobanteVenta);

                        if (pedido != null)
                        {
                            //obtener producto
                            int idProducto = 0;
                            string producto = dt.Rows[i][1].ToString();
                            var objProducto = await _productoRepository.GetProductoByProducto(producto);

                            if (objProducto == null)
                            {
                                Producto newProducto = new Producto()
                                {
                                    nombre = producto,
                                    descripcion = "",
                                    precio = dt.Rows[i][3].ToString() != "" ? Convert.ToDecimal(dt.Rows[i][3].ToString()) : 0,
                                    idCategoria = lstCategorias.FirstOrDefault().id,
                                    idProveedor = lstProveedores.FirstOrDefault().id,
                                    estado = true,
                                    fecRegistro = DateTime.Now,
                                    fecModificacion = DateTime.Now
                                };

                                var resultNewProducto = await _productoRepository.AddProducto(newProducto);

                                idProducto = resultNewProducto;
                            }
                            else
                            {
                                idProducto = objProducto.id;
                            }

                            PedidoDetalle newPedDetalle = new PedidoDetalle()
                            {
                                idPedido = pedido.id,
                                idProducto = idProducto,
                                cantidad = dt.Rows[i][2].ToString() != "" ? Convert.ToDecimal(dt.Rows[i][2].ToString()) : 0,
                                precioUnitario = dt.Rows[i][3].ToString() != "" ? Convert.ToDecimal(dt.Rows[i][3].ToString()) : 0,
                                pesoMin = (decimal)0,
                                pesoMax = (decimal)0,
                                importeDescuento = dt.Rows[i][4].ToString() != "" ? Convert.ToDecimal(dt.Rows[i][4].ToString()) : 0,
                                importeSubtotal = dt.Rows[i][5].ToString() != "" ? Convert.ToDecimal(dt.Rows[i][5].ToString()) : 0,
                                importeIGV = dt.Rows[i][6].ToString() != "" ? Convert.ToDecimal(dt.Rows[i][6].ToString()) : 0,
                                importeTotal = dt.Rows[i][7].ToString() != "" ? Convert.ToDecimal(dt.Rows[i][7].ToString()) : 0,
                                estado = true
                            };

                            var resultNewPedidoDetalle = await _pedidoRepository.AddPedidoDetalle(newPedDetalle);

                            if (resultNewPedidoDetalle)
                                totalRegistradas++;
                        }
                        else
                        {
                            totalObservadas++;
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }                
            }

            bool updMigracion = await _migracionRepository.UpdateMigracion(new Migracion()
            {
                id = idMigracion,
                fecFin = DateTime.Now,
                estado = (int)Constantes.MigracionEstados.Finalizado,
                totalFilas = totalFilas,
                totalObservaciones = totalObservadas,
                totalRegistradas = totalRegistradas
            });

            return result;
        }

        private static string GetEnvironmentVariable(string name)
        {
            //return System.Environment.GetEnvironmentVariable(name, EnvironmentVariableTarget.Process);
            return System.Environment.GetEnvironmentVariable(name);
        }
    }
}

/* Models */
partial class MigracionDetails
{
    [JsonProperty("FileName")]
    public string FileName { get; set; }
}

partial class InputData
{
    [JsonProperty("MigracionDetails")]
    public List<MigracionDetails> MigracionDetails { get; set; }
}