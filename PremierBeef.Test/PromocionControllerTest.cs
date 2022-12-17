using Microsoft.AspNetCore.Mvc;
using PremierBeef.API.Controllers;
using PremierBeef.Application.Services.Promocion;
using PremierBeef.Application.Services.Promocion;
using PremierBeef.Test.FakeServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Test
{
    [TestClass]
    public class PromocionControllerTest
    {
        private readonly PromocionController _controller;
        private readonly IPromocionService _promocionService;

        public PromocionControllerTest()
        {
            _promocionService = new PromocionServiceFake();
            _controller = new PromocionController(_promocionService);
        }

        //[TestMethod]
        //public async Task HU_14GetPromociones_FechaInicioMenorFechaFinOK()
        //{
        //    // act
        //    var result = await _controller.Register(new Application.InputModel.PromocionModel()
        //    {
        //        id = 0,
        //        fecInicio = new DateTime(2022, 01, 01),
        //        fecFin = new DateTime(2022, 01, 30)
        //    });
        //    var okResult = result as OkObjectResult;
            
        //    // assert
        //    Assert.IsNotNull(okResult);
        //    Assert.AreEqual(200, okResult.StatusCode);
        //}

        [TestMethod]
        public async Task HU_14GetPromociones_FechaInicioMenorFechaFin()
        {
            // act
            var result = await _controller.Register(new Application.InputModel.PromocionModel() { 
                id = 1,
                fecInicio = new DateTime(2022,02,01),
                fecFin = new DateTime(2022,01,30)
            });
            var badRequestResult = result as BadRequestObjectResult;

            // assert
            Assert.IsNotNull(badRequestResult);
            Assert.AreEqual(400, badRequestResult.StatusCode);
        }

        [TestMethod]
        public async Task HU_14GetPromociones_ReturnsFoundResult()
        {
            // act
            var result = await _controller.GetPromociones();
            var okResult = result as OkObjectResult;

            // assert
            Assert.IsNotNull(okResult);
            Assert.AreEqual(200, okResult.StatusCode);
        }

        [TestMethod]
        public async Task HU_14GetPromocionById_ReturnsNotFoundResult()
        {
            // act
            var result = await _controller.Get(100);

            // assert
            Assert.IsInstanceOfType(result.Result, typeof(StatusCodeResult));
            Assert.AreEqual(((StatusCodeResult)result.Result).StatusCode, 404);
        }

        [TestMethod]
        public async Task HU_14GetPromocionById_ReturnsFoundResult()
        {
            // act
            var result = await _controller.Get(2);

            // assert
            Assert.IsInstanceOfType(result.Result, typeof(OkObjectResult));
            Assert.AreEqual((int)((OkObjectResult)result.Result).StatusCode, 200);
        }

    }
}
