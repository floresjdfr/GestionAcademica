USE [GestionAcademica]
GO
/****** Object:  Table [dbo].[Career]    Script Date: 4/7/2022 2:55:28 AM ******/
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
/****** Object:  Table [dbo].[CareerCourses]    Script Date: 4/7/2022 2:55:28 AM ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 4/7/2022 2:55:28 AM ******/
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
/****** Object:  Table [dbo].[CourseGroups]    Script Date: 4/7/2022 2:55:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseGroups](
	[Pk_CourseGroups] [int] IDENTITY(1,1) NOT NULL,
	[Fk_Course] [int] NOT NULL,
	[Fk_TGroup] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_CourseGroups] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cycle]    Script Date: 4/7/2022 2:55:28 AM ******/
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
/****** Object:  Table [dbo].[CycleState]    Script Date: 4/7/2022 2:55:28 AM ******/
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
/****** Object:  Table [dbo].[GroupStudents]    Script Date: 4/7/2022 2:55:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupStudents](
	[Pk_GroupStudents] [int] IDENTITY(1,1) NOT NULL,
	[Fk_TGroup] [int] NOT NULL,
	[Fk_Student] [int] NOT NULL,
	[Score] [decimal](10, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_GroupStudents] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 4/7/2022 2:55:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Pk_Student] [int] IDENTITY(1,1) NOT NULL,
	[Fk_Carreer] [int] NOT NULL,
	[Fk_User] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Teacher]    Script Date: 4/7/2022 2:55:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Pk_Teacher] [int] IDENTITY(1,1) NOT NULL,
	[Fk_User] [int] NOT NULL,
	[ID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_Teacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TGroup]    Script Date: 4/7/2022 2:55:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TGroup](
	[Pk_TGroup] [int] IDENTITY(1,1) NOT NULL,
	[Fk_Teacher] [int] NOT NULL,
	[Fk_Cycle] [int] NOT NULL,
	[Number] [varchar](50) NOT NULL,
	[Schedule] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_TGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TUser]    Script Date: 4/7/2022 2:55:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TUser](
	[Pk_TUser] [int] IDENTITY(1,1) NOT NULL,
	[Fk_UserType] [int] NOT NULL,
	[ID] [varchar](50) NOT NULL,
	[Password] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pk_TUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 4/7/2022 2:55:28 AM ******/
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
SET IDENTITY_INSERT [dbo].[Cycle] ON 

INSERT [dbo].[Cycle] ([Pk_Cycle], [Fk_CycleState], [Year], [Number], [StartDate], [EndDate]) VALUES (1, 1, 2022, 1, CAST(N'2022-04-06' AS Date), CAST(N'2022-04-06' AS Date))
SET IDENTITY_INSERT [dbo].[Cycle] OFF
GO
SET IDENTITY_INSERT [dbo].[CycleState] ON 

