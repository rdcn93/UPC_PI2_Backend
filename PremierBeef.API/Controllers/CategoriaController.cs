using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Categoria;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [Route("api/[controller]")]
    [ApiController]
    public class CategoriaController : Controller
    {
        private readonly ICategoriaService _categoriaService;

        public CategoriaController(ICategoriaService categoriaService)
        {
            _categoriaService = categoriaService;
        }

        [HttpGet]
        public async Task<IActionResult> GetCategorias()
        {
            try
            {
                var products = await _categoriaService.GetCategorias();

                return Ok(products);
            }
            catch (Exception)
            {
                return StatusCode(500, "Something went wrong, internal Server Error");
            }
        }

        [HttpGet]
        [Route("ObtenerCategoria")]
        public async Task<ActionResult<CategoriaViewModel>> Get(int id)
        {
            var user = await _categoriaService.GetCategoriaById(id);

            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        [HttpPost]
        public async Task<IActionResult> Register([FromBody] CategoriaModel catInputModel)
        {
            var id = await _categoriaService.AddCategoria(catInputModel);

            if (id != 0)
                return Ok();

            return BadRequest();
        }

        [HttpPut]
        public async Task<IActionResult> Edit([FromBody] CategoriaModel catInputModel)
        {
            if (ModelState.IsValid)
            {
                var result = await _categoriaService.UpdateCategoria(catInputModel);

                return Ok();
            }
            return BadRequest();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> RemoveCategoria(int id)
        {
            var result = await _categoriaService.RemoveCategoria(id);

            if (result == 0)
                return Ok();
            else
                return NotFound();
        }
    }
}
