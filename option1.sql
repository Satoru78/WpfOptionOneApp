USE [Option1]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 10.02.2022 16:27:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[ID] [int] NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[IDAgentType] [int] NOT NULL,
	[Adress] [nvarchar](50) NOT NULL,
	[INN] [int] NOT NULL,
	[KPP] [nvarchar](50) NOT NULL,
	[FIODirector] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [char](30) NOT NULL,
	[Logotype] [nvarchar](1000) NULL,
	[IDPriority] [nchar](1) NOT NULL,
	[IDRole] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgentType]    Script Date: 10.02.2022 16:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentType](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AgentType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DileveryHistory]    Script Date: 10.02.2022 16:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DileveryHistory](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_DileveryHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 10.02.2022 16:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Phone] [nchar](30) NOT NULL,
	[IDRole] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialShorts]    Script Date: 10.02.2022 16:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialShorts](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[IDMaterialType] [int] NOT NULL,
	[AmountPackage] [int] NOT NULL,
	[IDUnit] [int] NOT NULL,
	[QuantityStock] [int] NOT NULL,
	[Remainder] [int] NOT NULL,
	[Cost] [money] NOT NULL,
 CONSTRAINT [PK_MaterialShorts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 10.02.2022 16:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priority]    Script Date: 10.02.2022 16:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[Code] [nchar](1) NOT NULL,
	[Title] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Priority] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10.02.2022 16:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Articule] [int] NOT NULL,
	[Cost] [money] NOT NULL,
	[Image] [nvarchar](1000) NULL,
	[IDProductsType] [int] NOT NULL,
	[NumberOfPersons] [int] NOT NULL,
	[WorkshopNumber] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsMaterial]    Script Date: 10.02.2022 16:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsMaterial](
	[ID] [int] NOT NULL,
	[IDProduct] [int] NOT NULL,
	[IDMaterialShorts] [int] NOT NULL,
	[AmountMaterial] [int] NOT NULL,
 CONSTRAINT [PK_ProductsMaterial] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsType]    Script Date: 10.02.2022 16:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsType](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductsType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10.02.2022 16:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Code] [nchar](1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 10.02.2022 16:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[INN] [int] NOT NULL,
	[IDAgentType] [int] NOT NULL,
	[IDDileveryHistory] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 10.02.2022 16:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[ID] [int] NOT NULL,
	[Title] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10.02.2022 16:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IDRole] [nchar](1) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AgentType] ([ID], [Title]) VALUES (1, N'OOO')
