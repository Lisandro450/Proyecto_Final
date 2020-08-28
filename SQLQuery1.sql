USE [master]
GO
/****** Integrantes : Lizandro Balbuena Frías 19-EIIN-1-106
        Estarlin Samuel Melenciano 19-EIIN-1-032
        RUTH MAIRY NUÑEZ 19-EIIN-1-005       ******/
CREATE DATABASE [BD_Dataset_Development]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_Dataset_Development', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BD_Dataset_Development.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BD_Dataset_Development_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BD_Dataset_Development_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BD_Dataset_Development] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_Dataset_Development].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_Dataset_Development] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_Dataset_Development] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_Dataset_Development] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD_Dataset_Development] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_Dataset_Development] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET RECOVERY FULL 
GO
ALTER DATABASE [BD_Dataset_Development] SET  MULTI_USER 
GO
ALTER DATABASE [BD_Dataset_Development] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_Dataset_Development] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_Dataset_Development] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_Dataset_Development] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BD_Dataset_Development] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD_Dataset_Development', N'ON'
GO
USE [BD_Dataset_Development]
GO
/****** Object:  Table [dbo].[TB_Clientes]    Script Date: 27/08/2020 23:00:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Clientes](
	[Cod_Cliente] [int] NULL,
	[Nomb_Cliente] [nvarchar](30) NULL,
	[Apell_Cliente] [nvarchar](30) NULL,
	[Telef_Cliente] [nvarchar](12) NULL,
	[Direcc_Cliente] [nvarchar](20) NULL,
	[Product_Adquirido] [nvarchar](30) NULL,
	[Precio_Producto] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_Empleado]    Script Date: 27/08/2020 23:00:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Empleado](
	[Cod_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[Nomb_Empleado] [nvarchar](30) NULL,
	[Apell_Apellido] [nvarchar](30) NULL,
	[Direcc_Empleado] [nvarchar](30) NULL,
	[Telef_Empleado] [nvarchar](30) NULL,
	[Sueld_Empleado] [decimal](18, 0) NULL,
	[Cargo] [nvarchar](30) NULL,
 CONSTRAINT [PK_TB_Empleado] PRIMARY KEY CLUSTERED 
(
	[Cod_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_Producto]    Script Date: 27/08/2020 23:00:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Producto](
	[Cod_Producto] [int] IDENTITY(1,1) NOT NULL,
	[Nomb_Producto] [nvarchar](30) NULL,
	[Prec_Producto] [decimal](18, 0) NULL,
	[Marc_Producto] [int] NULL,
 CONSTRAINT [PK_TB_Producto] PRIMARY KEY CLUSTERED 
(
	[Cod_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_Proveedor1]    Script Date: 27/08/2020 23:00:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Proveedor1](
	[Cod_Proveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nomb_Proveedor] [nvarchar](30) NULL,
	[Apell_Proveedor] [nvarchar](30) NULL,
	[Telef_Proveedor] [nvarchar](12) NULL,
	[Direcc_Proveedor] [nvarchar](20) NULL,
	[Product_Proveedor] [nvarchar](30) NULL,
 CONSTRAINT [PK_TB_Proveedor1] PRIMARY KEY CLUSTERED 
(
	[Cod_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_Ventas]    Script Date: 27/08/2020 23:00:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Ventas](
	[Cod_Venta] [int] IDENTITY(1,1) NOT NULL,
	[Cantid_Product_Vendido] [int] NULL,
	[Precio_Total] [decimal](18, 0) NULL,
	[Nomb_Cliente] [nvarchar](30) NULL,
 CONSTRAINT [PK_TB_Ventas] PRIMARY KEY CLUSTERED 
(
	[Cod_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[TB_Clientes] ([Cod_Cliente], [Nomb_Cliente], [Apell_Cliente], [Telef_Cliente], [Direcc_Cliente], [Product_Adquirido], [Precio_Producto]) VALUES (102, N'Magalis', N'Santos', N'829-586-2553', N'Hainamosa', N'Sofware Hotelero', N'$850,000,000')
INSERT [dbo].[TB_Clientes] ([Cod_Cliente], [Nomb_Cliente], [Apell_Cliente], [Telef_Cliente], [Direcc_Cliente], [Product_Adquirido], [Precio_Producto]) VALUES (103, N'Hector', N'Contreras', N'809-425-3636', N'Invivienda', N'Sofware contable', N'$1,000,000')
INSERT [dbo].[TB_Clientes] ([Cod_Cliente], [Nomb_Cliente], [Apell_Cliente], [Telef_Cliente], [Direcc_Cliente], [Product_Adquirido], [Precio_Producto]) VALUES (104, N'Wilkin', N'Frias', N'829-685-2536', N'Lucerna', N'Sofware veterinario', N'$850,000')
INSERT [dbo].[TB_Clientes] ([Cod_Cliente], [Nomb_Cliente], [Apell_Cliente], [Telef_Cliente], [Direcc_Cliente], [Product_Adquirido], [Precio_Producto]) VALUES (105, N'Estrella', N'De la Rosa', N'829-125-3652', N'C/ 24 , los rios', N'sofware sistema de inventario', N'$780,000')
INSERT [dbo].[TB_Clientes] ([Cod_Cliente], [Nomb_Cliente], [Apell_Cliente], [Telef_Cliente], [Direcc_Cliente], [Product_Adquirido], [Precio_Producto]) VALUES (106, N'Julio', N'Cury', N'809-785-3636', N'C/25 # 12 Invivienda', N'Sofware veterinario', N'$800,000')
INSERT [dbo].[TB_Clientes] ([Cod_Cliente], [Nomb_Cliente], [Apell_Cliente], [Telef_Cliente], [Direcc_Cliente], [Product_Adquirido], [Precio_Producto]) VALUES (107, N'Kefren', N'Figueroa', N'809-125-4525', N'C/ 12 # 24 Alma rosa', N'Sofware contable', N'$450,000')
INSERT [dbo].[TB_Clientes] ([Cod_Cliente], [Nomb_Cliente], [Apell_Cliente], [Telef_Cliente], [Direcc_Cliente], [Product_Adquirido], [Precio_Producto]) VALUES (108, N'Cindy', N'Nuñez', N'809-458-2525', N'C/2 # 4 invivienda', N'sofware de facturacion', N'$300,000')
INSERT [dbo].[TB_Clientes] ([Cod_Cliente], [Nomb_Cliente], [Apell_Cliente], [Telef_Cliente], [Direcc_Cliente], [Product_Adquirido], [Precio_Producto]) VALUES (109, N'Santa', N'Contreras', N'809-125-6394', N'C/8 # 10 Hainamosa', N'sofware veterinario', N'$250,000')
INSERT [dbo].[TB_Clientes] ([Cod_Cliente], [Nomb_Cliente], [Apell_Cliente], [Telef_Cliente], [Direcc_Cliente], [Product_Adquirido], [Precio_Producto]) VALUES (110, N'Ramon', N'Contreras', N'809-486-8585', N'C/ 10 #5 lucerna', N'sofware de inventario', N'$950,000')
INSERT [dbo].[TB_Clientes] ([Cod_Cliente], [Nomb_Cliente], [Apell_Cliente], [Telef_Cliente], [Direcc_Cliente], [Product_Adquirido], [Precio_Producto]) VALUES (111, N'Fredy', N'Martinez', N'849-525-6366', N'c/2 # 3 invi cea', N'Sofware hoteleo', N'$750,000')
SET IDENTITY_INSERT [dbo].[TB_Empleado] ON 

INSERT [dbo].[TB_Empleado] ([Cod_Empleado], [Nomb_Empleado], [Apell_Apellido], [Direcc_Empleado], [Telef_Empleado], [Sueld_Empleado], [Cargo]) VALUES (1, N'Wilfredo', N'Fias', N'Hainamosa', N'809-452-6363', CAST(25000 AS Decimal(18, 0)), N'Soporte tecnico')
INSERT [dbo].[TB_Empleado] ([Cod_Empleado], [Nomb_Empleado], [Apell_Apellido], [Direcc_Empleado], [Telef_Empleado], [Sueld_Empleado], [Cargo]) VALUES (2, N'Guido', N'Gomez', N'Invivienda', N'809-425-3636', CAST(30000 AS Decimal(18, 0)), N'Programador1')
INSERT [dbo].[TB_Empleado] ([Cod_Empleado], [Nomb_Empleado], [Apell_Apellido], [Direcc_Empleado], [Telef_Empleado], [Sueld_Empleado], [Cargo]) VALUES (3, N'Mariasela', N'Alvarez', N'Lucerna', N'849-525-3636', CAST(15000 AS Decimal(18, 0)), N'Ayudante de programacion')
INSERT [dbo].[TB_Empleado] ([Cod_Empleado], [Nomb_Empleado], [Apell_Apellido], [Direcc_Empleado], [Telef_Empleado], [Sueld_Empleado], [Cargo]) VALUES (4, N'Claudina', N'Frias', N'Los Guandules', N'809-362-5288', CAST(20000 AS Decimal(18, 0)), N'Programador2')
INSERT [dbo].[TB_Empleado] ([Cod_Empleado], [Nomb_Empleado], [Apell_Apellido], [Direcc_Empleado], [Telef_Empleado], [Sueld_Empleado], [Cargo]) VALUES (5, N'Rosa', N'Martinez', N'Villa Juana', N'809-632-8585', CAST(12000 AS Decimal(18, 0)), N'Diseño Web')
INSERT [dbo].[TB_Empleado] ([Cod_Empleado], [Nomb_Empleado], [Apell_Apellido], [Direcc_Empleado], [Telef_Empleado], [Sueld_Empleado], [Cargo]) VALUES (6, N'Maria', N'Martinez', N'Cancino1', N'809-425-3632', CAST(21200 AS Decimal(18, 0)), N'Chofer')
INSERT [dbo].[TB_Empleado] ([Cod_Empleado], [Nomb_Empleado], [Apell_Apellido], [Direcc_Empleado], [Telef_Empleado], [Sueld_Empleado], [Cargo]) VALUES (7, N'Luis', N'Corona', N'Cancino2', N'809-365-2539', CAST(2000 AS Decimal(18, 0)), N'Auxiliar de Archivo')
INSERT [dbo].[TB_Empleado] ([Cod_Empleado], [Nomb_Empleado], [Apell_Apellido], [Direcc_Empleado], [Telef_Empleado], [Sueld_Empleado], [Cargo]) VALUES (8, N'Alex', N'Tiburcio', N'El Almirante', N'849-252-3625', CAST(45000 AS Decimal(18, 0)), N'Programador Junior')
INSERT [dbo].[TB_Empleado] ([Cod_Empleado], [Nomb_Empleado], [Apell_Apellido], [Direcc_Empleado], [Telef_Empleado], [Sueld_Empleado], [Cargo]) VALUES (9, N'Pedro', N'Santos', N'Villa Consuelo', N'809-785-695', CAST(60000 AS Decimal(18, 0)), N'Programador junior2')
INSERT [dbo].[TB_Empleado] ([Cod_Empleado], [Nomb_Empleado], [Apell_Apellido], [Direcc_Empleado], [Telef_Empleado], [Sueld_Empleado], [Cargo]) VALUES (10, N'Samuel', N'Gomez', N'Villa Juana', N'809-452-3636', CAST(45000 AS Decimal(18, 0)), N'Analista de sistema')
SET IDENTITY_INSERT [dbo].[TB_Empleado] OFF
SET IDENTITY_INSERT [dbo].[TB_Producto] ON 

INSERT [dbo].[TB_Producto] ([Cod_Producto], [Nomb_Producto], [Prec_Producto], [Marc_Producto]) VALUES (1, N'Sofware de contabilidad', CAST(100000 AS Decimal(18, 0)), 202)
INSERT [dbo].[TB_Producto] ([Cod_Producto], [Nomb_Producto], [Prec_Producto], [Marc_Producto]) VALUES (2, N'sofware hotelero', CAST(75000 AS Decimal(18, 0)), 201)
INSERT [dbo].[TB_Producto] ([Cod_Producto], [Nomb_Producto], [Prec_Producto], [Marc_Producto]) VALUES (3, N'sofware veterinario', CAST(850000 AS Decimal(18, 0)), 202)
INSERT [dbo].[TB_Producto] ([Cod_Producto], [Nomb_Producto], [Prec_Producto], [Marc_Producto]) VALUES (4, N'Sofware contable', CAST(100000 AS Decimal(18, 0)), 203)
INSERT [dbo].[TB_Producto] ([Cod_Producto], [Nomb_Producto], [Prec_Producto], [Marc_Producto]) VALUES (5, N'sofware de facturacion', CAST(300000 AS Decimal(18, 0)), 204)
INSERT [dbo].[TB_Producto] ([Cod_Producto], [Nomb_Producto], [Prec_Producto], [Marc_Producto]) VALUES (6, N'sofware hotelero', CAST(750000 AS Decimal(18, 0)), 205)
INSERT [dbo].[TB_Producto] ([Cod_Producto], [Nomb_Producto], [Prec_Producto], [Marc_Producto]) VALUES (7, N'sofware sistema de inventario', CAST(800000 AS Decimal(18, 0)), 206)
INSERT [dbo].[TB_Producto] ([Cod_Producto], [Nomb_Producto], [Prec_Producto], [Marc_Producto]) VALUES (8, N'sofware financiero', CAST(850000 AS Decimal(18, 0)), 207)
INSERT [dbo].[TB_Producto] ([Cod_Producto], [Nomb_Producto], [Prec_Producto], [Marc_Producto]) VALUES (9, N'sofware hoteleo nivel 2', CAST(84000 AS Decimal(18, 0)), 208)
INSERT [dbo].[TB_Producto] ([Cod_Producto], [Nomb_Producto], [Prec_Producto], [Marc_Producto]) VALUES (10, N'sofware veterinario 2', CAST(400000 AS Decimal(18, 0)), 209)
INSERT [dbo].[TB_Producto] ([Cod_Producto], [Nomb_Producto], [Prec_Producto], [Marc_Producto]) VALUES (11, N'sofware de financiacion', CAST(450000 AS Decimal(18, 0)), 210)
SET IDENTITY_INSERT [dbo].[TB_Producto] OFF
SET IDENTITY_INSERT [dbo].[TB_Proveedor1] ON 

INSERT [dbo].[TB_Proveedor1] ([Cod_Proveedor], [Nomb_Proveedor], [Apell_Proveedor], [Telef_Proveedor], [Direcc_Proveedor], [Product_Proveedor]) VALUES (1, N'Jose Luis', N'Martinez', N'809-525-6369', N'Hainamosa', N'Monitor Led')
INSERT [dbo].[TB_Proveedor1] ([Cod_Proveedor], [Nomb_Proveedor], [Apell_Proveedor], [Telef_Proveedor], [Direcc_Proveedor], [Product_Proveedor]) VALUES (2, N'Jean Carlos', N'Contreras', N'809-152-3636', N'Invivienda', N'Mouse ')
INSERT [dbo].[TB_Proveedor1] ([Cod_Proveedor], [Nomb_Proveedor], [Apell_Proveedor], [Telef_Proveedor], [Direcc_Proveedor], [Product_Proveedor]) VALUES (3, N'Pedro ', N'Nuñez', N'809-452-3636', N'Lucerna', N'Laptop')
INSERT [dbo].[TB_Proveedor1] ([Cod_Proveedor], [Nomb_Proveedor], [Apell_Proveedor], [Telef_Proveedor], [Direcc_Proveedor], [Product_Proveedor]) VALUES (4, N'Huchi', N'Lora', N'829-635-2523', N'Los Guandules', N'Teclados')
INSERT [dbo].[TB_Proveedor1] ([Cod_Proveedor], [Nomb_Proveedor], [Apell_Proveedor], [Telef_Proveedor], [Direcc_Proveedor], [Product_Proveedor]) VALUES (5, N'Nuria', N'Frias', N'849-253-5255', N'Villa Juana', N'Impresora')
INSERT [dbo].[TB_Proveedor1] ([Cod_Proveedor], [Nomb_Proveedor], [Apell_Proveedor], [Telef_Proveedor], [Direcc_Proveedor], [Product_Proveedor]) VALUES (6, N'Altagracia', N'Salazar', N'809-252-3636', N'Villa Consuelo', N'Cable de corriente')
INSERT [dbo].[TB_Proveedor1] ([Cod_Proveedor], [Nomb_Proveedor], [Apell_Proveedor], [Telef_Proveedor], [Direcc_Proveedor], [Product_Proveedor]) VALUES (7, N'Jose', N'De la Rosa', N'809-362-5288', N'Villa consuelo', N'Disco Duroa')
INSERT [dbo].[TB_Proveedor1] ([Cod_Proveedor], [Nomb_Proveedor], [Apell_Proveedor], [Telef_Proveedor], [Direcc_Proveedor], [Product_Proveedor]) VALUES (8, N'Feliz', N'Holguin', N'809-425-8965', N'Almirante', N'Memoria Ram')
INSERT [dbo].[TB_Proveedor1] ([Cod_Proveedor], [Nomb_Proveedor], [Apell_Proveedor], [Telef_Proveedor], [Direcc_Proveedor], [Product_Proveedor]) VALUES (9, N'Oscar', N'Martinez', N'809-425-3636', N'Villa Tropicalia', N'Bocinas logitech')
INSERT [dbo].[TB_Proveedor1] ([Cod_Proveedor], [Nomb_Proveedor], [Apell_Proveedor], [Telef_Proveedor], [Direcc_Proveedor], [Product_Proveedor]) VALUES (10, N'Fredy ', N'Martinez', N'809-362-5255', N'Los Mina', N'Mesa de computadora')
SET IDENTITY_INSERT [dbo].[TB_Proveedor1] OFF
SET IDENTITY_INSERT [dbo].[TB_Ventas] ON 

INSERT [dbo].[TB_Ventas] ([Cod_Venta], [Cantid_Product_Vendido], [Precio_Total], [Nomb_Cliente]) VALUES (1, 3, CAST(450000 AS Decimal(18, 0)), N'Luis Nuñez')
INSERT [dbo].[TB_Ventas] ([Cod_Venta], [Cantid_Product_Vendido], [Precio_Total], [Nomb_Cliente]) VALUES (2, 1, CAST(250000 AS Decimal(18, 0)), N'Oscar Martinez')
INSERT [dbo].[TB_Ventas] ([Cod_Venta], [Cantid_Product_Vendido], [Precio_Total], [Nomb_Cliente]) VALUES (3, 2, CAST(80000 AS Decimal(18, 0)), N'Wilkin Martinez')
INSERT [dbo].[TB_Ventas] ([Cod_Venta], [Cantid_Product_Vendido], [Precio_Total], [Nomb_Cliente]) VALUES (4, 1, CAST(40000 AS Decimal(18, 0)), N'Rauli Gutierrez')
INSERT [dbo].[TB_Ventas] ([Cod_Venta], [Cantid_Product_Vendido], [Precio_Total], [Nomb_Cliente]) VALUES (5, 4, CAST(800000 AS Decimal(18, 0)), N'John Contreras')
INSERT [dbo].[TB_Ventas] ([Cod_Venta], [Cantid_Product_Vendido], [Precio_Total], [Nomb_Cliente]) VALUES (6, 1, CAST(450000 AS Decimal(18, 0)), N'Pedro Sanchez')
INSERT [dbo].[TB_Ventas] ([Cod_Venta], [Cantid_Product_Vendido], [Precio_Total], [Nomb_Cliente]) VALUES (7, 1, CAST(230000 AS Decimal(18, 0)), N'Claudina Contreras')
INSERT [dbo].[TB_Ventas] ([Cod_Venta], [Cantid_Product_Vendido], [Precio_Total], [Nomb_Cliente]) VALUES (8, 2, CAST(450000 AS Decimal(18, 0)), N'Neldo Contreras')
INSERT [dbo].[TB_Ventas] ([Cod_Venta], [Cantid_Product_Vendido], [Precio_Total], [Nomb_Cliente]) VALUES (9, 3, CAST(250000 AS Decimal(18, 0)), N'Jose Luis')
INSERT [dbo].[TB_Ventas] ([Cod_Venta], [Cantid_Product_Vendido], [Precio_Total], [Nomb_Cliente]) VALUES (10, 5, CAST(1 AS Decimal(18, 0)), NULL)
INSERT [dbo].[TB_Ventas] ([Cod_Venta], [Cantid_Product_Vendido], [Precio_Total], [Nomb_Cliente]) VALUES (11, 1, CAST(20000 AS Decimal(18, 0)), N'Jonas Contreras')
INSERT [dbo].[TB_Ventas] ([Cod_Venta], [Cantid_Product_Vendido], [Precio_Total], [Nomb_Cliente]) VALUES (12, 1, CAST(80000 AS Decimal(18, 0)), N'JImi Nuñez')
SET IDENTITY_INSERT [dbo].[TB_Ventas] OFF
USE [master]
GO
ALTER DATABASE [BD_Dataset_Development] SET  READ_WRITE 
GO
