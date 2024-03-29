USE [master]
GO
/****** Object:  Database [CisproOperations]    Script Date: 4/11/2022 4:42:57 PM ******/
CREATE DATABASE [CisproOperations]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CisproOperations', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CisproOperations.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CisproOperations_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CisproOperations_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CisproOperations] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CisproOperations].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CisproOperations] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CisproOperations] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CisproOperations] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CisproOperations] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CisproOperations] SET ARITHABORT OFF 
GO
ALTER DATABASE [CisproOperations] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CisproOperations] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CisproOperations] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CisproOperations] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CisproOperations] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CisproOperations] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CisproOperations] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CisproOperations] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CisproOperations] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CisproOperations] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CisproOperations] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CisproOperations] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CisproOperations] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CisproOperations] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CisproOperations] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CisproOperations] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CisproOperations] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CisproOperations] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CisproOperations] SET  MULTI_USER 
GO
ALTER DATABASE [CisproOperations] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CisproOperations] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CisproOperations] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CisproOperations] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CisproOperations] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CisproOperations] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CisproOperations] SET QUERY_STORE = OFF
GO
USE [CisproOperations]
GO
/****** Object:  Table [dbo].[BatchTimingMaster]    Script Date: 4/11/2022 4:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchTimingMaster](
	[SlNo] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Timings] [varchar](50) NULL,
 CONSTRAINT [PK_BatchTimingMaster] PRIMARY KEY CLUSTERED 
(
	[SlNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseMaster]    Script Date: 4/11/2022 4:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseMaster](
	[CourseId] [varchar](50) NOT NULL,
	[CourseName] [varchar](max) NULL,
 CONSTRAINT [PK_CourseMaster] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enquiries]    Script Date: 4/11/2022 4:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enquiries](
	[EnqDate] [date] NULL,
	[EnqId] [bigint] NOT NULL,
	[EName] [varchar](max) NULL,
	[Mobile] [varchar](max) NULL,
	[AlternatePh] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[CourseInterest] [varchar](max) NULL,
	[Qualification] [varchar](50) NULL,
	[College] [varchar](max) NULL,
	[PassOutYear] [nchar](10) NULL,
	[CurrentStatus] [varchar](150) NULL,
	[Designation] [varchar](50) NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[Address3] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[PinCode] [varchar](max) NULL,
	[CameToKnow] [varchar](max) NULL,
	[FollowStatus] [varchar](50) NULL,
	[FollowUpDate] [date] NULL,
	[CallDisposal] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[AttendBy] [varchar](50) NULL,
 CONSTRAINT [PK_Enquiry] PRIMARY KEY CLUSTERED 
(
	[EnqId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollment]    Script Date: 4/11/2022 4:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollment](
	[EnrollDate] [date] NULL,
	[RegNo] [bigint] NOT NULL,
	[EnqId] [bigint] NOT NULL,
	[SName] [varchar](max) NULL,
	[Mobile] [varchar](max) NULL,
	[AlternatePh] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[CourseJoined] [varchar](max) NULL,
	[Qualification] [varchar](50) NULL,
	[College] [varchar](max) NULL,
	[PassOutYear] [nchar](10) NULL,
	[CurrentStatus] [varchar](150) NULL,
	[Designation] [varchar](50) NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[Address3] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[PinCode] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[CourseFee] [decimal](18, 2) NULL,
	[CStartDate] [date] NULL,
	[BatchTiming] [varchar](50) NULL,
	[DueDate1] [date] NULL,
	[DueAmount1] [decimal](18, 2) NULL,
	[DueDate2] [date] NULL,
	[DueAmount2] [decimal](18, 2) NULL,
	[RegisteredBy] [varchar](50) NULL,
 CONSTRAINT [PK_Enroll] PRIMARY KEY CLUSTERED 
(
	[RegNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LeaveMaster]    Script Date: 4/11/2022 4:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveMaster](
	[LeaveID] [int] IDENTITY(1,1) NOT NULL,
	[LeaveType] [varchar](100) NULL,
 CONSTRAINT [PK_LeaveMaster] PRIMARY KEY CLUSTERED 
(
	[LeaveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 4/11/2022 4:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[SNo] [bigint] IDENTITY(1,1) NOT NULL,
	[PayDate] [date] NULL,
	[RegNo] [varchar](50) NULL,
	[Course] [varchar](50) NULL,
	[PayType] [varchar](100) NULL,
	[PayMode] [varchar](50) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Remarks] [varchar](max) NULL,
	[TransRefNo] [varchar](50) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[SNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromoMaster]    Script Date: 4/11/2022 4:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromoMaster](
	[SNo] [int] IDENTITY(1,1) NOT NULL,
	[PromotionName] [varchar](max) NULL,
 CONSTRAINT [PK_PromoMaster] PRIMARY KEY CLUSTERED 
(
	[SNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QualificationMaster]    Script Date: 4/11/2022 4:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QualificationMaster](
	[SNo] [int] IDENTITY(1,1) NOT NULL,
	[Qualification] [varchar](max) NULL,
 CONSTRAINT [PK_QualificationMaster] PRIMARY KEY CLUSTERED 
(
	[SNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesMaster]    Script Date: 4/11/2022 4:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesMaster](
	[Sno] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](max) NULL,
 CONSTRAINT [PK_RolesMaster] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffAttendance]    Script Date: 4/11/2022 4:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffAttendance](
	[SlNo] [int] IDENTITY(1,1) NOT NULL,
	[StaffId] [numeric](18, 0) NULL,
	[Att_Date] [date] NULL,
	[Attendance] [varchar](50) NULL,
	[From_L_P] [varchar](50) NULL,
	[To_L_P] [varchar](50) NULL,
	[Reason] [varchar](max) NULL,
	[LeaveType] [varchar](50) NULL,
 CONSTRAINT [PK_StaffAttendance] PRIMARY KEY CLUSTERED 
(
	[SlNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 4/11/2022 4:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staffs](
	[StaffID] [numeric](18, 0) NOT NULL,
	[StaffName] [varchar](max) NULL,
	[Gender] [varchar](50) NULL,
	[Dob] [date] NULL,
	[Qualification] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](max) NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[Address3] [varchar](max) NULL,
	[City] [varchar](100) NULL,
	[PinCode] [nchar](10) NULL,
	[Experience] [varchar](50) NULL,
	[Designation] [varchar](60) NULL,
	[TechSkills] [varchar](max) NULL,
 CONSTRAINT [PK_Staffs] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAssessment]    Script Date: 4/11/2022 4:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAssessment](
	[Slno] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[StudentID] [varchar](50) NULL,
	[StudentName] [varchar](50) NULL,
	[AssessmentDate] [date] NULL,
	[Subject] [varchar](50) NULL,
	[MarksScored] [nchar](10) NULL,
	[Result] [varchar](50) NULL,
	[CertStatus] [varchar](50) NULL,
	[IssueDate] [date] NULL,
 CONSTRAINT [PK_StudentAssessment] PRIMARY KEY CLUSTERED 
(
	[Slno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAttendance]    Script Date: 4/11/2022 4:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAttendance](
	[Slno] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Batch] [varchar](50) NULL,
	[StudentId] [varchar](50) NULL,
	[StudentName] [varchar](50) NULL,
	[Course] [varchar](50) NULL,
	[AttendanceDate] [date] NULL,
	[ModeOfClass] [varchar](50) NULL,
	[Attendance] [varchar](50) NULL,
	[InTime] [varchar](50) NULL,
	[OutTime] [varchar](50) NULL,
	[TopicsCovered] [varchar](max) NULL,
 CONSTRAINT [PK_StudentAttendance] PRIMARY KEY CLUSTERED 
(
	[Slno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/11/2022 4:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[SlNo] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Pasword] [varchar](50) NULL,
	[UserRole] [varchar](50) NULL,
	[Permissions] [varchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[SlNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [CisproOperations] SET  READ_WRITE 
GO
