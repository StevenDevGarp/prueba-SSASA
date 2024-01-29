using Microsoft.Data.SqlClient;
using Prueba_software_ssasa.DataAccess.DTO;
using Prueba_software_ssasa.DataAccess.Repository.IRepository;
using Prueba_software_ssasa.DataBaseConnect;

namespace Prueba_software_ssasa.DataAccess.Repository
{
    public class EmployeeRepositoryImpl : IEmployeeRepository
    {
        private readonly Conexion conexion;

        public EmployeeRepositoryImpl() {
            conexion = Conexion.Instance;
        }
        public List<EmployeeDTO> GetAllEmployees()
        {      
            List<EmployeeDTO> lista = [];
            try
            {
                if (conexion.OpenConnection())
                {
                    SqlCommand command = new("[PERFILESSA].[dbo].[GetAllEmployees]", conexion.SqlConnection);
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        EmployeeDTO employeeDTO = new EmployeeDTO.Builder()
                            .NumeroDPI(int.Parse(reader[0] + ""))
                            .FirstName(reader[1] + "")
                            .SecondName(reader[2] + "")
                            .FirsLastName(reader[3] + "")
                            .SecondLastName(reader[4] + "")
                            .Sex(reader[5] + "")
                            .DateAdmission(DateTime.Parse(reader[6] + ""))
                            .Birthdate(reader[7] + "")
                            .WithEdad(reader[8] + "")
                            .WithAddress(reader[9] + "")
                            .WithNitEmployee(reader[10] + "")
                            .WithAssignedDepartament(int.Parse(reader[11] + ""))
                            .AssignedDepartmentName(
                                    new DepartamentDTO.Builder().WithNombreDepartamento(reader[12] + "").Build())
                            .Build();
                        lista.Add(employeeDTO);
                    } 
                }
            }
            catch (SqlException sqlEx) { throw sqlEx; }
            finally
            {
                conexion.CloseConnection();
            }

            return lista;
        }

        public EmployeeDTO GetEmployeeById(int id)
        {
            throw new NotImplementedException();
        }

        public List<EmployeeDTO> GetEmployeesByDepartment(string departmentName)
        {
            throw new NotImplementedException();
        }

        public void SaveEmployee(EmployeeDTO employee)
        {
            try
            {
                if (conexion.OpenConnection())
                {
                    SqlCommand command = new("[PERFILESSA].[dbo].[SaveEmployee]", conexion.SqlConnection);
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    setDataEmploye(command, employee);
                }                
            }
            catch (SqlException e)
            {
                throw e;
            }
            finally { 
                conexion.CloseConnection( );
            }
        }

        public void UpdateEmploye(EmployeeDTO employee)
        {
            try
            {
                if (conexion.OpenConnection())
                {
                    SqlCommand command = new("[PERFILESSA].[dbo].[UpdateEmployee]", conexion.SqlConnection);
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    setDataEmploye(command, employee);
                }
            }
            catch (SqlException e)
            {
                throw e;
            }
            finally
            {
                conexion.CloseConnection();
            }
        }

        private void setDataEmploye(SqlCommand command, EmployeeDTO employee) {
            command.Parameters.AddWithValue("@NumeroDPI", employee.numeroDPIEmpledado);
            command.Parameters.AddWithValue("@PrimerNombre", employee.primerNombreEmpleado);
            command.Parameters.AddWithValue("@SegundoNombre", employee.segundoNombreEmpleado);
            command.Parameters.AddWithValue("@PrimerApellido", employee.primerApellidoEmpleado);
            command.Parameters.AddWithValue("@SegundoApellido", employee.segundoNombreEmpleado);
            command.Parameters.AddWithValue("@Sexo", employee.sexoEmpleado);
            command.Parameters.AddWithValue("@FechaIngreso", employee.fechaIngresoEmpresaEmpleado);
            command.Parameters.AddWithValue("@FechaNacimiento", employee.fechaNacimientoEmpleado);
            command.Parameters.AddWithValue("@Edad", employee.edad);
            command.Parameters.AddWithValue("@Direccion", employee.direccionEmpleado);
            command.Parameters.AddWithValue("@NIT", employee.NIT_Empledo);
            command.Parameters.AddWithValue("@DepartamentoAsignado", employee.departamentoAsignado);
            command.ExecuteNonQuery();
            command.Dispose();

        }
    }
}
