using Microsoft.AspNetCore.Mvc;
using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Proveedor;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProveedorController : Controller
    {
        private readonly IProveedorService _proveedorService;

        public ProveedorController(IProveedorService proveedorService)
        {
            _proveedorService = proveedorService;
        }

        [HttpGet]
        public async Task<IActionResult> GetProveedores()
        {
            try
            {
                var roles = await _proveedorService.GetProveedores();

                return Ok(roles);
            }
            catch (Exception)
            {
                return StatusCode(500, "Something went wrong, internal Server Error");
            }
        }

        [HttpGet]
        [Route("ObtenerProveedor")]
        public async Task<ActionResult<ProveedorViewModel>> Get(int id)
        {
            var user = await _proveedorService.GetProveedorById(id);

            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        [HttpPost]
        public async Task<IActionResult> Register([FromBody] ProveedorModel userInputModel)
        {
            var id = await _proveedorService.AddProveedor(userInputModel);

            if (id != 0)
                return Ok();

            return BadRequest();
        }

        [HttpPut]
        public async Task<IActionResult> Edit([FromBody] ProveedorModel userInputModel)
        {
            if (ModelState.IsValid)
            {
                var result = await _proveedorService.UpdateProveedor(userInputModel);

                return Ok();
            }
            return BadRequest();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> RemoveProveedor(int id)
        {
            var result = await _proveedorService.RemoveProveedor(id);

            if (result == 0)
                return Ok();
            else
                return NotFound();
        }
    }
}
