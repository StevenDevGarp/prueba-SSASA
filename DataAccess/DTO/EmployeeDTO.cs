namespace Prueba_software_ssasa.DataAccess.DTO
{
    public class EmployeeDTO
    {
        public int numeroDPIEmpledado { get; set; }
        public string primerNombreEmpleado { get; set; }
        public string segundoNombreEmpleado { get; set; }
        public string primerApellidoEmpleado { get; set; }
        public string segundoApellidoEmpleado { get; set; }
        public string sexoEmpleado { get; set; }
        public DateTime fechaIngresoEmpresaEmpleado { get; set; }
        public string fechaNacimientoEmpleado { get; set; }
        public string edad { get; set; }
        public string direccionEmpleado { get; set; }
        public string NIT_Empledo { get; set; }
        public int departamentoAsignado { get; set; }
        public DepartamentDTO assignedDepartamentDTO { get; set; }

        public EmployeeDTO() { }

        public class Builder
        {
            private EmployeeDTO employee;

            public Builder()
            {
                employee = new EmployeeDTO();
            }

            public Builder NumeroDPI(int numeroDPI)
            {
                employee.numeroDPIEmpledado = numeroDPI;
                return this;
            }

            public Builder FirstName(string firstName)
            {
                employee.primerNombreEmpleado = firstName;
                return this;
            }

            public Builder SecondName(string secondName)
            {
                employee.segundoNombreEmpleado = secondName;
                return this;
            }

            public Builder FirsLastName(string firsLastName)
            {
                employee.primerApellidoEmpleado = firsLastName;
                return this;
            }

            public Builder SecondLastName(string secondlastName)
            {
                employee.segundoApellidoEmpleado = secondlastName;
                return this;
            }

            public Builder Sex(string sex)
            {
                employee.sexoEmpleado = sex;
                return this;
            }

            public Builder DateAdmission(DateTime dateAdmission)
            {
                employee.fechaIngresoEmpresaEmpleado = dateAdmission;
                return this;
            }

            public Builder Birthdate(string birthdate)
            {
                employee.fechaNacimientoEmpleado = birthdate;
                return this;
            }

            public Builder WithEdad(string edad)
            {
                employee.edad = edad;
                return this;
            }

            public Builder WithAddress(string address)
            {
                employee.direccionEmpleado = address;
                return this;
            }

            public Builder WithNitEmployee(string nitEmployee)
            {
                employee.NIT_Empledo = nitEmployee;
                return this;
            }

            public Builder WithAssignedDepartament(int assignedDepartament)
            {
                employee.departamentoAsignado = assignedDepartament;
                return this;
            }

            public Builder AssignedDepartmentName(DepartamentDTO assignedDepartmentName)
            {
                employee.assignedDepartamentDTO = assignedDepartmentName;
                return this;
            }

            public EmployeeDTO Build()
            {
                return employee;
            }
        }
    }
}
