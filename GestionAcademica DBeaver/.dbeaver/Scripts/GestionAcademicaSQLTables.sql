USE [GestionAcademica]
GO
/****** Object:  Table [dbo].[Career]    Script Date: 29/4/2022 11:15:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Career](
	[Pk_Career] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[CareerName] [varchar](50) NOT NULL,
	[DegreeName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_Career] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareerCourses]    Script Date: 29/4/2022 11:15:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareerCourses](
	[Pk_CareerCourses] [int] IDENTITY(1,1) NOT NULL,
	[Fk_Course] [int] NOT NULL,
	[Fk_Career] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Cycle] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_CareerCourses] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 29/4/2022 11:15:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Pk_Course] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Credits] [int] NOT NULL,
	[WeeklyHours] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_Course] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseGroups]    Script Date: 29/4/2022 11:15:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseGroups](
	[Pk_CourseGroups] [int] IDENTITY(1,1) NOT NULL,
	[Fk_Course] [int] NOT NULL,
	[Fk_Group] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_CourseGroups] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cycle]    Script Date: 29/4/2022 11:15:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cycle](
	[Pk_Cycle] [int] IDENTITY(1,1) NOT NULL,
	[Fk_CycleState] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_Cycle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CycleState]    Script Date: 29/4/2022 11:15:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CycleState](
	[Pk_CycleState] [int] IDENTITY(1,1) NOT NULL,
	[StateDescription] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_CycleState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 29/4/2022 11:15:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Pk_Group] [int] IDENTITY(1,1) NOT NULL,
	[Fk_Teacher] [int] NULL,
	[Fk_Cycle] [int] NULL,
	[Number] [varchar](50) NOT NULL,
	[Schedule] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_Group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupStudents]    Script Date: 29/4/2022 11:15:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupStudents](
	[Pk_GroupStudents] [int] IDENTITY(1,1) NOT NULL,
	[Fk_Group] [int] NOT NULL,
	[Fk_Student] [int] NOT NULL,
	[Score] [decimal](10, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_GroupStudents] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 29/4/2022 11:15:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Pk_Student] [int] IDENTITY(1,1) NOT NULL,
	[Fk_Carreer] [int] NULL,
	[Fk_User] [int] NULL,
	[ID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_Student] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 29/4/2022 11:15:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Pk_Teacher] [int] IDENTITY(1,1) NOT NULL,
	[Fk_User] [int] NULL,
	[ID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Teacher__AB4F2B2F71619BD2] PRIMARY KEY CLUSTERED 
(
	[Pk_Teacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 29/4/2022 11:15:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Pk_User] [int] IDENTITY(1,1) NOT NULL,
	[Fk_UserType] [int] NOT NULL,
	[ID] [varchar](50) NOT NULL,
	[Password] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 29/4/2022 11:15:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[Pk_UserType] [int] IDENTITY(1,1) NOT NULL,
	[TypeDescription] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_UserType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CareerCourses]  WITH CHECK ADD FOREIGN KEY([Fk_Career])
REFERENCES [dbo].[Career] ([Pk_Career])
GO
ALTER TABLE [dbo].[CareerCourses]  WITH CHECK ADD FOREIGN KEY([Fk_Course])
REFERENCES [dbo].[Course] ([Pk_Course])
GO
ALTER TABLE [dbo].[CourseGroups]  WITH CHECK ADD FOREIGN KEY([Fk_Course])
REFERENCES [dbo].[Course] ([Pk_Course])
GO
ALTER TABLE [dbo].[CourseGroups]  WITH CHECK ADD FOREIGN KEY([Fk_Group])
REFERENCES [dbo].[Group] ([Pk_Group])
GO
ALTER TABLE [dbo].[Cycle]  WITH CHECK ADD FOREIGN KEY([Fk_CycleState])
REFERENCES [dbo].[CycleState] ([Pk_CycleState])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([Fk_Cycle])
REFERENCES [dbo].[Cycle] ([Pk_Cycle])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK__TGroup__Fk_Teach__440B1D61] FOREIGN KEY([Fk_Teacher])
REFERENCES [dbo].[Teacher] ([Pk_Teacher])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK__TGroup__Fk_Teach__440B1D61]
GO
ALTER TABLE [dbo].[GroupStudents]  WITH CHECK ADD FOREIGN KEY([Fk_Group])
REFERENCES [dbo].[Group] ([Pk_Group])
GO
ALTER TABLE [dbo].[GroupStudents]  WITH CHECK ADD FOREIGN KEY([Fk_Student])
REFERENCES [dbo].[Student] ([Pk_Student])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Fk_Carreer])
REFERENCES [dbo].[Career] ([Pk_Career])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Fk_User])
REFERENCES [dbo].[User] ([Pk_User])
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK__Teacher__Fk_User__4222D4EF] FOREIGN KEY([Fk_User])
REFERENCES [dbo].[User] ([Pk_User])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK__Teacher__Fk_User__4222D4EF]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([Fk_UserType])
REFERENCES [dbo].[UserType] ([Pk_UserType])
GO
