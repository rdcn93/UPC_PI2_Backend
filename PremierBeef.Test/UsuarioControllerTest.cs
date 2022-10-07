using Microsoft.AspNetCore.Mvc;
using PremierBeef.API.Controllers;
using PremierBeef.Application.Services.Security;
using PremierBeef.Application.Services.Usuario;
using PremierBeef.Test.FakeServices;
namespace PremierBeef.Test
{
    //[TestClass]
    public class UsuarioControllerTest
    {
        private readonly UsuarioController _controller;
        private readonly IUsuarioService _usuarioService;
        private readonly ISecurityService _securityService;
        public UsuarioControllerTest()
        {
            _usuarioService = new UsuarioServiceFake();
            _securityService = new SecurityServiceFake();
            _controller = new UsuarioController(_usuarioService, _securityService);
        }

        const int idUsuarioExist = 1;
        const int idUsuarioNotExist = 100;
        const string correoUsuarioNotFound = "correotest1@hotmail.com";
        const string correoUsuarioFound = "rdcn93@hotmail.com";

        [TestMethod]
        public async Task HU_05GetUsuarios_ReturnsFoundResult()
        {
            // act
            var result = await _controller.GetUsuarios();
            var okResult = result as OkObjectResult;

            // assert
            Assert.IsNotNull(okResult);
            Assert.AreEqual(200, okResult.StatusCode);
        }

        [TestMethod]
        public async Task HU_05GetUsuarioById_ReturnsNotFoundResult()
        {
            // act
            var result = await _controller.Get(idUsuarioNotExist);

            // assert
            Assert.IsInstanceOfType(result.Result, typeof(StatusCodeResult));
            Assert.AreEqual(((StatusCodeResult)result.Result).StatusCode, 404);
        }

        [TestMethod]
        public async Task HU_05GetUsuarioById_ReturnsFoundResult()
        {
            // act
            var result = await _controller.Get(idUsuarioExist);

            // assert
            Assert.IsInstanceOfType(result.Result, typeof(OkObjectResult));
            Assert.AreEqual((int)((OkObjectResult)result.Result).StatusCode, 200);
        }
    }
}
