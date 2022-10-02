using Microsoft.AspNetCore.Mvc;
using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Cliente;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClienteController : Controller
    {
        private readonly IClienteService _clienteService;

        public ClienteController(IClienteService clienteService)
        {
            _clienteService = clienteService;
        }

        [HttpGet]
        public async Task<IActionResult> GetClientes()
        {
            try
            {
                var products = await _clienteService.GetClientes();

                return Ok(products);
            }
            catch (Exception)
            {
                return StatusCode(500, "Something went wrong, internal Server Error");
            }
        }

        [HttpGet]
        [Route("ObtenerCliente")]
        public async Task<ActionResult<ClienteViewModel>> Get(int id)
        {
            var user = await _clienteService.GetClienteById(id);

            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        [HttpPost]
        public async Task<IActionResult> Register([FromBody] ClienteModel userInputModel)
        {
            var clienteExiste = await _clienteService.GetClienteByCliente(userInputModel);

            if (clienteExiste != null)
                return BadRequest("Ya existe un cliente con ese nombre y apellidos");

            var id = await _clienteService.AddCliente(userInputModel);

            if (id != 0)
                return Ok();

            return BadRequest();
        }

        [HttpPut]
        public async Task<IActionResult> Edit([FromBody] ClienteModel userInputModel)
        {
            var clienteExiste = await _clienteService.GetClienteByCliente(userInputModel);

            if (clienteExiste != null && clienteExiste.id != userInputModel.id)
                return BadRequest("Ya existe un cliente con ese nombre y apellidos");

            if (ModelState.IsValid)
            {
                var result = await _clienteService.UpdateCliente(userInputModel);

                return Ok();
            }
            return BadRequest();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> RemoveCliente(int id)
        {
            var result = await _clienteService.RemoveCliente(id);

            if (result == 0)
                return Ok();
            else
                return NotFound();
        }
    }
}
