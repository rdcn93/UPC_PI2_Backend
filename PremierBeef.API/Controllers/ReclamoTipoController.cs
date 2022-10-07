using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using PremierBeef.Application.Services.ReclamoTipo;

namespace PremierBeef.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [Route("api/[controller]")]
    [ApiController]
    public class ReclamoTipoController : ControllerBase
    {
        private readonly IReclamoTipoService _reclamoTipoService;

        public ReclamoTipoController(IReclamoTipoService reclamoTipoService)
        {
            _reclamoTipoService = reclamoTipoService;
        }

        [HttpGet]
        public async Task<IActionResult> GetReclamoTipos()
        {
            try
            {
                var reclamoTipos = await _reclamoTipoService.GetReclamoTipos();

                return Ok(reclamoTipos);
            }
            catch (Exception)
            {
                return StatusCode(500, "Something went wrong, internal Server Error");
            }
        }
    }
}
