
/****** Object:  Database [QLBANXE]    Script Date: 11/28/2024 9:54:50 PM ******/
CREATE DATABASE [QLBANXE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBANXE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SERVER1\MSSQL\DATA\QLBANXE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON
( NAME = N'QLBANXE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SERVER1\MSSQL\DATA\QLBANXE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLBANXE] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBANXE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBANXE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBANXE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBANXE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBANXE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBANXE] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBANXE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBANXE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBANXE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBANXE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBANXE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBANXE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBANXE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBANXE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBANXE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBANXE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBANXE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBANXE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBANXE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBANXE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBANXE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBANXE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBANXE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBANXE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBANXE] SET  MULTI_USER 
GO
ALTER DATABASE [QLBANXE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBANXE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBANXE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBANXE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBANXE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBANXE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLBANXE] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLBANXE] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLBANXE]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 11/28/2024 9:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[MaHang] [varchar](20) NOT NULL,
	[TenHang] [nvarchar](30) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 11/28/2024 9:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [varchar](20) NOT NULL,
	[TenLoai] [nvarchar](30) NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 11/28/2024 9:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[MaMau] [varchar](20) NOT NULL,
	[TenMau] [nvarchar](30) NULL,
 CONSTRAINT [PK_MauSac] PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhienBan]    Script Date: 11/28/2024 9:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhienBan](
	[MaPhienBan] [varchar](20) NOT NULL,
	[TenPhienBan] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhienBan] PRIMARY KEY CLUSTERED 
(
	[MaPhienBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XeMay]    Script Date: 11/28/2024 9:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XeMay](
	[MaXe] [int] IDENTITY(1,1) NOT NULL,
	[TenXe] [nvarchar](30) NULL,
	[MaLoai] [varchar](20) NOT NULL,
	[PhanKhoi] [nvarchar](20) NULL,
	[MaHang] [varchar](20) NOT NULL,
	[ChiTiet] [nvarchar](50) NULL,
	[TieuThu] [varchar](20) NULL,
	[PhanhABS] [bit] NULL,
	[BaoHanh] [nvarchar](20) NULL,
 CONSTRAINT [PK_XeMay_1] PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XeMayCu]    Script Date: 11/28/2024 9:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XeMayCu](
	[MaXeCu] [varchar](20) NOT NULL,
	[MaXeTonKho] [int] NOT NULL,
	[DoMoi] [nvarchar](10) NULL,
	[GiaXe] [nvarchar](10) NULL,
 CONSTRAINT [PK_XeMayCu_1] PRIMARY KEY CLUSTERED 
(
	[MaXeCu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XeTonKho]    Script Date: 11/28/2024 9:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XeTonKho](
	[MaXeTonKho] [int] IDENTITY(1,1) NOT NULL,
	[MaXe] [int] NOT NULL,
	[MaMau] [varchar](20) NOT NULL,
	[MaPhienBan] [varchar](20) NOT NULL,
	[SoLuong] [int] NULL,
	[GiaXe] [varchar](20) NULL,
 CONSTRAINT [PK_XeTonKho] PRIMARY KEY CLUSTERED 
(
	[MaXeTonKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Hang] ([MaHang], [TenHang]) VALUES (N'HO', N'Honda')
INSERT [dbo].[Hang] ([MaHang], [TenHang]) VALUES (N'YA', N'Yamaha')
GO
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (N'XeCon', N'Xe côn tay')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (N'XeGa', N'Xe tay ga')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (N'XeSo', N'Xe số')
GO
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'BLA', N'Đen')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'BLU', N'Xanh')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'GR', N'Xanh')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'RE', N'Đỏ')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'SI', N'Bạc')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'WH', N'Trắng')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'XD', N'Xanh Đen')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'YE', N'Vàng')
GO
INSERT [dbo].[PhienBan] ([MaPhienBan], [TenPhienBan]) VALUES (N'CC', N'Cao Cấp')
INSERT [dbo].[PhienBan] ([MaPhienBan], [TenPhienBan]) VALUES (N'DB', N'Đặc Biệt')
INSERT [dbo].[PhienBan] ([MaPhienBan], [TenPhienBan]) VALUES (N'TC', N'Tiêu Chuẩn')
INSERT [dbo].[PhienBan] ([MaPhienBan], [TenPhienBan]) VALUES (N'TT', N'Thể Thao')
GO
SET IDENTITY_INSERT [dbo].[XeMay] ON 

