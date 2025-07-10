namespace TP06.Models;

public class DatoFamiliar
{
    public int Id{ get; private set; }
    public int IdUsuario { get; private set; }
    public string Nombre { get; private set; }
    public string Apellido{ get; private set; }
    public string Parentesco{ get; private set; }
    public string Descripción{ get; private set; }


    public DatoFamiliar(int Id, int IdUsuario, string Nombre, string Apellido, string Parentesco, string Descripción){
        this.Id = Id;
        this.IdUsuario = IdUsuario;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Parentesco = Parentesco;
        this.Descripción = Descripción;
    }

    public DatoFamiliar(){
        
    }


}