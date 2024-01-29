using Prueba_software_ssasa.DataAccess.DTO;

namespace Prueba_software_ssasa.DataAccess.Repository.IRepository
{
    public interface IEmployeeRepository
    {
        EmployeeDTO GetEmployeeById(int id);
        void SaveEmployee(EmployeeDTO employee);

        void UpdateEmploye(EmployeeDTO employee);
        List<EmployeeDTO> GetAllEmployees();
        //IEnumerable<EmployeeDTO> GetEmployeesByStatus(String status);
        List<EmployeeDTO> GetEmployeesByDepartment(string departmentName);
    }
}