INSERT [dbo].[XeMay] ([MaXe], [TenXe], [MaLoai], [PhanKhoi], [MaHang], [ChiTiet], [TieuThu], [PhanhABS], [BaoHanh]) VALUES (0, N'Air Blade 160', N'XeSo', NULL, N'HO', NULL, N'2.19', 0, N'1 năm')
INSERT [dbo].[XeMay] ([MaXe], [TenXe], [MaLoai], [PhanKhoi], [MaHang], [ChiTiet], [TieuThu], [PhanhABS], [BaoHanh]) VALUES (1, N'Wave Alpha 110', N'XeSo', NULL, N'HO', NULL, N'1.72', 0, N'1 năm')
INSERT [dbo].[XeMay] ([MaXe], [TenXe], [MaLoai], [PhanKhoi], [MaHang], [ChiTiet], [TieuThu], [PhanhABS], [BaoHanh]) VALUES (4, N'Future 125 Fi ', N'XeSo', NULL, N'HO', NULL, N'1.47', 0, N'1 năm')
INSERT [dbo].[XeMay] ([MaXe], [TenXe], [MaLoai], [PhanKhoi], [MaHang], [ChiTiet], [TieuThu], [PhanhABS], [BaoHanh]) VALUES (7, N'Air Blade 160', N'XeGa', NULL, N'HO', NULL, N'2.19', 0, N'1 năm')
INSERT [dbo].[XeMay] ([MaXe], [TenXe], [MaLoai], [PhanKhoi], [MaHang], [ChiTiet], [TieuThu], [PhanhABS], [BaoHanh]) VALUES (10, N'Wave RSX', N'XeSo', N'110', N'HO', NULL, NULL, 0, N'1 năm')
INSERT [dbo].[XeMay] ([MaXe], [TenXe], [MaLoai], [PhanKhoi], [MaHang], [ChiTiet], [TieuThu], [PhanhABS], [BaoHanh]) VALUES (11, N'Sirius Fi', N'XeSo', N'110', N'YA', NULL, N'1.65', 0, N'1 năm')
INSERT [dbo].[XeMay] ([MaXe], [TenXe], [MaLoai], [PhanKhoi], [MaHang], [ChiTiet], [TieuThu], [PhanhABS], [BaoHanh]) VALUES (12, N'Exciter 155', N'XeCon', N'155', N'YA', NULL, N'1.91', 1, N'1 năm')
INSERT [dbo].[XeMay] ([MaXe], [TenXe], [MaLoai], [PhanKhoi], [MaHang], [ChiTiet], [TieuThu], [PhanhABS], [BaoHanh]) VALUES (13, N'Winner X', N'XeCon', N'125', N'YA', NULL, N'1.99', 0, N'1 năm')
INSERT [dbo].[XeMay] ([MaXe], [TenXe], [MaLoai], [PhanKhoi], [MaHang], [ChiTiet], [TieuThu], [PhanhABS], [BaoHanh]) VALUES (14, N'Yamaha R15', N'XeCon', N'150', N'YA', NULL, N'2.29', 1, N'1 năm')
INSERT [dbo].[XeMay] ([MaXe], [TenXe], [MaLoai], [PhanKhoi], [MaHang], [ChiTiet], [TieuThu], [PhanhABS], [BaoHanh]) VALUES (15, N'SUZUKI RAIDER', N'XeCon', N'150', N'YA', NULL, N'2', 0, N'1 năm')
INSERT [dbo].[XeMay] ([MaXe], [TenXe], [MaLoai], [PhanKhoi], [MaHang], [ChiTiet], [TieuThu], [PhanhABS], [BaoHanh]) VALUES (16, N'Yamaha Grande 2024', N'XeGa', N'125', N'YA', NULL, N'1.66', 0, N'1 năm')
INSERT [dbo].[XeMay] ([MaXe], [TenXe], [MaLoai], [PhanKhoi], [MaHang], [ChiTiet], [TieuThu], [PhanhABS], [BaoHanh]) VALUES (18, N'SH 125i ABS', N'XeGa', N'125', N'HO', NULL, N'2.46', 1, N'1 năm')
INSERT [dbo].[XeMay] ([MaXe], [TenXe], [MaLoai], [PhanKhoi], [MaHang], [ChiTiet], [TieuThu], [PhanhABS], [BaoHanh]) VALUES (19, N'SH 125i CBS', N'Xega', N'125', N'HO', NULL, N'2.46', 0, N'1 năm')
INSERT [dbo].[XeMay] ([MaXe], [TenXe], [MaLoai], [PhanKhoi], [MaHang], [ChiTiet], [TieuThu], [PhanhABS], [BaoHanh]) VALUES (21, N'Vision', N'XeGa', N'125', N'HO', NULL, N'1.85', 0, N'1 năm')
SET IDENTITY_INSERT [dbo].[XeMay] OFF
GO
SET IDENTITY_INSERT [dbo].[XeTonKho] ON 

INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (0, 12, N'XD', N'DB', 100, N'52300000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (1, 13, N'BLA', N'TT', 150, N'40800000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (2, 13, N'RE', N'DB', 120, N'40300000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (3, 13, N'BLA', N'TC', 90, N'38700000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (4, 12, N'BLA', N'CC', 100, N'49500000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (5, 14, N'BLU', N'TT', 50, N'76500000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (7, 14, N'RE', N'TT', 30, N'85500000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (8, 14, N'SI', N'TT', 20, N'84500000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (9, 1, N'RE', N'TC', 180, N'18500000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (10, 1, N'BLA', N'DB', 120, N'19800000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (11, 12, N'WH', N'DB', 40, N'50400000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (12, 12, N'BLA', N'TC', 30, N'46000000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (13, 15, N'RE', N'TC', 50, N'46000000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (14, 15, N'XD', N'TC', 30, N'46000000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (15, 10, N'WH', N'TT', 110, N'25900000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (17, 10, N'BLA', N'DB', 100, N'24300000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (18, 13, N'RE', N'TT', 20, N'41500000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (19, 10, N'RE', N'TC', 70, N'23200000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (20, 16, N'WH', N'TC', 90, N'41500000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (23, 18, N'BLA', N'DB', 110, N'84500000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (24, 18, N'WH', N'CC', 60, N'84700000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (25, 19, N'WH', N'TC', 90, N'77700000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (26, 16, N'WH', N'DB', 60, N'46500000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (27, 0, N'BLA', N'DB', 90, N'60000000')
INSERT [dbo].[XeTonKho] ([MaXeTonKho], [MaXe], [MaMau], [MaPhienBan], [SoLuong], [GiaXe]) VALUES (28, 21, N'WH', N'TT', 80, N'38000000')
SET IDENTITY_INSERT [dbo].[XeTonKho] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_XeMayCu]    Script Date: 11/28/2024 9:54:51 PM ******/
ALTER TABLE [dbo].[XeMayCu] ADD  CONSTRAINT [IX_XeMayCu] UNIQUE NONCLUSTERED 
(
	[MaXeCu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_XeTonKho]    Script Date: 11/28/2024 9:54:51 PM ******/
ALTER TABLE [dbo].[XeTonKho] ADD  CONSTRAINT [UK_XeTonKho] UNIQUE NONCLUSTERED 
(
	[MaMau] ASC,
	[MaPhienBan] ASC,
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[XeTonKho] ADD  CONSTRAINT [DF_XeTonKho_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[XeMay]  WITH CHECK ADD  CONSTRAINT [FK_XeMay_Hang] FOREIGN KEY([MaHang])
REFERENCES [dbo].[Hang] ([MaHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[XeMay] CHECK CONSTRAINT [FK_XeMay_Hang]
GO
ALTER TABLE [dbo].[XeMay]  WITH CHECK ADD  CONSTRAINT [FK_XeMay_Loai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[XeMay] CHECK CONSTRAINT [FK_XeMay_Loai]
GO
ALTER TABLE [dbo].[XeMayCu]  WITH CHECK ADD  CONSTRAINT [FK_XeMayCu_XeTonKho] FOREIGN KEY([MaXeTonKho])
REFERENCES [dbo].[XeTonKho] ([MaXeTonKho])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[XeMayCu] CHECK CONSTRAINT [FK_XeMayCu_XeTonKho]
GO
ALTER TABLE [dbo].[XeTonKho]  WITH CHECK ADD  CONSTRAINT [FK_XeTonKho_MauSac] FOREIGN KEY([MaMau])
REFERENCES [dbo].[MauSac] ([MaMau])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[XeTonKho] CHECK CONSTRAINT [FK_XeTonKho_MauSac]
GO
ALTER TABLE [dbo].[XeTonKho]  WITH CHECK ADD  CONSTRAINT [FK_XeTonKho_PhienBan] FOREIGN KEY([MaPhienBan])
REFERENCES [dbo].[PhienBan] ([MaPhienBan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[XeTonKho] CHECK CONSTRAINT [FK_XeTonKho_PhienBan]
GO
ALTER TABLE [dbo].[XeTonKho]  WITH CHECK ADD  CONSTRAINT [FK_XeTonKho_XeMay] FOREIGN KEY([MaXe])
REFERENCES [dbo].[XeMay] ([MaXe])
GO
ALTER TABLE [dbo].[XeTonKho] CHECK CONSTRAINT [FK_XeTonKho_XeMay]
GO
USE [master]
GO
ALTER DATABASE [QLBANXE] SET  READ_WRITE 
GO
