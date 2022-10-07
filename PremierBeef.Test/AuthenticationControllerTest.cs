using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using PremierBeef.API.Controllers;
using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Security;
using PremierBeef.Application.Services.Usuario;
using PremierBeef.Mail;
using PremierBeef.Test.FakeServices;
using static Org.BouncyCastle.Math.EC.ECCurve;

namespace PremierBeef.Test
{
    //[TestClass]
    public class AuthenticationControllerTest
    {
        private readonly AuthenticationController _controller;
        private readonly IUsuarioService _usuarioService;
        private readonly ISecurityService _securityService;
        private readonly IEmailSender _emailSender;
        private readonly IConfiguration _config;

        public AuthenticationControllerTest()
        {
            _config = new ConfigurationBuilder()
                                         .AddInMemoryCollection(new Dictionary<string, string> { { "llavejwt", "klsdjlfksdjlkfjsdlkd" } })
                                         .Build();
            _usuarioService = new UsuarioServiceFake();
            _securityService = new SecurityServiceFake();
            _emailSender = new EmailServiceFake();
            _controller = new AuthenticationController(_config, _usuarioService, _securityService, _emailSender);
        }

        const string correoUsuarioNotFound = "correotest1@hotmail.com";
        const string correoUsuarioFound = "rdcn93@hotmail.com";

        const string password = "ABCasdf123";
        const string confirmPasswordCorrect = "ABCasdf123";
        const string confirmPasswordIncorrect = "XYSjhgf256";

        [TestMethod]
        public async Task HU_04RecuperarContraseña_ForgotPassword_EmailNotFoundResult()
        {
            ForgotPassword forgot = new ForgotPassword() { Email = correoUsuarioNotFound };
            // act
            var result = await _controller.ForgotPassword(forgot);
            var badRequestResult = result as BadRequestObjectResult;

            //// assert
            Assert.IsNotNull(result);
            Assert.AreEqual(400, badRequestResult.StatusCode);
        }

        [TestMethod]
        public async Task HU_04RecuperarContraseña_ResetPassword_PasswordsNotMatchResult()
        {
            ResetPassword forgot = new ResetPassword() { password = password, confirmPassword = confirmPasswordIncorrect };
            // act
            var result = await _controller.ResetPassword(forgot);
            var badRequestResult = result as BadRequestObjectResult;

            //// assert
            Assert.IsNotNull(result);
            Assert.AreEqual(400, badRequestResult.StatusCode);
        }

        [TestMethod]
        public async Task HU_04RecuperarContraseña_ResetPassword_EmailNotFoundResult()
        {
            ResetPassword forgot = new ResetPassword() { email = correoUsuarioNotFound };
            // act
            var result = await _controller.ResetPassword(forgot);
            var badRequestResult = result as BadRequestObjectResult;

            //// assert
            Assert.IsNotNull(result);
            Assert.AreEqual(400, badRequestResult.StatusCode);
        }
    }
}
