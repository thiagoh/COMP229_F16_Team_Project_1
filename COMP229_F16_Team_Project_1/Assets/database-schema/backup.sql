USE [master]
GO
/****** Object:  Database [GameTracker]    Script Date: 18/10/2016 22:38:06 ******/
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
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 18/10/2016 22:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 18/10/2016 22:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 18/10/2016 22:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 18/10/2016 22:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 18/10/2016 22:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 18/10/2016 22:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Game]    Script Date: 18/10/2016 22:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](max) NOT NULL,
	[spectators] [int] NOT NULL,
	[team1Id] [int] NOT NULL,
	[team2Id] [int] NOT NULL,
	[team1Score] [int] NOT NULL,
	[team2Score] [int] NOT NULL,
	[weekNumber] [int] NOT NULL,
	[mainTitle] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Team]    Script Date: 18/10/2016 22:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[description] [varchar](max) NULL,
	[logoPath] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201610181527381_InitialCreate', N'Microsoft.AspNet.Identity.EntityFramework.IdentityDbContext', 0x1F8B0800000000000400DD5CDD6EDC3616BE2FD0771074D52DDC917F3641D6182770C7766B6CFC838C53EC5DC09138632112A58A9463A3E893F5A28FB4AFB0A44469448AD4501A8D465E14483322F99DC3C343F2F0F063FEFBD7DFD30FCF61603DC104FB113AB38F2687B605911B793E5A9DD92959FEF4CEFEF0FEFBEFA6975EF86CFD56D43B61F5684B84CFEC4742E253C7C1EE230C019E84BE9B44385A92891B850EF022E7F8F0F05FCED1910329844DB12C6BFA2945C40F61F683FE9C45C88531494170137930C0FC3B2D9967A8D62D08218E810BCFEC9B12FF1CC7B7904CAE3D48C1C8CBE432FBDF5542EB7E8B92AFB6751EF8802A3887C1D2B60042110184AA7FFA19C3394922B49AC7F403081E5E6248EB2D418021EFD6E9BABA690F0F8F590F9D75C302CA4D3189C296804727DC648EDCBC93E1EDD2A4D4A8B9A158AF33C39ED985093F450135802CF0741624AC720BDB4FAA88079671BB83D2C58E2787ECBF036B9606244DE019822949407060DDA78BC077FF0D5F1EA2AF109D9D1C2D9627EFDEBC05DEC9DB7FC29337D59ED2BED27AC207FAE93E89629850DDE0B2ECBF6D39623B476E5836ABB4C9AD427D89CE16DBBA01CF1F215A91473A8F8EDFD9D695FF0CBDE20B77AECFC8A7938B3622494A7FDEA6410016012CCB9D4699ECCF06A9C76FDEF622F5163CF9AB6CE825F974E224D8B63EC1202BC58F7E9C4F2F61BCBFF06A574914B2DFA27FE5A55FE6519AB8AC3391B6CA0348569088DA4D9DB5F31AB93483EADFAD0BD4F1BB36D3B4EEDECAAAAC435D66422162E8D950E8BB5BB99D3CAE7F6F1BBFA7BD9645F432047ED0C32A6A2085C6354B3F0961D9CB9F23EAB300B5D6F91E604C87D6FB15E0C706D5E95F7B507D0EDD34A10E3527208C772EEDFE3142F0360D176CD60C27ABB7A179F8165D019744C92562ADB6C6FB18B95FA3945C22EF0210F899B80520FBF9E087E600BDA873EEBA10E32BEACCD09B45346C2F00AF1139396E0DC796B27D4731B300F8617318C3D4FC52D4ABC73195626D2053ADA38A649A34FC18AD7C64A061514FA3615EDCAC21AFD356438664A020AFA6D12F2B6D562FAFD25B24988D47FF9B7306FBFFBE43EB267CC58C73BA0CC25F2082095DABBC7B40084CD07A044C16877D4404D9F031A13BDF803249BF8120ED5B54A7D990CDFDFE6743063BFED990A9493F3FF91E0B3D0C0E4845650A6F545F7DF6DA3CE724CD869E0E423787163ECC1AA09B2EE71847AE9FCD02456A8C273644FD69A0666DCE72E4BD913325B463D4D1FD98BA36FD42FB66CB4E75872E600009B4CEDD3C753803D8055EDD8CB4435E0BC58A1D55A1D83A63222AF7634D26F57498B046809D74309DA93E22F569E123D78F41B0D14A524BC32D8CF5BD9421975CC018222670A3254C84AB13244C81528E34289B2C34752A1E67E688D5D074D3802BE354F5880FEC8AAAE858A3198FD976EA8C0A430DE88D0A639848D7A6F60677477E0E311A74F950321E77948E421ACD78D0B47B77140D35B43B8AC6785DEE989F3A8DC65C3A828EC719C583EFFEB6E9BA9586F644C1122373C43C8AA46D086D0113C9192F16AC043E13C5198B2AC98F599847ACB25B3084392462C2651DB62AC349A71944F69D26C0B57F6D00E5B77D8D40AD342BF26E8D883C2A68015B24CB1A61F9EA2EC15646BF8E5DBDF2AC54D45F8CCA6E697482287B56BA42CDBD8D02FE0A8EC21BE4D54AEC780BA3080954BD55B4C1AC71385BE90F1F0303BBA8A24F8D618A3EF46B99C2173758461557194756DD2D2305421ACB147DE8D732DC11371846B1C39BEEF1DDCD226EC93D4DA4221351EE2165D9D4C9C94FFCC3D4D1B0A4A637208E7DB4AAB0A6F8176B9E53A6663FCDDB9386C21CC371B1823B546A5B4A22510256502AA5A2A9A6577E82C905206001581E66E685B56AF51D53B3AE17F2AA9B627DF88A05BEA8CDFE9EB7E8C66052841D1C9AD65F852C70C952DF0A9F5037B718B30D04205164DB67519086481F47E95BE7176BD5F6F9973AC2D491F4AF854A3523D6E25871448CC6AB3E51763B76650CD37DFCF410BA5128C2CFEA38E842523D4A916BAAA2E8F24F7B1B4F5D3CD3F7186E397E43CD3FCE2CA902F04F2D312AE4841A58A5CC1C55E48F5431C512734489245285948A5A6859A582084A560B3AE1692CAAAE612EA14EFEA8A2D74BCD911534902AB4A2B803B64267B9CC1C55C114A9022B8ACDB1D7B41179551DF10EA73DD7F4BD3CE667E1EDD6480DC66E16CA7EB6C8CAB57D15A8F2B92516BF98AF81F1EFA37432ED11B16F27CB3323DB39990643BF4E09F7E0E232D57879AFC7142EB785ADA0E9725F8FD7CE9577EA30B5A3A45CA5945E1E29A5A3E3941FE336BFC2A99DEBF22AB655989186012F98C070C22A4CE6BF07B3C0876CD12F2ADC00E42F212639A1C33E3E3C3A965EEC8CE7F58C83B117B47842238ED900DC2CF40412F7112475A6C4162F4CD6A0B5ECF535F2E0F399FD47D6EA344B96B0BF659F0FAC6BFC19F9BFA7B4E02149A1F5679DDED93FE3BEABDD077F1F616ED5EBFF7CC99B1E5877099D31A7D6A164CB2E232CBE9A68A54DDE740B6DBABDA578BDB349786AA044956643F797050B9FF4F2AAA0D0F287103CFFA3AD6ACA97035B212A5E07F485D78B0975ECFF2E585AE6BF477F928CF9DFAEB3EA97005D54D3BE02F0517B30F90D80F91A54B4DCE33EA338270DB1246576DE48AFDE8A6BB9EF8DA9C6C2DE6AA2D799D62DE0B6605377F08C574644EE6D7754F08C7BC3DEA76BEF9C5C3C163EF19A22B25F1AF1D094246399AF92303C261A1C67F9EC99193CB47FE9F2B963E65CB6A0008FC9C138DF6BCF5CDFA11D4C97CB1DB38399937AC7E45FFBDE1EF7E15DC6DBE3DE89BA757692E6FE4595E4DDC4C5CD33E2F4F4BE88A807E4D1627EE1A2E688E984AD3D452B705D452F544F4E6B12BC91D7DB2CB09D30BE9F374AE4759AC56A489B4DB2F952DF289BD76996ADA145EE8342AC2429AA38DD1B962FCD6D9E921D3E42CAB0B603C666101C537375FE0A18C2DB1B4298259AEBDDD11382B737439FD3A20501B87E3B4B77C4CABFA4487765ECAFD610ECDF5544D015F6C2B2CE355A46C5962C69545491722A3790008F6E94E709F197C025B4986585B307DA59A68DDD4D2CA0778DEE5212A7847619868B404851B1ADBD497EC67216759EDEC5D93F31D24717A89A3ECBA6DFA19F533FF04ABDAF14591C0D048B19780E968D2561B9D8D54B89741B2143206EBE32D47980611C50307C87E6E00976D18DBADF47B802EECB3A67A703D93C10A2D9A7173E582520C41C63DD9EFEA43EEC85CFEFFF07D8F4487350540000, N'6.1.3-40302')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e794c9d2-8167-4f14-bd4b-eca74efcf2e3', N'thiagoh@gmail.com', 0, N'AAUmqgULHPFrCna9yZlgGu1fjgj0qWjXXx+XoWJtcwgQT/GEvsF0WGwc20hfintywg==', N'f0ec8c9f-5413-41e8-a576-24c95d151958', NULL, 0, 0, NULL, 0, 0, N'thiagoh@gmail.com')
