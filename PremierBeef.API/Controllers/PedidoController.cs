using Microsoft.AspNetCore.Mvc;

namespace PremierBeef.API.Controllers
{
    public class PedidoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
