using Microsoft.AspNetCore.Mvc;
using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Almacen;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AlmacenController : Controller
    {
        private readonly IAlmacenService _almacenService;

        public AlmacenController(IAlmacenService almacenService)
        {
            _almacenService = almacenService;
        }

        [HttpGet]
        public async Task<IActionResult> GetAlmacens()
        {
            try
            {
                var products = await _almacenService.GetAlmacens();

                return Ok(products);
            }
            catch (Exception)
            {
                return StatusCode(500, "Something went wrong, internal Server Error");
            }
        }

        [HttpGet]
        [Route("ObtenerAlmacen")]
        public async Task<ActionResult<AlmacenViewModel>> Get(int id)
        {
            var user = await _almacenService.GetAlmacenById(id);

            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        [HttpPost]
        public async Task<IActionResult> Register([FromBody] AlmacenModel userInputModel)
        {
            var almacenNombre = await _almacenService.GetAlmacenByAlmacen(userInputModel.nombre);

            if (almacenNombre != null)
                return BadRequest("Ya existe un almacén con ese nombre");

            var id = await _almacenService.AddAlmacen(userInputModel);

            if (id != 0)
                return Ok();

            return BadRequest();
        }

        [HttpPut]
        public async Task<IActionResult> Edit([FromBody] AlmacenModel userInputModel)
        {
            var almacenNombre = await _almacenService.GetAlmacenByAlmacen(userInputModel.nombre);

            if (almacenNombre != null && almacenNombre.id != userInputModel.id)
                return BadRequest("Ya existe un almacén con ese nombre");

            if (ModelState.IsValid)
            {
                var result = await _almacenService.UpdateAlmacen(userInputModel);

                return Ok();
            }
            return BadRequest();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> RemoveAlmacen(int id)
        {
            var result = await _almacenService.RemoveAlmacen(id);

            if (result == 0)
                return Ok();
            else
                return NotFound();
        }
    }
}
