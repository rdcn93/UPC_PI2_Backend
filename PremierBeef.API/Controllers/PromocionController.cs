using Microsoft.AspNetCore.Mvc;
using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Promocion;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PromocionController : Controller
    {
        private readonly IPromocionService _promocionService;

        public PromocionController(IPromocionService promocionService)
        {
            _promocionService = promocionService;
        }

        [HttpGet]
        public async Task<IActionResult> GetPromociones()
        {
            try
            {
                var roles = await _promocionService.GetPromociones();

                return Ok(roles);
            }
            catch (Exception)
            {
                return StatusCode(500, "Something went wrong, internal Server Error");
            }
        }

        [HttpGet]
        [Route("ObtenerPromocion")]
        public async Task<ActionResult<PromocionViewModel>> Get(int id)
        {
            var user = await _promocionService.GetPromocionById(id);

            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        [HttpPost]
        public async Task<IActionResult> Register([FromBody] PromocionModel userInputModel)
        {
            var id = await _promocionService.AddPromocion(userInputModel);

            if (id != 0)
                return Ok();

            return BadRequest();
        }

        [HttpPut]
        public async Task<IActionResult> Edit([FromBody] PromocionModel userInputModel)
        {
            if (ModelState.IsValid)
            {
                var result = await _promocionService.UpdatePromocion(userInputModel);

                return Ok();
            }
            return BadRequest();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> RemovePromocion(int id)
        {
            var result = await _promocionService.RemovePromocion(id);

            if (result == 0)
                return Ok();
            else
                return NotFound();
        }
    }
}
