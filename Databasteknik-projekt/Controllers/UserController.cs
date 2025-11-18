using Microsoft.AspNetCore.Mvc;

namespace Databasteknik_projekt.Controllers
{
    public class UserController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
