using Microsoft.AspNetCore.Mvc;
using Prueba_software_ssasa.DataAccess.DTO;
using Prueba_software_ssasa.Domain.Service.IService;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Prueba_software_ssasa.Presentation.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        private readonly IServiceEmployee serviceEmployee;
        public EmployeeController(IServiceEmployee employee) {
            this.serviceEmployee = employee;
        }
        // GET: api/<EmployeeController>
        [HttpGet]
        public List<EmployeeDTO> GetAllEmployee ()
        {
            return serviceEmployee.GetAllEmployees();
        }

        // GET api/<EmployeeController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<EmployeeController>
        [HttpPost]
        public void CreateEmployee([FromBody] EmployeeDTO body)
        {
            serviceEmployee.SaveEmployee(body);
         }

        // PUT api/<EmployeeController>
        [HttpPut]
        public void UpdateEmployee([FromBody] EmployeeDTO body)
        {
            serviceEmployee.UpdateEmploye(body);
        }

        // DELETE api/<EmployeeController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
