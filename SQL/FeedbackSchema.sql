USE [Feedback]
GO
ALTER TABLE [dbo].[Session] DROP CONSTRAINT [FK__Session__Speaker__276EDEB3]
GO
ALTER TABLE [dbo].[Session] DROP CONSTRAINT [FK__Session__Conduct__267ABA7A]
GO
ALTER TABLE [dbo].[FeedbackDetail] DROP CONSTRAINT [FK__FeedbackD__Feedb__2E1BDC42]
GO
ALTER TABLE [dbo].[FeedbackDetail] DROP CONSTRAINT [FK__FeedbackD__FdtId__2F10007B]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK__Feedback__Sessio__2C3393D0]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25-10-2021 17:19:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 25-10-2021 17:19:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Session]') AND type in (N'U'))
DROP TABLE [dbo].[Session]
GO
/****** Object:  Table [dbo].[FeedbackDetailType]    Script Date: 25-10-2021 17:19:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FeedbackDetailType]') AND type in (N'U'))
DROP TABLE [dbo].[FeedbackDetailType]
GO
/****** Object:  Table [dbo].[FeedbackDetail]    Script Date: 25-10-2021 17:19:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FeedbackDetail]') AND type in (N'U'))
DROP TABLE [dbo].[FeedbackDetail]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 25-10-2021 17:19:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feedback]') AND type in (N'U'))
DROP TABLE [dbo].[Feedback]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 25-10-2021 17:19:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SessionId] [int] NOT NULL,
	[Email] [varchar](25) NULL,
	[MobileNumber] [varchar](10) NULL,
	[Comment] [varchar](200) NULL,
	[IsInformative] [bit] NULL,
	[SpeakerRating] [int] NULL,
	[OverrallRating] [int] NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackDetail]    Script Date: 25-10-2021 17:19:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackDetail](
	[FeedbackId] [int] NOT NULL,
	[FdtId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackDetailType]    Script Date: 25-10-2021 17:19:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackDetailType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 25-10-2021 17:19:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SessionName] [varchar](25) NULL,
	[ConductorId] [int] NOT NULL,
	[SpeakerId] [int] NOT NULL,
	[Duration] [time](7) NULL,
	[Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25-10-2021 17:19:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Role] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([SessionId])
REFERENCES [dbo].[Session] ([Id])
GO
ALTER TABLE [dbo].[FeedbackDetail]  WITH CHECK ADD FOREIGN KEY([FdtId])
REFERENCES [dbo].[FeedbackDetailType] ([Id])
GO
ALTER TABLE [dbo].[FeedbackDetail]  WITH CHECK ADD FOREIGN KEY([FeedbackId])
REFERENCES [dbo].[Feedback] ([Id])
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD FOREIGN KEY([ConductorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD FOREIGN KEY([SpeakerId])
REFERENCES [dbo].[Users] ([Id])
GO
