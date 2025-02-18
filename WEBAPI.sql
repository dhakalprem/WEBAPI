USE [master]
GO
/****** Object:  Database [WEBAPI]    Script Date: 7/18/2023 6:03:34 PM ******/
CREATE DATABASE [WEBAPI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WEBAPI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\WEBAPI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WEBAPI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\WEBAPI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [WEBAPI] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WEBAPI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WEBAPI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WEBAPI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WEBAPI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WEBAPI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WEBAPI] SET ARITHABORT OFF 
GO
ALTER DATABASE [WEBAPI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WEBAPI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WEBAPI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WEBAPI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WEBAPI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WEBAPI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WEBAPI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WEBAPI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WEBAPI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WEBAPI] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WEBAPI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WEBAPI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WEBAPI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WEBAPI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WEBAPI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WEBAPI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WEBAPI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WEBAPI] SET RECOVERY FULL 
GO
ALTER DATABASE [WEBAPI] SET  MULTI_USER 
GO
ALTER DATABASE [WEBAPI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WEBAPI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WEBAPI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WEBAPI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WEBAPI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WEBAPI] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WEBAPI', N'ON'
GO
ALTER DATABASE [WEBAPI] SET QUERY_STORE = ON
GO
ALTER DATABASE [WEBAPI] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [WEBAPI]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/18/2023 6:03:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 7/18/2023 6:03:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 7/18/2023 6:03:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](max) NOT NULL,
	[Department] [nvarchar](max) NOT NULL,
	[EmailId] [nvarchar](max) NOT NULL,
	[DOJ] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230707133854_initial', N'7.0.8')
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (1, N'HR')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
USE [master]
GO
ALTER DATABASE [WEBAPI] SET  READ_WRITE 
GO
