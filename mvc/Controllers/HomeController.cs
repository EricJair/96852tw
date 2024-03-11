using Microsoft.AspNetCore.Mvc;

namespace mvc;

public class HomeController : Controller
{
    private readonly IDataContext _context;

    public HomeController(IDataContext context)
    {
        _context = context;
    }
    public async Task<ActionResult> Index()
    {
        List<Producto> productos = await _context.ObtenProductosAsync();
        return View(productos);
    }

    public IActionResult Error()
    {
        return View();
    }
}