INSERT [dbo].[CycleState] ([Pk_CycleState], [StateDescription]) VALUES (1, N'Activo')
INSERT [dbo].[CycleState] ([Pk_CycleState], [StateDescription]) VALUES (2, N'Inactivo')
SET IDENTITY_INSERT [dbo].[CycleState] OFF
GO
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([Pk_UserType], [TypeDescription]) VALUES (1, N'ADMINISTRADOR')
INSERT [dbo].[UserType] ([Pk_UserType], [TypeDescription]) VALUES (2, N'MATRICULADOR')
INSERT [dbo].[UserType] ([Pk_UserType], [TypeDescription]) VALUES (3, N'PROFESOR')
INSERT [dbo].[UserType] ([Pk_UserType], [TypeDescription]) VALUES (4, N'ALUMNO')
SET IDENTITY_INSERT [dbo].[UserType] OFF
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
ALTER TABLE [dbo].[CourseGroups]  WITH CHECK ADD FOREIGN KEY([Fk_TGroup])
REFERENCES [dbo].[TGroup] ([Pk_TGroup])
GO
ALTER TABLE [dbo].[Cycle]  WITH CHECK ADD FOREIGN KEY([Fk_CycleState])
REFERENCES [dbo].[CycleState] ([Pk_CycleState])
GO
ALTER TABLE [dbo].[GroupStudents]  WITH CHECK ADD FOREIGN KEY([Fk_Student])
REFERENCES [dbo].[Student] ([Pk_Student])
GO
ALTER TABLE [dbo].[GroupStudents]  WITH CHECK ADD FOREIGN KEY([Fk_TGroup])
REFERENCES [dbo].[TGroup] ([Pk_TGroup])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Fk_Carreer])
REFERENCES [dbo].[Career] ([Pk_Career])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Fk_User])
REFERENCES [dbo].[TUser] ([Pk_TUser])
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD FOREIGN KEY([Fk_User])
REFERENCES [dbo].[TUser] ([Pk_TUser])
GO
ALTER TABLE [dbo].[TGroup]  WITH CHECK ADD FOREIGN KEY([Fk_Cycle])
REFERENCES [dbo].[Cycle] ([Pk_Cycle])
GO
ALTER TABLE [dbo].[TGroup]  WITH CHECK ADD FOREIGN KEY([Fk_Teacher])
REFERENCES [dbo].[Teacher] ([Pk_Teacher])
GO
ALTER TABLE [dbo].[TUser]  WITH CHECK ADD FOREIGN KEY([Fk_UserType])
REFERENCES [dbo].[UserType] ([Pk_UserType])
GO
/****** Object:  StoredProcedure [dbo].[udpDeleteCareer]    Script Date: 4/7/2022 2:55:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[udpDeleteCareer](@Pk_Career AS INT)
AS
BEGIN
    DELETE 
        [dbo].Career
    WHERE
        Pk_Career = @Pk_Career;
END
GO
/****** Object:  StoredProcedure [dbo].[udpDeleteCourse]    Script Date: 4/7/2022 2:55:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[udpDeleteCourse](@Pk_Course AS INT)
AS
BEGIN
    DELETE 
        [dbo].Course
    WHERE
        Pk_Course = @Pk_Course;
END
GO
/****** Object:  StoredProcedure [dbo].[udpDeleteCycle]    Script Date: 4/7/2022 2:55:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[udpDeleteCycle](@Pk_Cycle AS INT)
AS
BEGIN
    DELETE 
        [dbo].Cycle
    WHERE
        Pk_Cycle = @Pk_Cycle;
END
GO
/****** Object:  StoredProcedure [dbo].[udpFindCareer]    Script Date: 4/7/2022 2:55:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[udpFindCareer](@Pk_Career AS INT = NULL, @Code AS VARCHAR(50) = NULL, @CareerName as VARCHAR(50) = NULL, @DegreeName as VARCHAR(50) = NULL)
AS
BEGIN
    SELECT  *
    FROM    [dbo].Career
    WHERE   (@Pk_Career IS NULL OR Pk_Career = @Pk_Career)
            AND (@Code IS NULL OR Code = @Code)
            AND (@CareerName IS NULL OR CareerName = @CareerName)
            AND (@DegreeName IS NULL OR DegreeName = @DegreeName)
END
GO
/****** Object:  StoredProcedure [dbo].[udpFindCourse]    Script Date: 4/7/2022 2:55:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[udpFindCourse](@Pk_Course AS INT = NULL, @Code AS VARCHAR(50) = NULL, @Name AS VARCHAR(50) = NULL, @Credits AS INT = NULL, @WeeklyHours AS INT = NULL)
AS
BEGIN
	SELECT  *
    FROM    [dbo].Course
    WHERE   (@Pk_Course IS NULL OR Pk_Course = @Pk_Course)
            AND (@Code IS NULL OR Code = @Code)
            AND (@Name IS NULL OR Name = @Name)
            AND (@Credits IS NULL OR Credits = @Credits)
            AND (@WeeklyHours IS NULL OR WeeklyHours = @WeeklyHours)
END
GO
/****** Object:  StoredProcedure [dbo].[udpFindCycle]    Script Date: 4/7/2022 2:55:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[udpFindCycle](@Pk_Cycle AS INT = NULL, @Fk_CycleState AS INT = NULL, @Year AS INT = NULL, @Number AS INT = NULL, @StartDate AS DATE = NULL, @EndDate AS DATE = NULL)
AS
BEGIN
	select  *
    from    [dbo].Cycle
    where   (@Pk_Cycle is null or Pk_Cycle = @Pk_Cycle)
            and (@Fk_CycleState is null or Fk_CycleState = @Fk_CycleState)
            and (@Year is null or Year = @Year)
            and (@Number is null or Number = @Number)
            and (@StartDate is null or StartDate = @StartDate)
            and (@EndDate is null or EndDate = @EndDate)
END
GO
/****** Object:  StoredProcedure [dbo].[udpInsertCareer]    Script Date: 4/7/2022 2:55:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[udpInsertCareer](@Code AS VARCHAR(50), @CareerName as VARCHAR(50), @DegreeName as VARCHAR(50))
AS
BEGIN
    INSERT INTO [dbo].Career VALUES (@Code, @CareerName, @DegreeName);
    SELECT SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[udpInsertCourse]    Script Date: 4/7/2022 2:55:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[udpInsertCourse](@Code AS VARCHAR(50), @Name AS VARCHAR(50), @Credits AS INT, @WeeklyHours AS INT)
AS
BEGIN
    INSERT INTO [dbo].Course VALUES (@Code, @Name, @Credits, @WeeklyHours);
END
GO
/****** Object:  StoredProcedure [dbo].[udpInsertCycle]    Script Date: 4/7/2022 2:55:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[udpInsertCycle](@Fk_CycleState AS INT, @Year AS INT, @Number AS INT, @StartDate AS DATE, @EndDate AS DATE)
AS
BEGIN
    INSERT INTO [dbo].Cycle VALUES (@Fk_CycleState, @Year, @Number, @StartDate, @EndDate);
END
GO
/****** Object:  StoredProcedure [dbo].[udpModifyCareer]    Script Date: 4/7/2022 2:55:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[udpModifyCareer](@Pk_Career AS INT, @Code AS VARCHAR(50), @CareerName as VARCHAR(50), @DegreeName as VARCHAR(50))
AS
BEGIN
    UPDATE 
        [dbo].Career 
    SET 
        Code = @Code, 
        CareerName = @CareerName, 
        DegreeName = @DegreeName
    WHERE
        Pk_Career = @Pk_Career;
   SELECT SCOPE_IDENTITY();

END
GO
/****** Object:  StoredProcedure [dbo].[udpModifyCourse]    Script Date: 4/7/2022 2:55:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[udpModifyCourse](@Pk_Course AS INT, @Code AS VARCHAR(50), @Name AS VARCHAR(50), @Credits AS INT, @WeeklyHours AS INT)
AS
BEGIN
    UPDATE 
        [dbo].Course 
    SET 
        Code = @Code,
        Name = @Name,
        Credits = @Credits,
        WeeklyHours = @WeeklyHours
    WHERE
        Pk_Course = @Pk_Course;
END
GO
/****** Object:  StoredProcedure [dbo].[udpModifyCycle]    Script Date: 4/7/2022 2:55:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[udpModifyCycle](@Pk_Cycle AS INT, @Fk_CycleState AS INT, @Year AS INT, @Number AS INT, @StartDate AS DATE, @EndDate AS DATE)
AS
BEGIN
    UPDATE 
        [dbo].Cycle 
    SET 
        Fk_CycleState = @Fk_CycleState,
        Year = @Year,
        Number = @Number,
        StartDate = @StartDate,
        EndDate = @EndDate
    WHERE
        Pk_Cycle = @Pk_Cycle;
END
GO
