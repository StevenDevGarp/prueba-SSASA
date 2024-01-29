using Microsoft.Data.SqlClient;
using Prueba_software_ssasa.DataAccess.DTO;
using Prueba_software_ssasa.DataAccess.Repository.IRepository;
using Prueba_software_ssasa.Domain.Service.IService;

namespace Prueba_software_ssasa.Domain.Service
{
    public class ServiceEmployeeImpl : IServiceEmployee
    {

        private readonly IEmployeeRepository employeeRepository;

        public ServiceEmployeeImpl(IEmployeeRepository employeeRepository) { 
            this.employeeRepository = employeeRepository;
        }

        public List<EmployeeDTO> GetAllEmployees()
        {
            return employeeRepository.GetAllEmployees();
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
            try { 

                employeeRepository.SaveEmployee(employee);
            
            }catch (SqlException e)
            {
                throw e;
            }
        }

        public void UpdateEmploye(EmployeeDTO employee)
        {
            try
            {
                employeeRepository.UpdateEmploye(employee);
            }
            catch (Exception e) {
                throw e;
            }
        }
    }
}
