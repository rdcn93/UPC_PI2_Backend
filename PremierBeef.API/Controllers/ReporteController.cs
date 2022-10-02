using ClosedXML.Excel;
using Microsoft.AspNetCore.Mvc;
using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Reporte;
using PremierBeef.Application.ViewModels;
using System.Data;

namespace PremierBeef.API.Controllers
{
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

        #region
        [HttpPost("ExportToExcel")]
        public async Task<IActionResult> ExportToExcel([FromBody] FiltroReporteModel filtro)
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
    }
}