SET IDENTITY_INSERT [dbo].[Game] ON 

INSERT [dbo].[Game] ([Id], [description], [spectators], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [mainTitle]) VALUES (6, N'description of the game', 45645, 1, 2, 89, 70, 41, N'main title 1')
INSERT [dbo].[Game] ([Id], [description], [spectators], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [mainTitle]) VALUES (7, N'desc 123', 65423, 3, 4, 99, 102, 41, N'main title 2')
INSERT [dbo].[Game] ([Id], [description], [spectators], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [mainTitle]) VALUES (8, N'desc 1241', 45634, 5, 6, 50, 88, 41, N'title 3')
INSERT [dbo].[Game] ([Id], [description], [spectators], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [mainTitle]) VALUES (9, N'desc 42124', 34252, 1, 3, 99, 102, 40, N'title 4')
INSERT [dbo].[Game] ([Id], [description], [spectators], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [mainTitle]) VALUES (11, N'desc1 12', 23623, 14, 15, 77, 105, 40, N'title 5')
INSERT [dbo].[Game] ([Id], [description], [spectators], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [mainTitle]) VALUES (12, N'desc 2112', 64562, 9, 12, 64, 66, 39, N'title 6')
INSERT [dbo].[Game] ([Id], [description], [spectators], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [mainTitle]) VALUES (13, N'desc 4124', 12523, 13, 11, 88, 89, 40, N'title 7')
INSERT [dbo].[Game] ([Id], [description], [spectators], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [mainTitle]) VALUES (14, N'desc 1554', 35233, 2, 3, 102, 111, 40, N'title 8')
INSERT [dbo].[Game] ([Id], [description], [spectators], [team1Id], [team2Id], [team1Score], [team2Score], [weekNumber], [mainTitle]) VALUES (16, N'desc 321', 75454, 4, 1, 97, 88, 40, N'title 9')
SET IDENTITY_INSERT [dbo].[Game] OFF
SET IDENTITY_INSERT [dbo].[Team] ON 

INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (1, N'Chicago Bulls', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', N'http://i.cdn.turner.com/nba/nba/.element/media/2.0/teamsites/bulls/gameday/images/teams/1516/CHI.png')
INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (2, N'Cleveland Cavaliers', NULL, N'https://s-media-cache-ak0.pinimg.com/originals/d3/5d/85/d35d8599a2051d43e6c2937186269011.jpg')
INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (3, N'Detroit Pistons', NULL, N'https://s-media-cache-ak0.pinimg.com/originals/27/86/99/278699def8baefdf9225a32758bb2526.jpg')
INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (4, N'Indiana Pacers', NULL, N'http://www.sports-logos-screensavers.com/user/Indiana_Pacers3.jpg')
INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (5, N'Milwaukee Bucks
', NULL, N'http://www.drodd.com/images15/milwaukee-bucks11.png')
INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (6, N'Atlanta Hawks
', NULL, N'https://assets.prmira.ru/content/image/1437553673_Atlanta.png')
INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (7, N'Charlotte Hornets', NULL, N'http://bouncyorangeball.com/wp-content/uploads/2014/10/Charlotte-Hornets-Logo.jpg')
INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (8, N'Miami Heat', NULL, N'https://s-media-cache-ak0.pinimg.com/originals/69/69/97/69699767ddb9b35c3c045c88f3195cc0.jpg')
INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (9, N'Orlando Magic', NULL, N'http://44d5i01rkpt329p8yqqf89h5.wpengine.netdna-cdn.com/wp-content/uploads/2015/05/bq4x0gej.jpeg')
INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (10, N'Washington Wizards', NULL, N'http://www.drodd.com/images15/washington-wizards15.png')
INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (11, N'Boston Celtics', NULL, N'http://bouncyorangeball.com/wp-content/uploads/2014/10/Boston-Celtics-Logo.jpg')
INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (12, N'Brooklyn Nets
', NULL, N'http://cdn.exstreamist.com/wp-content/uploads/2016/09/brooklyn-nets-watch-online.jpg')
INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (13, N'New York Knicks
', NULL, N'http://18839-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2015/10/knicks-logo.jpg')
INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (14, N'Philadelphia 76ers
', NULL, N'https://www.ticketsmofo.com/uploads/media/54d0d0ac8e0de.png?v2')
INSERT [dbo].[Team] ([Id], [name], [description], [logoPath]) VALUES (15, N'Toronto Raptors
', NULL, N'http://tbbl.ca/wp-content/uploads/2015/10/Toronto_Raptors.svg_.png')
SET IDENTITY_INSERT [dbo].[Team] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 18/10/2016 22:38:06 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 18/10/2016 22:38:06 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 18/10/2016 22:38:06 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 18/10/2016 22:38:06 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 18/10/2016 22:38:06 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 18/10/2016 22:38:06 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
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
