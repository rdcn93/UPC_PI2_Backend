using ClosedXML.Excel;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.WindowsAzure.Storage.Blob;
using Microsoft.WindowsAzure.Storage;
using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Reporte;
using PremierBeef.Application.ViewModels;
using System.Data;

namespace PremierBeef.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [Route("api/[controller]")]
    [ApiController]
    public class ReporteController : ControllerBase
    {
        private readonly IReporteService _reporteService;

        public ReporteController(IReporteService reporteService)
        {
            _reporteService = reporteService;
        }

        [HttpPost]
        [Route("ObtenerReporteVentas")]
        public async Task<ActionResult<UsuarioViewModel>> GetReporteVentas([FromBody] FiltroReporteModel filtro)
        {
            var user = await _reporteService.GetReporteVentas(filtro);

            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        [HttpPost("ExcelReporteVentas")]
        public async Task<IActionResult> ExcelReporteVentas([FromBody] FiltroReporteModel filtro)
        {
            var reporte = await _reporteService.GetReporteVentas(filtro);
            //using System.Data;
            DataTable dt = new DataTable("Grid");
            dt.Columns.AddRange(new DataColumn[9] { new DataColumn("Cliente"),
                                        new DataColumn("Tipo Documento"), 
                                        new DataColumn("Documento"),
                                        new DataColumn("Fecha Emisión"),
                                        new DataColumn("Tipo Comprobante"),
                                        new DataColumn("Serie Comprobante"),
                                        new DataColumn("Importe Grabado"),
                                        new DataColumn("Importe IGV"),
                                        new DataColumn("Importe Total")
                                    });

            foreach (var emp in reporte)
            {
                dt.Rows.Add(emp.cliente, 
                    emp.tipo_documento,
                    emp.documento,
                    emp.fecha_emision,
                    emp.tipo_comprobante,
                    emp.serie_comprobante,
                    emp.importe_grabado,
                    emp.importe_igv,
                    emp.importe_total);
            }
            //using ClosedXML.Excel;
            using (XLWorkbook wb = new XLWorkbook())
            {
                wb.Worksheets.Add(dt);
                using (MemoryStream stream = new MemoryStream())
                {
                    wb.SaveAs(stream);
                    return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "Grid.xlsx");
                }
            }
        }


        [HttpPost]
        [Route("ObtenerReportePedidos")]
        public async Task<ActionResult<UsuarioViewModel>> GetReportePedidos([FromBody] FiltroReporteModel filtro)
        {
            var user = await _reporteService.GetReportePedidos(filtro);

            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        [HttpPost("ExcelReportePedidos")]
        public async Task<IActionResult> ExcelReportePedidos([FromBody] FiltroReporteModel filtro)
        {
            var reporte = await _reporteService.GetReportePedidos(filtro);
            //using System.Data;
            DataTable dt = new DataTable("Grid");
            dt.Columns.AddRange(new DataColumn[6] { new DataColumn("Cliente"),
                                        new DataColumn("Tipo Documento"), 
                                        new DataColumn("Documento"),
                                        new DataColumn("Fecha"),
                                        new DataColumn("Cantidad Productos"),
                                        new DataColumn("Total")
                                    });

            foreach (var emp in reporte)
            {
                dt.Rows.Add(emp.cliente, 
                    emp.tipo_documento,
                    emp.documento,
                    emp.fecha_emision,
                    emp.cantidad_productos,
                    emp.total);
            }
            //using ClosedXML.Excel;
            using (XLWorkbook wb = new XLWorkbook())
            {
                wb.Worksheets.Add(dt);
                using (MemoryStream stream = new MemoryStream())
                {
                    wb.SaveAs(stream);
                    return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "Grid.xlsx");
                }
            }
        }

        [HttpPost]
        [Route("ObtenerReporteStock")]
        public async Task<ActionResult<UsuarioViewModel>> GetReporteStock([FromBody] FiltroReporteModel filtro)
        {
            var user = await _reporteService.GetReporteStock(filtro);

            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        [HttpPost("ExcelReporteStock")]
        public async Task<IActionResult> ExcelReporteStock([FromBody] FiltroReporteModel filtro)
        {
            var reporte = await _reporteService.GetReporteStock(filtro);
            //using System.Data;
            DataTable dt = new DataTable("Grid");
            dt.Columns.AddRange(new DataColumn[2] { new DataColumn("EmpID"),
                                     new DataColumn("EmpName") });


            //using ClosedXML.Excel;
            using (XLWorkbook wb = new XLWorkbook())
            {
                wb.Worksheets.Add(dt);
                using (MemoryStream stream = new MemoryStream())
                {
                    wb.SaveAs(stream);
                    return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "Grid.xlsx");
                }
            }
        }


        #region
        [HttpPost]
        [Route("ObtenerReporteReclamos")]
        public async Task<ActionResult<UsuarioViewModel>> GetReporteReclamos([FromBody] FiltroReporteModel filtro)
        {
            var user = await _reporteService.GetReporteReclamos(filtro);

            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        [HttpPost("ExcelReporteReclamos")]
        public async Task<IActionResult> ExcelReporteReclamos([FromBody] FiltroReporteModel filtro)
        {
            var reporte = await _reporteService.GetReporteReclamos(filtro);
            //using System.Data;
            DataTable dt = new DataTable("Grid");
            dt.Columns.AddRange(new DataColumn[2] { new DataColumn("EmpID"),
                                     new DataColumn("EmpName") });

            foreach (var emp in reporte)
            {
                dt.Rows.Add(emp.detalle, emp.respuesta);
            }
            //using ClosedXML.Excel;
            using (XLWorkbook wb = new XLWorkbook())
            {
                wb.Worksheets.Add(dt);
                using (MemoryStream stream = new MemoryStream())
                {
                    wb.SaveAs(stream);
                    return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "Grid.xlsx");
                }
            }
        }
        #endregion

        #region
        [HttpPost]
        [Route("ObtenerReporteDelivery")]
        public async Task<ActionResult<UsuarioViewModel>> GetReporteDelivery([FromBody] FiltroReporteModel filtro)
        {
            var user = await _reporteService.GetReporteDelivery(filtro);

            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        [HttpPost("ExcelReporteDelivery")]
        public async Task<IActionResult> ExcelReporteDelivery([FromBody] FiltroReporteModel filtro)
        {
            var reporte = await _reporteService.GetReporteDelivery(filtro);
            //using System.Data;
            DataTable dt = new DataTable("Grid");
            dt.Columns.AddRange(new DataColumn[2] { new DataColumn("EmpID"),
                                     new DataColumn("EmpName") });

            foreach (var emp in reporte)
            {
                dt.Rows.Add(emp.detalle, emp.respuesta);
            }
            //using ClosedXML.Excel;
            using (XLWorkbook wb = new XLWorkbook())
            {
                wb.Worksheets.Add(dt);
                using (MemoryStream stream = new MemoryStream())
                {
                    wb.SaveAs(stream);
                    return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "Grid.xlsx");
                }
            }
        }
        #endregion
    }
}
