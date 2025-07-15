using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP06.Models;

namespace TP06.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    [HttpPost]
    public IActionResult Loguear(string email, string contraseña){
        string devolver = "Index";
        int IDUsuario = BD.Login(email,contraseña);
        if(IDUsuario != -1){
            devolver = "Alumno";
            Usuario usuario = BD.GetUsuario(IDUsuario);
            HttpContext.Session.SetString("IDUsuario", IDUsuario.ToString()); 
            ViewBag.nombre = usuario.nombre;
            ViewBag.apellido = usuario.apellido;
            ViewBag.email = usuario.email;
            ViewBag.fechaNacimiento = usuario.fechaNacimiento;
            ViewBag.foto = usuario.foto;
        }
        else{
            ViewBag.MensajeError="NO SE ENCONTRÓ EL USUARIO";
        }
        return View(devolver);
    }

    public IActionResult Familiar (){
        return View("DatoFamiliar");
    }

    public IActionResult Interes(){
        return View("DatoInteres");
    }

}
