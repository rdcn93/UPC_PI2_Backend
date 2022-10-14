using Microsoft.AspNetCore.Mvc;

namespace PremierBeef.API.Controllers
{
    public class ArchivosController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
