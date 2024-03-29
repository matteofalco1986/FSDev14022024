USE [master]
GO
/****** Object:  Database [Cinema]    Script Date: 15/02/2024 00:07:47 ******/
CREATE DATABASE [Cinema]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cinema', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Cinema.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cinema_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Cinema_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Cinema] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cinema].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cinema] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cinema] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cinema] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cinema] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cinema] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cinema] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cinema] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cinema] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cinema] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cinema] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cinema] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cinema] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cinema] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cinema] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cinema] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cinema] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cinema] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cinema] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cinema] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cinema] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cinema] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cinema] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cinema] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cinema] SET  MULTI_USER 
GO
ALTER DATABASE [Cinema] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cinema] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cinema] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cinema] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cinema] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Cinema] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Cinema] SET QUERY_STORE = ON
GO
ALTER DATABASE [Cinema] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Cinema]
GO
/****** Object:  Table [dbo].[Prenotazione]    Script Date: 15/02/2024 00:07:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prenotazione](
	[IDPrenotazione] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](20) NULL,
	[Cognome] [nvarchar](20) NULL,
	[Sala] [int] NULL,
	[Biglietto] [int] NULL,
 CONSTRAINT [PK_Prenotazione] PRIMARY KEY CLUSTERED 
(
	[IDPrenotazione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 15/02/2024 00:07:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[IDSala] [int] IDENTITY(1,1) NOT NULL,
	[NomeSala] [nchar](10) NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[IDSala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoBiglietto]    Script Date: 15/02/2024 00:07:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoBiglietto](
	[IDTipoBiglietto] [int] IDENTITY(1,1) NOT NULL,
	[Descrizione] [nvarchar](10) NULL,
 CONSTRAINT [PK_TipoBiglietto] PRIMARY KEY CLUSTERED 
(
	[IDTipoBiglietto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Prenotazione] ON 

INSERT [dbo].[Prenotazione] ([IDPrenotazione], [Nome], [Cognome], [Sala], [Biglietto]) VALUES (1, N'Gordon', N'Ramsay', 2, 2)
INSERT [dbo].[Prenotazione] ([IDPrenotazione], [Nome], [Cognome], [Sala], [Biglietto]) VALUES (2, N'Andrea', N'Cipriani', 2, 1)
INSERT [dbo].[Prenotazione] ([IDPrenotazione], [Nome], [Cognome], [Sala], [Biglietto]) VALUES (3, N'Ciro', N'Galli', 1, 2)
INSERT [dbo].[Prenotazione] ([IDPrenotazione], [Nome], [Cognome], [Sala], [Biglietto]) VALUES (4, N'Valletto', N'Paioli', 1, 1)
INSERT [dbo].[Prenotazione] ([IDPrenotazione], [Nome], [Cognome], [Sala], [Biglietto]) VALUES (5, N'Perla', N'Capidani', 2, 2)
INSERT [dbo].[Prenotazione] ([IDPrenotazione], [Nome], [Cognome], [Sala], [Biglietto]) VALUES (6, N'Garpelli', N'Lo Scultore', 1, 1)
INSERT [dbo].[Prenotazione] ([IDPrenotazione], [Nome], [Cognome], [Sala], [Biglietto]) VALUES (7, N'Ciro', N'Vagliati', 2, 2)
INSERT [dbo].[Prenotazione] ([IDPrenotazione], [Nome], [Cognome], [Sala], [Biglietto]) VALUES (8, N'Caravatti', N'Posimo', 2, 2)
INSERT [dbo].[Prenotazione] ([IDPrenotazione], [Nome], [Cognome], [Sala], [Biglietto]) VALUES (9, N'Tergo', N'Perli', 2, 1)
INSERT [dbo].[Prenotazione] ([IDPrenotazione], [Nome], [Cognome], [Sala], [Biglietto]) VALUES (10, N'Valletto', N'Perli', 2, 2)
INSERT [dbo].[Prenotazione] ([IDPrenotazione], [Nome], [Cognome], [Sala], [Biglietto]) VALUES (11, N'Caravatti', N'Principo', 1, 1)
SET IDENTITY_INSERT [dbo].[Prenotazione] OFF
GO
SET IDENTITY_INSERT [dbo].[Sale] ON 

INSERT [dbo].[Sale] ([IDSala], [NomeSala]) VALUES (1, N'Nord      ')
INSERT [dbo].[Sale] ([IDSala], [NomeSala]) VALUES (2, N'Est       ')
INSERT [dbo].[Sale] ([IDSala], [NomeSala]) VALUES (3, N'Sud       ')
SET IDENTITY_INSERT [dbo].[Sale] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoBiglietto] ON 

INSERT [dbo].[TipoBiglietto] ([IDTipoBiglietto], [Descrizione]) VALUES (1, N'Intero')
INSERT [dbo].[TipoBiglietto] ([IDTipoBiglietto], [Descrizione]) VALUES (2, N'Ridotto')
SET IDENTITY_INSERT [dbo].[TipoBiglietto] OFF
GO
ALTER TABLE [dbo].[Prenotazione]  WITH CHECK ADD  CONSTRAINT [FK_Prenotazione_Sale] FOREIGN KEY([Sala])
REFERENCES [dbo].[Sale] ([IDSala])
GO
ALTER TABLE [dbo].[Prenotazione] CHECK CONSTRAINT [FK_Prenotazione_Sale]
GO
ALTER TABLE [dbo].[Prenotazione]  WITH CHECK ADD  CONSTRAINT [FK_Prenotazione_TipoBiglietto] FOREIGN KEY([Biglietto])
REFERENCES [dbo].[TipoBiglietto] ([IDTipoBiglietto])
GO
ALTER TABLE [dbo].[Prenotazione] CHECK CONSTRAINT [FK_Prenotazione_TipoBiglietto]
GO
USE [master]
GO
ALTER DATABASE [Cinema] SET  READ_WRITE 
GO
