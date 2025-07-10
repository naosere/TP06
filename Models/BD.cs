namespace TP06.Models;
using  Microsoft.Data.SqlClient;
using Dapper;

public static class BD
{

    private static string connectionString = "Server=LocalHost;Database=mibd;Trusted_Connection=True;";

    public static int Login(string email, string contraseña){
        using var connection = new SqlConnection(connectionString);
        string sql = "SELECT Id FROM Usuarios WHERE Email = @Email AND Contraseña = @Contraseña";
        var id = connection.QueryFirstOrDefault<int?>(sql, new { Email = email, Contraseña = contraseña });
        return id ?? -1;

    }

    public static Usuario GetUsuario(int id){

    }


    public static List<DatoFamiliar> GetDatoFamiliar(int id){

    }

    public static List<DatoInteres> GetDatoInteres(int id){

    }
}
