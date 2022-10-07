using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Producto;
using PremierBeef.Application.Services.Security;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [Route("api/[controller]")]
    [ApiController]
    public class ProductoController : Controller
    {
        private readonly IProductoService _productoService;
        private readonly ISecurityService _securityService;

        public ProductoController(IProductoService usuarioService, ISecurityService securityService)
        {
            _productoService = usuarioService;
            _securityService = securityService;
        }

        [HttpGet]
        public async Task<IActionResult> GetProductos()
        {
            try
            {
                var products = await _productoService.GetProductos();

                return Ok(products);
            }
            catch (Exception)
            {
                return StatusCode(500, "Something went wrong, internal Server Error");
            }
        }

        [HttpGet]
        [Route("ObtenerProducto")]
        public async Task<ActionResult<ProductoViewModel>> Get(int id)
        {
            var user = await _productoService.GetProductoById(id);

            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        [HttpPost]
        public async Task<IActionResult> Register([FromBody] ProductoModel userInputModel)
        {
            var prod = await _productoService.GetProductoByProducto(userInputModel.nombre);

            if (prod != null)
                return BadRequest("Producto ya existe");

            var id = await _productoService.AddProducto(userInputModel);

            if (id != 0)
                return Ok();

            return BadRequest();
        }

        [HttpPut]
        public async Task<IActionResult> Edit([FromBody] ProductoModel userInputModel)
        {
            var prod = await _productoService.GetProductoByProducto(userInputModel.nombre);

            if (prod != null && userInputModel.id != prod.id)
                return BadRequest("Producto ya existe");

            if (ModelState.IsValid)
            {
                var result = await _productoService.UpdateProducto(userInputModel);

                return Ok();
            }
            return BadRequest();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> RemoveProduct(int id)
        {
            var result = await _productoService.RemoveProducto(id);

            if (result == 0)
                return Ok();
            else
                return NotFound();
        }
    }
}
