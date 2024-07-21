USE [master]
GO

CREATE DATABASE [food]
GO
ALTER DATABASE [food] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [food].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [food] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [food] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [food] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [food] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [food] SET ARITHABORT OFF 
GO
ALTER DATABASE [food] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [food] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [food] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [food] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [food] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [food] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [food] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [food] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [food] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [food] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [food] SET  ENABLE_BROKER 
GO
ALTER DATABASE [food] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [food] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [food] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [food] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [food] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [food] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [food] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [food] SET RECOVERY FULL 
GO
ALTER DATABASE [food] SET  MULTI_USER 
GO
ALTER DATABASE [food] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [food] SET DB_CHAINING OFF 
GO
ALTER DATABASE [food] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [food] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'food', N'ON'
GO
USE [food]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Status] [varchar](30) NULL,
	[CustomerId] [nvarchar](450) NULL,
	[EmployeeId] [nvarchar](450) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Discount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Discount] [float] NOT NULL,
	[CategoryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'8.0.4')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2e0b1424-0f3d-40e1-a0b3-adc6b5886bdc', N'Customer', N'CUSTOMER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b83011a0-d7e0-44ae-a91d-63f804ca17f3', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ea891931-84c0-42d7-b83f-6a735a7c3e62', N'Employee', N'EMPLOYEE', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ace406a0-b33f-40e6-b715-40f0b3acd08d', N'2e0b1424-0f3d-40e1-a0b3-adc6b5886bdc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'149bcb0a-9687-4f97-a1fc-c45dd3e0cbc3', N'b83011a0-d7e0-44ae-a91d-63f804ca17f3')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'149bcb0a-9687-4f97-a1fc-c45dd3e0cbc3', N'admin@abc.com', N'ADMIN@ABC.COM', N'admin@abc.com', N'ADMIN@ABC.COM', 1, N'AQAAAAIAAYagAAAAEJToKnHFlxlhxY4r5LuKnaZ0pvCLeg5HnfgEPzPwHNbzD4VO2Jvv+TPZRsOTnuIsNA==', N'PB5DMJKM6LQRFVQSESD3SMXOOHTLKG4O', N'25f9d5f3-51b4-48e8-91cf-eb8ee3ed725c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ace406a0-b33f-40e6-b715-40f0b3acd08d', N'c@abc.com', N'C@ABC.COM', N'c@abc.com', N'C@ABC.COM', 1, N'AQAAAAIAAYagAAAAEIceLlWGvTJ25VzI6kMVcM2foH4iDPF3seg4ZawqDSDwoMvzXo0Ynj/6pxkS3kqueg==', N'HIFCHG53ERXXBHFRHSLI6UBSSQRWKXKT', N'd93e2895-2357-47fe-b9cf-93c82c2e76d8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b4652b8e-c07f-4877-a571-09e5bfba8b87', N'b@abc.com', N'B@ABC.COM', N'b@abc.com', N'B@ABC.COM', 0, N'AQAAAAIAAYagAAAAEGfsLV648IbZz43Iyb0FC17FD4FDy+WrWkd6/uQ03b0SzodBog4D/sZWtD/Nj9S3FA==', N'NVYPNN5KHV3HUKOOPFLVSLF6TAGGYBBG', N'aee91e9f-a820-4357-8e02-70693e681328', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b9bcf4ac-723e-4f3f-b826-f56a1e406d84', N'a@abc.com', N'A@ABC.COM', N'a@abc.com', N'A@ABC.COM', 1, N'AQAAAAIAAYagAAAAEKXtHtM0r5aEJdNuGSk6H6s1/1pC7/YhEVic9FgaxrBGM+m+UQlYFXGLr5m3XMTS2w==', N'OCOGYTRAGICS2KG6736N2HBTFHP2EALP', N'198e0bd3-9ece-4379-ab3d-59f2d256a0f8', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'chicken')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'burger')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'water')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (1, N'chicken 1', 204.99, 0.1, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (2, N'chicken 2', 76.99, 0.1, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (3, N'chicken 3', 89.99, 0.2, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (4, N'chicken 4', 109.99, 0.05, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (5, N'chicken 5', 99.99, 0.1, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (6, N'chicken 6', 129.99, 0.05, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (7, N'chicken 7', 104.99, 0.1, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (8, N'chicken 8', 134.99, 0.05, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (9, N'chicken 9', 109.99, 0.1, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (10, N'chicken 10', 139.99, 0.05, 1)


INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (11, N'burger 1', 120.00, 0.05, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (12, N'burger 2', 149.99, 0.15, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (13, N'burger 3', 99.99, 0.1, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (14, N'burger 4', 129.99, 0.05, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (15, N'burger 5', 139.99, 0.05, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (16, N'burger 6', 114.99, 0.1, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (17, N'burger 7', 144.99, 0.05, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (18, N'burger 8', 119.99, 0.1, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (19, N'burger 9', 149.99, 0.05, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (20, N'burger 10', 150.00, 0.1, 2)

INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (21, N'water 1', 85.00, 0.05, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (22, N'water 2', 39.99, 0.05, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (23, N'water 3', 49.99, 0.1, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (24, N'water 4', 44.99, 0.05, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (25, N'water 5', 54.99, 0.15, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (26, N'water 6', 59.99, 0.05, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (27, N'water 7', 64.99, 0.1, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (28, N'water 8', 69.99, 0.05, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (29, N'water 9', 74.99, 0.15, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [CategoryId]) VALUES (30, N'water 10', 79.99, 0.05, 3)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
USE [master]
GO
ALTER DATABASE [food] SET  READ_WRITE 
GO
