using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using PremierBeef.Application.Services.TipoDocumentos;

namespace PremierBeef.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [Route("api/[controller]")]
    [ApiController]
    public class TipoDocumentoController : ControllerBase
    {
        private readonly ITipoDocumentoService _tipoDocumentoService;

        public TipoDocumentoController(ITipoDocumentoService tipoDocumentoService)
        {
            _tipoDocumentoService = tipoDocumentoService;
        }

        [HttpGet]
        public async Task<IActionResult> GetTipoDocumentos()
        {
            try
            {
                var tipos = await _tipoDocumentoService.GetTipoDocumentos();

                return Ok(tipos);
            }
            catch (Exception)
            {
                return StatusCode(500, "Something went wrong, internal Server Error");
            }
        }
    }
}
