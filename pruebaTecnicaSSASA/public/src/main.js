//se reciben los datos del formulario
const registerForm = document.getElementById('registerForm');
registerForm.addEventListener('submit', (e) => {
    e.preventDefault();

    const formData = new FormData(registerForm);
    const {numeroDPIEmpleado, primerNombreEmpleado, segundoNombreEmpleado, primerApellidoEmpleado, segundoApellidoEmpleado, sexoEmpleado,
        fechaIngresoEmpresaEmpleado, fechaNacimientoEmpleado, direccionEmpleado, NIT_Empledo, departamentoAsignado} = Object.fromEntries(formData);

        console.log(numeroDPIEmpleado, primerNombreEmpleado, segundoNombreEmpleado, primerApellidoEmpleado, segundoApellidoEmpleado, sexoEmpleado,
                    fechaIngresoEmpresaEmpleado, fechaNacimientoEmpleado, direccionEmpleado, NIT_Empledo, departamentoAsignado);
            
    alert('Datos enviados');
    registerForm.reset();
});