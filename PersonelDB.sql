USE [master]
GO
/****** Object:  Database [PersonelDB]    Script Date: 21.02.2021 11:53:17 ******/
CREATE DATABASE [PersonelDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PersonelDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\PersonelDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PersonelDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\PersonelDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PersonelDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PersonelDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PersonelDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PersonelDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PersonelDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PersonelDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PersonelDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PersonelDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PersonelDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PersonelDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PersonelDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PersonelDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PersonelDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PersonelDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PersonelDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PersonelDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PersonelDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PersonelDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PersonelDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PersonelDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PersonelDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PersonelDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PersonelDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PersonelDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PersonelDB] SET RECOVERY FULL 
GO
ALTER DATABASE [PersonelDB] SET  MULTI_USER 
GO
ALTER DATABASE [PersonelDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PersonelDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PersonelDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PersonelDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PersonelDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PersonelDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PersonelDB', N'ON'
GO
ALTER DATABASE [PersonelDB] SET QUERY_STORE = OFF
GO
USE [PersonelDB]
GO
/****** Object:  Table [dbo].[Tbl_Personel]    Script Date: 21.02.2021 11:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Personel](
	[Perid] [int] NOT NULL,
	[PerAd] [nvarchar](50) NULL,
	[PerSoyad] [varchar](50) NULL,
	[PerSehir] [varchar](50) NULL,
	[PerMaas] [smallint] NULL,
	[PerDurum] [bit] NULL,
	[PerMeslek] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Personel] PRIMARY KEY CLUSTERED 
(
	[Perid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yonetici]    Script Date: 21.02.2021 11:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yonetici](
	[KullaniciAd] [varchar](50) NULL,
	[Sifre] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (1, N'Meryem', N'Çevik', N'İstanbul', 4000, 1, N'Öğretmen')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (3, N'Rabia', N'Çevik', N'İstanbul', 20000, 1, N'Mühendis')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (4, N'Gülin', N'Yıldırım', N'İstanbul', 15000, 0, N'Mühendis')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (5, N'Aylin', N'Yıldırım', N'İstanbul', 30000, 1, N'Doktor')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (6, N'Seda', N'Sezin', N'Çanakkale', 6800, 0, N'Eczacı')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (7, N'Mürsel', N'Çevik', N'İstanbul', 10000, 1, N'Tekstilci')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (9, N'Melike', N'Varol', N'Adıyaman', 7000, 0, N'Bilgisayar Mühendisliği')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (11, N'Merve', N'Dursun', N'Mersin', 3500, 1, N'Kimyager')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (12, N'Yağmur', N'Gülgeç', N'Gaziantep', 4000, 0, N'Sekreter')
GO
INSERT [dbo].[Tbl_Yonetici] ([KullaniciAd], [Sifre]) VALUES (N'admin34', N'001122')
INSERT [dbo].[Tbl_Yonetici] ([KullaniciAd], [Sifre]) VALUES (N'personel01', N'123456')
GO
USE [master]
GO
ALTER DATABASE [PersonelDB] SET  READ_WRITE 
GO
