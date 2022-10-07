using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.WebUtilities;
using Microsoft.IdentityModel.Tokens;
using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Security;
using PremierBeef.Application.Services.Usuario;
using PremierBeef.Application.ViewModels;
using PremierBeef.Mail;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace PremierBeef.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [Route("api/[controller]")]
    [ApiController]
    public class AuthenticationController : ControllerBase
    {
        //private readonly UserManager<UsuarioViewModel> _userManager;
        private readonly IConfiguration _config;
        private readonly IUsuarioService _usuarioAuthService;
        private readonly ISecurityService _securityService;
        private readonly IEmailSender _emailSender;

        public AuthenticationController(IConfiguration configuration,
            IUsuarioService usuarioService,
            ISecurityService securityService,
            IEmailSender emailSender
            //UserManager<UsuarioViewModel> userManager
            )
        {
            _config = configuration;
            _usuarioAuthService = usuarioService;
            _securityService = securityService;
            _emailSender = emailSender;
            //_userManager = userManager;
        }

        [HttpPost("login")]
        public IActionResult Login([FromBody] Login user)
        {
            if (user is null)
                return BadRequest("Invalid user request!");

            var userInfo = _usuarioAuthService.GetUserByUsuario(user.UserName ?? "");
            bool isValid = false;

            if (userInfo.Result != null)
                isValid = _securityService.Check(userInfo.Result.clave, user.Password ?? "");
            else
                return NotFound("No se encontró el usuario ingresado");

            if (isValid)
            {
                var secretKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config["JWT:Secret"]));
                var signinCredentials = new SigningCredentials(secretKey, SecurityAlgorithms.HmacSha256);
                var tokeOptions = new JwtSecurityToken(
                    issuer: _config["JWT:ValidIssuer"],
                    audience: _config["JWT:ValidAudience"],
                    claims: new List<Claim>(),
                    expires: DateTime.Now.AddMinutes(10),
                    signingCredentials: signinCredentials
                );
                var tokenString = new JwtSecurityTokenHandler().WriteToken(tokeOptions);
                return Ok(new JWTTokenResponse { Token = tokenString });
            }
            else
                return Unauthorized("Contraseña incorrecta");

            //return Unauthorized();
        }

        [HttpPost("ForgotPassword")]
        public async Task<IActionResult> ForgotPassword([FromBody] ForgotPassword forgotPassword)
        {
            if (!ModelState.IsValid)
                return BadRequest();

            string Email = forgotPassword.Email != null ? (string)forgotPassword.Email : "";

            var user = await _usuarioAuthService.GetUserByCorreo(Email);
            if (user == null)
                return BadRequest("No se encontró usuario con ese correo");

            //var token = await _userManager.GeneratePasswordResetTokenAsync(user);
            var param = new Dictionary<string, string?>
            {
                {"token", "" },
                {"email", forgotPassword.Email },
                {"usuario", user.usuario}
            };

            var callback = QueryHelpers.AddQueryString(forgotPassword.ClientURI, param);
            callback = callback.Replace("michi", "#");
            var message = new Message(new string[] { user.correo }, "Reset password token", callback, null);

            await _emailSender.SendEmailAsync(message);

            return Ok();
        }

        [HttpPost("ResetPassword")]
        public async Task<IActionResult> ResetPassword([FromBody] ResetPassword resetPassword)
        {
            if (!ModelState.IsValid)
                return BadRequest();

            if (resetPassword.password != resetPassword.confirmPassword)
                return BadRequest("Contraseñas no coinciden");

            var user = await _usuarioAuthService.GetUserByCorreo(resetPassword.email);
            if (user == null)
                return BadRequest("No se encontró un usuario con ese correo");

            if (resetPassword.password != null && resetPassword.password != String.Empty)
            {
                string encriptedPassword = _securityService.Hash(resetPassword.password);

                user.clave = encriptedPassword;

                var result = _usuarioAuthService.UpdateContraseña(resetPassword.email, encriptedPassword);
            }

            //var resetPassResult = await _userManager.ResetPasswordAsync(user, resetPasswordDto.Token, resetPasswordDto.Password);
            //if (!resetPassResult.Succeeded)
            //{
            //    var errors = resetPassResult.Errors.Select(e => e.Description);

            //    return BadRequest(new { Errors = errors });
            //}

            return Ok();
        }
    }
}
