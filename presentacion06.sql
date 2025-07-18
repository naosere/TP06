USE [master]
GO
/****** Object:  Database [TP06_Presentacion]    Script Date: 17/7/2025 14:09:26 ******/
CREATE DATABASE [TP06_Presentacion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TP06_Presentacion', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TP06_Presentacion.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TP06_Presentacion_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TP06_Presentacion_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TP06_Presentacion] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TP06_Presentacion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TP06_Presentacion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET ARITHABORT OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TP06_Presentacion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TP06_Presentacion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TP06_Presentacion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TP06_Presentacion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET RECOVERY FULL 
GO
ALTER DATABASE [TP06_Presentacion] SET  MULTI_USER 
GO
ALTER DATABASE [TP06_Presentacion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TP06_Presentacion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TP06_Presentacion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TP06_Presentacion] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TP06_Presentacion] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TP06_Presentacion', N'ON'
GO
ALTER DATABASE [TP06_Presentacion] SET QUERY_STORE = OFF
GO
USE [TP06_Presentacion]
GO
/****** Object:  User [alumno]    Script Date: 17/7/2025 14:09:26 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[DatoFamiliar]    Script Date: 17/7/2025 14:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatoFamiliar](
	[IDDatoFamiliar] [int] NOT NULL,
	[IDUsuario] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[parentesco] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DatoFamiliar] PRIMARY KEY CLUSTERED 
(
	[IDDatoFamiliar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatoInteres]    Script Date: 17/7/2025 14:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatoInteres](
	[IDDatoInteres] [int] NOT NULL,
	[IDUsuario] [int] NOT NULL,
	[tipoInteres] [int] NOT NULL,
	[interes] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DatoInteres] PRIMARY KEY CLUSTERED 
(
	[IDDatoInteres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 17/7/2025 14:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IDUsuario] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[contraseña] [varchar](50) NOT NULL,
	[foto] [varchar](50) NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IDUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DatoFamiliar] ([IDDatoFamiliar], [IDUsuario], [nombre], [apellido], [parentesco], [descripcion]) VALUES (1, 1, N'Santiago', N'Serebrinsky', N'Padre', N'CANCHEROVICH')
INSERT [dbo].[DatoFamiliar] ([IDDatoFamiliar], [IDUsuario], [nombre], [apellido], [parentesco], [descripcion]) VALUES (2, 1, N'Karina', N'Warman', N'Madre', N'EPICARDA')
INSERT [dbo].[DatoFamiliar] ([IDDatoFamiliar], [IDUsuario], [nombre], [apellido], [parentesco], [descripcion]) VALUES (3, 1, N'Tamara', N'Serebrinsky', N'Hermana', N'FANTABULOSA')
INSERT [dbo].[DatoFamiliar] ([IDDatoFamiliar], [IDUsuario], [nombre], [apellido], [parentesco], [descripcion]) VALUES (4, 2, N'Fabian', N'Vallejos', N'Padre', N'Epico')
INSERT [dbo].[DatoFamiliar] ([IDDatoFamiliar], [IDUsuario], [nombre], [apellido], [parentesco], [descripcion]) VALUES (5, 2, N'Claudia', N'Nozyce', N'Madre', N'Epica')
INSERT [dbo].[DatoFamiliar] ([IDDatoFamiliar], [IDUsuario], [nombre], [apellido], [parentesco], [descripcion]) VALUES (6, 2, N'Tobias', N'Vallejos', N'Hermano', N'Epicardo')
INSERT [dbo].[DatoFamiliar] ([IDDatoFamiliar], [IDUsuario], [nombre], [apellido], [parentesco], [descripcion]) VALUES (7, 3, N'Martin', N'Naddeo', N'Padre', N'GODETO')
INSERT [dbo].[DatoFamiliar] ([IDDatoFamiliar], [IDUsuario], [nombre], [apellido], [parentesco], [descripcion]) VALUES (8, 3, N'Andrea', N'Plotquin', N'Madre', N'ARCHICAPO')
INSERT [dbo].[DatoFamiliar] ([IDDatoFamiliar], [IDUsuario], [nombre], [apellido], [parentesco], [descripcion]) VALUES (9, 3, N'Luca', N'Naddeo', N'Hermano', N'a')
GO
INSERT [dbo].[DatoInteres] ([IDDatoInteres], [IDUsuario], [tipoInteres], [interes]) VALUES (1, 1, 1, N'Fulbo')
INSERT [dbo].[DatoInteres] ([IDDatoInteres], [IDUsuario], [tipoInteres], [interes]) VALUES (2, 1, 2, N'SerieFavNao')
INSERT [dbo].[DatoInteres] ([IDDatoInteres], [IDUsuario], [tipoInteres], [interes]) VALUES (3, 1, 3, N'Luchetoxxx')
INSERT [dbo].[DatoInteres] ([IDDatoInteres], [IDUsuario], [tipoInteres], [interes]) VALUES (4, 1, 4, N'Chocolate')
INSERT [dbo].[DatoInteres] ([IDDatoInteres], [IDUsuario], [tipoInteres], [interes]) VALUES (5, 2, 1, N'Rugby')
INSERT [dbo].[DatoInteres] ([IDDatoInteres], [IDUsuario], [tipoInteres], [interes]) VALUES (6, 2, 2, N'Breaking Bad')
INSERT [dbo].[DatoInteres] ([IDDatoInteres], [IDUsuario], [tipoInteres], [interes]) VALUES (7, 2, 3, N'Naushi')
INSERT [dbo].[DatoInteres] ([IDDatoInteres], [IDUsuario], [tipoInteres], [interes]) VALUES (8, 2, 4, N'Chocolate')
GO
INSERT [dbo].[Usuario] ([IDUsuario], [nombre], [apellido], [email], [contraseña], [foto], [fechaNacimiento]) VALUES (1, N'Naomi', N'Serebrinsky', N'naosere@gmail.com', N'123', N'nao.jpg', CAST(N'2009-07-21' AS Date))
INSERT [dbo].[Usuario] ([IDUsuario], [nombre], [apellido], [email], [contraseña], [foto], [fechaNacimiento]) VALUES (2, N'Luciano', N'Vallejos', N'lucho.vallejos@gmail.com', N'123', N'lucho.jpg', CAST(N'2009-12-17' AS Date))
INSERT [dbo].[Usuario] ([IDUsuario], [nombre], [apellido], [email], [contraseña], [foto], [fechaNacimiento]) VALUES (3, N'Matias', N'Naddeo', N'matinaddeo@gmail.com', N'123', N'mati.jpg', CAST(N'2009-06-23' AS Date))
GO
ALTER TABLE [dbo].[DatoFamiliar]  WITH CHECK ADD  CONSTRAINT [FK_DatoFamiliar_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[DatoFamiliar] CHECK CONSTRAINT [FK_DatoFamiliar_Usuario]
GO
ALTER TABLE [dbo].[DatoInteres]  WITH CHECK ADD  CONSTRAINT [FK_DatoInteres_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[DatoInteres] CHECK CONSTRAINT [FK_DatoInteres_Usuario]
GO
USE [master]
GO
ALTER DATABASE [TP06_Presentacion] SET  READ_WRITE 
GO
