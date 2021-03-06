USE [master]
GO
/****** Wagner Matos  matricula: 16-eiin-1-009 ******/

/****** Francisco Rosario matricula: 16-siin-1-141 ******/

/****** Joel Mateo matricula: 17-miin-1-077 ******/

CREATE DATABASE [farmacia] ON  PRIMARY 
( NAME = N'farmacia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\farmacia.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'farmacia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\farmacia_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [farmacia] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [farmacia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [farmacia] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [farmacia] SET ANSI_NULLS OFF
GO
ALTER DATABASE [farmacia] SET ANSI_PADDING OFF
GO
ALTER DATABASE [farmacia] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [farmacia] SET ARITHABORT OFF
GO
ALTER DATABASE [farmacia] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [farmacia] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [farmacia] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [farmacia] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [farmacia] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [farmacia] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [farmacia] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [farmacia] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [farmacia] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [farmacia] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [farmacia] SET  ENABLE_BROKER
GO
ALTER DATABASE [farmacia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [farmacia] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [farmacia] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [farmacia] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [farmacia] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [farmacia] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [farmacia] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [farmacia] SET  READ_WRITE
GO
ALTER DATABASE [farmacia] SET RECOVERY FULL
GO
ALTER DATABASE [farmacia] SET  MULTI_USER
GO
ALTER DATABASE [farmacia] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [farmacia] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'farmacia', N'ON'
GO
USE [farmacia]
GO
/****** Object:  Table [dbo].[medicamentos]    Script Date: 04/09/2018 01:47:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicamentos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Precio] [int] NULL,
 CONSTRAINT [PK_medicamentos] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[medicamentos] ON
INSERT [dbo].[medicamentos] ([codigo], [Nombre], [Precio]) VALUES (1, N'apirina ', 39)
INSERT [dbo].[medicamentos] ([codigo], [Nombre], [Precio]) VALUES (2, N'acetaminofen', 50)
INSERT [dbo].[medicamentos] ([codigo], [Nombre], [Precio]) VALUES (3, N'suero', 5)
INSERT [dbo].[medicamentos] ([codigo], [Nombre], [Precio]) VALUES (4, N'winasor', 25)
INSERT [dbo].[medicamentos] ([codigo], [Nombre], [Precio]) VALUES (5, N'diclofenac', 3)
INSERT [dbo].[medicamentos] ([codigo], [Nombre], [Precio]) VALUES (6, N'pastillas de bacalao', 4)
INSERT [dbo].[medicamentos] ([codigo], [Nombre], [Precio]) VALUES (7, N'vitamina b ', 9)
INSERT [dbo].[medicamentos] ([codigo], [Nombre], [Precio]) VALUES (8, N'vitamina c', 1)
INSERT [dbo].[medicamentos] ([codigo], [Nombre], [Precio]) VALUES (9, N'vitamina a', 10)
INSERT [dbo].[medicamentos] ([codigo], [Nombre], [Precio]) VALUES (10, N'complejo b', 47)
SET IDENTITY_INSERT [dbo].[medicamentos] OFF
/****** Object:  Table [dbo].[empleado]    Script Date: 04/09/2018 01:47:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_empleado] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[empleado] ON
INSERT [dbo].[empleado] ([codigo], [Nombre]) VALUES (1, N'Juan Arias')
INSERT [dbo].[empleado] ([codigo], [Nombre]) VALUES (2, N'Maria Montes')
INSERT [dbo].[empleado] ([codigo], [Nombre]) VALUES (3, N'Pedro Aquino ')
INSERT [dbo].[empleado] ([codigo], [Nombre]) VALUES (4, N'Felix Mateo')
INSERT [dbo].[empleado] ([codigo], [Nombre]) VALUES (5, N'Jose Perez')
INSERT [dbo].[empleado] ([codigo], [Nombre]) VALUES (6, N'Joel Corporan')
INSERT [dbo].[empleado] ([codigo], [Nombre]) VALUES (7, N'Maria Baez')
INSERT [dbo].[empleado] ([codigo], [Nombre]) VALUES (8, N'Juana Mendez')
INSERT [dbo].[empleado] ([codigo], [Nombre]) VALUES (9, N'Pepin Corripio')
INSERT [dbo].[empleado] ([codigo], [Nombre]) VALUES (10, N'Ramon Torres')
SET IDENTITY_INSERT [dbo].[empleado] OFF
/****** Object:  Table [dbo].[caja]    Script Date: 04/09/2018 01:47:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caja](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[piso] [int] NULL,
 CONSTRAINT [PK_caja] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[caja] ON
INSERT [dbo].[caja] ([codigo], [piso]) VALUES (1, 1)
INSERT [dbo].[caja] ([codigo], [piso]) VALUES (2, 2)
INSERT [dbo].[caja] ([codigo], [piso]) VALUES (3, 3)
INSERT [dbo].[caja] ([codigo], [piso]) VALUES (4, 4)
INSERT [dbo].[caja] ([codigo], [piso]) VALUES (5, 5)
INSERT [dbo].[caja] ([codigo], [piso]) VALUES (6, 6)
INSERT [dbo].[caja] ([codigo], [piso]) VALUES (7, 7)
INSERT [dbo].[caja] ([codigo], [piso]) VALUES (8, 8)
INSERT [dbo].[caja] ([codigo], [piso]) VALUES (9, 9)
INSERT [dbo].[caja] ([codigo], [piso]) VALUES (10, 10)
SET IDENTITY_INSERT [dbo].[caja] OFF
/****** Object:  Table [dbo].[salida_mercancia]    Script Date: 04/09/2018 01:47:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salida_mercancia](
	[caja] [int] NULL,
	[medicamento] [int] NULL,
	[empleado] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[salida_mercancia] ([caja], [medicamento], [empleado]) VALUES (1, 2, 3)
INSERT [dbo].[salida_mercancia] ([caja], [medicamento], [empleado]) VALUES (2, 3, 2)
INSERT [dbo].[salida_mercancia] ([caja], [medicamento], [empleado]) VALUES (3, 4, 5)
INSERT [dbo].[salida_mercancia] ([caja], [medicamento], [empleado]) VALUES (4, 1, 4)
INSERT [dbo].[salida_mercancia] ([caja], [medicamento], [empleado]) VALUES (5, 5, 6)
INSERT [dbo].[salida_mercancia] ([caja], [medicamento], [empleado]) VALUES (6, 8, 7)
INSERT [dbo].[salida_mercancia] ([caja], [medicamento], [empleado]) VALUES (7, 9, 8)
INSERT [dbo].[salida_mercancia] ([caja], [medicamento], [empleado]) VALUES (8, 6, 1)
INSERT [dbo].[salida_mercancia] ([caja], [medicamento], [empleado]) VALUES (9, 7, 9)
INSERT [dbo].[salida_mercancia] ([caja], [medicamento], [empleado]) VALUES (10, 6, 8)
/****** Object:  ForeignKey [FK_salida_mercancia_caja]    Script Date: 04/09/2018 01:47:37 ******/
ALTER TABLE [dbo].[salida_mercancia]  WITH CHECK ADD  CONSTRAINT [FK_salida_mercancia_caja] FOREIGN KEY([caja])
REFERENCES [dbo].[caja] ([codigo])
GO
ALTER TABLE [dbo].[salida_mercancia] CHECK CONSTRAINT [FK_salida_mercancia_caja]
GO
/****** Object:  ForeignKey [FK_salida_mercancia_empleado]    Script Date: 04/09/2018 01:47:37 ******/
ALTER TABLE [dbo].[salida_mercancia]  WITH CHECK ADD  CONSTRAINT [FK_salida_mercancia_empleado] FOREIGN KEY([empleado])
REFERENCES [dbo].[empleado] ([codigo])
GO
ALTER TABLE [dbo].[salida_mercancia] CHECK CONSTRAINT [FK_salida_mercancia_empleado]
GO
/****** Object:  ForeignKey [FK_salida_mercancia_medicamentos]    Script Date: 04/09/2018 01:47:37 ******/
ALTER TABLE [dbo].[salida_mercancia]  WITH CHECK ADD  CONSTRAINT [FK_salida_mercancia_medicamentos] FOREIGN KEY([medicamento])
REFERENCES [dbo].[medicamentos] ([codigo])
GO
ALTER TABLE [dbo].[salida_mercancia] CHECK CONSTRAINT [FK_salida_mercancia_medicamentos]
GO
