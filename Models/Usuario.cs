using Newtonsoft.Json;
namespace TP06.Models;

public class Usuario
{

    public int IDUsuario {get; private set;}
    public string nombre { get; private set; }
    public string apellido{ get; private set; }
    public string email {get; private set;}
    public string contraseña {get; private set;}
    public DateTime fechaNacimiento { get; private set; }
    public string foto {get; private set;}


    public Usuario(int IDUsuario, string nombre, string apellido, string email, string contraseña, DateTime fechaNacimiento, string foto){
        this.IDUsuario = IDUsuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.contraseña = contraseña;
        this.fechaNacimiento = fechaNacimiento;
        this.foto = foto;
    }
    public Usuario(){
    }
    public int ObtenerEdad(){
        DateTime hoy = DateTime.Today;
        int edad = hoy.Year - fechaNacimiento.Year;
        if (fechaNacimiento.Date > hoy.AddYears(-edad)) 
        {
            edad--;
        }
        return edad;
    }


}