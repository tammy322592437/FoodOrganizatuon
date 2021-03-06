
GO
/****** Object:  Table [dbo].[Epicenter]    Script Date: 24/05/2020 21:06:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Epicenter](
	[Organization_Kod] [int] NOT NULL,
	[Epicenter_Kod] [int] IDENTITY(1,1) NOT NULL,
	[Epicenter_name] [nvarchar](50) NOT NULL,
	[Epicenter_Address] [nvarchar](50) NOT NULL,
	[Pickup_Time] [time](7) NOT NULL,
 CONSTRAINT [PK_Epicenter] PRIMARY KEY CLUSTERED 
(
	[Epicenter_Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food_Type]    Script Date: 24/05/2020 21:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food_Type](
	[Food_Type] [int] IDENTITY(1,1) NOT NULL,
	[Food_Type_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Food_Type] PRIMARY KEY CLUSTERED 
(
	[Food_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meals_Menu]    Script Date: 24/05/2020 21:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meals_Menu](
	[Meals_Menu_Kod] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Kod] [int] NOT NULL,
	[Food_Type] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Meals_Menu] PRIMARY KEY CLUSTERED 
(
	[Meals_Menu_Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Needy]    Script Date: 24/05/2020 21:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Needy](
	[Needy_Kod] [int] NOT NULL,
	[Number_Of_Persons] [int] NOT NULL,
	[Entry_Date] [date] NOT NULL,
 CONSTRAINT [PK_Needy] PRIMARY KEY CLUSTERED 
(
	[Needy_Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 24/05/2020 21:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[Organization_Kod] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Name] [nvarchar](50) NOT NULL,
	[Organization_City] [nvarchar](50) NOT NULL,
	[Organizer_Kod] [int] NOT NULL,
	[Organization_Logo] [nvarchar](200) NOT NULL,
	[Organization_Describe] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[Organization_Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization_Days]    Script Date: 24/05/2020 21:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization_Days](
	[Sunday] [bit] NOT NULL,
	[Monday] [bit] NOT NULL,
	[Tuesday] [bit] NOT NULL,
	[Wednesday] [bit] NOT NULL,
	[Thursday] [bit] NOT NULL,
	[Friday] [bit] NOT NULL,
	[Saturday] [bit] NOT NULL,
	[Organization_Kod] [int] NOT NULL,
 CONSTRAINT [PK_Organization_Days] PRIMARY KEY CLUSTERED 
(
	[Organization_Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizer]    Script Date: 24/05/2020 21:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizer](
	[Organizer_Kod] [int] NOT NULL,
	[Organizer_Id] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Organizer] PRIMARY KEY CLUSTERED 
(
	[Organizer_Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Selected_Menu_For_Help]    Script Date: 24/05/2020 21:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Selected_Menu_For_Help](
	[Selected_Menu_For_Help_Kod] [int] IDENTITY(1,1) NOT NULL,
	[Meals_Menu_Kod] [int] NOT NULL,
	[Volunteer_Kod] [int] NOT NULL,
	[Application_Date] [date] NOT NULL,
	[Needy_Kod] [int] NOT NULL,
	[Organizer_Kod] [int] NOT NULL,
	[Organization_Kod] [int] NOT NULL,
 CONSTRAINT [PK_Selected_Menu_For_Help] PRIMARY KEY CLUSTERED 
(
	[Selected_Menu_For_Help_Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status_Food]    Script Date: 24/05/2020 21:06:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status_Food](
	[Status_Kod] [int] IDENTITY(1,1) NOT NULL,
	[Status_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status_Food] PRIMARY KEY CLUSTERED 
(
	[Status_Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type_User]    Script Date: 24/05/2020 21:06:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type_User](
	[Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Type_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Type_User] PRIMARY KEY CLUSTERED 
(
	[Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 24/05/2020 21:06:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[User_kod] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [nvarchar](50) NOT NULL,
	[Last_Name] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[HomeTown] [nvarchar](50) NOT NULL,
	[Telephone] [nvarchar](30) NOT NULL,
	[Is_Active] [bit] NOT NULL,
	[User_Type] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volunteer]    Script Date: 24/05/2020 21:06:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteer](
	[Volunteer_Kod] [int] NOT NULL,
 CONSTRAINT [PK_Volunteer] PRIMARY KEY CLUSTERED 
(
	[Volunteer_Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volunteer_Organizations]    Script Date: 24/05/2020 21:06:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteer_Organizations](
	[Organization_Kod] [int] NOT NULL,
	[Volunteer_Kod] [int] NOT NULL,
	[Epicenter_Kod] [int] NOT NULL,
	[Volunteer_Organizations_Kod] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Volunteer_Organizations] PRIMARY KEY CLUSTERED 
(
	[Volunteer_Organizations_Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Epicenter]  WITH CHECK ADD  CONSTRAINT [FK_Epicenter_Organization] FOREIGN KEY([Organization_Kod])
REFERENCES [dbo].[Organization] ([Organization_Kod])
GO
ALTER TABLE [dbo].[Epicenter] CHECK CONSTRAINT [FK_Epicenter_Organization]
GO
ALTER TABLE [dbo].[Meals_Menu]  WITH CHECK ADD  CONSTRAINT [FK_Meals_Menu_Food_Type] FOREIGN KEY([Food_Type])
REFERENCES [dbo].[Food_Type] ([Food_Type])
GO
ALTER TABLE [dbo].[Meals_Menu] CHECK CONSTRAINT [FK_Meals_Menu_Food_Type]
GO
ALTER TABLE [dbo].[Meals_Menu]  WITH CHECK ADD  CONSTRAINT [FK_Meals_Menu_Organization] FOREIGN KEY([Organization_Kod])
REFERENCES [dbo].[Organization] ([Organization_Kod])
GO
ALTER TABLE [dbo].[Meals_Menu] CHECK CONSTRAINT [FK_Meals_Menu_Organization]
GO
ALTER TABLE [dbo].[Meals_Menu]  WITH CHECK ADD  CONSTRAINT [FK_Meals_Menu_Status_Food] FOREIGN KEY([Status])
REFERENCES [dbo].[Status_Food] ([Status_Kod])
GO
ALTER TABLE [dbo].[Meals_Menu] CHECK CONSTRAINT [FK_Meals_Menu_Status_Food]
GO
ALTER TABLE [dbo].[Needy]  WITH CHECK ADD  CONSTRAINT [FK_Needy_User] FOREIGN KEY([Needy_Kod])
REFERENCES [dbo].[User] ([User_kod])
GO
ALTER TABLE [dbo].[Needy] CHECK CONSTRAINT [FK_Needy_User]
GO
ALTER TABLE [dbo].[Organization]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Organizer] FOREIGN KEY([Organizer_Kod])
REFERENCES [dbo].[Organizer] ([Organizer_Kod])
GO
ALTER TABLE [dbo].[Organization] CHECK CONSTRAINT [FK_Organization_Organizer]
GO
ALTER TABLE [dbo].[Organization_Days]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Days_Organization] FOREIGN KEY([Organization_Kod])
REFERENCES [dbo].[Organization] ([Organization_Kod])
GO
ALTER TABLE [dbo].[Organization_Days] CHECK CONSTRAINT [FK_Organization_Days_Organization]
GO
ALTER TABLE [dbo].[Organizer]  WITH CHECK ADD  CONSTRAINT [FK_Organizer_User] FOREIGN KEY([Organizer_Kod])
REFERENCES [dbo].[User] ([User_kod])
GO
ALTER TABLE [dbo].[Organizer] CHECK CONSTRAINT [FK_Organizer_User]
GO
ALTER TABLE [dbo].[Selected_Menu_For_Help]  WITH CHECK ADD  CONSTRAINT [FK_Selected_Menu_For_Help_Meals_Menu] FOREIGN KEY([Meals_Menu_Kod])
REFERENCES [dbo].[Meals_Menu] ([Meals_Menu_Kod])
GO
ALTER TABLE [dbo].[Selected_Menu_For_Help] CHECK CONSTRAINT [FK_Selected_Menu_For_Help_Meals_Menu]
GO
ALTER TABLE [dbo].[Selected_Menu_For_Help]  WITH CHECK ADD  CONSTRAINT [FK_Selected_Menu_For_Help_Needy] FOREIGN KEY([Needy_Kod])
REFERENCES [dbo].[Needy] ([Needy_Kod])
GO
ALTER TABLE [dbo].[Selected_Menu_For_Help] CHECK CONSTRAINT [FK_Selected_Menu_For_Help_Needy]
GO
ALTER TABLE [dbo].[Selected_Menu_For_Help]  WITH CHECK ADD  CONSTRAINT [FK_Selected_Menu_For_Help_Organization] FOREIGN KEY([Organization_Kod])
REFERENCES [dbo].[Organization] ([Organization_Kod])
GO
ALTER TABLE [dbo].[Selected_Menu_For_Help] CHECK CONSTRAINT [FK_Selected_Menu_For_Help_Organization]
GO
ALTER TABLE [dbo].[Selected_Menu_For_Help]  WITH CHECK ADD  CONSTRAINT [FK_Selected_Menu_For_Help_Organizer] FOREIGN KEY([Organizer_Kod])
REFERENCES [dbo].[Organizer] ([Organizer_Kod])
GO
ALTER TABLE [dbo].[Selected_Menu_For_Help] CHECK CONSTRAINT [FK_Selected_Menu_For_Help_Organizer]
GO
ALTER TABLE [dbo].[Selected_Menu_For_Help]  WITH CHECK ADD  CONSTRAINT [FK_Selected_Menu_For_Help_Volunteer] FOREIGN KEY([Volunteer_Kod])
REFERENCES [dbo].[Volunteer] ([Volunteer_Kod])
GO
ALTER TABLE [dbo].[Selected_Menu_For_Help] CHECK CONSTRAINT [FK_Selected_Menu_For_Help_Volunteer]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Type_User] FOREIGN KEY([User_Type])
REFERENCES [dbo].[Type_User] ([Type_Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Type_User]
GO
ALTER TABLE [dbo].[Volunteer]  WITH CHECK ADD  CONSTRAINT [FK_Volunteer_User] FOREIGN KEY([Volunteer_Kod])
REFERENCES [dbo].[User] ([User_kod])
GO
ALTER TABLE [dbo].[Volunteer] CHECK CONSTRAINT [FK_Volunteer_User]
GO
ALTER TABLE [dbo].[Volunteer_Organizations]  WITH CHECK ADD  CONSTRAINT [FK_Volunteer_Organizations_Epicenter] FOREIGN KEY([Epicenter_Kod])
REFERENCES [dbo].[Epicenter] ([Epicenter_Kod])
GO
ALTER TABLE [dbo].[Volunteer_Organizations] CHECK CONSTRAINT [FK_Volunteer_Organizations_Epicenter]
GO
ALTER TABLE [dbo].[Volunteer_Organizations]  WITH CHECK ADD  CONSTRAINT [FK_Volunteer_Organizations_Organization] FOREIGN KEY([Organization_Kod])
REFERENCES [dbo].[Organization] ([Organization_Kod])
GO
ALTER TABLE [dbo].[Volunteer_Organizations] CHECK CONSTRAINT [FK_Volunteer_Organizations_Organization]
GO
ALTER TABLE [dbo].[Volunteer_Organizations]  WITH CHECK ADD  CONSTRAINT [FK_Volunteer_Organizations_Volunteer] FOREIGN KEY([Volunteer_Kod])
REFERENCES [dbo].[Volunteer] ([Volunteer_Kod])
GO
ALTER TABLE [dbo].[Volunteer_Organizations] CHECK CONSTRAINT [FK_Volunteer_Organizations_Volunteer]
GO
