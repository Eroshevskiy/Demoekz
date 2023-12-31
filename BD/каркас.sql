USE [master]
GO
/****** Object:  Database [ryle]    Script Date: 27.09.2023 20:50:25 ******/
CREATE DATABASE [ryle]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ryle', FILENAME = N'D:\sql2\MSSQL15.SQLEXPRESS\MSSQL\DATA\ryle.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ryle_log', FILENAME = N'D:\sql2\MSSQL15.SQLEXPRESS\MSSQL\DATA\ryle_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ryle] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ryle].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ryle] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ryle] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ryle] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ryle] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ryle] SET ARITHABORT OFF 
GO
ALTER DATABASE [ryle] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ryle] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ryle] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ryle] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ryle] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ryle] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ryle] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ryle] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ryle] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ryle] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ryle] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ryle] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ryle] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ryle] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ryle] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ryle] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ryle] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ryle] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ryle] SET  MULTI_USER 
GO
ALTER DATABASE [ryle] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ryle] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ryle] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ryle] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ryle] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ryle] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ryle] SET QUERY_STORE = OFF
GO
USE [ryle]
GO
/****** Object:  Table [dbo].[merch]    Script Date: 27.09.2023 20:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merch](
	[id] [int] NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[descreption] [nvarchar](50) NOT NULL,
	[detailproiz] [nvarchar](50) NOT NULL,
	[cost] [int] NOT NULL,
	[discount] [int] NULL,
 CONSTRAINT [PK_merch] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 27.09.2023 20:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] NOT NULL,
	[id_status] [int] NOT NULL,
	[id_users] [int] NOT NULL,
	[id_point] [int] NOT NULL,
	[data] [datetime] NOT NULL,
	[kod] [int] NOT NULL,
	[cost] [int] NOT NULL,
	[discount] [int] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[point]    Script Date: 27.09.2023 20:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[point](
	[id] [int] NOT NULL,
	[title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_point] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sostav]    Script Date: 27.09.2023 20:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sostav](
	[id_orders] [int] NOT NULL,
	[id_merch] [int] NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [PK_sostav] PRIMARY KEY CLUSTERED 
(
	[id_orders] ASC,
	[id_merch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 27.09.2023 20:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] NOT NULL,
	[title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_users]    Script Date: 27.09.2023 20:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_users](
	[id] [int] NOT NULL,
	[role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_type_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 27.09.2023 20:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[pasword] [nvarchar](50) NOT NULL,
	[id_type] [int] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[merch] ([id], [title], [descreption], [detailproiz], [cost], [discount]) VALUES (1, N'руль', N'черный', N'Германия', 300, NULL)
INSERT [dbo].[merch] ([id], [title], [descreption], [detailproiz], [cost], [discount]) VALUES (2, N'масло', N'моторное', N'Германия', 500, 5)
INSERT [dbo].[merch] ([id], [title], [descreption], [detailproiz], [cost], [discount]) VALUES (3, N'шина', N'R16', N'Китай', 700, NULL)
GO
INSERT [dbo].[orders] ([id], [id_status], [id_users], [id_point], [data], [kod], [cost], [discount]) VALUES (1, 1, 1, 1, CAST(N'2023-09-15T00:00:00.000' AS DateTime), 1231, 123, NULL)
GO
INSERT [dbo].[point] ([id], [title]) VALUES (1, N'Пункт 1')
INSERT [dbo].[point] ([id], [title]) VALUES (2, N'Пункт 2')
GO
INSERT [dbo].[status] ([id], [title]) VALUES (1, N'новый')
INSERT [dbo].[status] ([id], [title]) VALUES (2, N'в работе')
GO
INSERT [dbo].[type_users] ([id], [role]) VALUES (1, N'администратор')
INSERT [dbo].[type_users] ([id], [role]) VALUES (2, N'менеджер')
INSERT [dbo].[type_users] ([id], [role]) VALUES (3, N'клиент')
GO
INSERT [dbo].[users] ([id], [login], [pasword], [id_type]) VALUES (1, N'root', N'1234', 1)
INSERT [dbo].[users] ([id], [login], [pasword], [id_type]) VALUES (2, N'manager', N'12345', 2)
INSERT [dbo].[users] ([id], [login], [pasword], [id_type]) VALUES (3, N'client', N'123456', 3)
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_point] FOREIGN KEY([id_point])
REFERENCES [dbo].[point] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_point]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_status] FOREIGN KEY([id_status])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_status]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users] FOREIGN KEY([id_users])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users]
GO
ALTER TABLE [dbo].[sostav]  WITH CHECK ADD  CONSTRAINT [FK_sostav_merch] FOREIGN KEY([id_merch])
REFERENCES [dbo].[merch] ([id])
GO
ALTER TABLE [dbo].[sostav] CHECK CONSTRAINT [FK_sostav_merch]
GO
ALTER TABLE [dbo].[sostav]  WITH CHECK ADD  CONSTRAINT [FK_sostav_orders] FOREIGN KEY([id_orders])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[sostav] CHECK CONSTRAINT [FK_sostav_orders]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_type_users] FOREIGN KEY([id_type])
REFERENCES [dbo].[type_users] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_type_users]
GO
USE [master]
GO
ALTER DATABASE [ryle] SET  READ_WRITE 
GO
