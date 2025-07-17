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
        HttpContext.Session.Clear();
        return View();
    }

    [HttpPost]
    public IActionResult Loguear(string email, string contraseña){
        string devolver = "Index";
        int IDUsuario = BD.Login(email,contraseña);
        if(IDUsuario != 0){
            devolver = "Alumno";
            Usuario usuario = BD.GetUsuario(IDUsuario);
            HttpContext.Session.SetString("IDUsuario", IDUsuario.ToString()); 
            ViewBag.nombre = usuario.nombre;
            ViewBag.apellido = usuario.apellido;
            ViewBag.email = usuario.email;
            ViewBag.fechaNacimiento = ($"{usuario.fechaNacimiento.Day}/{usuario.fechaNacimiento.Month}/{usuario.fechaNacimiento.Year}");
            ViewBag.foto = usuario.foto;
        }
        else{
            ViewBag.MensajeError="NO SE ENCONTRÓ EL USUARIO";
        }
        return View(devolver);
    }

    public IActionResult Familiar (){
        List<DatoFamiliar> datosFamiliares= new List<DatoFamiliar>();
        datosFamiliares = BD.GetDatoFamiliar((int.Parse(HttpContext.Session.GetString("IDUsuario"))));
        ViewBag.datosFamiliares = datosFamiliares;
        return View("DatoFamiliar");
    }

    public IActionResult Interes(){
        List<DatoInteres> datosInteres= new List<DatoInteres>();
        datosInteres = BD.GetDatoInteres((int.Parse(HttpContext.Session.GetString("IDUsuario"))));
        ViewBag.datosInteres = datosInteres;
        return View("DatoInteres");
    }

    public IActionResult Alumno(){
            Usuario usuario = BD.GetUsuario((int.Parse(HttpContext.Session.GetString("IDUsuario")))); 
            ViewBag.nombre = usuario.nombre;
            ViewBag.apellido = usuario.apellido;
            ViewBag.email = usuario.email;
            ViewBag.fechaNacimiento = ($"{usuario.fechaNacimiento.Day}/{usuario.fechaNacimiento.Month}/{usuario.fechaNacimiento.Year}");
            ViewBag.foto = usuario.foto;

        return View();
    }

}
