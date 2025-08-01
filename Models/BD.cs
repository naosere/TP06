using  Microsoft.Data.SqlClient;
using Dapper;
namespace TP06.Models;


public static class BD
{

    private static string connectionString = "Server=LocalHost;Database=TP06_Presentacion;TrustServerCertificate=True;Integrated Security=True;";

    public static int Login(string email, string contraseña){
        int IDUsuario = 0;
        using (SqlConnection connection = new SqlConnection(connectionString)){
        string query = "SELECT IDUsuario FROM Usuario WHERE email = @email AND contraseña = @contraseña";
        IDUsuario = connection.QueryFirstOrDefault<int>(query, new {email, contraseña});
        }         
        return IDUsuario;
    }

    public static Usuario GetUsuario(int id){
        Usuario usuario = new Usuario();
        using (SqlConnection connection = new SqlConnection(connectionString)){
        string query = "SELECT nombre, apellido, email, fechaNacimiento, foto FROM Usuario WHERE IDUsuario = @id";
        usuario = connection.QueryFirstOrDefault<Usuario>(query, new {id});
        }         
        return usuario;
    }


    public static List<DatoFamiliar> GetDatoFamiliar(int id){
        List<DatoFamiliar> datosFamiliares = new List<DatoFamiliar>();
        using (SqlConnection connection = new SqlConnection(connectionString)){
        string query = "SELECT nombre, apellido, parentesco, descripcion FROM DatoFamiliar WHERE IDUsuario = @id";
        datosFamiliares = connection.Query<DatoFamiliar>(query, new {id}).ToList();
        }         
        return datosFamiliares;
    }

    public static List<DatoInteres> GetDatoInteres(int id){
        List<DatoInteres> datosIntereses = new List<DatoInteres>();
        using (SqlConnection connection = new SqlConnection(connectionString)){
        string query = "SELECT tipoInteres, interes FROM DatoInteres WHERE IDUsuario = @id";
        datosIntereses = connection.Query<DatoInteres>(query, new {id}).ToList();
        }         
        return datosIntereses;
    }
}
