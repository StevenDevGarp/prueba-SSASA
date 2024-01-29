/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [numeroDPIEmpleado]
      ,[primerNombreEmpleado]
      ,[segundoNombreEmpleado]
      ,[primerApellidoEmpleado]
      ,[segundoApellidoEmpleado]
      ,[sexoEmpleado]
      ,[fechaIngresoEmpresaEmpleado]
      ,[fechaNacimientoEmpleado]
      ,[edad]
      ,[direccionEmpleado]
      ,[NIT_Empledo]
      ,[departamentoAsignado]
  FROM [PERFILESSA].[dbo].[ca_empleados]

  --this script is for creating stored procedures technical testing
USE [PERFILESSA]
GO

CREATE PROCEDURE insertYearsOldEmployee
		@fechaNacimiento DATETIME,
		@idEmployee int

AS
BEGIN
	--se declaran variables 
	DECLARE @hoy DATETIME = GETDATE();
	DECLARE @edad int;

	SET  @edad = DATEDIFF (YEAR, @fechaNacimiento, @hoy);

	UPDATE [PERFILESSA].[dbo].[ca_empleados]
	SET [edad] = @edad
	WHERE [numeroDPIEmpleado] = @idEmployee;

END;



-- Llamar al procedimiento almacenado
EXEC insertYearsOldEmployee @fechaNacimiento = '1889-01-01', @idEmployee = 2;