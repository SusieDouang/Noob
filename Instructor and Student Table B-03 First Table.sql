USE [FitnessSchedule01]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 7/22/2016 9:27:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[EmailAddress] [nvarchar](100) NOT NULL,
	[HireDate] [datetime] NOT NULL,
	[FitnessClassName] [nvarchar](100) NULL,
	[FitnessClassCategory] [nvarchar](50) NULL,
	[TermDate] [datetime] NULL,
	[Prefix] [nvarchar](1) NULL,
	[BirthDate] [datetime] NULL,
	[CategoryName] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/22/2016 9:27:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Student] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
