/****** Object:  Table [dbo].[Reports]    Script Date: 8/17/2023 9:44:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[reportId] [nvarchar](50) NULL,
	[datasetId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleReports]    Script Date: 8/17/2023 9:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleReports](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[role_id] [bigint] NULL,
	[report_id] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 8/17/2023 9:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[rid] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 8/17/2023 9:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[uid] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 8/17/2023 9:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[urid] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [nvarchar](50) NOT NULL,
	[role_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[urid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Reports] ON 
GO
INSERT [dbo].[Reports] ([id], [name], [reportId], [datasetId]) VALUES (1, N'RLS Report1', N'294b8460-04f6-455f-bd48-2a8bc5e16b99', N'ad733dbc-9d8e-4397-9456-92cf80be1283')
GO
INSERT [dbo].[Reports] ([id], [name], [reportId], [datasetId]) VALUES (2, N'RLS Report2', N'5b36e220-1d56-4f4a-8efa-7bced83fc562', N'204e3a53-f037-42cc-8a88-738e54c36c61')
GO
INSERT [dbo].[Reports] ([id], [name], [reportId], [datasetId]) VALUES (3, N'Retail Analysis Sample', N'cfb714cb-d8b9-44c0-91c9-a60c4cfd662e', N'4bcd41ab-d3ef-4ed5-aab2-8289a2d21d92')
GO
SET IDENTITY_INSERT [dbo].[Reports] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleReports] ON 
GO
INSERT [dbo].[RoleReports] ([id], [role_id], [report_id]) VALUES (1, 1, N'294b8460-04f6-455f-bd48-2a8bc5e16b99')
GO
INSERT [dbo].[RoleReports] ([id], [role_id], [report_id]) VALUES (2, 2, N'5b36e220-1d56-4f4a-8efa-7bced83fc562')
GO
INSERT [dbo].[RoleReports] ([id], [role_id], [report_id]) VALUES (3, 6, N'cfb714cb-d8b9-44c0-91c9-a60c4cfd662e')
GO
INSERT [dbo].[RoleReports] ([id], [role_id], [report_id]) VALUES (4, 7, N'cfb714cb-d8b9-44c0-91c9-a60c4cfd662e')
GO
SET IDENTITY_INSERT [dbo].[RoleReports] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([rid], [name]) VALUES (1, N'RLS Test')
GO
INSERT [dbo].[Roles] ([rid], [name]) VALUES (2, N'Australia Role')
GO
INSERT [dbo].[Roles] ([rid], [name]) VALUES (3, N'USA Role')
GO
INSERT [dbo].[Roles] ([rid], [name]) VALUES (4, N'Germany Role')
GO
INSERT [dbo].[Roles] ([rid], [name]) VALUES (5, N'Japan Role')
GO
INSERT [dbo].[Roles] ([rid], [name]) VALUES (6, N'Buyer')
GO
INSERT [dbo].[Roles] ([rid], [name]) VALUES (7, N'Manager')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[UserLogin] ON 
GO
INSERT [dbo].[UserLogin] ([uid], [username], [password], [email], [created_at], [updated_at]) VALUES (1, N'Amazing Grace', N'123', N'amazing@evo-point.com', CAST(N'2023-08-07T00:00:00.000' AS DateTime), CAST(N'2023-08-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[UserLogin] ([uid], [username], [password], [email], [created_at], [updated_at]) VALUES (2, N'Hnin Ei Ei Wine', N'456', N'hniny@evo-point.com', CAST(N'2023-07-19T00:00:00.000' AS DateTime), CAST(N'2023-07-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[UserLogin] ([uid], [username], [password], [email], [created_at], [updated_at]) VALUES (3, N'Jason', N'123', N'jason.yew@mamee.com.my', CAST(N'2023-07-31T00:00:00.000' AS DateTime), CAST(N'2023-07-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[UserLogin] ([uid], [username], [password], [email], [created_at], [updated_at]) VALUES (4, N'Min Khant', N'123', N'min.khant@evo-point.com', CAST(N'2023-07-31T00:00:00.000' AS DateTime), CAST(N'2023-07-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[UserLogin] ([uid], [username], [password], [email], [created_at], [updated_at]) VALUES (6, N'Test User 1', N'123', N'testuser1@gmail.com', CAST(N'2023-07-19T00:00:00.000' AS DateTime), CAST(N'2023-07-19T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserLogin] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 
GO
INSERT [dbo].[UserRole] ([urid], [user_id], [role_id]) VALUES (1, N'amazing@evo-point.com', 1)
GO
INSERT [dbo].[UserRole] ([urid], [user_id], [role_id]) VALUES (2, N'amazing@evo-point.com', 6)
GO
INSERT [dbo].[UserRole] ([urid], [user_id], [role_id]) VALUES (3, N'hniny@evo-point.com', 2)
GO
INSERT [dbo].[UserRole] ([urid], [user_id], [role_id]) VALUES (4, N'hniny@evo-point.com', 7)
GO
INSERT [dbo].[UserRole] ([urid], [user_id], [role_id]) VALUES (5, N'jason.yew@mamee.com.my', 7)
GO
INSERT [dbo].[UserRole] ([urid], [user_id], [role_id]) VALUES (6, N'jason.yew@mamee.com.my', 2)
GO
INSERT [dbo].[UserRole] ([urid], [user_id], [role_id]) VALUES (8, N'testuser1@gmail.com', 1)
GO
INSERT [dbo].[UserRole] ([urid], [user_id], [role_id]) VALUES (9, N'testuser1@gmail.com', 6)
GO
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
