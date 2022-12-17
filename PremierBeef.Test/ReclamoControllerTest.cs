using Microsoft.AspNetCore.Mvc;
using PremierBeef.API.Controllers;
using PremierBeef.Application.Services.Reclamo;
using PremierBeef.Application.Services.Security;
using PremierBeef.Application.Services.Usuario;
using PremierBeef.Test.FakeServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Test
{
    //[TestClass]
    public class ReclamoControllerTest
    {
        private readonly ReclamoController _controller;
        private readonly IReclamoService _reclamoService;

        public ReclamoControllerTest()
        {
            _reclamoService = new ReclamoServiceFake();
            _controller = new ReclamoController(_reclamoService);
        }

        const int idReclamoExist = 1;
        const int idReclamoNotExist = 100;

        [TestMethod]
        public async Task HU_15GetReclamos_ReturnsFoundResult()
        {
            // act
            var result = await _controller.GetReclamos();
            var okResult = result as OkObjectResult;

            // assert
            Assert.IsNotNull(okResult);
            Assert.AreEqual(200, okResult.StatusCode);
        }

        [TestMethod]
        public async Task HU_15GetReclamoById_ReturnsNotFoundResult()
        {
            // act
            var result = await _controller.Get(idReclamoNotExist);

            // assert
            Assert.IsInstanceOfType(result.Result, typeof(StatusCodeResult));
            Assert.AreEqual(((StatusCodeResult)result.Result).StatusCode, 404);
        }

        [TestMethod]
        public async Task HU_15GetReclamoById_ReturnsFoundResult()
        {
            // act
            var result = await _controller.Get(idReclamoExist);

            // assert
            Assert.IsInstanceOfType(result.Result, typeof(OkObjectResult));
            Assert.AreEqual((int)((OkObjectResult)result.Result).StatusCode, 200);
        }
    }
}
