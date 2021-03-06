USE [master]
GO
/****** Object:  Database [GameTracker]    Script Date: 11/10/2016 23:57:10 ******/
CREATE DATABASE [GameTracker]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GameTracker', FILENAME = N'C:\Users\thiagoh\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\GameTracker.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GameTracker_log', FILENAME = N'C:\Users\thiagoh\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\GameTracker.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GameTracker] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GameTracker].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GameTracker] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [GameTracker] SET ANSI_NULLS ON 
GO
ALTER DATABASE [GameTracker] SET ANSI_PADDING ON 
GO
ALTER DATABASE [GameTracker] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [GameTracker] SET ARITHABORT ON 
GO
ALTER DATABASE [GameTracker] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GameTracker] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GameTracker] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GameTracker] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GameTracker] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [GameTracker] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [GameTracker] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GameTracker] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [GameTracker] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GameTracker] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GameTracker] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GameTracker] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GameTracker] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GameTracker] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GameTracker] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GameTracker] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GameTracker] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GameTracker] SET RECOVERY FULL 
GO
ALTER DATABASE [GameTracker] SET  MULTI_USER 
GO
ALTER DATABASE [GameTracker] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GameTracker] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GameTracker] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GameTracker] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GameTracker] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GameTracker] SET QUERY_STORE = OFF
GO
USE [GameTracker]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [GameTracker]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 11/10/2016 23:57:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](max) NOT NULL,
	[team1Id] [int] NOT NULL,
	[team2Id] [int] NOT NULL,
	[team1Score] [int] NOT NULL,
	[team2Score] [int] NOT NULL,
	[weekNumber] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[mainTitle] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Team]    Script Date: 11/10/2016 23:57:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[logoPath] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Game] ON 

INSERT [dbo].[Game] ([Id], [description], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [date], [mainTitle]) VALUES (6, N'description of the game', 1, 2, 89, 70, 41, CAST(N'2016-10-10T00:00:00.000' AS DateTime), N'main title 1')
INSERT [dbo].[Game] ([Id], [description], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [date], [mainTitle]) VALUES (7, N'desc', 3, 4, 99, 102, 41, CAST(N'2016-10-12T00:00:00.000' AS DateTime), N'main title 2')
INSERT [dbo].[Game] ([Id], [description], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [date], [mainTitle]) VALUES (8, N'desc', 5, 6, 50, 88, 41, CAST(N'2016-10-12T00:00:00.000' AS DateTime), N'title 3')
INSERT [dbo].[Game] ([Id], [description], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [date], [mainTitle]) VALUES (9, N'desc', 1, 3, 99, 102, 40, CAST(N'2016-10-01T00:00:00.000' AS DateTime), N'title 4')
INSERT [dbo].[Game] ([Id], [description], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [date], [mainTitle]) VALUES (11, N'desc', 14, 15, 77, 105, 40, CAST(N'2016-10-04T00:00:00.000' AS DateTime), N'title 5')
INSERT [dbo].[Game] ([Id], [description], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [date], [mainTitle]) VALUES (12, N'desc', 9, 12, 64, 66, 39, CAST(N'2016-10-01T00:00:00.000' AS DateTime), N'title 6')
INSERT [dbo].[Game] ([Id], [description], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [date], [mainTitle]) VALUES (13, N'desc', 13, 11, 88, 89, 40, CAST(N'2016-10-06T00:00:00.000' AS DateTime), N'title 7')
INSERT [dbo].[Game] ([Id], [description], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [date], [mainTitle]) VALUES (14, N'desc', 2, 3, 102, 111, 40, CAST(N'2016-10-03T00:00:00.000' AS DateTime), N'title 8')
INSERT [dbo].[Game] ([Id], [description], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [date], [mainTitle]) VALUES (16, N'desc', 4, 1, 97, 88, 40, CAST(N'2016-10-04T00:00:00.000' AS DateTime), N'title 9')
SET IDENTITY_INSERT [dbo].[Game] OFF
SET IDENTITY_INSERT [dbo].[Team] ON 

INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (1, N'Chicago Bulls', NULL)
INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (2, N'Cleveland Cavaliers', NULL)
INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (3, N'Detroit Pistons', NULL)
INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (4, N'Indiana Pacers', NULL)
INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (5, N'Milwaukee Bucks
', NULL)
INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (6, N'Atlanta Hawks
', NULL)
INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (7, N'Charlotte Hornets', NULL)
INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (8, N'Miami Heat', NULL)
INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (9, N'Orlando Magic', NULL)
INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (10, N'Washington Wizards', NULL)
INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (11, N'Boston Celtics', NULL)
INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (12, N'Brooklyn Nets
', NULL)
INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (13, N'New York Knicks
', NULL)
INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (14, N'Philadelphia 76ers
', NULL)
INSERT [dbo].[Team] ([Id], [name], [logoPath]) VALUES (15, N'Toronto Raptors
', NULL)
SET IDENTITY_INSERT [dbo].[Team] OFF
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_ToTeam1] FOREIGN KEY([team1Id])
REFERENCES [dbo].[Team] ([Id])
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_ToTeam1]
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_ToTeam2] FOREIGN KEY([team2Id])
REFERENCES [dbo].[Team] ([Id])
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_ToTeam2]
GO
USE [master]
GO
ALTER DATABASE [GameTracker] SET  READ_WRITE 
GO
