using DocumentFormat.OpenXml.Spreadsheet;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Reclamo;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [Route("api/[controller]")]
    [ApiController]
    public class ReclamoController : Controller
    {
        private readonly IReclamoService _reclamoService;

        public ReclamoController(IReclamoService reclamoService)
        {
            _reclamoService = reclamoService;
        }

        [HttpGet]
        public async Task<IActionResult> GetReclamos()
        {
            try
            {
                var roles = await _reclamoService.GetReclamos();

                return Ok(roles);
            }
            catch (Exception)
            {
                return StatusCode(500, "Something went wrong, internal Server Error");
            }
        }

        [HttpGet]
        [Route("ObtenerReclamo")]
        public async Task<ActionResult<ReclamoViewModel>> Get(int id)
        {
            var user = await _reclamoService.GetReclamoById(id);

            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        [HttpPost]
        public async Task<IActionResult> Register([FromBody] ReclamoModel userInputModel)
        {
            var id = await _reclamoService.AddReclamo(userInputModel);

            if (id != 0)
                return Ok();

            return BadRequest();
        }

        [HttpPut]
        public async Task<IActionResult> Edit([FromBody] ReclamoModel userInputModel)
        {
            if (ModelState.IsValid)
            {
                var result = await _reclamoService.UpdateReclamo(userInputModel);

                if (result)
                    return Ok();
                else
                    return BadRequest("Ocurrió un error al Modificar el Reclamo");

            }
            return BadRequest();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> RemoveReclamo(int id)
        {
            var result = await _reclamoService.RemoveReclamo(id);

            if (result)
                return Ok();
            else
                return NotFound();
        }
    }
}
