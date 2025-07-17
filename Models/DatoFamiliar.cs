using Newtonsoft.Json;
namespace TP06.Models;

public class DatoFamiliar
{
    [JsonProperty]
    public int IDDatoFamiliar{ get; private set; }
    [JsonProperty]
    public int IDUsuario { get; private set; }
    [JsonProperty]
    public string nombre { get; private set; }
    [JsonProperty]
    public string apellido{ get; private set; }
    [JsonProperty]
    public string parentesco{ get; private set; }
    [JsonProperty]
    public string descripcion{ get; private set; }


    public DatoFamiliar(int IDDatoFamiliar, int IDUsuario, string nombre, string apellido, string parentesco, string descripcion){
        this.IDDatoFamiliar = IDDatoFamiliar;
        this.IDUsuario = IDUsuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.parentesco = parentesco;
        this.descripcion = descripcion;
    }
    public DatoFamiliar()
    {
        
    }

}