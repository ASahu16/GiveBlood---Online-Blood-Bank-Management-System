USE [master]
GO
/****** Object:  Database [GiveBlood]    Script Date: 09-03-2019 01:12:37 AM ******/
CREATE DATABASE [GiveBlood]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GiveBlood', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.AGYAT\MSSQL\DATA\GiveBlood.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GiveBlood_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.AGYAT\MSSQL\DATA\GiveBlood_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GiveBlood] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GiveBlood].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GiveBlood] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GiveBlood] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GiveBlood] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GiveBlood] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GiveBlood] SET ARITHABORT OFF 
GO
ALTER DATABASE [GiveBlood] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GiveBlood] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GiveBlood] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GiveBlood] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GiveBlood] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GiveBlood] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GiveBlood] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GiveBlood] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GiveBlood] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GiveBlood] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GiveBlood] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GiveBlood] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GiveBlood] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GiveBlood] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GiveBlood] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GiveBlood] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GiveBlood] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GiveBlood] SET RECOVERY FULL 
GO
ALTER DATABASE [GiveBlood] SET  MULTI_USER 
GO
ALTER DATABASE [GiveBlood] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GiveBlood] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GiveBlood] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GiveBlood] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GiveBlood] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GiveBlood', N'ON'
GO
ALTER DATABASE [GiveBlood] SET QUERY_STORE = OFF
GO
USE [GiveBlood]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [GiveBlood]
GO
/****** Object:  Table [dbo].[News_Event]    Script Date: 09-03-2019 01:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_Event](
	[Date] [varchar](50) NOT NULL,
	[Message] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_APPOINTMENTS]    Script Date: 09-03-2019 01:12:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_APPOINTMENTS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[F Name] [varchar](50) NULL,
	[Gender] [varchar](6) NULL,
	[Blood Group] [varchar](3) NULL,
	[Age] [int] NULL,
	[Weight] [varchar](3) NULL,
	[Contact] [varchar](15) NULL,
	[Mail] [varchar](50) NULL,
	[DOA] [varchar](50) NULL,
	[Address1] [varchar](500) NULL,
	[Address2] [varchar](500) NULL,
 CONSTRAINT [PK_TBL_APPOINTMENTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_BLOOD]    Script Date: 09-03-2019 01:12:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_BLOOD](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[BloodGroup] [varchar](50) NULL,
	[dateOfManufacturing] [varchar](50) NULL,
	[dateOfExpiry] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_BLOOD] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_LOGIN]    Script Date: 09-03-2019 01:12:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_LOGIN](
	[USERID] [varchar](50) NOT NULL,
	[PASSWORD] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_LOGIN] PRIMARY KEY CLUSTERED 
(
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MESSAGE]    Script Date: 09-03-2019 01:12:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_MESSAGE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](50) NULL,
	[NUMBER] [varchar](50) NULL,
	[MESSAGE] [text] NULL,
	[MSG_DATE] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_MESSAGE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_REGISTRATION]    Script Date: 09-03-2019 01:12:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_REGISTRATION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](50) NULL,
	[FATHER'S NAME] [varchar](50) NULL,
	[GENDER] [varchar](10) NULL,
	[BLOOD GROUP] [varchar](3) NULL,
	[AGE] [varchar](3) NULL,
	[WEIGHT] [int] NULL,
	[CONTACT] [varchar](50) NULL,
	[EMAIL_ID] [varchar](50) NULL,
	[ADDRESS] [varchar](5000) NULL,
	[REG_DATE] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_REGISTRATION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'16-01-19', N'Blood Donation Camp at NPGC')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'16-04-19', N'Awareness Camp at Lucknow University.')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'27-01-19', N'Blood donation cam at IGNOU')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'27-01-19', N'Blood donation cam at IGNOU')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'16-01-19', N'Blood Donation Camp at NPGC')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'23-03-19', N'Camp at Hazatratganj')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'23-03-19', N'Camp at Hazatratganj')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'23-03-19', N'Camp at Hazatratganj')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'08-03-19', N'Test')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'08-03-19', N'Test')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'08-03-19', N'Test')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'08-03-19', N'Test')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'08-03-19', N'Test')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'09-03-19', N'Exam')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'09-03-19', N'Exam')
INSERT [dbo].[News_Event] ([Date], [Message]) VALUES (N'08-03-19', N'Test')
SET IDENTITY_INSERT [dbo].[TBL_APPOINTMENTS] ON 

INSERT [dbo].[TBL_APPOINTMENTS] ([ID], [Name], [F Name], [Gender], [Blood Group], [Age], [Weight], [Contact], [Mail], [DOA], [Address1], [Address2]) VALUES (1, N'Sumit Pati', N'BN Pati', N'Male', N'B+', 19, N'51', N'9170237932', N'sumitpati077@gmail.com', N'09-03-19', N'221-b', N'bkt')
SET IDENTITY_INSERT [dbo].[TBL_APPOINTMENTS] OFF
SET IDENTITY_INSERT [dbo].[TBL_BLOOD] ON 

INSERT [dbo].[TBL_BLOOD] ([_id], [BloodGroup], [dateOfManufacturing], [dateOfExpiry]) VALUES (1, N'A+', N'12', N'12        ')
INSERT [dbo].[TBL_BLOOD] ([_id], [BloodGroup], [dateOfManufacturing], [dateOfExpiry]) VALUES (3, N'A+', N'1', N'15        ')
INSERT [dbo].[TBL_BLOOD] ([_id], [BloodGroup], [dateOfManufacturing], [dateOfExpiry]) VALUES (8, N'A-', N'76', N'4         ')
INSERT [dbo].[TBL_BLOOD] ([_id], [BloodGroup], [dateOfManufacturing], [dateOfExpiry]) VALUES (9, N'B-', N'8', N'8         ')
INSERT [dbo].[TBL_BLOOD] ([_id], [BloodGroup], [dateOfManufacturing], [dateOfExpiry]) VALUES (10, N'O-', N'8', N'8         ')
INSERT [dbo].[TBL_BLOOD] ([_id], [BloodGroup], [dateOfManufacturing], [dateOfExpiry]) VALUES (11, N'AB-', N'9', N'9         ')
SET IDENTITY_INSERT [dbo].[TBL_BLOOD] OFF
INSERT [dbo].[TBL_LOGIN] ([USERID], [PASSWORD]) VALUES (N'pati@123', N'admin@123')
INSERT [dbo].[TBL_LOGIN] ([USERID], [PASSWORD]) VALUES (N'saurabhp', N'qwerty')
SET IDENTITY_INSERT [dbo].[TBL_MESSAGE] ON 

INSERT [dbo].[TBL_MESSAGE] ([ID], [NAME], [NUMBER], [MESSAGE], [MSG_DATE]) VALUES (1, N'Sumit Pati', N'9170237932', N'Test Message.', N'05-Mar-2019')
INSERT [dbo].[TBL_MESSAGE] ([ID], [NAME], [NUMBER], [MESSAGE], [MSG_DATE]) VALUES (2, N'Sumit Pati', N'9170237932', N'second text msg.', N'05-Mar-2019')
INSERT [dbo].[TBL_MESSAGE] ([ID], [NAME], [NUMBER], [MESSAGE], [MSG_DATE]) VALUES (3, N'BN Pati', N'78563456', N'gjgjgjh', N'06-Mar-2019')
INSERT [dbo].[TBL_MESSAGE] ([ID], [NAME], [NUMBER], [MESSAGE], [MSG_DATE]) VALUES (4, N'T Pati', N'89674523', N'Test!', N'07-Mar-2019')
INSERT [dbo].[TBL_MESSAGE] ([ID], [NAME], [NUMBER], [MESSAGE], [MSG_DATE]) VALUES (5, N'Sahu', N'8967456789', N'Testing.', N'08-Mar-2019')
SET IDENTITY_INSERT [dbo].[TBL_MESSAGE] OFF
SET IDENTITY_INSERT [dbo].[TBL_REGISTRATION] ON 

INSERT [dbo].[TBL_REGISTRATION] ([ID], [NAME], [FATHER'S NAME], [GENDER], [BLOOD GROUP], [AGE], [WEIGHT], [CONTACT], [EMAIL_ID], [ADDRESS], [REG_DATE]) VALUES (1, N'Sumit Pati', N'BN Pati', N'Male', N'B+', N'19', 51, N'9170237932', N'sumitpati077@gmail.com', N'221-b', N'06-Mar-2019')
INSERT [dbo].[TBL_REGISTRATION] ([ID], [NAME], [FATHER'S NAME], [GENDER], [BLOOD GROUP], [AGE], [WEIGHT], [CONTACT], [EMAIL_ID], [ADDRESS], [REG_DATE]) VALUES (2, N'Saurabh Pati', N'BN Pati', N'Male', N'B+', N'19', 67, N'6767677676', N'yuiu@gjhg.om', N'khlkhklh', N'07-Mar-2019')
SET IDENTITY_INSERT [dbo].[TBL_REGISTRATION] OFF
USE [master]
GO
ALTER DATABASE [GiveBlood] SET  READ_WRITE 
GO
