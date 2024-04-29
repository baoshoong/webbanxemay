USE [webbanxe]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/30/2024 12:56:41 AM ******/
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
/****** Object:  Table [dbo].[Accessaries]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessaries](
	[IdAccessary] [bigint] IDENTITY(1,1) NOT NULL,
	[NameAccessary] [nvarchar](500) NOT NULL,
	[DescriptionAccessary] [nvarchar](max) NOT NULL,
	[ImageAccessary] [nvarchar](700) NOT NULL,
	[Price] [float] NOT NULL,
	[PricePromotion] [float] NOT NULL,
	[Quantity] [bigint] NOT NULL,
 CONSTRAINT [PK_Accessaries] PRIMARY KEY CLUSTERED 
(
	[IdAccessary] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminMenu]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminMenu](
	[AdminMenuID] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](max) NULL,
	[ItemLevel] [int] NOT NULL,
	[ParentLevel] [int] NOT NULL,
	[ItemOrder] [int] NOT NULL,
	[IsActive] [bit] NULL,
	[ItemTarget] [nvarchar](max) NULL,
	[AreaName] [nvarchar](max) NULL,
	[ControllerName] [nvarchar](max) NULL,
	[ActionName] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[IdName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AdminMenu] PRIMARY KEY CLUSTERED 
(
	[AdminMenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bike]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bike](
	[IdBike] [bigint] IDENTITY(1,1) NOT NULL,
	[NameBike] [nvarchar](200) NOT NULL,
	[price] [float] NOT NULL,
	[PricePromotion] [float] NOT NULL,
	[Quantity] [bigint] NOT NULL,
	[ImageBike] [nvarchar](700) NOT NULL,
	[DescriptionBike] [nvarchar](max) NOT NULL,
	[IdType] [bigint] NOT NULL,
 CONSTRAINT [PK_Bike] PRIMARY KEY CLUSTERED 
(
	[IdBike] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[IdCart] [bigint] IDENTITY(1,1) NOT NULL,
	[QuantityPurchased] [bigint] NOT NULL,
	[IdBike] [bigint] NULL,
	[IdUser] [bigint] NOT NULL,
	[IdAccessary] [bigint] NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[IdCart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[ControllerName] [nvarchar](max) NULL,
	[ActionName] [nvarchar](max) NULL,
	[Levels] [int] NOT NULL,
	[ParentID] [int] NOT NULL,
	[Link] [nvarchar](max) NULL,
	[MenuOrder] [int] NOT NULL,
	[Position] [int] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[IdNotification] [bigint] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[content] [nvarchar](200) NOT NULL,
	[img] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[IdNotification] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[IdOrder] [bigint] IDENTITY(1,1) NOT NULL,
	[NumberPhone] [nvarchar](13) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[OrderStatus] [nvarchar](200) NOT NULL,
	[IdCart] [bigint] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[IdPayment] [bigint] IDENTITY(1,1) NOT NULL,
	[status] [bigint] NOT NULL,
	[IdOrder] [bigint] NOT NULL,
	[maCode] [nvarchar](max) NOT NULL,
	[maGiaoDich] [nvarchar](max) NOT NULL,
	[maMerchant] [bigint] NOT NULL,
	[maVnpTransactionStatus] [nvarchar](max) NOT NULL,
	[tenNganHang] [nvarchar](max) NOT NULL,
	[tongTien] [bigint] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[IdUser] [bigint] NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[UserIdUser] [bigint] NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[IdPayment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Abstract] [nvarchar](max) NULL,
	[Contents] [nvarchar](max) NULL,
	[Images] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[Author] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[PostOrder] [int] NOT NULL,
	[Category] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[MenuID] [int] NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[IdRole] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slides](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[SloganTitle] [nvarchar](500) NOT NULL,
	[NameImg] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeBike]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeBike](
	[IdType] [bigint] IDENTITY(1,1) NOT NULL,
	[NameType] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_TypeBike] PRIMARY KEY CLUSTERED 
(
	[IdType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserNotifications]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNotifications](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdNotification] [bigint] NOT NULL,
	[IdUser] [bigint] NOT NULL,
 CONSTRAINT [PK_UserNotifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IdUser] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](13) NOT NULL,
	[RoleId] [bigint] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[view_Post_Menu]    Script Date: 4/30/2024 12:56:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[view_Post_Menu](
	[PostID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Abstract] [nvarchar](max) NULL,
	[Contents] [nvarchar](max) NULL,
	[Images] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[Author] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[IsActive] [bit] NULL,
	[PostOrder] [int] NOT NULL,
	[MenuID] [int] NOT NULL,
	[Category] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[MenuName] [nvarchar](max) NULL,
 CONSTRAINT [PK_view_Post_Menu] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231106111346_init', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231106111657_modify-index-set-off', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231106111846_modify-index-set-off1', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231106145037_int2', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231110085046_modify-cloumn_TypeBike', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231127154608_addmodeloder', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231127154709_addmodelpayment', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231127155338_modifymodelOrder', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231127155507_modifymodelOrder1', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231127155910_addmodelOrderPayment', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231127160134_addmodelOrderPayment', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231127172128_addModeOrder', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231127172300_addFKOrder', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231128160816_allmodel_Order', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231201165820_add_Model_Slide', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231211155417_add-accessaries', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240428044623_create-model', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240428045304_create-fk-cart-accessary', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240428151909_modifyPayment', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240429154150_create_model', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240429161517_modifi_cart', N'7.0.13')
GO
SET IDENTITY_INSERT [dbo].[Accessaries] ON 

INSERT [dbo].[Accessaries] ([IdAccessary], [NameAccessary], [DescriptionAccessary], [ImageAccessary], [Price], [PricePromotion], [Quantity]) VALUES (2, N'MŨ 3/4 JET DARKBLUE', N'<h3>M&Ocirc; TẢ</h3>

<p>Mũ bảo hiểm được trang bị lớp k&iacute;nh giấu b&ecirc;n trong, c&oacute; thể k&eacute;o ra giấu v&agrave;o t&ugrave;y theo nhu cầu sử dụng.</p>

<p>Ngo&agrave;i ra, n&oacute;n c&ograve;n đ&iacute;nh k&egrave;m 3 khuy bấm ph&iacute;a tr&ecirc;n mũ, gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng trang bị th&ecirc;m cho n&oacute;n c&aacute;c phụ kiện th&iacute;ch hợp.</p>
', N'timthumb20240130185943v5sl.jfif', 200000, 0.03, 3)
INSERT [dbo].[Accessaries] ([IdAccessary], [NameAccessary], [DescriptionAccessary], [ImageAccessary], [Price], [PricePromotion], [Quantity]) VALUES (3, N'MŨ 3/4 – PHIÊN BẢN THE STREET LEGEND', N'<h3>M&Ocirc; TẢ</h3>

<p>Mũ bảo hiểm được trang bị lớp k&iacute;nh giấu b&ecirc;n trong, c&oacute; thể k&eacute;o ra giấu v&agrave;o t&ugrave;y theo nhu cầu sử dụng. Ngo&agrave;i ra, n&oacute;n c&ograve;n đ&iacute;nh k&egrave;m 3 khuy bấm ph&iacute;a tr&ecirc;n mũ, gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng trang bị th&ecirc;m cho n&oacute;n lớp k&iacute;nh ngo&agrave;i.</p>
', N'timthumb (1)20240130190019chxx.jfif', 1500000, 0.01, 7)
INSERT [dbo].[Accessaries] ([IdAccessary], [NameAccessary], [DescriptionAccessary], [ImageAccessary], [Price], [PricePromotion], [Quantity]) VALUES (4, N'DUNG DỊCH NƯỚC LÀM MÁT', N'<h3>M&Ocirc; TẢ</h3>

<ul>
	<li>Hiệu suất cao chống đ&ocirc;ng v&agrave; chống qu&aacute; nhiệt với mọi điều kiện thời tiết.</li>
	<li>Tương th&iacute;ch với c&aacute;c vật liệu phi kim</li>
	<li>Độ bền cao v&agrave; đạt hiệu suất cao trong thời gian d&agrave;i</li>
</ul>
', N'timthumb (2)20240130190155WrTv.jfif', 75000, 0.02, 12)
INSERT [dbo].[Accessaries] ([IdAccessary], [NameAccessary], [DescriptionAccessary], [ImageAccessary], [Price], [PricePromotion], [Quantity]) VALUES (5, N'DẦU HỘP SỐ', N'<h3>M&Ocirc; TẢ</h3>

<ul>
	<li>Đạt c&aacute;c ti&ecirc;u chuẩn kỹ thuật của Yamaha Nhật Bản, với thiết kế cải tiến dạng tu&yacute;p tiện dụng</li>
	<li>Thay dầu hộp số định kỳ gi&uacute;p ngăn chặn hiện tượng m&ograve;n hoặc hỏng b&aacute;nh răng truyền động v&agrave; c&aacute;c tiếng ồn kh&ocirc;ng mong muốn</li>
	<li>Gi&uacute;p giảm ma s&aacute;t v&agrave; l&agrave;m m&aacute;t b&aacute;nh răng, giảm tiếng ồn, ngăn chặn gỉ v&agrave; ăn m&ograve;n, tăng tuổi thọ của b&aacute;nh răng truyền động</li>
</ul>
', N'timthumb20240130190252OmhD.png', 67000, 0.02, 2)
SET IDENTITY_INSERT [dbo].[Accessaries] OFF
GO
SET IDENTITY_INSERT [dbo].[AdminMenu] ON 

INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (1, N'Bảng điều khiển', 0, 0, 1, 1, NULL, N'Admin', N'Home', N'Index', NULL, NULL)
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (2, N'Thông tin cá nhân', 0, 0, 1, 0, NULL, N'Admin', N'Home', N'Index', NULL, NULL)
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (3, N'Hướng dẫn sử dụng', 0, 0, 2, 0, NULL, N'Admin', N'Home', N'Index', NULL, NULL)
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (4, N'Liên lạc', 0, 0, 3, 0, NULL, N'Admin', N'Home', N'Index', NULL, NULL)
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (5, N'Đăng xuất', 0, 0, 4, 0, NULL, N'Admin', N'Home', N'Index', NULL, NULL)
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (6, N'Quản lý bài viết', 1, 0, 1, 1, N'components-nav', N'Admin', N'Home', N'Index', N'bi bi-menu-button-wide', N'components-nav')
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (7, N'Cập nhật bài viết', 2, 6, 1, 1, NULL, N'Admin', N'Home', N'Index', NULL, NULL)
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (8, N'Duyệt và đăng bài viết', 2, 6, 2, 1, NULL, N'Admin', N'Home', N'Index', NULL, NULL)
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (9, N'Bài viết đã đăng', 2, 6, 3, 1, NULL, N'Admin', N'Home', N'Index', NULL, NULL)
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (10, N'Quản lý menu', 1, 0, 1, 1, N'forms-nav', N'Admin', N'Home', N'Index', N'bi bi-journal-text', N'forms-nav')
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (11, N'Thêm mới menu', 2, 10, 1, 1, NULL, N'Admin', N'Menu', N'Index', NULL, NULL)
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (12, N'Chỉnh sửa menu', 2, 10, 2, 1, NULL, N'Admin', N'Home', N'Index', NULL, NULL)
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (13, N'Quản lý Slide', 1, 0, 1, 1, N'charts-nav', N'Admin', N'Home', N'Index', N'bi bi-bar-chart', N'charts-nav')
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (14, N'Thêm mới Slide', 2, 13, 1, 1, NULL, N'Admin', N'Home', N'Index', NULL, NULL)
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (15, N'Chỉnh sửa Slide', 2, 13, 2, 1, NULL, N'Admin', N'Home', N'Index', NULL, NULL)
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (16, N'Xe ', 2, 14, 1, 1, NULL, N'Admin', N'Bikes', N'Index', NULL, NULL)
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (17, N'Loại xe ', 2, 14, 2, 1, NULL, N'Admin', N'TypeBike', N'Index', NULL, NULL)
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IdName]) VALUES (18, N'Quản lý xe ', 1, 0, 1, 1, NULL, N'Admin', N'Bikes', N'Index', NULL, NULL)
SET IDENTITY_INSERT [dbo].[AdminMenu] OFF
GO
SET IDENTITY_INSERT [dbo].[Bike] ON 

INSERT [dbo].[Bike] ([IdBike], [NameBike], [price], [PricePromotion], [Quantity], [ImageBike], [DescriptionBike], [IdType]) VALUES (12, N'NEO''S', 49200000, 0.4, 32, N'Neos-Black-Metallic-00120240130181521GpHE.png;Neos-Black-Metallic-00220240130181521MiPe.png;Neos-Black-Metallic-00320240130181521T4qM.png;Neos-Black-Metallic-00420240130181521chGb.png;Neos-Black-Metallic-00520240130181521w6NE.png;Neos-Black-Metallic-00620240130181521p50R.png;Neos-Black-Metallic-00720240130181521OGHq.png;Neos-Black-Metallic-00820240130181521iXUs.png', N'<p><span style="font-family:Times New Roman,Times,serif"><span style="color:#e74c3c"><span style="font-size:20px">Động cơ</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Loại</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Động cơ điện một chiều kh&ocirc;ng chổi than</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ocirc;ng suất tối đa</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">2.3 kW</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&ocirc; men xoắn cực đại</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">138.3Nm tại 40rpm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Qu&atilde;ng đường một lần sạc</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">72km với 1 pin (Trong điều kiện vận tốc kh&ocirc;ng đổi l&agrave; 30km/h; C&acirc;n nặng người l&aacute;i l&agrave; 75kg)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ocirc;ng suất danh định</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">2 kW</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Loại pin</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Lithium-ion battery/ BFM1</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Điện &aacute;p, Dung lượng pin</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">51.1 V, 23.2Ah</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thời gian sạc</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">9 tiếng</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Phương thức truyền động</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Electric motor</span></span></td>
		</tr>
	</tbody>
</table>

<p><span style="font-family:Times New Roman,Times,serif"><span style="color:#e74c3c"><span style="font-size:20px">Khung xe</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Loại khung</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Underbone</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Độ lệch phương trục l&aacute;i</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">25.5 độ</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Phanh trước</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Phanh đĩa, dẫn động thủy lực</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Phanh sau</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Phanh tang trống</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Lốp trước</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">110/70-13 M/C 48P (kh&ocirc;ng săm)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Lốp sau</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">130/70-13 M/C 63P (kh&ocirc;ng săm)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Giảm x&oacute;c trước</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Kiểu ống lồng</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Giảm x&oacute;c sau</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Giảm chấn thủy lực l&ograve; xo trụ</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&egrave;n trước</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">LED</span></span></td>
		</tr>
	</tbody>
</table>

<p><span style="font-family:Times New Roman,Times,serif"><span style="color:#e74c3c"><span style="font-size:20px">K&iacute;ch thước</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">K&iacute;ch thước (d&agrave;i x rộng x cao)</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">1875mm x 695mm x 1120 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Độ cao y&ecirc;n xe</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">795 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Độ cao gầm xe</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">148 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Khoảng c&aacute;ch giữa 2 trục b&aacute;nh xe</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">1305 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trọng lượng</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">98 kg (bao gồm pin)</span></span></td>
		</tr>
	</tbody>
</table>

<p><span style="font-family:Times New Roman,Times,serif"><span style="color:#e74c3c"><span style="font-size:20px">Bảo h&agrave;nh</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thời gian bảo h&agrave;nh</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">2 năm</span></span></td>
		</tr>
	</tbody>
</table>
', 2)
INSERT [dbo].[Bike] ([IdBike], [NameBike], [price], [PricePromotion], [Quantity], [ImageBike], [DescriptionBike], [IdType]) VALUES (13, N'NEO''S', 48900000, 0.3, 20, N'Neos-Cyan-Metallic-Metallic-00120240130182103SbhA.png;Neos-Cyan-Metallic-Metallic-00220240130182103gebq.png;Neos-Cyan-Metallic-Metallic-00320240130182103F8Bj.png;Neos-Cyan-Metallic-Metallic-00420240130182103lKNh.png;Neos-Cyan-Metallic-Metallic-00520240130182103nEpq.png;Neos-Cyan-Metallic-Metallic-00620240130182103d7Ax.png;Neos-Cyan-Metallic-Metallic-00720240130182103bpXT.png;Neos-Cyan-Metallic-Metallic-00820240130182103NaxM.png', N'<p><span style="color:#e74c3c"><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Động cơ</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Loại</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Động cơ điện một chiều kh&ocirc;ng chổi than</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">C&ocirc;ng suất tối đa</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">2.3 kW</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">M&ocirc; men xoắn cực đại</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">138.3Nm tại 40rpm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Qu&atilde;ng đường một lần sạc</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">72km với 1 pin (Trong điều kiện vận tốc kh&ocirc;ng đổi l&agrave; 30km/h; C&acirc;n nặng người l&aacute;i l&agrave; 75kg)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">C&ocirc;ng suất danh định</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">2 kW</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Loại pin</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Lithium-ion battery/ BFM1</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Điện &aacute;p, Dung lượng pin</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">51.1 V, 23.2Ah</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Thời gian sạc</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">9 tiếng</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phương thức truyền động</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Electric motor</span></span></td>
		</tr>
	</tbody>
</table>

<p><span style="color:#e74c3c"><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Khung xe</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Loại khung</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Underbone</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Độ lệch phương trục l&aacute;i</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">25.5 độ</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phanh trước</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phanh đĩa, dẫn động thủy lực</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phanh sau</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phanh tang trống</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Lốp trước</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">110/70-13 M/C 48P (kh&ocirc;ng săm)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Lốp sau</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">130/70-13 M/C 63P (kh&ocirc;ng săm)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Giảm x&oacute;c trước</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Kiểu ống lồng</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Giảm x&oacute;c sau</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Giảm chấn thủy lực l&ograve; xo trụ</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Đ&egrave;n trước</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">LED</span></span></td>
		</tr>
	</tbody>
</table>

<p><span style="color:#e74c3c"><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">K&iacute;ch thước</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">K&iacute;ch thước (d&agrave;i x rộng x cao)</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">1875mm x 695mm x 1120 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Độ cao y&ecirc;n xe</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">795 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Độ cao gầm xe</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">148 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Khoảng c&aacute;ch giữa 2 trục b&aacute;nh xe</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">1305 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Trọng lượng</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">98 kg (bao gồm pin)</span></span></td>
		</tr>
	</tbody>
</table>

<p><span style="color:#e74c3c"><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Bảo h&agrave;nh</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Thời gian bảo h&agrave;nh</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">2 năm</span></span></td>
		</tr>
	</tbody>
</table>
', 2)
INSERT [dbo].[Bike] ([IdBike], [NameBike], [price], [PricePromotion], [Quantity], [ImageBike], [DescriptionBike], [IdType]) VALUES (15, N'NVX 155 VVA', 54500000, 0.4, 22, N'NVX-Bluish-Gray-00120240130184924UbMm.png;NVX-Bluish-Gray-00220240130184924tNwZ.png;NVX-Bluish-Gray-00320240130184924Paf6.png;NVX-Bluish-Gray-004202401301849244DBH.png;NVX-Bluish-Gray-00520240130184924TOc2.png;NVX-Bluish-Gray-00620240130184924AXIn.png;NVX-Bluish-Gray-00720240130184924wKbm.png;NVX-Bluish-Gray-00820240130184924sQ28.png', N'<p><span style="color:#e74c3c"><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Động cơ</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Loại</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Blue Core, 4 th&igrave;, 4 van, SOHC, l&agrave;m m&aacute;t bằng dung dịch</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Bố tr&iacute; xi lanh</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Xy lanh đơn</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Dung t&iacute;ch xy lanh (CC)</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">155,1 cc</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Đường k&iacute;nh v&agrave; h&agrave;nh tr&igrave;nh piston</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">58 x 58,7mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Tỷ số n&eacute;n</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">11,6:1</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">C&ocirc;ng suất tối đa</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">11,3kW (15,4 PS)/8.000 v&ograve;ng/ph&uacute;t</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">M&ocirc; men xoắn cực đại</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">13,9 N.m (1,4kgf.m)/6.500 v&ograve;ng/ph&uacute;t</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Hệ thống khởi động</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Điện</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Dung t&iacute;ch b&igrave;nh xăng</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">5,5 l&iacute;t</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Mức ti&ecirc;u thụ nhi&ecirc;n liệu (l/100km)</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">2,19</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Tỷ số truyền động</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">2,300-0,724:1</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Kiểu hệ thống truyền lực</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">CVT</span></span></td>
		</tr>
	</tbody>
</table>

<p><span style="color:#e74c3c"><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Khung xe</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Loại khung</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Backbone</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Hệ thống giảm x&oacute;c trước</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phuộc ống lồng</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">H&agrave;nh tr&igrave;nh phuộc trước</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phuộc nh&uacute;n l&ograve; xo/Giảm chấn dầu</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phanh trước</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phanh đĩa thuỷ lực, trang bị ABS, đường k&iacute;nh 230mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phanh sau</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phanh cơ (đ&ugrave;m), đường k&iacute;nh 130mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Lốp trước</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">110/80-14M/C 53P (Lốp kh&ocirc;ng săm)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Lốp sau</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">140/70-14M/C 62P (Lốp kh&ocirc;ng săm)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Đ&egrave;n trước</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">LED</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Đ&egrave;n trước/đ&egrave;n sau</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">LED/ 12V, 10Wx2</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Đ&egrave;n sau</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">LED</span></span></td>
		</tr>
	</tbody>
</table>

<p><span style="color:#e74c3c"><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">K&iacute;ch thước</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">K&iacute;ch thước (d&agrave;i x rộng x cao)</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">1.980mm x 700mm x 1.150mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Độ cao y&ecirc;n xe</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">790mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Độ cao gầm xe</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">145mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Khoảng c&aacute;ch giữa 2 trục b&aacute;nh xe</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">1.350mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Trọng lượng ướt</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">125kg</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Dung t&iacute;ch b&igrave;nh xăng</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">5,5L</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Ngăn chứa đồ (l&iacute;t)</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">25</span></span></td>
		</tr>
	</tbody>
</table>

<p><span style="color:#e74c3c"><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Bảo h&agrave;nh</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Thời gian bảo h&agrave;nh</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">3 năm/ 30.000 km (T&ugrave;y điều kiện n&agrave;o đến trước)</span></span></td>
		</tr>
	</tbody>
</table>
', 3)
INSERT [dbo].[Bike] ([IdBike], [NameBike], [price], [PricePromotion], [Quantity], [ImageBike], [DescriptionBike], [IdType]) VALUES (16, N'EXCITER 155 VVA PHIÊN BẢN CAO CẤP ABS MỚI', 56000000, 0.4, 8, N'Exciter-155-VVA-Cyan-ABS-120240130185206k1qi.png;Exciter-155-VVA-Cyan-ABS220240130185206Je7U.png;Exciter-155-VVA-Cyan-ABS320240130185206RqfV.png;Exciter-155-VVA-Cyan-ABS420240130185206e9It.png;Exciter-155-VVA-Cyan-ABS520240130185206c2Ug.png;Exciter-155-VVA-Cyan-ABS620240130185206l9X9.png;Exciter-155-VVA-Cyan-ABS720240130185206itQU.png;Exciter-155-VVA-Cyan-ABS820240130185206UekH.png', N'<p><span style="color:#e74c3c"><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Động cơ</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Loại</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">4 kỳ, 4 van, SOHC, l&agrave;m m&aacute;t bằng chất lỏng</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Bố tr&iacute; xi lanh</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Xy-lanh đơn</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Dung t&iacute;ch xy lanh (CC)</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">155.1</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Đường k&iacute;nh v&agrave; h&agrave;nh tr&igrave;nh piston</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">58.0 x 58.7 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Tỷ số n&eacute;n</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">10.5:1</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">C&ocirc;ng suất tối đa</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">13.2kW (17.9 PS) / 9,500 v&ograve;ng/ph&uacute;t</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">M&ocirc; men xoắn cực đại</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">14.4 N・m (1.5 kgf・m) / 8,000 v&ograve;ng/ph&uacute;t</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Hệ thống khởi động</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Khởi động điện</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Hệ thống b&ocirc;i trơn</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">C&aacute;c-te ướt</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Mức ti&ecirc;u thụ nhi&ecirc;n liệu (l/100km)</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">1.99L/100km</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Bộ chế h&ograve;a kh&iacute;</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phun xăng điện tử</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Hệ thống đ&aacute;nh lửa</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">T.C.I (kỹ thuật số)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Tỷ số truyền sơ cấp v&agrave; thứ cấp</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">3.042 (73/24) / 3.286 (46/14)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Hệ thống ly hợp</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Đa đĩa loại ướt</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Tỷ số truyền động</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">1: 2.833 (34/12) / 2: 1.875 (30/16) / 3: 1.364 (30/22) 4: 1.143 (24/21) / 5: 0.957 (22/23) / 6: 0.840 (21/25)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Kiểu hệ thống truyền lực</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">B&aacute;nh răng kh&ocirc;ng đổi, 6 cấp / Về số</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">K&eacute;t l&agrave;m m&aacute;t</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">110mm x 183.5mm (Diện t&iacute;ch 20,185 mm2)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Điện &aacute;p, Dung lượng pin</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">12V 3.5Ah (10HR)</span></span></td>
		</tr>
	</tbody>
</table>

<p><span style="color:#e74c3c"><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Khung xe</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Loại khung</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Khung xương sống</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Độ lệch phương trục l&aacute;i</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">25&deg;50&prime; / 87 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phanh trước</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phanh đĩa đơn thủy lực; 2 piston</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phanh sau</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Phanh đĩa đơn thủy lực</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Lốp trước</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">90/80-17M/C 46P (lốp kh&ocirc;ng săm)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Lốp sau</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">120/70-17M/C 58P (lốp kh&ocirc;ng săm)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Giảm x&oacute;c trước</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Ống lồng</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Giảm x&oacute;c sau</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">C&agrave;ng sau</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Đ&egrave;n trước/đ&egrave;n sau</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">LED / 12V, 10W&times;2</span></span></td>
		</tr>
	</tbody>
</table>

<p><span style="color:#e74c3c"><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">K&iacute;ch thước</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">K&iacute;ch thước (d&agrave;i x rộng x cao)</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">1,975 mm &times; 665 mm &times; 1,105 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Độ cao y&ecirc;n xe</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">795 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Độ cao gầm xe</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">150 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Khoảng c&aacute;ch giữa 2 trục b&aacute;nh xe</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">1,290 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Trọng lượng ướt</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">123 kg</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Dung t&iacute;ch b&igrave;nh xăng</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">5.4 l&iacute;t</span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Dung t&iacute;ch dầu m&aacute;y</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">1.10 L</span></span></td>
		</tr>
	</tbody>
</table>

<p><span style="color:#e74c3c"><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Bảo h&agrave;nh</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">Thời gian bảo h&agrave;nh</span></span></td>
			<td><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">3 năm hoặc 30,000km (tuỳ điều kiện n&agrave;o đến trước)</span></span></td>
		</tr>
	</tbody>
</table>
', 1)
INSERT [dbo].[Bike] ([IdBike], [NameBike], [price], [PricePromotion], [Quantity], [ImageBike], [DescriptionBike], [IdType]) VALUES (17, N'XS155R', 75000000, 0.3, 5, N'XSR-155-Silver-Mat-00120240426210439BVzb.png;XSR-155-Silver-Mat-00220240426210439fVU6.png;XSR-155-Silver-Mat-00320240426210439O43N.png;XSR-155-Silver-Mat-004202404262104398aAW.png;XSR-155-Silver-Mat-00520240426210439THzr.png;XSR-155-Silver-Mat-00620240426210439FcI6.png;XSR-155-Silver-Mat-007202404262104394oER.png;XSR-155-Silver-Mat-00820240426210439M2RK.png', N'<p><span style="font-family:Times New Roman,Times,serif"><span style="color:#c0392b"><span style="font-size:20px">Động cơ</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Loại</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Động cơ 4 th&igrave;</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Bố tr&iacute; xi lanh</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xi lanh đơn</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Dung t&iacute;ch xy lanh (CC)</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">155.1</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tỷ số n&eacute;n</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">11.6:1</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ocirc;ng suất tối đa</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">14.2 kW (19.3 PS)/10,000 r/min</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&ocirc; men xoắn cực đại</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">14.7 N・m (1.5 kgf・m) / 8,500 r/min</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hệ thống khởi động</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Khởi động bằng điện</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hệ thống b&ocirc;i trơn</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Loại c&aacute;t te ướt</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Dung t&iacute;ch b&igrave;nh xăng</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">10 L (2.6 US gal./2.2 Imp. Gal)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mức ti&ecirc;u thụ nhi&ecirc;n liệu (l/100km)</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">2</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Bộ chế h&ograve;a kh&iacute;</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Phun xăng điện tử (FI)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hệ thống đ&aacute;nh lửa</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">TCI (Hệ thống đ&aacute;nh lửa b&aacute;n dẫn)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tỷ số truyền sơ cấp v&agrave; thứ cấp</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">3.042 (73/24) / 3.429 (48/14)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đường k&iacute;nh xy lanh</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">58.0&times;58.7 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tổng lượng dầu (khi th&aacute;o r&atilde;)</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">1.05 L (1.10 US qt./0.92 Imp. qt)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Điện &aacute;p ắc quy</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">12V,3.0Ah (10 HR)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Bộ ly hợp</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ướt, đa đĩa</span></span></td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="color:#c0392b"><span style="font-size:20px">Khung xe</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Loại khung</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Diamond</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Phanh trước</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Phanh đĩa đơn thủy lực</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Phanh sau</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Phanh đĩa đơn thủy lực</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Lốp trước</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">110/70-17 M/C 54S kh&ocirc;ng săm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Lốp sau</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">140/70-17 M/C 66S kh&ocirc;ng săm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">G&oacute;c c&agrave;o (Caster)/đường m&ograve;n (Trail)</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">25.4&deg;/ 89 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hệ thống treo (trước/sau)</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Phuộc ống lồng / C&aacute;nh tay đ&ograve;n (hệ thống treo li&ecirc;n kết)</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&egrave;n pha/Đ&egrave;n b&aacute;o rẽ (trước/sau)</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">LED / 12V, 10W x 2 / 12V, 10W x 2</span></span></td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="color:#c0392b"><span style="font-size:20px">K&iacute;ch thước</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">K&iacute;ch thước (d&agrave;i x rộng x cao)</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">2,005 mm x 805 mm x 1,080 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Độ cao y&ecirc;n xe</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">810 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiều d&agrave;i cơ sở</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">1,330 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Độ cao gầm xe</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">170 mm</span></span></td>
		</tr>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trọng lượng</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">134 kg</span></span></td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="color:#c0392b"><span style="font-size:20px">Bảo h&agrave;nh</span></span></span></p>

<table>
	<tbody>
		<tr>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thời gian bảo h&agrave;nh</span></span></td>
			<td><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">30.000 km hoặc 3 năm (tuỳ theo điều kiện n&agrave;o đến trước)</span></span></td>
		</tr>
	</tbody>
</table>
', 4)
SET IDENTITY_INSERT [dbo].[Bike] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([IdCart], [QuantityPurchased], [IdBike], [IdUser], [IdAccessary]) VALUES (16, 1, 15, 2, NULL)
INSERT [dbo].[Carts] ([IdCart], [QuantityPurchased], [IdBike], [IdUser], [IdAccessary]) VALUES (17, 4, NULL, 2, 3)
INSERT [dbo].[Carts] ([IdCart], [QuantityPurchased], [IdBike], [IdUser], [IdAccessary]) VALUES (18, 1, 15, 2, NULL)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (1, N'Trang chủ', 1, NULL, NULL, 1, 0, NULL, 1, 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (2, N'Về BuyUrBike', 1, NULL, NULL, 1, 0, NULL, 2, 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (3, N'Dịch vụ', 1, NULL, NULL, 1, 0, NULL, 3, 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (4, N'Chợ xe', 1, NULL, NULL, 1, 0, NULL, 4, 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (5, N'Tin tức', 1, NULL, NULL, 1, 0, NULL, 5, 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (6, N'Liên hệ', 1, NULL, NULL, 1, 0, NULL, 6, 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (7, N'Tư vấn', 1, NULL, NULL, 2, 3, NULL, 1, 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (8, N'So sánh xe', 1, NULL, NULL, 2, 3, NULL, 2, 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (9, N'Giá linh kiện', 1, NULL, NULL, 2, 3, NULL, 3, 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (10, N'Chính sách bảo hành', 1, NULL, NULL, 2, 3, NULL, 4, 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (12, N'Phụ kiện', 1, NULL, NULL, 1, 0, NULL, 4, 1)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([IdNotification], [title], [content], [img]) VALUES (1, N'Thanh toán đơn hàng thành công', N'Đơn hàng NVX 155 VVA đã được thanh toán với số tiền 32700000 vào ngày 4/29/2024 11:30:52 PM', N'')
INSERT [dbo].[Notification] ([IdNotification], [title], [content], [img]) VALUES (2, N'Thanh toán đơn hàng thành công', N'Đơn hàng MŨ 3/4 – PHIÊN BẢN THE STREET LEGEND đã được thanh toán với số tiền 5940000 vào ngày 4/29/2024 11:56:03 PM', N'')
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([IdOrder], [NumberPhone], [Address], [OrderStatus], [IdCart]) VALUES (16, N'0665685', N'Nguyễn Kiệm', N'PAYMENT,DELIVERED', 16)
INSERT [dbo].[Order] ([IdOrder], [NumberPhone], [Address], [OrderStatus], [IdCart]) VALUES (17, N'0394625594', N'Hoàng Thị Loan', N'PAYMENT', 17)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([IdPayment], [status], [IdOrder], [maCode], [maGiaoDich], [maMerchant], [maVnpTransactionStatus], [tenNganHang], [tongTien], [Created], [IdUser], [content], [UserIdUser]) VALUES (1, 1, 16, N'1620240429233052', N'VNP14396102', 1620240429233003, N'00', N'NCB', 32700000, CAST(N'2024-04-29T23:30:52.0000000' AS DateTime2), 2, N'Thanh toan don hang:16', NULL)
INSERT [dbo].[Payments] ([IdPayment], [status], [IdOrder], [maCode], [maGiaoDich], [maMerchant], [maVnpTransactionStatus], [tenNganHang], [tongTien], [Created], [IdUser], [content], [UserIdUser]) VALUES (2, 1, 17, N'1720240429235603', N'VNP14396113', 1720240429235530, N'00', N'NCB', 5940000, CAST(N'2024-04-29T23:56:03.0000000' AS DateTime2), 2, N'Thanh toan don hang:17', NULL)
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([PostID], [Title], [Abstract], [Contents], [Images], [Link], [Author], [CreatedDate], [IsActive], [PostOrder], [Category], [Status], [MenuID]) VALUES (2, N'3 MẪU XE MOTO DƯỚI 100 TRIỆU ĐÁNG SỞ HỮU NHẤT HIỆN NAY', N'3 MẪU XE MOTO DƯỚI 100 TRIỆU ĐÁNG SỞ HỮU NHẤT HIỆN NAY', N'<p>Hiện tại, tr&ecirc;n thị trường c&oacute; rất nhiều&nbsp;<a href="https://yamaha-motor.com.vn/xe/loai-xe/xe-the-thao/" rel="noopener" target="_blank">d&ograve;ng xe moto</a>&nbsp;ở nhiều ph&acirc;n kh&uacute;c gi&aacute; kh&aacute;c nhau, từ b&igrave;nh d&acirc;n đến cao cấp n&ecirc;n d&ugrave; c&oacute; kinh ph&iacute; &iacute;t hơn 100 triệu đồng th&igrave; bạn vẫn ho&agrave;n to&agrave;n c&oacute; thể sở hữu một chiếc moto ưng &yacute;. Vậy những mẫu xe moto dưới 100 triệu n&agrave;o đ&aacute;ng mua nhất? C&ugrave;ng Yamaha t&igrave;m hiểu c&acirc;u trả lời trong b&agrave;i viết sau nh&eacute;!</p>

<h2><strong>1. V&igrave; sao c&aacute;c mẫu xe moto thể thao dưới 100 triệu được y&ecirc;u th&iacute;ch?</strong></h2>

<p>C&agrave;ng ng&agrave;y c&agrave;ng nhiều người ti&ecirc;u d&ugrave;ng lựa chọn mua xe moto dưới 100 triệu đồng. V&igrave; kh&ocirc;ng chỉ c&oacute; mức gi&aacute; hợp l&yacute;, sản phẩm c&ograve;n c&oacute; v&ocirc; số ưu điểm nổi bật.</p>

<p>Cụ thể, xe moto thường c&oacute; ngoại h&igrave;nh hầm hố v&agrave; năng động, vận h&agrave;nh với tốc độ cao, mang lại cảm gi&aacute;c l&aacute;i phấn kh&iacute;ch m&agrave; &iacute;t c&oacute; phương tiện giao th&ocirc;ng n&agrave;o c&oacute; thể s&aacute;nh được.</p>

<p>&nbsp;</p>

<p><img alt="xe moto thể thao dưới 100 triệu" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2024/01/xe-moto-duoi-100-trieu-1.jpg" style="height:733px; width:1100px" title="xe moto thể thao dưới 100 triệu" /></p>

<p><em>Chạy xe moto gi&uacute;p ph&aacute;i mạnh c&oacute; cảm gi&aacute;c l&aacute;i tự do v&agrave; phi&ecirc;u lưu, thỏa sức kh&aacute;m ph&aacute; mọi cung đường.</em></p>

<h2><strong>2. C&aacute;c d&ograve;ng xe moto dưới 100 triệu kh&ocirc;ng thể bỏ qua</strong></h2>

<p>Nếu l&agrave; &ldquo;t&iacute;n đồ&rdquo; đam m&ecirc; tốc độ th&igrave; chắc chắn bạn kh&ocirc;ng n&ecirc;n bỏ lỡ những d&ograve;ng xe moto chất lượng từ thương hiệu Yamaha b&ecirc;n dưới:</p>

<h3><strong>2.1. Yamaha XS155R&nbsp;</strong></h3>

<p>Với th&ocirc;ng điệp &ldquo;Feel your ride: L&aacute;i cảm x&uacute;c, Chất đam m&ecirc;&rdquo;, xe moto thể thao dưới 100 triệu Yamaha XS155R sở hữu ngoại h&igrave;nh đầy ph&oacute;ng kho&aacute;ng kết hợp khung sườn Deltabox chắc chắn, động cơ 155cc mạnh mẽ, gi&uacute;p người l&aacute;i tự tin thể hiện chất ri&ecirc;ng v&agrave; chinh phục mọi chặng đường. Th&ecirc;m v&agrave;o đ&oacute;, nh&agrave; sản xuất trang bị hệ thống phanh đĩa cực nhạy v&agrave; lốp đa địa h&igrave;nh kh&ocirc;ng săm hỗ trợ người d&ugrave;ng điều chỉnh tốc độ linh hoạt, an to&agrave;n.&nbsp;</p>

<p>&nbsp;</p>

<p><img alt="mẫu xe moto dưới 100 triệu" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/12/XS155R-visual_1672305195.jpg" style="height:778px; width:1100px" title="mẫu xe moto dưới 100 triệu" /></p>

<p><em>Diện mạo thời trang c&ugrave;ng hệ thống động cơ vượt trội khơi dậy cảm gi&aacute;c phấn kh&iacute;ch tột độ cho mọi tay đua.</em></p>

<h3><strong>2.2. Yamaha MT-15</strong></h3>

<p>Một trong những mẫu xe moto dưới 100 triệu của thương hiệu Yamaha được đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng Việt đ&aacute;nh gi&aacute; cao l&agrave; Yamaha MT-15. Sản phẩm sở hữu động cơ 155cc t&iacute;ch hợp c&ocirc;ng nghệ van biến thi&ecirc;n VVA, hộp số 6 cấp v&agrave; bộ nồi chống trượt, mang lại trải nghiệm tăng tốc si&ecirc;u nhanh, si&ecirc;u chuẩn. C&ugrave;ng b&aacute;nh xe cao su bản to, r&atilde;nh chống trượt d&agrave;y đặc hỗ trợ di chuyển an to&agrave;n, hạn chế trơn trượt. Ngo&agrave;i ra, sản phẩm c&ograve;n c&oacute; m&agrave;n h&igrave;nh hiển thị LCD sắc n&eacute;t v&agrave; hệ thống đ&egrave;n pha LED hiện đại.</p>

<p>&nbsp;</p>

<p><img alt="các dòng xe moto dưới 100 triệu" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2024/01/xe-moto-duoi-100-trieu-2.jpg" style="height:733px; width:1100px" title="các dòng xe moto dưới 100 triệu" /></p>

<p><em>Xe moto MT-15 mang đến trải nghiệm sử dụng ho&agrave;n hảo như những sản phẩm cao cấp cho c&aacute;c tay đua d&ugrave; gi&aacute; th&agrave;nh chưa đến 100 triệu.</em></p>

<h3><strong>2.3. Yamaha YZF-R15&nbsp;</strong></h3>

<p>Yamaha YZF-R15 được nhận định l&agrave; một trong c&aacute;c d&ograve;ng xe moto dưới 100 triệu đ&aacute;ng sở hữu nhất năm nay. Bởi, sản phẩm vừa c&oacute; ngoại h&igrave;nh đậm chất thể thao, vừa lắp đặt nhiều linh kiện chất lượng cao cấp. Chẳng hạn như th&acirc;n xe với thiết kế kh&iacute; động học gi&uacute;p tối ưu h&oacute;a tốc độ; dung t&iacute;ch l&ecirc;n đến 155cc; kết nối thiết bị di động v&agrave;&nbsp;<a href="https://yamaha-motor.com.vn/yconnect/" rel="noopener" target="_blank">ứng dụng Y-Connect</a>&nbsp;nhanh ch&oacute;ng; phuộc Upside Down tăng độ đ&agrave;n hồi; bộ ly hợp A&amp;S hạn chế trượt c&ocirc;n&hellip;&nbsp;</p>

<p>&nbsp;</p>

<p><img alt="những mẫu xe moto dưới 100 triệu" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2024/01/xe-moto-duoi-100-trieu-3.jpg" style="height:618px; width:1099px" title="những mẫu xe moto dưới 100 triệu" /></p>

<p><em>Kh&ocirc;ng chỉ c&oacute; tốc độ vận h&agrave;nh &ldquo;đỉnh cao&rdquo;, YZF-R15 c&ograve;n tiết kiệm nhi&ecirc;n liệu v&agrave; sở hữu mức gi&aacute; phải chăng.</em></p>

<h2><strong>3. Bảng gi&aacute; c&aacute;c d&ograve;ng xe moto dưới 100 triệu</strong></h2>

<p>Sau đ&acirc;y l&agrave; gi&aacute; th&agrave;nh từng mẫu xe moto chất lượng để kh&aacute;ch h&agrave;ng tham khảo:</p>

<table>
	<tbody>
		<tr>
			<td>
			<p><strong>Loại xe</strong></p>
			</td>
			<td>
			<p><strong>Gi&aacute; tham khảo (*)</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Yamaha XS155R (Bạc &ndash; Đen)</strong></p>
			</td>
			<td>
			<p>77.000.000 VNĐ</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Yamaha MT-15 (Xanh x&aacute;m &ndash; X&aacute;m đen)</strong></p>
			</td>
			<td>
			<p>69.000.000 VNĐ</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Yamaha YZF-R15 HO&Agrave;N TO&Agrave;N MỚI (Xanh GP &ndash; Đen)</strong></p>
			</td>
			<td>
			<p>78.000.000 VNĐ</p>
			</td>
		</tr>
	</tbody>
</table>
', N'xe-moto-duoi-100-trieu-220240130185537HUOg.jpg', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 0, 0, 0, 1)
INSERT [dbo].[Post] ([PostID], [Title], [Abstract], [Contents], [Images], [Link], [Author], [CreatedDate], [IsActive], [PostOrder], [Category], [Status], [MenuID]) VALUES (3, N'[GIẢI ĐÁP] KHI NÀO NÊN THAY NƯỚC LÀM MÁT XE MÁY?', N'[GIẢI ĐÁP] KHI NÀO NÊN THAY NƯỚC LÀM MÁT XE MÁY?', N'<p>Thay nước l&agrave;m m&aacute;t xe m&aacute;y l&agrave; điều m&agrave; mọi người sử dụng phương tiện n&ecirc;n thực hiện đều đặn, nhằm đảm bảo hiệu suất vận h&agrave;nh ổn định v&agrave; tăng tuổi thọ tối đa cho hệ thống m&aacute;y m&oacute;c. Vậy khi n&agrave;o n&ecirc;n thay nước l&agrave;m m&aacute;t tr&ecirc;n xe m&aacute;y? H&atilde;y c&ugrave;ng Yamaha t&igrave;m hiểu r&otilde; hơn trong b&agrave;i viết sau đ&acirc;y.</p>

<h2><strong>1. Nước l&agrave;m m&aacute;t xe m&aacute;y l&agrave; g&igrave;?</strong></h2>

<p><a href="https://yamaha-motor.com.vn/phu-tung/nuoc-lam-mat/" rel="noopener" target="_blank">Nước l&agrave;m m&aacute;t xe m&aacute;y</a>&nbsp;l&agrave; dung dịch gồm 2 th&agrave;nh phần cơ bản l&agrave; nước cất v&agrave; chất l&agrave;m m&aacute;t chuy&ecirc;n dụng LLC. Sản phẩm được d&ugrave;ng với mục đ&iacute;ch giảm nhiệt độ cho động cơ hiệu quả, từ đ&oacute; gi&uacute;p phương tiện hoạt động tối ưu, cải thiện độ bền bỉ l&acirc;u d&agrave;i v&agrave; hạn chế hiện tượng n&oacute;ng m&aacute;y, ỳ m&aacute;y.</p>

<h2><strong>2. Khi n&agrave;o n&ecirc;n thay nước l&agrave;m m&aacute;t xe m&aacute;y?</strong></h2>

<p><a href="https://yamaha-motor.com.vn/xe/" rel="noopener" target="_blank">C&aacute;c loại xe m&aacute;y</a>&nbsp;được l&agrave;m m&aacute;t bằng dung dịch sẽ một c&oacute; b&igrave;nh dự trữ thể hiện r&otilde; 2 vạch cao nhất (Upper) v&agrave; thấp nhất (Lower). Nếu nhận thấy nước l&agrave;m m&aacute;t nằm dưới vạch Lower th&igrave; bạn cần chủ động bổ sung th&ecirc;m, nhưng kh&ocirc;ng n&ecirc;n đổ vượt qu&aacute; vạch Upper để tr&aacute;nh bị tr&agrave;n.&nbsp;</p>

<p>Theo khuyến nghị từ nh&agrave; sản xuất, bạn n&ecirc;n thay nước l&agrave;m m&aacute;t xe m&aacute;y sau khoảng 20.000 km/lần, gi&uacute;p hệ thống l&agrave;m m&aacute;t lu&ocirc;n hoạt động hiệu quả nhất. Trong trường hợp thời tiết nắng n&oacute;ng, d&ugrave; kh&ocirc;ng sử dụng xe m&aacute;y thường xuy&ecirc;n nhưng bạn đừng qu&ecirc;n kiểm tra b&igrave;nh đựng nước l&agrave;m m&aacute;t để thay thế khi cần.&nbsp;&nbsp;</p>

<h2><strong>3. Hướng dẫn c&aacute;ch thay nước l&agrave;m m&aacute;t xe m&aacute;y tại nh&agrave;</strong></h2>

<p>Dưới đ&acirc;y l&agrave; c&aacute;c bước tự thay nước l&agrave;m m&aacute;t tr&ecirc;n xe m&aacute;y đơn giản tại nh&agrave;:</p>

<h3><strong>3.1. Xả hết dung lịch l&agrave;m m&aacute;t cũ</strong></h3>

<ul>
	<li><strong>Bước 1:&nbsp;</strong>Bạn tắt động cơ xe v&agrave; đợi nguội ho&agrave;n to&agrave;n trước khi thay nước m&aacute;t.&nbsp;&nbsp;</li>
	<li><strong>Bước 2:&nbsp;</strong>Dựng đứng xe l&ecirc;n, x&aacute;c định vị tr&iacute; b&igrave;nh đựng dung dịch tản nhiệt v&agrave; mở lỗ tho&aacute;t nước nằm ở dưới đ&aacute;y b&igrave;nh. Sau đ&oacute;, bạn lấy một chiếc x&ocirc; hoặc chậu lớn, đặt ở ph&iacute;a dưới để chứa nước l&agrave;m m&aacute;t cũ.</li>
	<li><strong>Bước 3:&nbsp;</strong>Đổ đầy nước lọc v&agrave;o b&igrave;nh chứa, đậy nắp lại v&agrave; nổ m&aacute;y trong 5 ph&uacute;t để l&agrave;m sạch hết cặn dung dịch c&ograve;n s&oacute;t lại trong hệ thống l&agrave;m m&aacute;t. Lặp lại bước 3 khoảng 2 &ndash; 3 lần nhằm bảo đảm b&igrave;nh đựng sạch ho&agrave;n to&agrave;n.&nbsp;</li>
	<li><strong>Bước 4:&nbsp;</strong>Mở lỗ tho&aacute;t nước b&ecirc;n dưới đ&aacute;y b&igrave;nh để xả hết lượng nước lọc ra.&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="khi nào nên thay nước làm mát xe máy" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2024/01/thay-nuoc-lam-mat-xe-may-1.jpg" style="height:619px; width:1100px" title="khi nào nên thay nước làm mát xe máy" /></p>

<p><em>Lấy hết lượng nước l&agrave;m m&aacute;t cũ trong b&igrave;nh gi&uacute;p hạn chế trộn lẫn dung dịch mới v&agrave; dung dịch cũ, ảnh hưởng đến chất lượng sản phẩm v&agrave; hiệu quả hoạt động.&nbsp;</em></p>

<h3><strong>3.2. Pha dung dịch nước l&agrave;m m&aacute;t mới</strong></h3>

<ul>
	<li><strong>Bước 1:</strong>&nbsp;Bạn kiểm tra thể t&iacute;ch b&igrave;nh nước tản nhiệt của xe v&agrave; t&iacute;nh to&aacute;n lượng nước l&agrave;m m&aacute;t cần sử dụng.</li>
	<li><strong>Bước 2:&nbsp;</strong>Pha dung dịch l&agrave;m m&aacute;t v&agrave; nước lọc theo tỷ lệ ph&ugrave; hợp.&nbsp;</li>
</ul>

<p><strong>Lưu &yacute;:&nbsp;</strong></p>

<ul>
	<li>Lựa chọn đ&uacute;ng loại nước l&agrave;m m&aacute;t m&agrave; động cơ hiện đang sử dụng.&nbsp;</li>
	<li>Hạn chế trộn lẫn nhiều loại dung dịch với nhau.</li>
	<li>N&ecirc;n pha hỗn hợp nước l&agrave;m m&aacute;t với nước lọc theo đ&uacute;ng tỷ lệ nh&agrave; sản xuất khuyến nghị.&nbsp;</li>
</ul>

<h3><strong>3.3. Thay nước l&agrave;m m&aacute;t mới cho xe m&aacute;y</strong></h3>

<ul>
	<li><strong>Bước 1:&nbsp;</strong>Đặt phễu v&agrave;o nắp b&igrave;nh đựng, sau đ&oacute; bạn từ từ r&oacute;t hỗn hợp nước l&agrave;m m&aacute;t vừa pha xong v&agrave;o.</li>
	<li><strong>Bước 2:&nbsp;</strong>Để nắp b&igrave;nh ở trạng th&aacute;i mở, bạn nổ m&aacute;y cho động cơ tự chạy đến khi thấy bề mặt dung dịch xuất hiện hiện tượng sủi bọt kh&iacute;.</li>
	<li><strong>Bước 3:&nbsp;</strong>Theo d&otilde;i nhiệt độ của động cơ th&ocirc;ng qua kim đồng hồ hoặc đ&egrave;n b&aacute;o nhiệt độ tr&ecirc;n t&aacute;p l&ocirc; xe (*). Nếu thấy nhiệt độ ổn định th&igrave; bạn đ&oacute;ng nắp b&igrave;nh nước tản nhiệt lại v&agrave; c&oacute; thể bắt đầu sử dụng phương tiện như b&igrave;nh thường.</li>
</ul>

<p>(*) Khoảng 80 độ C với động cơ d&ugrave;ng xăng hoặc tr&ecirc;n dưới 90 độ với động cơ d&ugrave;ng dầu Diesel được xem l&agrave; b&igrave;nh thường.</p>

<p>&nbsp;</p>

<p><img alt="thay nước làm mát xe máy" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2024/01/thay-nuoc-lam-mat-xe-may-2.jpg" style="height:705px; width:1099px" title="thay nước làm mát xe máy" /></p>

<p><em>Sau khi đổ đủ lượng dung dịch l&agrave;m m&aacute;t động cơ cần thiết, bạn n&ecirc;n thử khởi động m&aacute;y để kiểm tra nhiệt độ động cơ.</em></p>

<p>Tr&ecirc;n đ&acirc;y l&agrave; c&acirc;u trả lời cho thắc mắc khi n&agrave;o n&ecirc;n thay nước l&agrave;m m&aacute;t xe m&aacute;y, c&ugrave;ng kinh nghiệm tự thay mới dung lịch tại nh&agrave; hiệu quả.</p>
', N'thay-nuoc-lam-mat-xe-may-120240130185658EKb6.jpg', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 0, 0, 0, 1)
INSERT [dbo].[Post] ([PostID], [Title], [Abstract], [Contents], [Images], [Link], [Author], [CreatedDate], [IsActive], [PostOrder], [Category], [Status], [MenuID]) VALUES (9, N'TOP 5 XE MÁY PHÙ HỢP CHO SINH VIÊN VÀ TIẾT KIỆM XĂNG ', N'TOP 5 XE MÁY PHÙ HỢP CHO SINH VIÊN VÀ TIẾT KIỆM XĂNG ', N'<p>Bạn l&agrave; t&acirc;n sinh vi&ecirc;n v&agrave; c&oacute; nhu cầu t&igrave;m cho m&igrave;nh mẫu xe m&aacute;y để thuận tiện cho việc đi học, đi l&agrave;m th&ecirc;m v&agrave; đi chơi c&ugrave;ng bạn b&egrave;? H&atilde;y c&ugrave;ng kh&aacute;m ph&aacute; gợi &yacute; c&aacute;c loại xe m&aacute;y cho sinh vi&ecirc;n với thiết kế trendy, mức gi&aacute; tốt v&agrave; v&ocirc; c&ugrave;ng tiết kiệm xăng trong b&agrave;i viết sau.</p>

<h2><strong>1. Sinh vi&ecirc;n khi chọn mua xe m&aacute;y thường ch&uacute; &yacute; đặc điểm g&igrave;?</strong></h2>

<p>Để chọn được xe m&aacute;y ph&ugrave; hợp với sinh vi&ecirc;n, bạn c&oacute; thể tham khảo một số ti&ecirc;u ch&iacute; như:</p>

<p><strong>&ndash; Tiết kiệm nhi&ecirc;n liệu:&nbsp;</strong>Đ&ocirc;i khi c&aacute;c bạn sinh vi&ecirc;n cần di chuyển rất nhiều giữa c&aacute;c cơ sở học, hoặc giữa trường học v&agrave; nơi l&agrave;m th&ecirc;m. Ch&iacute;nh v&igrave; thế, tiết kiệm xăng sẽ l&agrave; một trong những ti&ecirc;u ch&iacute; h&agrave;ng đầu khi chọn mua xe m&aacute;y cho sinh vi&ecirc;n.&nbsp;</p>

<p><strong>&ndash; Kiểu d&aacute;ng trendy, thể hiện c&aacute; t&iacute;nh:&nbsp;</strong>C&aacute;c mẫu xe m&aacute;y hiện nay kh&ocirc;ng chỉ được t&iacute;ch hợp nhiều t&iacute;nh năng hiện đại, m&agrave; c&ograve;n sở hữu thiết kế tinh tế, thời trang với bảng m&agrave;u cực trendy như blackpink, xanh pastel, trắng, x&aacute;m, đỏ,&hellip; ph&ugrave; hợp với t&iacute;nh c&aacute;ch nội bật của gen Z.</p>

<p><strong>&ndash; Gi&aacute; th&agrave;nh tương đối:</strong>&nbsp;Đ&acirc;y l&agrave; một trong những ti&ecirc;u ch&iacute; h&agrave;ng đầu của c&aacute;c bạn sinh vi&ecirc;n khi&nbsp;<a href="https://yamaha-motor.com.vn/xe/" rel="noopener" target="_blank">chọn mua xe m&aacute;y</a>. Thực tế c&oacute; rất nhiều mẫu xe m&aacute;y hiện nay c&oacute; mức gi&aacute; trung b&igrave;nh, rất ph&ugrave; hợp với khả năng t&agrave;i ch&iacute;nh của c&aacute;c bạn sinh vi&ecirc;n.</p>

<p>&nbsp;</p>

<p><img alt="top xe máy cho sinh viên" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2023/11/xe-may-tam-50-trieu-cho-nam-va-nu-3.jpg" style="height:831px; width:1100px" title="top xe máy cho sinh viên" /></p>

<p><em>B&ecirc;n cạnh gi&aacute; th&agrave;nh tốt v&agrave; vẻ ngo&agrave;i trẻ trung, xe m&aacute;y cho sinh vi&ecirc;n c&ograve;n cần phải c&oacute; khả năng tiết kiệm nhi&ecirc;n liệu tốt.</em></p>

<h2><strong>2. Gợi &yacute;&nbsp;</strong><strong>5</strong><strong>&nbsp;mẫu xe m&aacute;y ph&ugrave; hợp với sinh vi&ecirc;n</strong></h2>

<p>Dưới đ&acirc;y l&agrave; những gợi &yacute; xe m&aacute;y ph&ugrave; hợp cho sinh vi&ecirc;n từ Yamaha m&agrave; bạn c&oacute; thể tham khảo:</p>

<h3><strong>2.1.&nbsp; Xe tay ga Janus</strong><strong>: Tiết kiệm xăng, gi&aacute; hợp l&yacute;&nbsp;</strong></h3>

<p><a href="https://yamaha-motor.com.vn/xe/loai-xe/janus/" rel="noopener" target="_blank">Yamaha Janus</a>&nbsp;l&agrave; mẫu xe m&aacute;y tiết kiệm xăng cho sinh vi&ecirc;n m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua. Với&nbsp;<a href="https://yamaha-motor.com.vn/cong-nghe/bluecore/" rel="noopener" target="_blank">động cơ Blue Core</a>, hệ thống Stop &amp; Start v&agrave; chức năng One push start, mức ti&ecirc;u thụ nhi&ecirc;n liệu của xe chỉ 1,87 l&iacute;t/100km, cho c&aacute;c bạn trẻ thoải m&aacute;i vi vu.&nbsp;Ngo&agrave;i ra, ở phi&ecirc;n bản Đặc biệt v&agrave; Giới hạn, Janus c&ograve;n trang bị hệ thống kh&oacute;a th&ocirc;ng minh (smart key) gi&uacute;p người l&aacute;i định vị xe ch&iacute;nh x&aacute;c, t&igrave;m xe nhanh ch&oacute;ng ở b&atilde;i xe đ&ocirc;ng đ&uacute;c, dễ d&agrave;ng thực hiện c&aacute;c chức năng mở/tắt kh&oacute;a điện, mở kh&oacute;a cổ xe hay y&ecirc;n xe.</p>

<p>Gi&aacute; b&aacute;n lẻ đề xuất của Yamaha Janus cũng v&ocirc; c&ugrave;ng hợp l&yacute;, chỉ từ&nbsp;<strong>28.571.000 đồng</strong>.</p>

<p>&nbsp;</p>

<p><img alt="xe máy phù hợp với sinh viên" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2024/01/xe-may-cho-sinh-vien.jpg" style="height:1100px; width:1100px" title="xe máy phù hợp với sinh viên" /></p>

<p><em>Janus Yamaha l&agrave; một trong những mẫu xe tay ga c&oacute; mức ti&ecirc;u thụ nhi&ecirc;n liệu thấp nhất hiện nay.</em></p>

<h3><strong>2.2. Xe số Sirius FI</strong><strong>&nbsp;: Gi&aacute; hợp l&yacute;, tiết kiệm xăng v&agrave; c&oacute; thể đi phượt&nbsp;</strong></h3>

<p>Khi nhắc đến xe m&aacute;y tiết kiệm xăng cho sinh vi&ecirc;n, kh&ocirc;ng thể bỏ qua&nbsp;<a href="https://yamaha-motor.com.vn/xe/loai-xe/sirius-fi/" rel="noopener" target="_blank">Sirius FI</a>. B&ecirc;n cạnh thiết kế bắt mắt, ngoại h&igrave;nh nhỏ gọn v&agrave; động cơ bền bỉ, mẫu xe n&agrave;y c&ograve;n c&oacute; khả năng tiết kiệm xăng thuộc top ở Việt Nam: chỉ khoảng 1,65l/100km. Gi&aacute; b&aacute;n lẻ đề xuất xe Sirius FI mới nhất chỉ từ&nbsp;<strong>21.100.000 VNĐ</strong>.</p>

<p>&nbsp;</p>

<p><img alt="xe máy tiết kiệm xăng cho sinh viên" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2023/11/cac-loai-xe-may-pho-bien-o-viet-nam-1.jpg" style="height:1100px; width:1100px" title="xe máy tiết kiệm xăng cho sinh viên" /></p>

<p><em>Sirius FI sở hữu thiết kế linh hoạt c&ugrave;ng khả năng tiết kiệm nhi&ecirc;n liệu tuyệt vời.</em></p>

<h3><strong>2.3. Xe số Jupiter Finn</strong><strong>: Nhiều m&agrave;u mới cho nam sinh vi&ecirc;n c&aacute; t&iacute;nh mạnh mẽ</strong></h3>

<p><a href="https://yamaha-motor.com.vn/xe/loai-xe/jupiter-finn/" rel="noopener" target="_blank">Jupiter Finn</a>&nbsp;cũng l&agrave; mẫu xe m&aacute;y sở hữu khả năng tiết kiệm xăng tuyệt vời. Theo đ&oacute;, mức ti&ecirc;u thụ nhi&ecirc;n liệu của mẫu xe n&agrave;y chỉ khoảng&nbsp;1,64L/100km. Đồng thời, gi&aacute; của&nbsp;Jupiter Finn&nbsp;cũng v&ocirc; c&ugrave;ng ph&ugrave; hợp với c&aacute;c bạn sinh vi&ecirc;n, chỉ từ&nbsp;<strong>27.687.000 VNĐ</strong>.</p>

<p>&nbsp;</p>

<p><img alt="xe máy phù hợp cho sinh viên" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2024/01/xe-may-cho-sinh-vien-2.jpg" style="height:792px; width:1100px" title="xe máy phù hợp cho sinh viên" /></p>

<p><em>Jupiter Finn</em><em>&nbsp;sở hữu thiết kế đầy thời trang v&agrave; hiện đại, ph&ugrave; hợp với phong c&aacute;ch của c&aacute;c bạn sinh vi&ecirc;n.&nbsp;</em></p>

<h3><strong>2.4.&nbsp; Xe m&aacute;y điện NEO&rsquo;s:</strong><strong>&nbsp;Bảo vệ m&ocirc;i trường, xu hướng sống xanh</strong></h3>

<p><a href="https://yamaha-motor.com.vn/xe/neos-bfm4/" rel="noopener" target="_blank">Yamaha NEO&rsquo;s</a>&nbsp;l&agrave; một trong những mẫu xe điện thu h&uacute;t c&aacute;c bạn sinh vi&ecirc;n nhất hiện nay. Theo đ&oacute;, nhờ được trang bị động cơ YIPU độc quyền thế hệ 2 n&ecirc;n xe c&oacute; khả năng tăng tốc mượt m&agrave; v&agrave; vận h&agrave;nh bền bỉ. Ngo&agrave;i ra, xe cũng được trang bị 2 chế độ l&aacute;i l&agrave; STD (ti&ecirc;u chuẩn) v&agrave; ECO (tiết kiệm điện).</p>

<p>Chưa dừng lại ở đ&oacute;, trong trường hợp chỉ sử dụng 1 pin, Yamaha NEO&rsquo;s c&oacute; thể vận h&agrave;nh với qu&atilde;ng đường d&agrave;i 72km với 1 pin được sạc đầy. C&ograve;n nếu cần di chuyển với qu&atilde;ng đường d&agrave;i hơn, chẳng hạn như đi phượt, bạn c&oacute; thể lắp th&ecirc;m pin phụ cho xe. L&uacute;c n&agrave;y qu&atilde;ng đường di chuyển của Yamaha NEO&rsquo;s sẽ l&agrave; 144km với 2 pin được sạc đầy.&nbsp;</p>

<p>Gi&aacute; b&aacute;n lẻ đề xuất hiện tại của Yamaha NEO&rsquo;s l&agrave;&nbsp;<strong>49.091.000 VNĐ</strong>.</p>

<p>&nbsp;</p>

<p><img alt="mua xe máy cho sinh viên" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2024/01/xe-may-cho-sinh-vien-3.jpg" style="height:864px; width:1099px" title="mua xe máy cho sinh viên" /></p>

<p><em>Sở hữu xe m&aacute;y điện Yamaha NEO&rsquo;s đang l&agrave; xu hướng của nhiều bạn trẻ hiện đại, c&aacute; t&iacute;nh.&nbsp;</em></p>

<h3><strong>2.5. Xe ga Latte:</strong><strong>&nbsp;Cốp xe rộng cho c&aacute;c bạn nữ dễ chứa đồ d&ugrave;ng học tập v&agrave; phụ kiện</strong></h3>

<p>Một gợi &yacute; kh&aacute;c kh&ocirc;ng thể bỏ qua khi chọn mua xe m&aacute;y cho sinh vi&ecirc;n l&agrave;&nbsp;<a href="https://yamaha-motor.com.vn/xe/loai-xe/latte/" rel="noopener" target="_blank">Yamaha Latte</a>. Xe được trang bị động cơ Blue Core 125cc n&ecirc;n c&oacute; khả năng vận h&agrave;nh bền bỉ v&agrave; kh&ocirc;ng ti&ecirc;u hao qu&aacute; nhiều nhi&ecirc;n liệu. Đặc biệt, cốp xe Yamaha Latte c&oacute; thể t&iacute;ch l&ecirc;n đến 37l, gi&uacute;p c&aacute;c bạn sinh vi&ecirc;n c&oacute; thể thoải m&aacute;i chứa đồ d&ugrave;ng học tập v&agrave; phụ kiện.&nbsp;</p>

<p>Gi&aacute; b&aacute;n lẻ đề xuất xe Latte chỉ từ&nbsp;<strong>38.095.000 VNĐ</strong>.</p>

<p>&nbsp;</p>

<p><img alt="xe máy dành cho sinh viên" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/702A5142-e1571051189372.jpg" style="height:1471px; width:2000px" title="xe máy dành cho sinh viên" /></p>

<p><em>Yamaha Latte sở hữu cốp để đồ rộng r&atilde;i, rất ph&ugrave; hợp với c&aacute;c bạn sinh vi&ecirc;n nữ thường mang theo nhiều vật dụng.</em></p>
', N'xe-may-tam-50-trieu-cho-nam-va-nu-3202401301858402TDV.jpg', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 0, 0, 0, 1)
INSERT [dbo].[Post] ([PostID], [Title], [Abstract], [Contents], [Images], [Link], [Author], [CreatedDate], [IsActive], [PostOrder], [Category], [Status], [MenuID]) VALUES (10, N'CÁCH ĐI XE MÁY TIẾT KIỆM XĂNG HIỆU QUẢ, TỐI ƯU CHI PHÍ XĂNG XE', N'CÁCH ĐI XE MÁY TIẾT KIỆM XĂNG HIỆU QUẢ, TỐI ƯU CHI PHÍ XĂNG XE', N'<div>Hao xăng ở xe m&aacute;y l&agrave; vấn đề thường gặp khiến nhiều người đau đầu. Ngoại trừ nguy&ecirc;n nh&acirc;n m&aacute;y m&oacute;c hư hỏng l&agrave;m hao hụt nhi&ecirc;n liệu nghi&ecirc;m trọng, t&igrave;nh trạng xăng dầu nhanh hết c&oacute; thể xuất ph&aacute;t từ những th&oacute;i quen sử dụng sai c&aacute;ch. H&atilde;y c&ugrave;ng t&igrave;m hiểu những c&aacute;ch đi xe tiết kiệm xăng đơn giản trong b&agrave;i viết sau nh&eacute;!</div>

<h2><strong>1. Lựa chọn d&ograve;ng xe tiết kiệm nhi&ecirc;n liệu</strong></h2>

<p>T&igrave;m mua loại xe m&aacute;y với ưu điểm tiết kiệm xăng dầu ngay từ đầu l&agrave; một trong c&aacute;c giải ph&aacute;p tối ưu h&oacute;a chi ph&iacute; cho nhi&ecirc;n liệu cơ bản, hiệu quả nhất. Theo đ&oacute;, bạn c&oacute; thể tham khảo một số mẫu thời thượng, đ&aacute;p ứng tốt nhu cầu tiết kiệm xăng từ thương hiệu Yamaha b&ecirc;n dưới:</p>

<ul>
	<li><a href="https://yamaha-motor.com.vn/xe/loai-xe/grande/" rel="noopener" target="_blank">Xe tay ga Yamaha Grande</a>:&nbsp;Kh&ocirc;ng chỉ c&oacute; diện mạo thời trang, Yamaha Grande l&agrave; d&ograve;ng xe m&aacute;y được đ&aacute;nh gi&aacute; tiết kiệm nhi&ecirc;n liệu h&agrave;ng đầu v&igrave; chỉ ti&ecirc;u thụ khoảng 1.66 l&iacute;t tr&ecirc;n 100 km. Ngo&agrave;i ra, phương tiện lắp đặt động cơ Blue Core dung t&iacute;ch 125cc với hiệu suất đốt ch&aacute;y xăng mạnh mẽ, nhanh ch&oacute;ng.</li>
	<li><a href="https://yamaha-motor.com.vn/xe/loai-xe/latte/" rel="noopener" target="_blank">Xe ga Yamaha Latte</a>:&nbsp;Th&ecirc;m một mẫu xe tay ga chất lượng gi&uacute;p tiết kiệm xăng tối đa l&agrave; Yamaha Latte, chỉ cần 1.8 l&iacute;t để di chuyển 100 km. Hơn nữa, phương tiện trang bị SmartKey bảo vệ xe an to&agrave;n, khung xe giảm x&oacute;c cực tốt, phanh đĩa đơn thủy lực c&ugrave;ng phanh cơ chuẩn x&aacute;c&hellip;&nbsp;</li>
	<li><a href="https://yamaha-motor.com.vn/xe/loai-xe/sirius-fi/" rel="noopener" target="_blank">Xe số Sirius FI</a>:&nbsp;Sản phẩm vừa c&oacute; mức gi&aacute; hợp l&yacute;, vừa thuộc TOP xe số tiết kiệm xăng h&agrave;ng đầu Việt Nam (chỉ cần 1.65 l&iacute;t cho 100 km) n&ecirc;n rất nhiều kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch v&agrave; phải mua ngay khi mới ra mắt.&nbsp;</li>
	<li><a href="https://yamaha-motor.com.vn/xe/loai-xe/jupiter-finn/" rel="noopener" target="_blank">Xe số Jupiter Finn</a>:&nbsp;Phương tiện nhận được v&ocirc; số phản hồi t&iacute;ch cực về khả năng tiết kiệm nhi&ecirc;n liệu khi chỉ ti&ecirc;u thụ 1.64 l&iacute;t nếu muốn đi 100km. Th&ecirc;m v&agrave;o đ&oacute;,&nbsp;<a href="https://yamaha-motor.com.vn/tin-tuc/xe-tay-ga-nho-gon-cho-nu/" rel="noopener" target="_blank">xe c&oacute; thiết kế nhỏ gọn</a>&nbsp;v&agrave; m&agrave;u sắc phong ph&uacute;.&nbsp;</li>
</ul>

<h2><strong>2. Để xe nổ m&aacute;y 1 &ndash; 2 ph&uacute;t trước khi di chuyển</strong></h2>

<p>Đề xe khoảng một v&agrave;i ph&uacute;t trước khi di chuyển (đặc biệt l&agrave; sau khoảng thời gian d&agrave;i kh&ocirc;ng d&ugrave;ng đến phương tiện) gi&uacute;p một lượng xăng dầu vừa đủ c&oacute; đủ thời gian đi đến tất cả chi tiết b&ecirc;n trong để b&ocirc;i trơn. Nhờ đ&oacute;, phương tiện hoạt động mượt m&agrave; hơn m&agrave; kh&ocirc;ng bị n&oacute;ng l&ecirc;n đột ngột hoặc m&agrave;i m&ograve;n.</p>

<h2><strong>3. Hạn chế chở qu&aacute; nặng</strong></h2>

<p>Mỗi chiếc xe m&aacute;y đều c&oacute; một mức tải trọng nhất định &ndash; đ&acirc;y l&agrave; điều kiện cơ bản gi&uacute;p phương tiện vận h&agrave;nh hiệu quả, &iacute;t tốn nhi&ecirc;n liệu v&agrave; kh&ocirc;ng bị giảm s&uacute;t tuổi thọ. Do đ&oacute;, bạn n&ecirc;n t&igrave;m hiểu kỹ th&ocirc;ng số n&agrave;y v&agrave; chỉ chở người/h&agrave;ng h&oacute;a vừa đ&uacute;ng trọng lượng nh&eacute;.</p>

<h2><strong>4. Tắt m&aacute;y mỗi khi dừng xe hoặc chờ đ&egrave;n đỏ qu&aacute; l&acirc;u</strong></h2>

<p>Th&ecirc;m một c&aacute;ch chạy xe m&aacute;y tiết kiệm xăng hữu &iacute;ch l&agrave; h&atilde;y chủ động tắt m&aacute;y khi dừng qu&aacute; 20 gi&acirc;y. Thao t&aacute;c n&agrave;y tuy đơn giản nhưng lại gi&uacute;p tiết kiệm một lượng lớn nhi&ecirc;n liệu, tăng tuổi thọ cho phương tiện v&agrave; phần n&agrave;o giảm bớt lượng kh&iacute; &ocirc; nhiễm thải ra ngo&agrave;i m&ocirc;i trường mỗi ng&agrave;y.</p>

<table>
	<tbody>
		<tr>
			<td>
			<p><strong>M&aacute;ch nhỏ:&nbsp;</strong>Hiện tại, một số phi&ecirc;n bản xe tay ga đời mới nhất (đơn cử như Yamaha Grande) kh&ocirc;ng chỉ l&agrave; xe tay ga c&oacute; mức độ ti&ecirc;u hao nhi&ecirc;n liệu thấp, m&agrave; c&ograve;n trang bị t&iacute;nh năng Stop &amp; Start System gi&uacute;p phương tiện tự động tạm ngừng hoạt động khi dừng lại trong 5 &ndash; 10 gi&acirc;y v&agrave; khởi động lại dễ d&agrave;ng bằng c&aacute;ch vặn nhẹ tay ga. Qua đ&oacute; hỗ trợ cắt giảm nhi&ecirc;n liệu ti&ecirc;u thụ, tiết kiệm chi ph&iacute; v&agrave; tăng tuổi thọ động cơ.&nbsp;&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<h2><strong>5. Kh&ocirc;ng n&ecirc;n vừa vặn ga vừa phanh xe</strong></h2>

<p>Nhiều người c&oacute; th&oacute;i quen vừa vặn tay ga, vừa phanh xe. Thế nhưng về l&acirc;u d&agrave;i, điều đ&oacute; kh&ocirc;ng chỉ g&acirc;y ti&ecirc;u tốn lượng xăng lớn, m&agrave; c&ograve;n khiến guốc c&ocirc;n bị m&agrave;i m&ograve;n hoặc ch&aacute;y v&agrave; nghi&ecirc;m trọng hơn l&agrave; chu&ocirc;ng c&ocirc;n bị giật, g&acirc;y nguy hiểm cho người sử dụng.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

<h2><strong>6. Tr&aacute;nh tăng ga đột ngột sau khi dừng đ&egrave;n đỏ</strong></h2>

<p>Th&oacute;i quen tăng &ndash; giảm tay ga bất ngờ c&oacute; thể l&agrave;m &ldquo;ngộp&rdquo; b&igrave;nh xăng v&agrave; kh&ocirc;ng thể đưa nhi&ecirc;n liệu đến c&aacute;c chi tiết kịp thời. Từ đ&oacute;, phương tiện &ldquo;ngốn&rdquo; xăng nhiều hơn b&igrave;nh thường v&agrave; những bộ phận li&ecirc;n quan bị m&agrave;i m&ograve;n nghi&ecirc;m trọng (l&agrave;m cho tuổi thọ xe m&aacute;y giảm xuống).&nbsp;</p>

<h2><strong>7. Đi đ&uacute;ng số hoặc giữ tay ga đều</strong></h2>

<p>Trong trường hợp bạn sử dụng xe số, c&aacute;ch đi xe tiết kiệm xăng l&agrave; sang số ph&ugrave; hợp với từng điều kiện di chuyển. C&ograve;n nếu l&aacute;i xe ga th&igrave; bạn n&ecirc;n giữ tay vặn ga ổn định. Nhờ đ&oacute;, người l&aacute;i kh&ocirc;ng những tr&aacute;nh khỏi t&igrave;nh trạng giật xe đột ngột, m&agrave; c&ograve;n hạn chế hư hại kh&ocirc;ng mong muốn về động cơ để tham gia giao th&ocirc;ng an to&agrave;n hơn.&nbsp;&nbsp;</p>

<h2><strong>8. Đảm bảo lốp xe căng vừa phải</strong></h2>

<p>Lốp xe qu&aacute; mềm (c&ograve;n gọi l&agrave; lốp non) hay qu&aacute; cứng đều nguy hiểm với người cầm l&aacute;i. Cụ thể, nếu lốp xe non th&igrave; xe ti&ecirc;u tốn nhiều xăng v&agrave; g&acirc;y ra t&igrave;nh trạng đảo b&aacute;nh. C&ograve;n nếu lốp xe qu&aacute; căng th&igrave; phương tiện dễ bị x&oacute;c. Do vậy, c&aacute;ch đi xe m&aacute;y tiết kiệm xăng l&agrave; kiểm tra b&aacute;nh xe thường xuy&ecirc;n v&agrave; bơm căng vừa phải.</p>

<h2><strong>9. Tr&aacute;nh đi v&agrave;o ổ g&agrave; tr&ecirc;n đường</strong></h2>

<p>C&aacute;c vật cản (như ổ g&agrave;) thường l&agrave;m giảm tốc độ di chuyển bất ngờ, khiến qu&aacute; tr&igrave;nh tiếp ứng nhi&ecirc;n liệu cho những linh kiện b&ecirc;n trong bị gi&aacute;n đoạn, từ đ&oacute; ti&ecirc;u tốn xăng nhiều hơn hẳn. Ngo&agrave;i ra, ch&uacute;ng cũng l&agrave; nguy&ecirc;n nh&acirc;n dẫn đến c&aacute;c va chạm kh&ocirc;ng mong muốn nếu người cầm l&aacute;i kh&ocirc;ng thể điều khiển phương tiện thật vững.</p>

<h2><strong>10. Giảm tốc từ xa</strong></h2>

<p>Thay v&igrave; đột ngột giảm tốc độ dẫn tới hụt xăng, bạn n&ecirc;n chủ động quan s&aacute;t v&agrave; dự đo&aacute;n trước t&igrave;nh h&igrave;nh để thay đổi tốc độ sớm. Điều n&agrave;y vừa gi&uacute;p bảo vệ v&agrave; tăng tuổi thọ linh kiện, vừa bảo đảm an to&agrave;n cho bạn trong mọi t&igrave;nh huống.&nbsp;&nbsp;</p>

<p>Trong trường hợp kh&ocirc;ng kịp ph&aacute;n đo&aacute;n trước, người cầm l&aacute;i sử dụng xe m&aacute;y Yamaha c&oacute; thể an t&acirc;m rằng phương tiện c&oacute; lắp đặt hệ thống chống b&oacute; cứng phanh ABS (Anti-lock Braking System) hiện đại, tạo điều kiện cho bạn giảm tốc, rẽ hướng v&agrave; tr&aacute;nh chướng ngại vật an to&agrave;n.</p>

<p><img alt="Cách đi xe máy tiết kiệm xăng" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2023/11/xe-may-tam-50-trieu-cho-nam-va-nu-7.jpg" style="height:732px; width:1100px" title="Cách đi xe máy tiết kiệm xăng" /></p>

<p><em>Khởi động xe 1 &ndash; 2 ph&uacute;t trước khi chạy gi&uacute;p tăng tuổi thọ phương tiện v&agrave; hạn chế tốn xăng.</em></p>

<p>&nbsp;</p>

<p><img alt="Cách đi xe máy tiết kiệm xăng hiệu quả" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2024/04/cach-di-xe-may-tiet-kiem-xang-hieu-qua.jpg" style="height:733px; width:1100px" title="Cách đi xe máy tiết kiệm xăng hiệu quả" /></p>

<p><em>Thay v&igrave; đột ngột vặn tay ga, bạn n&ecirc;n sang số/vặn ga từ từ để xăng kịp bơm lại v&agrave;o c&aacute;c bộ phận.</em></p>

<p>&nbsp;</p>

<p><img alt="Cách đi xe tiết kiệm xăng" src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2024/04/cach-di-xe-may-tiet-kiem-xang-hieu-qua-2.jpg" style="height:733px; width:1100px" title="Cách đi xe tiết kiệm xăng" /></p>

<p><em>Khi thấy c&oacute; chướng ngại vật tr&ecirc;n đường, bạn n&ecirc;n sẵn s&agrave;ng b&oacute;p tay thắng từ xa.</em></p>

<h2><strong>11. Bảo dưỡng xe định kỳ</strong></h2>

<p>Thực hiện kiểm tra, chăm s&oacute;c v&agrave; thay thế chi tiết (nếu cần) theo khuyến nghị từ đơn vị cung cấp xe m&aacute;y (hoặc nh&agrave; sản xuất) gi&uacute;p phương tiện đạt hiệu suất vận h&agrave;nh tốt nhất m&agrave; kh&ocirc;ng ti&ecirc;u tốn nhiều xăng. Hơn nữa, c&aacute;c linh kiện, bộ phận của xe được gia tăng tuổi thọ v&agrave; đảm bảo an to&agrave;n cho người sử dụng.</p>

<p>&gt;&gt;&nbsp;<strong>XEM TH&Ecirc;M:</strong>&nbsp;<strong><a href="https://yamaha-motor.com.vn/tin-tuc/bao-duong-xe-may-dinh-ky-va-nhung-luu-y-quan-trong/" rel="noopener" target="_blank">BẢO DƯỠNG XE M&Aacute;Y BAO GỒM NHỮNG G&Igrave;? MỐC THỜI GIAN CẦN KIỂM TRA</a></strong></p>

<p>Mong rằng c&aacute;c chia sẻ hữu &iacute;ch kể tr&ecirc;n gi&uacute;p bạn nắm r&otilde; c&aacute;c c&aacute;ch đi xe m&aacute;y tiết kiệm xăng hiệu quả. Th&ecirc;m một lời khuy&ecirc;n nhỏ kh&aacute;c để tối ưu h&oacute;a nhi&ecirc;n liệu tốt hơn l&agrave; ngay từ ban đầu, bạn n&ecirc;n lựa chọn loại xe m&aacute;y c&oacute; khả năng tiết kiệm nhi&ecirc;n liệu, chẳng hạn như những d&ograve;ng xe m&aacute;y thương hiệu Yamaha ph&aacute;t triển.&nbsp;</p>

<p>Sản phẩm kh&ocirc;ng chỉ c&oacute; thiết kế thời trang, năng động gi&uacute;p người cầm l&aacute;i thể hiện &ldquo;chất ri&ecirc;ng&rdquo; m&agrave; c&ograve;n t&iacute;ch hợp nhiều c&ocirc;ng nghệ hiện đại ấn tượng nhằm gia tăng trải nghiệm sử dụng. Đặc biệt hơn, phương tiện lắp đặt động cơ vận h&agrave;nh mạnh mẽ, hệ thống phun xăng t&acirc;n tiến gi&uacute;p tiết kiệm nhi&ecirc;n liệu tốt nhất.&nbsp;</p>
', N'as (1)20240426212831tuH1.jpg', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 0, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([IdRole], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([IdRole], [RoleName]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Slides] ON 

INSERT [dbo].[Slides] ([Id], [Title], [SloganTitle], [NameImg]) VALUES (3, N'TỐC ĐỘ VÀ ĐỘ BỀN, KHÔNG CÓ GIỚI HẠN', N'Chinh phục mọi nơi Thăng hoa cảm xúc', N'carousel-51.jpg')
INSERT [dbo].[Slides] ([Id], [Title], [SloganTitle], [NameImg]) VALUES (4, N'SỨC MẠNH VÀ PHONG CÁCH, ĐỀU CÓ TRONG TỪNG CHUYẾN ĐI', N'BuyUrBike - Đối tác đồng hành trên mọi hành trình ', N'carousel-41.jpg')
INSERT [dbo].[Slides] ([Id], [Title], [SloganTitle], [NameImg]) VALUES (5, N'TỰ DO VÀ LINH HOẠT MỌI LÚC, MỌI NƠI', N'Khám phá cuộc sống thông qua từng chuyến đi', N'carousel-31.jpg')
SET IDENTITY_INSERT [dbo].[Slides] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeBike] ON 

INSERT [dbo].[TypeBike] ([IdType], [NameType]) VALUES (1, N'Xe số')
INSERT [dbo].[TypeBike] ([IdType], [NameType]) VALUES (2, N'Xe điện')
INSERT [dbo].[TypeBike] ([IdType], [NameType]) VALUES (3, N'Xe tay ga')
INSERT [dbo].[TypeBike] ([IdType], [NameType]) VALUES (4, N'Xe thể thao')
SET IDENTITY_INSERT [dbo].[TypeBike] OFF
GO
SET IDENTITY_INSERT [dbo].[UserNotifications] ON 

INSERT [dbo].[UserNotifications] ([Id], [IdNotification], [IdUser]) VALUES (1, 1, 2)
INSERT [dbo].[UserNotifications] ([Id], [IdNotification], [IdUser]) VALUES (2, 2, 2)
SET IDENTITY_INSERT [dbo].[UserNotifications] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([IdUser], [UserName], [Password], [DisplayName], [Phone], [RoleId]) VALUES (1, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'admin', N'0665685', 1)
INSERT [dbo].[Users] ([IdUser], [UserName], [Password], [DisplayName], [Phone], [RoleId]) VALUES (2, N'dangnam', N'6ba6f33a6c1112128dbfec91adbeb7ec', N'dangnam', N'0665685', 2)
INSERT [dbo].[Users] ([IdUser], [UserName], [Password], [DisplayName], [Phone], [RoleId]) VALUES (3, N'123', N'202cb962ac59075b964b07152d234b70', N'123', N'123', 2)
INSERT [dbo].[Users] ([IdUser], [UserName], [Password], [DisplayName], [Phone], [RoleId]) VALUES (4, N'Thinh1182', N'fc84ebe63bfcc5648f46ee4460858913', N'Quoc Thinh', N'1182', 2)
INSERT [dbo].[Users] ([IdUser], [UserName], [Password], [DisplayName], [Phone], [RoleId]) VALUES (5, N'thinh', N'650d5ec38ac4d21d37f98e97e3610de9', N'thinh', N'1111', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Bike]  WITH CHECK ADD  CONSTRAINT [FK_Bike_TypeBike_IdType] FOREIGN KEY([IdType])
REFERENCES [dbo].[TypeBike] ([IdType])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bike] CHECK CONSTRAINT [FK_Bike_TypeBike_IdType]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Accessaries_IdAccessary] FOREIGN KEY([IdAccessary])
REFERENCES [dbo].[Accessaries] ([IdAccessary])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Accessaries_IdAccessary]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Bike_IdBike] FOREIGN KEY([IdBike])
REFERENCES [dbo].[Bike] ([IdBike])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Bike_IdBike]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Users_IdUser] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([IdUser])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Users_IdUser]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Carts_IdCart] FOREIGN KEY([IdCart])
REFERENCES [dbo].[Carts] ([IdCart])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Carts_IdCart]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Order_IdOrder] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[Order] ([IdOrder])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Order_IdOrder]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Users_UserIdUser] FOREIGN KEY([UserIdUser])
REFERENCES [dbo].[Users] ([IdUser])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Users_UserIdUser]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Menu_MenuID] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([MenuID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Menu_MenuID]
GO
ALTER TABLE [dbo].[UserNotifications]  WITH CHECK ADD  CONSTRAINT [FK_UserNotifications_Notification_IdNotification] FOREIGN KEY([IdNotification])
REFERENCES [dbo].[Notification] ([IdNotification])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserNotifications] CHECK CONSTRAINT [FK_UserNotifications_Notification_IdNotification]
GO
ALTER TABLE [dbo].[UserNotifications]  WITH CHECK ADD  CONSTRAINT [FK_UserNotifications_Users_IdUser] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([IdUser])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserNotifications] CHECK CONSTRAINT [FK_UserNotifications_Users_IdUser]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([IdRole])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles_RoleId]
GO