INSERT [dbo].[AgentType] ([ID], [Title]) VALUES (2, N'ИП')
INSERT [dbo].[AgentType] ([ID], [Title]) VALUES (3, N'Самозанятый')
INSERT [dbo].[AgentType] ([ID], [Title]) VALUES (4, N'OA')
GO
INSERT [dbo].[Manager] ([ID], [FirstName], [LastName], [Phone], [IDRole]) VALUES (1, N'Петров', N'Ян', N'+79896547834                  ', N'm')
GO
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (1, N'Вата серый 1x1', 1, 7, 1, 191, 34, 6009.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (2, N'Ткань белый 2x2', 2, 10, 1, 713, 18, 13742.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (3, N'Металлический стержень белый 0x2', 3, 9, 2, 280, 12, 10633.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (4, N'Силикон серый 1x1', 4, 2, 1, 981, 12, 2343.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (5, N'Силикон белый 0x3', 4, 8, 2, 307, 17, 12097.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (6, N'Силикон белый 1x3', 4, 4, 2, 345, 46, 13550.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (7, N'Ткань серый 0x3', 2, 10, 1, 965, 17, 15210.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (8, N'Резинка зеленый 1x0', 5, 8, 2, 256, 9, 32616.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (9, N'Металлический стержень белый 2x2', 3, 9, 1, 65, 36, 36753.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (10, N'Ткань синий 3x3', 2, 5, 1, 387, 39, 32910.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (11, N'Ткань белый 3x2', 2, 9, 1, 398, 25, 782.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (12, N'Вата розовый 1x0', 1, 3, 1, 589, 32, 35776.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (13, N'Вата серый 3x2', 1, 5, 2, 471, 40, 20453.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (14, N'Ткань розовый 0x0', 2, 3, 1, 654, 29, 41101.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (15, N'Металлический стержень цветной 3x1', 3, 4, 1, 988, 49, 55742.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (16, N'Резинка синий 1x0', 5, 3, 2, 191, 11, 1407.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (17, N'Металлический стержень цветной 1x2', 3, 8, 1, 173, 26, 26137.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (18, N'Ткань цветной 2x1', 2, 2, 1, 993, 34, 15628.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (19, N'Силикон белый 2x0', 4, 10, 1, 851, 38, 22538.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (20, N'Силикон зеленый 3x1', 4, 2, 1, 776, 46, 17312.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (21, N'Вата серый 3x3', 1, 1, 2, 237, 12, 19528.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (22, N'Вата белый 2x0', 1, 8, 2, 983, 49, 38432.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (23, N'Вата розовый 3x1', 1, 3, 2, 246, 41, 44015.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (24, N'Ткань синий 2x0', 2, 4, 1, 146, 16, 19507.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (25, N'Металлический стержень зеленый 2x2', 3, 4, 1, 478, 34, 32205.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (26, N'Резинка зеленый 0x0', 5, 7, 1, 594, 19, 42640.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (27, N'Ткань синий 0x2', 2, 8, 2, 841, 21, 27338.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (28, N'Ткань зеленый 2x2', 2, 4, 1, 692, 7, 55083.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (29, N'Металлический стержень синий 0x1', 3, 9, 1, 259, 20, 19715.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (30, N'Резинка белый 3x3', 5, 1, 1, 586, 26, 35230.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (31, N'Резинка зеленый 3x0', 5, 10, 2, 976, 40, 41227.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (32, N'Ткань белый 1x3', 2, 8, 1, 492, 9, 38232.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (33, N'Силикон цветной 1x0', 4, 10, 1, 843, 28, 34664.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (34, N'Силикон зеленый 0x3', 4, 9, 2, 124, 35, 24117.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (35, N'Вата серый 0x1', 1, 8, 1, 25, 38, 42948.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (36, N'Металлический стержень белый 3x1', 3, 9, 1, 749, 30, 9136.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (37, N'Резинка синий 3x1', 5, 4, 2, 232, 36, 36016.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (38, N'Металлический стержень синий 3x1', 3, 6, 1, 336, 24, 26976.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (39, N'Силикон белый 1x2', 4, 2, 1, 793, 30, 33801.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (40, N'Резинка цветной 1x1', 5, 8, 1, 347, 13, 26244.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (41, N'Силикон розовый 1x3', 4, 9, 1, 997, 25, 33874.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (42, N'Резинка синий 3x2', 5, 5, 1, 284, 31, 44031.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (43, N'Резинка розовый 1x0', 5, 1, 1, 265, 21, 36574.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (44, N'Резинка зеленый 0x3', 5, 8, 2, 856, 17, 45349.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (45, N'Резинка цветной 0x1', 5, 8, 1, 290, 32, 47198.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (46, N'Вата розовый 3x3', 1, 10, 1, 536, 31, 2517.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (47, N'Резинка цветной 0x2', 5, 10, 1, 189, 31, 55495.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (48, N'Вата серый 3x0', 1, 8, 2, 48, 32, 49181.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (49, N'Резинка серый 3x3', 5, 4, 1, 373, 8, 51550.0000)
INSERT [dbo].[MaterialShorts] ([ID], [Title], [IDMaterialType], [AmountPackage], [IDUnit], [QuantityStock], [Remainder], [Cost]) VALUES (50, N'Резинка серый 0x0', 5, 7, 1, 395, 20, 43414.0000)
GO
INSERT [dbo].[MaterialType] ([ID], [Title]) VALUES (1, N'Вата')
INSERT [dbo].[MaterialType] ([ID], [Title]) VALUES (2, N'Ткань')
INSERT [dbo].[MaterialType] ([ID], [Title]) VALUES (3, N'Стержень')
INSERT [dbo].[MaterialType] ([ID], [Title]) VALUES (4, N'Силикон')
INSERT [dbo].[MaterialType] ([ID], [Title]) VALUES (5, N'Резинка')
GO
INSERT [dbo].[Priority] ([Code], [Title]) VALUES (N'n', N'нет       ')
INSERT [dbo].[Priority] ([Code], [Title]) VALUES (N'y', N'есть      ')
GO
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (1, N'Полумаска "Moon" (Элипс) P3', 59922, 2690.0000, N'\products\5fb128cd1e2b9.jpg', 1, 5, 4)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (6, N'Маска из нетканого материала KN95', 5030981, 59.0000, N'\products\5fb128cc719a6.jpg', 4, 3, 5)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (7, N'Маска из нетканого материала с клапаном KN95', 5029784, 79.0000, N'\products\5fb128cc753e3.jpg', 4, 3, 4)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (8, N'Респиратор У-2К', 58953, 95.0000, N'\products\5fb128cc7941f.jpg', 4, 2, 6)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (9, N'Респиратор 9101 FFP1', 5026662, 189.0000, N'\products\5fb128cc7d798.jpg', 3, 5, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (10, N'Респиратор противоаэрозольный 9312', 59043, 399.0000, N'\products\5fb128cc80a10.jpg', 3, 4, 7)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (12, N'Респиратор 3M 8101 противоаэрозольный', 58375, 149.0000, N'\products\5fb128cc87b90.jpg', 3, 1, 4)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (13, N'Респиратор "Алина" 110', 59324, 129.0000, N'\products\5fb128cc8b750.jpg', 3, 3, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (14, N'Респиратор "Алина" 100', 58827, 99.0000, N'\products\5fb128cc8f4dd.jpg', 3, 2, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (15, N'Респиратор "Нева" 109', 59898, 129.0000, N'\products\5fb128cc9414b.jpg', 3, 4, 1)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (16, N'Респиратор "Юлия" 109', 59474, 129.0000, N'\products\5fb128cc97ff4.jpg', 3, 4, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (17, N'Респиратор "Юлия" 119', 59472, 149.0000, N'\products\5fb128cc9bd36.jpg', 3, 3, 7)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (18, N'Респиратор 3M с клапаном 9162', 5033136, 349.0000, N'\products\5fb128cc9f069.jpg', 3, 2, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (19, N'Респиратор 3M 9152 FFP2', 5028048, 390.0000, N'\products\5fb128cca31d9.jpg', 3, 2, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (20, N'Респиратор противоаэрозольный 9322', 58796, 449.0000, N'\products\5fb128cca6910.jpg', 3, 4, 4)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (21, N'Респиратор с клапаном 9926', 58568, 699.0000, N'\products\5fb128cca9d9b.jpg', 3, 3, 5)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (22, N'Респиратор 3M 8102 противоаэрозольный', 58466, 199.0000, N'\products\5fb128ccae21a.jpg', 3, 3, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (23, N'Респиратор 3M 8122', 58445, 299.0000, N'\products\5fb128ccb1958.jpg', 3, 3, 6)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (24, N'Респиратор M1200VWC FFP2 Delta Plus (Дельта Плюс)', 5031919, 349.0000, N'\products\5fb128ccb4e8c.jpg', 3, 2, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (25, N'Респиратор RK6021', 5030026, 290.0000, N'\products\5fb128ccb97a0.jpg', 3, 5, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (26, N'Респиратор RK6020', 5030020, 129.0000, N'\products\5fb128ccbd227.jpg', 3, 3, 5)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (27, N'Респиратор Алина 210', 5030072, 290.0000, N'\products\5fb128ccc1592.jpg', 3, 1, 5)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (28, N'Респиратор Алина 211', 5030062, 290.0000, N'\products\5fb128ccc4a86.jpg', 3, 1, 6)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (29, N'Респиратор "Алина" 200', 58826, 149.0000, N'\products\5fb128ccc9a9e.jpg', 3, 4, 5)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (30, N'Респиратор "Алина" П', 58825, 290.0000, N'\products\5fb128cccdbee.jpg', 3, 4, 5)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (31, N'Респиратор "Алина" АВ', 58584, 249.0000, N'\products\5fb128ccd133c.jpg', 3, 2, 5)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (32, N'Респиратор "Нева" 210', 59736, 109.0000, N'\products\5fb128ccd5dc2.jpg', 3, 1, 3)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (33, N'Респиратор "Нева" 200', 59735, 79.0000, N'\products\5fb128ccd8ff6.jpg', 3, 2, 3)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (34, N'Респиратор полумаска НРЗ-0102 FFP2 NR D', 5027238, 149.0000, N'\products\5fb128ccdca1e.jpg', 3, 4, 4)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (35, N'Респиратор "Юлия" 219', 59475, 249.0000, N'\products\5fb128cce0042.jpg', 3, 4, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (36, N'Респиратор "Юлия" 215', 59473, 349.0000, N'\products\5fb128cce39fa.jpg', 3, 3, 4)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (37, N'Респиратор "Юлия" 209', 59470, 179.0000, N'\products\5fb128cce7971.jpg', 3, 2, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (38, N'Респиратор M1300V2С FFP3 Delta Plus (Дельта Плюс)', 5031924, 490.0000, N'\products\5fb128cceae7c.jpg', 3, 5, 2)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (39, N'Респиратор RK6030', 5030022, 390.0000, N'\products\5fb128ccef256.jpg', 3, 3, 6)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (40, N'Респиратор "Алина" 310', 58850, 490.0000, N'\products\5fb128ccf3dd2.jpg', 3, 5, 6)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (41, N'Респиратор "Нева" 310', 59739, 289.0000, N'\products\5fb128cd0544b.jpg', 3, 4, 3)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (42, N'Респиратор "Юлия" 319', 59471, 490.0000, N'\products\5fb128cd08e3f.jpg', 3, 4, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (43, N'Полумаска "Elipse" (Элипс) ABEK1P3', 5027980, 4990.0000, N'\products\5fb128cd0d0b1.jpg', 3, 2, 1)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (44, N'Полумаска "Elipse" (Элипс) A2P3', 5027965, 4490.0000, N'\products\5fb128cd10ec2.jpg', 1, 4, 2)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (45, N'Полумаска "Elipse" (Элипс) А1', 5027958, 3190.0000, N'\products\5fb128cd157f9.jpg', 1, 2, 4)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (46, N'Полумаска "Elipse" (Элипс) P3 (анти-запах)', 59923, 2790.0000, N'\products\5fb128cd19baa.jpg', 1, 1, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (47, N'Полумаска "Elipse" (Элипс) P3', 59922, 2690.0000, N'\products\5fb128cd1e2b9.jpg', 1, 5, 4)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (48, N'Полумаска "Elipse" (Элипс) A1P3', 59921, 5690.0000, N'\products\5fb128cd2215f.jpg', 1, 3, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (49, N'Полумаска "Elipse" (Элипс) ABEK1', 59920, 5690.0000, N'\products\5fb128cd268bf.jpg', 1, 2, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (50, N'Респиратор-полумаска "3М" серия 6000', 58974, 3490.0000, N'\products\5fb128cd2ab69.jpg', 1, 5, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (51, N'Респиратор-полумаска Исток 300/400', 59334, 490.0000, N'\products\5fb128cd2ef7a.jpg', 1, 4, 7)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (52, N'Комплект для защиты дыхания J-SET 6500 JETA', 4969295, 2490.0000, N'\products\5fb128cd331c4.jpg', 1, 4, 4)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (53, N'Лицевая маска Elipse Integra А1P3', 5029610, 9890.0000, N'\products\5fb128cd3674d.jpg', 1, 2, 10)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (54, N'Лицевая маска Elipse Integra P3', 5029091, 7490.0000, N'\products\5fb128cd3af5c.jpg', 5, 5, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (56, N'Полнолицевая маска 5950 JETA', 4958042, 11490.0000, N'\products\5fb128cd41ece.jpg', 5, 1, 5)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (59, N'Сменный фильтр 6510 A1 JETA', 5028197, 990.0000, N'\products\5fb128cd50a70.jpg', 10, 5, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (60, N'Запасные фильтры к полумаске Elipse ABEK1P3', 5027978, 2990.0000, N'\products\5fb128cd5433e.jpg', 10, 3, 6)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (61, N'Запасные фильтры к полумаске Elipse A2P3', 5027961, 2590.0000, N'\products\5fb128cd5838d.jpg', 6, 2, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (62, N'Запасные фильтры к полумаске Elipse (Элипс) А1', 5027921, 1290.0000, N'\products\5fb128cd5bb7d.jpg', 6, 3, 4)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (63, N'Сменный фильтр 6541 ABEK1 JETA', 4958040, 1290.0000, N'\products\5fb128cd5ff78.jpg', 10, 4, 6)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (65, N'Запасные фильтры к полумаске "Elipse" (Элипс) P3', 59918, 1390.0000, N'\products\5fb128cd66df6.jpg', 6, 4, 7)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (66, N'Запасные фильтры к полумаске "Elipse" (Элипс) A1P3', 59917, 2190.0000, N'\products\5fb128cd6a2b6.jpg', 6, 1, 3)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (71, N'Держатель предфильтра 5101 JETA', 4958041, 199.0000, N'\products\5fb128cd7d2cd.jpg', 6, 1, 7)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (73, N'Предфильтр Р2 (4 шт) 6020 JETA', 4958039, 380.0000, N'\products\5fb128cd8417e.jpg', 7, 1, 7)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (74, N'Предфильтры для масок и полумасок "3М" серии 6000', 58917, 409.0000, N'\products\5fb128cd8818d.jpg', 8, 5, 3)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (75, N'Респиратор "Мадонна" 110', 59324, 129.0000, N'\products\5fb128cc8b750.jpg', 3, 3, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (76, N'Респиратор "Витязь" 100', 58827, 99.0000, N'\products\5fb128cc8f4dd.jpg', 3, 2, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (77, N'Респиратор "Серёга" 109', 59898, 129.0000, N'\products\5fb128cc9414b.jpg', 3, 4, 1)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (78, N'Респиратор "Амперметр" 109', 59474, 129.0000, N'\products\5fb128cc97ff4.jpg', 3, 4, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (79, N'Респиратор "Фирюза" 110', 59324, 129.0000, N'\products\5fb128cc8b750.jpg', 3, 3, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (80, N'Респиратор "Красный" 100', 58827, 99.0000, N'\products\5fb128cc8f4dd.jpg', 3, 2, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (81, N'Респиратор "Волга" 109', 59898, 129.0000, N'\products\5fb128cc9414b.jpg', 3, 4, 1)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (82, N'Респиратор "Мадонна" 220', 59474, 129.0000, N'\products\5fb128cc97ff4.jpg', 3, 4, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (83, N'Респиратор "Витязь" 220', 59324, 129.0000, N'\products\5fb128cc8b750.jpg', 3, 3, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (84, N'Респиратор "Серёга" 220', 58827, 99.0000, N'\products\5fb128cc8f4dd.jpg', 3, 2, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (85, N'Респиратор "Амперметр" 220', 59898, 129.0000, N'\products\5fb128cc9414b.jpg', 3, 4, 1)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (86, N'Респиратор "Фирюза" 220', 59474, 129.0000, N'\products\5fb128cc97ff4.jpg', 3, 4, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (87, N'Респиратор "Красный" 220', 59324, 129.0000, N'\products\5fb128cc8b750.jpg', 3, 3, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (88, N'Респиратор "Волга" 220', 58827, 99.0000, N'\products\5fb128cc8f4dd.jpg', 3, 2, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (89, N'Полумаска "Sunset" ABEK1P3', 5027980, 4990.0000, N'\products\5fb128cd0d0b1.jpg', 3, 2, 1)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (90, N'Полумаска "Sunset" A2P3', 5027965, 4490.0000, N'\products\5fb128cd10ec2.jpg', 1, 4, 2)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (91, N'Полумаска "Sunset" А1', 5027958, 3190.0000, N'\products\5fb128cd157f9.jpg', 1, 2, 4)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (92, N'Полумаска "Sunset" P3 (анти-запах)', 59923, 2790.0000, N'\products\5fb128cd19baa.jpg', 1, 1, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (93, N'Полумаска "Sunset" (Элипс) P3', 59922, 2690.0000, N'\products\5fb128cd1e2b9.jpg', 1, 5, 4)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (94, N'Полумаска "Sunset" A1P3', 59921, 5690.0000, N'\products\5fb128cd2215f.jpg', 1, 3, 9)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (95, N'Полумаска "Sunset" ABEK1', 59920, 5690.0000, N'\products\5fb128cd268bf.jpg', 1, 2, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (96, N'Полумаска "Moon" ABEK1', 59920, 5690.0000, N'\products\5fb128cd268bf.jpg', 1, 2, 8)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (97, N'Полумаска "Moon" ABEK1P3', 5027980, 4990.0000, N'\products\5fb128cd0d0b1.jpg', 3, 2, 1)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (98, N'Полумаска "Moon" A2P3', 5027965, 4490.0000, N'\products\5fb128cd10ec2.jpg', 1, 4, 2)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (99, N'Полумаска "Moon" А1', 5027958, 3190.0000, N'\products\5fb128cd157f9.jpg', 1, 2, 4)
INSERT [dbo].[Product] ([ID], [Title], [Articule], [Cost], [Image], [IDProductsType], [NumberOfPersons], [WorkshopNumber]) VALUES (100, N'Полумаска "Moon" P3 (анти-запах)', 59923, 2790.0000, N'\products\5fb128cd19baa.jpg', 1, 1, 9)
GO
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (1, 31, 43, 9)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (2, 29, 30, 19)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (4, 46, 21, 18)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (5, 6, 21, 2)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (6, 6, 43, 15)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (7, 30, 21, 9)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (9, 49, 20, 13)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (10, 6, 20, 5)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (11, 42, 20, 12)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (12, 37, 4, 15)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (13, 10, 23, 2)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (14, 23, 12, 12)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (15, 33, 16, 19)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (17, 31, 14, 20)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (18, 25, 14, 9)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (20, 29, 16, 4)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (21, 44, 14, 2)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (22, 30, 23, 13)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (23, 37, 16, 6)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (24, 24, 6, 19)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (26, 44, 24, 19)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (27, 22, 37, 4)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (28, 49, 6, 15)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (29, 43, 37, 17)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (30, 12, 6, 3)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (31, 13, 25, 1)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (33, 25, 6, 10)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (34, 21, 49, 19)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (35, 33, 6, 13)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (36, 35, 15, 2)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (37, 38, 49, 3)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (39, 38, 13, 13)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (40, 40, 42, 19)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (41, 32, 38, 2)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (42, 23, 38, 15)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (43, 24, 26, 5)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (44, 28, 1, 19)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (45, 35, 50, 17)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (46, 8, 26, 19)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (47, 50, 50, 17)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (50, 16, 27, 18)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (51, 10, 44, 20)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (52, 16, 32, 8)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (53, 36, 8, 1)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (54, 9, 45, 14)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (55, 9, 32, 9)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (57, 18, 48, 11)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (58, 45, 45, 20)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (60, 48, 27, 16)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (61, 12, 17, 1)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (62, 30, 27, 1)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (63, 49, 35, 2)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (64, 36, 11, 1)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (65, 23, 36, 2)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (66, 24, 29, 5)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (67, 37, 29, 6)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (68, 38, 3, 10)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (69, 1, 3, 12)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (70, 25, 36, 7)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (71, 27, 29, 4)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (72, 29, 36, 16)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (73, 20, 41, 4)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (74, 30, 36, 18)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (75, 1, 41, 10)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (76, 44, 29, 9)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (78, 10, 29, 9)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (79, 13, 34, 9)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (80, 15, 9, 19)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (81, 17, 11, 3)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (82, 36, 3, 19)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (83, 22, 11, 14)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (84, 6, 31, 19)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (85, 41, 19, 17)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (86, 41, 31, 16)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (88, 23, 33, 4)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (90, 22, 2, 12)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (91, 15, 7, 4)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (92, 12, 47, 3)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (93, 26, 7, 10)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (94, 10, 7, 8)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (95, 48, 33, 16)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (96, 48, 46, 3)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (97, 35, 47, 2)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (98, 39, 7, 20)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (99, 39, 31, 1)
INSERT [dbo].[ProductsMaterial] ([ID], [IDProduct], [IDMaterialShorts], [AmountMaterial]) VALUES (100, 40, 2, 8)
GO
INSERT [dbo].[ProductsType] ([ID], [Title]) VALUES (1, N'Полумаски')
INSERT [dbo].[ProductsType] ([ID], [Title]) VALUES (2, N'Повязки')
INSERT [dbo].[ProductsType] ([ID], [Title]) VALUES (3, N'Респираторы')
INSERT [dbo].[ProductsType] ([ID], [Title]) VALUES (4, N'Маски')
INSERT [dbo].[ProductsType] ([ID], [Title]) VALUES (5, N'На лицо')
INSERT [dbo].[ProductsType] ([ID], [Title]) VALUES (6, N'Запасные части')
INSERT [dbo].[ProductsType] ([ID], [Title]) VALUES (7, N'Держители')
INSERT [dbo].[ProductsType] ([ID], [Title]) VALUES (8, N'Предфильтры')
INSERT [dbo].[ProductsType] ([ID], [Title]) VALUES (9, N'Полнолицевые')
INSERT [dbo].[ProductsType] ([ID], [Title]) VALUES (10, N'Сменные части')
GO
INSERT [dbo].[Role] ([Code], [Title]) VALUES (N'a', N'admin')
INSERT [dbo].[Role] ([Code], [Title]) VALUES (N'g', N'agent')
INSERT [dbo].[Role] ([Code], [Title]) VALUES (N'm', N'manager')
GO
INSERT [dbo].[Unit] ([ID], [Title]) VALUES (1, N'м         ')
INSERT [dbo].[Unit] ([ID], [Title]) VALUES (2, N'кг        ')
GO
INSERT [dbo].[User] ([ID], [Username], [Password], [IDRole]) VALUES (1, N'admin', N'admin', N'a')
INSERT [dbo].[User] ([ID], [Username], [Password], [IDRole]) VALUES (2, N'manager', N'manager', N'm')
INSERT [dbo].[User] ([ID], [Username], [Password], [IDRole]) VALUES (3, N'agent', N'agent', N'g')
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_AgentType] FOREIGN KEY([IDAgentType])
REFERENCES [dbo].[AgentType] ([ID])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_AgentType]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_Priority] FOREIGN KEY([IDPriority])
REFERENCES [dbo].[Priority] ([Code])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_Priority]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([Code])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_Role]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([Code])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_Role]
GO
ALTER TABLE [dbo].[MaterialShorts]  WITH CHECK ADD  CONSTRAINT [FK_MaterialShorts_MaterialType] FOREIGN KEY([IDMaterialType])
REFERENCES [dbo].[MaterialType] ([ID])
GO
ALTER TABLE [dbo].[MaterialShorts] CHECK CONSTRAINT [FK_MaterialShorts_MaterialType]
GO
ALTER TABLE [dbo].[MaterialShorts]  WITH CHECK ADD  CONSTRAINT [FK_MaterialShorts_Unit] FOREIGN KEY([IDUnit])
REFERENCES [dbo].[Unit] ([ID])
GO
ALTER TABLE [dbo].[MaterialShorts] CHECK CONSTRAINT [FK_MaterialShorts_Unit]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductsType] FOREIGN KEY([IDProductsType])
REFERENCES [dbo].[ProductsType] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductsType]
GO
ALTER TABLE [dbo].[ProductsMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductsMaterial_MaterialShorts] FOREIGN KEY([IDMaterialShorts])
REFERENCES [dbo].[MaterialShorts] ([ID])
GO
ALTER TABLE [dbo].[ProductsMaterial] CHECK CONSTRAINT [FK_ProductsMaterial_MaterialShorts]
GO
ALTER TABLE [dbo].[ProductsMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductsMaterial_Product] FOREIGN KEY([IDProduct])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductsMaterial] CHECK CONSTRAINT [FK_ProductsMaterial_Product]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_AgentType] FOREIGN KEY([IDAgentType])
REFERENCES [dbo].[AgentType] ([ID])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_AgentType]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_DileveryHistory] FOREIGN KEY([IDDileveryHistory])
REFERENCES [dbo].[DileveryHistory] ([ID])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_DileveryHistory]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([Code])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
