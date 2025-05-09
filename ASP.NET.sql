USE [ASP.NET]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/21/2025 9:10:57 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 4/21/2025 9:10:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/21/2025 9:10:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 4/21/2025 9:10:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NOT NULL,
	[Position] [nvarchar](max) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 4/21/2025 9:10:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/21/2025 9:10:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[TotalAmount] [float] NOT NULL,
	[UserId] [int] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/21/2025 9:10:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[BrandId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[PriceSale] [float] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/21/2025 9:10:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250415234337_InitialCreate', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250416004843_SeedMenu', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250417030637_AddPriceSaleAndContentToProduct', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250418021441_InitUPDATECSDLsw', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250418091601_AddAddressToOrder', N'9.0.3')
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (2, N'Vans')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (3, N'Nike')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (4, N'Converse')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1, N'Giày nam ')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (2, N'Giày nữ')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([Id], [Name], [Link], [Position], [SortOrder], [ParentId]) VALUES (0, N'Gốc', N'#', N'system', 1, NULL)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Position], [SortOrder], [ParentId]) VALUES (1, N'Trang chủ', N'/', N'mainmenu', 1, 0)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Position], [SortOrder], [ParentId]) VALUES (2, N'Giới thiệu', N'/gioi-thieu', N'mainmenu', 1, 0)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Position], [SortOrder], [ParentId]) VALUES (3, N'Tất cả sản phẩm', N'/tat-ca-san-pham', N'mainmenu', 1, 0)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Position], [SortOrder], [ParentId]) VALUES (4, N'Giày nam', N'/danh-muc/1', N'mainmenu', 1, 0)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Position], [SortOrder], [ParentId]) VALUES (12, N'Giày nữ', N'/danh-muc/2', N'mainmenu', 1, 0)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Position], [SortOrder], [ParentId]) VALUES (13, N'Thương Hiệu', N'/', N'mainmenu', 1, 0)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Position], [SortOrder], [ParentId]) VALUES (18, N'Bài Viết', N'/menu-5', N'mainmenu', 1, 0)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Position], [SortOrder], [ParentId]) VALUES (19, N'Tất cả bài viết', N'/tat-ca-bai-viet', N'mainmenu', 1, 18)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Position], [SortOrder], [ParentId]) VALUES (20, N'Bài viết Mới', N'/bai-viet-moi', N'mainmenu', 1, 18)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Position], [SortOrder], [ParentId]) VALUES (21, N'Bài viết theo chủ đề', N'/chuyen-muc/tin-tuc', N'mainmenu', 1, 18)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Position], [SortOrder], [ParentId]) VALUES (22, N'Vans', N'/thuong-hieu/2', N'mainmenu', 1, 13)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Position], [SortOrder], [ParentId]) VALUES (23, N'Nike', N'/thuong-hieu/3', N'mainmenu', 1, 13)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Position], [SortOrder], [ParentId]) VALUES (24, N'Converse', N'/thuong-hieu/4', N'mainmenu', 1, 13)
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (1, 1, 9, 10, 2000)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (2, 2, 9, 10, 200)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (3, 4, 12, 1, 683)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (4, 5, 9, 3, 894)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (5, 5, 13, 1, 462)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (6, 7, 11, 1, 868)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (7, 7, 9, 1, 894)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (8, 7, 12, 1, 683)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (9, 8, 9, 3, 894)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (1002, 1006, 11, 2, 868)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (1003, 1007, 9, 10, 1000)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (1004, 1008, 9, 1, 894)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (1005, 1009, 12, 1, 683)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [OrderDate], [TotalAmount], [UserId], [Address]) VALUES (1, CAST(N'2025-04-18T08:42:14.5520000' AS DateTime2), 200, 3, N'')
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [TotalAmount], [UserId], [Address]) VALUES (2, CAST(N'2025-04-18T08:47:47.9180000' AS DateTime2), 100, 3, N'')
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [TotalAmount], [UserId], [Address]) VALUES (4, CAST(N'2025-04-18T09:06:48.0790000' AS DateTime2), 683, 3, N'')
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [TotalAmount], [UserId], [Address]) VALUES (5, CAST(N'2025-04-18T09:08:16.2400000' AS DateTime2), 3144, 3, N'')
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [TotalAmount], [UserId], [Address]) VALUES (7, CAST(N'2025-04-18T09:19:24.1650000' AS DateTime2), 2445, 3, N'91/17A ,ĐƯỜNG SỐ 8,LINH TRUNG,THỦ ĐỨC')
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [TotalAmount], [UserId], [Address]) VALUES (8, CAST(N'2025-04-18T09:54:28.4890000' AS DateTime2), 2682, 3, N'FRONTEND – Giao diện gọi API (3.0 điểm)')
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [TotalAmount], [UserId], [Address]) VALUES (1006, CAST(N'2025-04-19T03:49:12.7270000' AS DateTime2), 1736, 3, N'm')
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [TotalAmount], [UserId], [Address]) VALUES (1007, CAST(N'2025-04-19T07:27:29.9330000' AS DateTime2), 100, 3, N'string')
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [TotalAmount], [UserId], [Address]) VALUES (1008, CAST(N'2025-04-20T00:11:07.0500000' AS DateTime2), 894, 3, N'hhhh')
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [TotalAmount], [UserId], [Address]) VALUES (1009, CAST(N'2025-04-20T02:14:36.2550000' AS DateTime2), 683, 3, N'a2.jpeg')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [Image], [Price], [CreatedAt], [UpdatedAt], [BrandId], [CategoryId], [UserId], [Content], [PriceSale]) VALUES (9, N'Nike Air Force 1  ', N'Nike Air Force 1.jpeg', 4339, CAST(N'2025-04-17T04:20:13.0000000' AS DateTime2), CAST(N'2025-04-20T01:50:20.9960000' AS DateTime2), 2, 1, 3, N' Giày thể thao phong cách, năng động', 894)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Image], [Price], [CreatedAt], [UpdatedAt], [BrandId], [CategoryId], [UserId], [Content], [PriceSale]) VALUES (10, N'Nike Spark Women', N'Nike Spark Women''s Shoes.jpeg', 7697, CAST(N'2025-04-17T03:13:29.0000000' AS DateTime2), CAST(N'2025-04-20T01:51:37.4370000' AS DateTime2), 3, 2, 3, N'Giày nữ nhẹ nhàng, êm ái cho vận động', 683)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Image], [Price], [CreatedAt], [UpdatedAt], [BrandId], [CategoryId], [UserId], [Content], [PriceSale]) VALUES (11, N'Women''s Trainers Vans', N'Women''s Trainers Vans.jpeg', 4741, CAST(N'2025-04-17T08:10:21.0000000' AS DateTime2), CAST(N'2025-04-20T01:52:19.9810000' AS DateTime2), 2, 2, 3, N'Giày Vans cổ thấp, cá tính cho nữ', 868)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Image], [Price], [CreatedAt], [UpdatedAt], [BrandId], [CategoryId], [UserId], [Content], [PriceSale]) VALUES (12, N'Women Vans Pink', N'Women Vans Pink.jpeg', 3099, CAST(N'2025-04-17T07:00:00.0000000' AS DateTime2), CAST(N'2025-04-20T01:53:05.5180000' AS DateTime2), 2, 2, 3, N'Giày Vans màu hồng dễ thương, nữ tính', 683)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Image], [Price], [CreatedAt], [UpdatedAt], [BrandId], [CategoryId], [UserId], [Content], [PriceSale]) VALUES (13, N'Converse Black&White', N'Converse Black&White.jpeg', 7775, CAST(N'2025-04-17T05:44:00.0000000' AS DateTime2), CAST(N'2025-04-20T01:54:01.2450000' AS DateTime2), 4, 1, 3, N'Converse Black&White là đôi giày thể thao ấn tượng nhất 2020', 462)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Image], [Price], [CreatedAt], [UpdatedAt], [BrandId], [CategoryId], [UserId], [Content], [PriceSale]) VALUES (15, N'Converse Red&White', N'Converse Red&White.jpeg', 7697, CAST(N'2025-04-17T03:13:29.0000000' AS DateTime2), CAST(N'2025-04-20T01:54:40.3480000' AS DateTime2), 2, 2, 3, N'Converse Red&White là đôi giày mod nhất 2020', 683)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Image], [Price], [CreatedAt], [UpdatedAt], [BrandId], [CategoryId], [UserId], [Content], [PriceSale]) VALUES (1018, N'Vans Lx Old Skool', N'Vans Lx Old Skool.webp', 840, CAST(N'2025-04-20T01:54:43.9820000' AS DateTime2), CAST(N'2025-04-20T01:54:43.9820000' AS DateTime2), 2, 1, 1, N'Vans Lx Old Skool là đôi giày nam ấn tượng nhất 2020', 550)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1, N'Phi Truong', N'nguyentruong2792004t@gmail.com', N'27092004')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (3, N'Phi Truong', N'pt2004@gmail.com', N'123')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1004, N'PhiTruong@gmail.com', N'longcad1991@gmail.com', N'123')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [Address]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [PriceSale]
GO
ALTER TABLE [dbo].[Menus]  WITH CHECK ADD  CONSTRAINT [FK_Menus_Menus_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Menus] ([Id])
GO
ALTER TABLE [dbo].[Menus] CHECK CONSTRAINT [FK_Menus_Menus_ParentId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users_UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([BrandId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Users_UserId]
GO
