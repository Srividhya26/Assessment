USE [Feedback]
GO
DELETE FROM [dbo].[FeedbackDetail]
GO
DELETE FROM [dbo].[FeedbackDetailType]
GO
DELETE FROM [dbo].[Feedback]
GO
DELETE FROM [dbo].[Session]
GO
DELETE FROM [dbo].[Users]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [Name], [Role]) VALUES (1, N'Mahesh', N'Conductor')
GO
INSERT [dbo].[Users] ([Id], [Name], [Role]) VALUES (2, N'Sridevi', N'Speaker')
GO
INSERT [dbo].[Users] ([Id], [Name], [Role]) VALUES (3, N'Mohan', N'Speaker')
GO
INSERT [dbo].[Users] ([Id], [Name], [Role]) VALUES (4, N'Vasu', N'Conductor')
GO
INSERT [dbo].[Users] ([Id], [Name], [Role]) VALUES (5, N'Reshma', N'Conductor')
GO
INSERT [dbo].[Users] ([Id], [Name], [Role]) VALUES (6, N'Hariharan', N'Speaker')
GO
INSERT [dbo].[Users] ([Id], [Name], [Role]) VALUES (7, N'Jeyandran', N'Conductor')
GO
INSERT [dbo].[Users] ([Id], [Name], [Role]) VALUES (8, N'Jeya', N'Speaker')
GO
INSERT [dbo].[Users] ([Id], [Name], [Role]) VALUES (9, N'Dhanam', N'Speaker')
GO
INSERT [dbo].[Users] ([Id], [Name], [Role]) VALUES (10, N'Akash', N'Conductor')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Session] ON 
GO
INSERT [dbo].[Session] ([Id], [SessionName], [ConductorId], [SpeakerId], [Duration], [Date]) VALUES (1, N'MVC Topics', 1, 2, CAST(N'00:10:00' AS Time), CAST(N'2021-10-25' AS Date))
GO
INSERT [dbo].[Session] ([Id], [SessionName], [ConductorId], [SpeakerId], [Duration], [Date]) VALUES (2, N'Email etiquette', 4, 6, CAST(N'00:20:00' AS Time), CAST(N'2021-10-26' AS Date))
GO
INSERT [dbo].[Session] ([Id], [SessionName], [ConductorId], [SpeakerId], [Duration], [Date]) VALUES (5, N'Programming', 7, 9, CAST(N'00:10:00' AS Time), CAST(N'2021-10-26' AS Date))
GO
INSERT [dbo].[Session] ([Id], [SessionName], [ConductorId], [SpeakerId], [Duration], [Date]) VALUES (6, N'Testing ', 1, 2, CAST(N'00:10:00' AS Time), CAST(N'2021-10-25' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Session] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedbackDetailType] ON 
GO
INSERT [dbo].[FeedbackDetailType] ([Id], [Name]) VALUES (1, N'Informative')
GO
INSERT [dbo].[FeedbackDetailType] ([Id], [Name]) VALUES (2, N'Well organized')
GO
INSERT [dbo].[FeedbackDetailType] ([Id], [Name]) VALUES (3, N'Precise and clear')
GO
INSERT [dbo].[FeedbackDetailType] ([Id], [Name]) VALUES (4, N'Training was relevant to my needs')
GO
INSERT [dbo].[FeedbackDetailType] ([Id], [Name]) VALUES (5, N'Materials provided were helpful')
GO
INSERT [dbo].[FeedbackDetailType] ([Id], [Name]) VALUES (6, N'Length of training was sufficient')
GO
INSERT [dbo].[FeedbackDetailType] ([Id], [Name]) VALUES (7, N'Content was well organized')
GO
INSERT [dbo].[FeedbackDetailType] ([Id], [Name]) VALUES (8, N'Questions were encouraged')
GO
INSERT [dbo].[FeedbackDetailType] ([Id], [Name]) VALUES (9, N'Instructions were clear and understandable')
GO
INSERT [dbo].[FeedbackDetailType] ([Id], [Name]) VALUES (10, N'Trainings met my expectations')
GO
INSERT [dbo].[FeedbackDetailType] ([Id], [Name]) VALUES (11, N'The presenter and /or presentation was effective')
GO
SET IDENTITY_INSERT [dbo].[FeedbackDetailType] OFF
GO
