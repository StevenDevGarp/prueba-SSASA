

using Microsoft.Data.SqlClient;

namespace Prueba_software_ssasa.DataBaseConnect
{
    public class Conexion
    {
        private static Conexion instance;
        private string connectionString = "Data Source=DESKTOP-BBPP67T;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False";
        public SqlConnection connection;

        private Conexion() { }
        
        private void conectar() {
            connection = new SqlConnection(connectionString);
            connection.Open();
        }
        
        public bool OpenConnection()
        {
            try
            {
                conectar();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public void CloseConnection()
        {
            if (connection != null && connection.State == System.Data.ConnectionState.Open)
            {
                connection.Close();
            }
        }

        public SqlConnection SqlConnection
        {
            get
            {
                return connection;
            }
        }
        public static Conexion Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new Conexion();
                }
                return instance;
            }
        }

    }
}
