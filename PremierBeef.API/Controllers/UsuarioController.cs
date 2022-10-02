using Microsoft.AspNetCore.Mvc;
using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Security;
using PremierBeef.Application.Services.Usuario;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsuarioController : ControllerBase
    {
        private readonly IUsuarioService _usuarioService;
        private readonly ISecurityService _securityService;

        public UsuarioController(IUsuarioService usuarioService, ISecurityService securityService)
        {
            _usuarioService = usuarioService;
            _securityService = securityService;
        }

        [HttpGet]
        public async Task<IActionResult> GetUsuarios()
        {
            try
            {
                var products = await _usuarioService.GetUsuarios();

                return Ok(products);
            }
            catch (Exception)
            {
                return StatusCode(500, "Something went wrong, internal Server Error");
            }
        }

        [HttpGet]
        [Route("ObtenerUsuario")]
        public async Task<ActionResult<UsuarioViewModel>> Get(int id)
        {
            var user = await _usuarioService.GetUserById(id);

            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        [HttpPost]
        public async Task<IActionResult> Register([FromBody] UsuarioModel userInputModel)
        {
            var user = await _usuarioService.GetUserByUsuario(userInputModel.usuario);

            if (user != null)
                return BadRequest("Usuario ya existe");

            var userCorreo = await _usuarioService.GetUserByCorreo(userInputModel.usuario);

            if (userCorreo != null)
                return BadRequest("Correo ya existe");

            if (ModelState.IsValid)
            {
                if (userInputModel.clave != null && userInputModel.clave != String.Empty)
                {
                    string encriptedPassword = _securityService.Hash(userInputModel.clave);

                    userInputModel.clave = encriptedPassword;
                }

                var id = await _usuarioService.AddUsuario(userInputModel);

                if (id != 0)
                    return Ok();

                return BadRequest();
            }
            else
            {
                return BadRequest();
            }

        }

        [HttpPut]
        public async Task<IActionResult> Edit([FromBody] UsuarioModel userInputModel)
        {
            var user = await _usuarioService.GetUserById(userInputModel.id);

            if (user == null)
                return NotFound("Usuario no encontrado");

            var userCorreo = await _usuarioService.GetUserByCorreo(userInputModel.correo);

            if (userCorreo != null && userCorreo.usuario != userInputModel.usuario)
                return BadRequest("Correo ya existe");

            if (ModelState.IsValid)
            {
                var result = await _usuarioService.UpdateUsuario(userInputModel);

                return Ok();
            }
            return BadRequest();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> RemoveProduct(int id)
        {
            var result = await _usuarioService.RemoveUsuario(id);

            if (result)
                return Ok();
            else
                return NotFound();
        }
    }
}
