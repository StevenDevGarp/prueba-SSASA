USE [master]
GO
/****** Object:  Database [PERFILESSA]    Script Date: 27/06/2022 16:41:42 ******/
CREATE DATABASE [PERFILESSA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PERFILESSA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PERFILESSA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PERFILESSA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PERFILESSA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PERFILESSA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PERFILESSA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PERFILESSA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PERFILESSA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PERFILESSA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PERFILESSA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PERFILESSA] SET ARITHABORT OFF 
GO
ALTER DATABASE [PERFILESSA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PERFILESSA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PERFILESSA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PERFILESSA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PERFILESSA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PERFILESSA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PERFILESSA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PERFILESSA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PERFILESSA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PERFILESSA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PERFILESSA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PERFILESSA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PERFILESSA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PERFILESSA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PERFILESSA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PERFILESSA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PERFILESSA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PERFILESSA] SET RECOVERY FULL 
GO
ALTER DATABASE [PERFILESSA] SET  MULTI_USER 
GO
ALTER DATABASE [PERFILESSA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PERFILESSA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PERFILESSA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PERFILESSA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PERFILESSA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PERFILESSA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PERFILESSA', N'ON'
GO
ALTER DATABASE [PERFILESSA] SET QUERY_STORE = OFF
GO
USE [PERFILESSA]
GO
/****** Object:  Table [dbo].[ca_departamentoArea]    Script Date: 27/06/2022 16:41:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_departamentoArea](
	[codigoDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[nombreDepartamento] [varchar](512) NOT NULL,
	[descripcionDepartamento] [nvarchar](512) NULL,
	[estatus] [int] NOT NULL,
	[usuarioCrea] [varchar](max) NOT NULL,
	[fechaCrea] [datetime] NOT NULL,
	[usuarioModifica] [varchar](max) NULL,
	[fechaModifica] [datetime] NULL,
 CONSTRAINT [pk_ca_departamentoArea] PRIMARY KEY CLUSTERED 
(
	[codigoDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ca_departamentoArea] ON 

INSERT [dbo].[ca_departamentoArea] ([codigoDepartamento], [nombreDepartamento], [descripcionDepartamento], [estatus], [usuarioCrea], [fechaCrea], [usuarioModifica], [fechaModifica]) VALUES (1, N'Créditos y Cobros', N'', 0, N'admin', CAST(N'2022-02-10T19:40:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[ca_departamentoArea] ([codigoDepartamento], [nombreDepartamento], [descripcionDepartamento], [estatus], [usuarioCrea], [fechaCrea], [usuarioModifica], [fechaModifica]) VALUES (2, N'Publicidad e Imagen Corporativa', N'', 0, N'admin', CAST(N'2022-02-10T19:40:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[ca_departamentoArea] ([codigoDepartamento], [nombreDepartamento], [descripcionDepartamento], [estatus], [usuarioCrea], [fechaCrea], [usuarioModifica], [fechaModifica]) VALUES (3, N'Gerencia General', N'', 1, N'admin', CAST(N'2022-02-10T19:40:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[ca_departamentoArea] ([codigoDepartamento], [nombreDepartamento], [descripcionDepartamento], [estatus], [usuarioCrea], [fechaCrea], [usuarioModifica], [fechaModifica]) VALUES (4, N'Finanzas', N'', 1, N'admin', CAST(N'2022-02-10T19:40:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[ca_departamentoArea] ([codigoDepartamento], [nombreDepartamento], [descripcionDepartamento], [estatus], [usuarioCrea], [fechaCrea], [usuarioModifica], [fechaModifica]) VALUES (5, N'Mercadeo', N'', 1, N'admin', CAST(N'2022-02-10T19:40:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[ca_departamentoArea] ([codigoDepartamento], [nombreDepartamento], [descripcionDepartamento], [estatus], [usuarioCrea], [fechaCrea], [usuarioModifica], [fechaModifica]) VALUES (6, N'Contabilidad', N'', 0, N'admin', CAST(N'2022-02-10T19:40:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[ca_departamentoArea] ([codigoDepartamento], [nombreDepartamento], [descripcionDepartamento], [estatus], [usuarioCrea], [fechaCrea], [usuarioModifica], [fechaModifica]) VALUES (7, N'Negocios', N'', 1, N'admin', CAST(N'2022-02-10T19:40:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[ca_departamentoArea] ([codigoDepartamento], [nombreDepartamento], [descripcionDepartamento], [estatus], [usuarioCrea], [fechaCrea], [usuarioModifica], [fechaModifica]) VALUES (8, N'Administración', N'', 1, N'admin', CAST(N'2022-02-10T19:40:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[ca_departamentoArea] ([codigoDepartamento], [nombreDepartamento], [descripcionDepartamento], [estatus], [usuarioCrea], [fechaCrea], [usuarioModifica], [fechaModifica]) VALUES (9, N'Informática', N'', 1, N'admin', CAST(N'2022-02-10T19:40:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[ca_departamentoArea] ([codigoDepartamento], [nombreDepartamento], [descripcionDepartamento], [estatus], [usuarioCrea], [fechaCrea], [usuarioModifica], [fechaModifica]) VALUES (10, N'Corporativo', N'', 0, N'admin', CAST(N'2022-02-10T19:40:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[ca_departamentoArea] ([codigoDepartamento], [nombreDepartamento], [descripcionDepartamento], [estatus], [usuarioCrea], [fechaCrea], [usuarioModifica], [fechaModifica]) VALUES (11, N'Riesgos', N'', 1, N'admin', CAST(N'2022-02-10T19:40:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[ca_departamentoArea] ([codigoDepartamento], [nombreDepartamento], [descripcionDepartamento], [estatus], [usuarioCrea], [fechaCrea], [usuarioModifica], [fechaModifica]) VALUES (12, N'Ventas', N'', 1, N'admin', CAST(N'2022-02-10T19:40:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ca_departamentoArea] OFF
GO
USE [master]

USE [PERFILESSA]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_empleados](
	[numeroDPIEmpleado] [int] NOT NULL,
	[primerNombreEmpleado] [varchar](50) NOT NULL,
	[segundoNombreEmpleado] [varchar](50) NULL,
	[primerApellidoEmpleado] [varchar](50) NOT NULL,
	[segundoApellidoEmpleado] [nvarchar](50) NULL,
	[sexoEmpleado] [varchar] NULL,
	[fechaIngresoEmpresaEmpleado] [datetime] NOT NULL,
	[fechaNacimientoEmpleado] [datetime] NOT NULL,  
	[edad] [int] NOT NULL,
	[direccionEmpleado] [varchar](300) NULL,
	[NIT_Empledo] [varchar](10) NULL,
	[departamentoAsignado] [int] NOT NULL,
 CONSTRAINT [pk_ca_empleados] PRIMARY KEY CLUSTERED 
	([numeroDPIEmpleado] ASC),
	CONSTRAINT [uc_numeroDPIEmpleado] UNIQUE 
        ([numeroDPIEmpleado]),
    CONSTRAINT [uc_NIT_Empledo] UNIQUE 
        ([NIT_Empledo])
)

USE [PERFILESSA] 
GO
ALTER TABLE [dbo].[ca_empleados]
ADD CONSTRAINT [fk_ca_empleados_ca_departamentoArea]
FOREIGN KEY  ([departamentoAsignado])
REFERENCES [dbo].[ca_departamentoArea] ([codigoDepartamento])

USE [PERFILESSA]
GO
ALTER TABLE [dbo].[ca_empleados]
ADD CONSTRAINT [uc_numeroDPIEmpleado] UNIQUE ([numeroDPIEmpleado])
USE [PERFILESSA] 
GO
ALTER TABLE [dbo].[ca_empleados]
ADD CONSTRAINT [uc_NIT_Empledo] UNIQUE ([NIT_Empledo])
