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

	UPDATE [dbo].[ca_empelados]
	SET [edad] = @edad
	WHERE [numeroDPIEmpleados] = @idEmployee;

END;