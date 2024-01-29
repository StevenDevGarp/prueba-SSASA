USE [PERFILESSA]
GO

/****** Create: Stored Procedure's for CRUD Fecha del script: 28/01/2024 15:02:27 ******/


create procedure GetEmploeeById
		@EmployeeId Int
AS
BEGIN
	SELECT 
    e.numeroDPIEmpleado,
    e.primerNombreEmpleado,
    e.segundoNombreEmpleado,
    e.primerApellidoEmpleado,
    e.segundoApellidoEmpleado,
    e.sexoEmpleado,
    e.fechaIngresoEmpresaEmpleado,
    e.fechaNacimientoEmpleado,   
    e.edad,
    e.direccionEmpleado,
    e.NIT_Empledo,
	e.departamentoAsignado,
    d.nombreDepartamento AS nombreDepartamentoAsignado
FROM 
    ca_empleados e
JOIN 
    ca_departamentoArea d ON e.departamentoAsignado = d.codigoDepartamento
WHERE e.numeroDPIEmpleado = @EmployeeId;
END;

--Stored Procedure for save employee --

USE [PERFILESSA]
GO

CREATE PROCEDURE SaveEmployee
    @NumeroDPI INT,
    @PrimerNombre VARCHAR(50),
    @SegundoNombre VARCHAR(50),
    @PrimerApellido VARCHAR(50),
    @SegundoApellido NVARCHAR(50),
    @Sexo VARCHAR(1),
    @FechaIngreso DATETIME,
    @FechaNacimiento DATETIME,
    @Edad INT,
    @Direccion VARCHAR(300),
    @NIT VARCHAR(10),
    @DepartamentoAsignado INT
AS
BEGIN
    INSERT INTO ca_empleados (numeroDPIEmpleado, primerNombreEmpleado, segundoNombreEmpleado, primerApellidoEmpleado, segundoApellidoEmpleado,
        sexoEmpleado, fechaIngresoEmpresaEmpleado, fechaNacimientoEmpleado, edad, direccionEmpleado, NIT_Empledo, departamentoAsignado)
    VALUES (@NumeroDPI, @PrimerNombre, @SegundoNombre, @PrimerApellido, @SegundoApellido, @Sexo, @FechaIngreso, @FechaNacimiento,
        @Edad, @Direccion, @NIT, @DepartamentoAsignado);

    DECLARE @hoy DATETIME = GETDATE();

	SET  @edad = DATEDIFF (YEAR, @FechaNacimiento, @hoy);

	UPDATE [PERFILESSA].[dbo].[ca_empleados]
	SET [edad] = @edad
	WHERE [numeroDPIEmpleado] = @NumeroDPI;
END;

--stored procedure for get all employee

USE [PERFILESSA]
GO

CREATE PROCEDURE GetAllEmployees
AS
BEGIN
    SELECT 
    e.numeroDPIEmpleado,
    e.primerNombreEmpleado,
    e.segundoNombreEmpleado,
    e.primerApellidoEmpleado,
    e.segundoApellidoEmpleado,
    e.sexoEmpleado,
    e.fechaIngresoEmpresaEmpleado,
    e.fechaNacimientoEmpleado,
    e.edad,
    e.direccionEmpleado,
    e.NIT_Empledo,
	e.departamentoAsignado,
    d.nombreDepartamento AS nombreDepartamentoAsignado
FROM 
    ca_empleados e
JOIN 
    ca_departamentoArea d ON e.departamentoAsignado = d.codigoDepartamento
END;

--stored procedure for get employee filter department

USE [PERFILESSA]
GO

CREATE PROCEDURE GetEmployeesByDepartment
		@departmentAssigned int
AS
BEGIN
SELECT 
	e.numeroDPIEmpleado,
    e.primerNombreEmpleado,
    e.segundoNombreEmpleado,
    e.primerApellidoEmpleado,
    e.segundoApellidoEmpleado,
    e.sexoEmpleado,
    e.fechaIngresoEmpresaEmpleado,
    e.fechaNacimientoEmpleado,
    e.edad,
    e.direccionEmpleado,
    e.NIT_Empledo,
	e.departamentoAsignado,
    d.nombreDepartamento AS nombreDepartamentoAsignado FROM ca_empleados e
INNER JOIN ca_departamentoArea d ON e.departamentoAsignado = d.codigoDepartamento
WHERE d.codigoDepartamento = @departmentAssigned;
END;

USE [PERFILESSA]
GO

--

CREATE PROCEDURE GetEmployeesByStatus
    @StatusDepartment INT
AS
BEGIN
    SELECT 
    e.numeroDPIEmpleado,
    e.primerNombreEmpleado,
    e.segundoNombreEmpleado,
    e.primerApellidoEmpleado,
    e.segundoApellidoEmpleado,
    e.sexoEmpleado,
    e.fechaIngresoEmpresaEmpleado,
    e.fechaNacimientoEmpleado,
    e.edad,
    e.direccionEmpleado,
    e.NIT_Empledo,
	e.departamentoAsignado,
    d.nombreDepartamento AS nombreDepartamentoAsignado
FROM 
    ca_empleados e
JOIN 
    ca_departamentoArea d ON e.departamentoAsignado = d.codigoDepartamento
WHERE 
    d.estatus = @StatusDepartment;
END;

 

 -- update employee

 USE [PERFILESSA]
GO

CREATE PROCEDURE UpdateEmployee
    @NumeroDPI INT,
    @PrimerNombre VARCHAR(50),
    @SegundoNombre VARCHAR(50),
    @PrimerApellido VARCHAR(50),
    @SegundoApellido NVARCHAR(50),
    @Sexo VARCHAR(1),
    @FechaIngreso DATETIME,
    @FechaNacimiento DATETIME,
    @Edad INT,
    @Direccion VARCHAR(300),
    @NIT VARCHAR(10),
    @DepartamentoAsignado INT
AS
BEGIN

    IF EXISTS (SELECT 1 FROM [PERFILESSA].[dbo].[ca_empleados] WHERE [numeroDPIEmpleado] = @NumeroDPI)


        UPDATE [PERFILESSA].[dbo].[ca_empleados]
        SET 
            [primerNombreEmpleado] = @PrimerNombre,
            [segundoNombreEmpleado] = @SegundoNombre,
            [primerApellidoEmpleado] = @PrimerApellido,
            [segundoApellidoEmpleado] = @SegundoApellido,
            [sexoEmpleado] = @Sexo,
            [fechaIngresoEmpresaEmpleado] = @FechaIngreso,
            [fechaNacimientoEmpleado] = @FechaNacimiento,
            [edad] = DATEDIFF(YEAR, @FechaNacimiento, GETDATE()),
            [direccionEmpleado] = @Direccion,
            [NIT_Empledo] = @NIT,
            [departamentoAsignado] = @DepartamentoAsignado
        WHERE [numeroDPIEmpleado] = @NumeroDPI;

        DECLARE @hoy DATETIME = GETDATE();

	    SET  @edad = DATEDIFF (YEAR, @FechaNacimiento, @hoy);

	    UPDATE [PERFILESSA].[dbo].[ca_empleados]
    	SET [edad] = @edad
	    WHERE [numeroDPIEmpleado] = @NumeroDPI;
END