using Newtonsoft.Json;
namespace TP06.Models;

public class DatoInteres
{
    [JsonProperty]
    public int IDDatoInteres{ get; private set; }
    [JsonProperty]
    public int IdUsuario{ get; private set; }
    [JsonProperty]
    public int tipoInteres{ get; private set; }
    [JsonProperty]
    public string interes { get; private set; }

    public DatoInteres(int Id, int IdUsuario, int TipoInteres, string Interes){
        this.IDDatoInteres = Id;
        this.IdUsuario = IdUsuario;
        this.tipoInteres = TipoInteres;
        this.interes = Interes;
    }

    public DatoInteres(){
        
    }

}