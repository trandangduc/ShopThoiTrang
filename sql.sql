USE [master]
GO
/****** Object:  Database [ShopThoiTrang]    Script Date: 24/10/2024 1:29:19 CH ******/
CREATE DATABASE [ShopThoiTrang]

USE [ShopThoiTrang]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 24/10/2024 1:29:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDonHang] [bigint] NULL,
	[MaSanPhamMauSacSize] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Gia] [decimal](18, 0) NOT NULL,
	[MaCTDonHang] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaCTDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietGioHang]    Script Date: 24/10/2024 1:29:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGioHang](
	[MaGioHang] [int] NOT NULL,
	[MaSanPhamMauSacSize] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC,
	[MaSanPhamMauSacSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 24/10/2024 1:29:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](100) NOT NULL,
	[TrangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoiTuong]    Script Date: 24/10/2024 1:29:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoiTuong](
	[MaDoiTuong] [int] IDENTITY(1,1) NOT NULL,
	[TenDoiTuong] [nvarchar](50) NULL,
 CONSTRAINT [PK_DoiTuong] PRIMARY KEY CLUSTERED 
(
	[MaDoiTuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 24/10/2024 1:29:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [bigint] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [int] NOT NULL,
	[NgayDatHang] [date] NOT NULL,
	[TrangThaiDonHang] [nvarchar](50) NOT NULL,
	[TongTien] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 24/10/2024 1:29:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaGioHang] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [int] NOT NULL,
	[NgayTao] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 24/10/2024 1:29:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[MaMau] [int] IDENTITY(1,1) NOT NULL,
	[TenMau] [nvarchar](50) NOT NULL,
	[TrangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 24/10/2024 1:29:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 24/10/2024 1:29:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](255) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[Gia] [decimal](18, 0) NOT NULL,
	[HinhAnh] [nvarchar](255) NULL,
	[MaDanhMuc] [int] NULL,
	[NgayTao] [date] NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[DoiTuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham_MauSac_Size]    Script Date: 24/10/2024 1:29:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham_MauSac_Size](
	[MaSanPhamMauSacSize] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[MaMau] [int] NOT NULL,
	[MaSize] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPhamMauSacSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 24/10/2024 1:29:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[MaSize] [int] IDENTITY(1,1) NOT NULL,
	[TenSize] [nvarchar](50) NOT NULL,
	[TrangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 24/10/2024 1:29:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[MaQuyen] [int] NULL,
	[SoDienThoai] [nvarchar](15) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[TrangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPhamMauSacSize], [SoLuong], [Gia], [MaCTDonHang]) VALUES (2, 17, 2, CAST(441000 AS Decimal(18, 0)), 1)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPhamMauSacSize], [SoLuong], [Gia], [MaCTDonHang]) VALUES (3, 27, 1, CAST(471000 AS Decimal(18, 0)), 2)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPhamMauSacSize], [SoLuong], [Gia], [MaCTDonHang]) VALUES (4, 27, 1, CAST(471000 AS Decimal(18, 0)), 3)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPhamMauSacSize], [SoLuong], [Gia], [MaCTDonHang]) VALUES (5, 32, 1, CAST(590000 AS Decimal(18, 0)), 4)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPhamMauSacSize], [SoLuong], [Gia], [MaCTDonHang]) VALUES (6, 3, 1, CAST(392000 AS Decimal(18, 0)), 5)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPhamMauSacSize], [SoLuong], [Gia], [MaCTDonHang]) VALUES (6, 30, 1, CAST(472000 AS Decimal(18, 0)), 6)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPhamMauSacSize], [SoLuong], [Gia], [MaCTDonHang]) VALUES (9, 31, 2, CAST(785000 AS Decimal(18, 0)), 7)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPhamMauSacSize], [SoLuong]) VALUES (1, 29, 1)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPhamMauSacSize], [SoLuong]) VALUES (1, 31, 5)
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TrangThai]) VALUES (1, N'Áo thun', 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TrangThai]) VALUES (2, N'Áo polo', 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TrangThai]) VALUES (3, N'Áo len', 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TrangThai]) VALUES (4, N'Áo khoác', 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TrangThai]) VALUES (5, N'Quần jean', 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TrangThai]) VALUES (6, N'Quần tây', 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TrangThai]) VALUES (7, N'Quần kaki', 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TrangThai]) VALUES (8, N'Áo hoodie', 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TrangThai]) VALUES (9, N'Áo sơ mi', 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TrangThai]) VALUES (10, N'Quần ngắn', 1)
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[DoiTuong] ON 

INSERT [dbo].[DoiTuong] ([MaDoiTuong], [TenDoiTuong]) VALUES (1, N'Phụ nữ')
INSERT [dbo].[DoiTuong] ([MaDoiTuong], [TenDoiTuong]) VALUES (2, N'Đàn ông')
SET IDENTITY_INSERT [dbo].[DoiTuong] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDonHang], [MaTaiKhoan], [NgayDatHang], [TrangThaiDonHang], [TongTien]) VALUES (2, 2, CAST(N'2024-10-21' AS Date), N'Đã duyệt', CAST(882000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([MaDonHang], [MaTaiKhoan], [NgayDatHang], [TrangThaiDonHang], [TongTien]) VALUES (3, 2, CAST(N'2024-10-21' AS Date), N'Đã thanh toán', CAST(471000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([MaDonHang], [MaTaiKhoan], [NgayDatHang], [TrangThaiDonHang], [TongTien]) VALUES (4, 2, CAST(N'2024-10-21' AS Date), N'Đã hủy', CAST(471000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([MaDonHang], [MaTaiKhoan], [NgayDatHang], [TrangThaiDonHang], [TongTien]) VALUES (5, 2, CAST(N'2024-10-21' AS Date), N'Đang chờ xử lý', CAST(590000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([MaDonHang], [MaTaiKhoan], [NgayDatHang], [TrangThaiDonHang], [TongTien]) VALUES (6, 2, CAST(N'2024-10-21' AS Date), N'Đã thanh toán', CAST(864000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([MaDonHang], [MaTaiKhoan], [NgayDatHang], [TrangThaiDonHang], [TongTien]) VALUES (7, 2, CAST(N'2024-10-21' AS Date), N'Đã hủy', CAST(1570000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([MaDonHang], [MaTaiKhoan], [NgayDatHang], [TrangThaiDonHang], [TongTien]) VALUES (8, 2, CAST(N'2024-10-21' AS Date), N'Đã hủy', CAST(1570000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([MaDonHang], [MaTaiKhoan], [NgayDatHang], [TrangThaiDonHang], [TongTien]) VALUES (9, 2, CAST(N'2024-10-21' AS Date), N'Đang chờ xử lý', CAST(1570000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([MaDonHang], [MaTaiKhoan], [NgayDatHang], [TrangThaiDonHang], [TongTien]) VALUES (10, 2, CAST(N'2024-10-22' AS Date), N'Đã hủy', CAST(472000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([MaGioHang], [MaTaiKhoan], [NgayTao]) VALUES (1, 2, CAST(N'2024-10-19' AS Date))
SET IDENTITY_INSERT [dbo].[GioHang] OFF
GO
SET IDENTITY_INSERT [dbo].[MauSac] ON 

INSERT [dbo].[MauSac] ([MaMau], [TenMau], [TrangThai]) VALUES (1, N'Trắng', 1)
INSERT [dbo].[MauSac] ([MaMau], [TenMau], [TrangThai]) VALUES (2, N'Đen', 1)
INSERT [dbo].[MauSac] ([MaMau], [TenMau], [TrangThai]) VALUES (3, N'Xanh rêu', 1)
INSERT [dbo].[MauSac] ([MaMau], [TenMau], [TrangThai]) VALUES (4, N'Be', 1)
INSERT [dbo].[MauSac] ([MaMau], [TenMau], [TrangThai]) VALUES (5, N'Xám', 1)
INSERT [dbo].[MauSac] ([MaMau], [TenMau], [TrangThai]) VALUES (6, N'Nâu', 1)
INSERT [dbo].[MauSac] ([MaMau], [TenMau], [TrangThai]) VALUES (7, N'Xanh biển', 1)
INSERT [dbo].[MauSac] ([MaMau], [TenMau], [TrangThai]) VALUES (8, N'Dương nhạt', 1)
INSERT [dbo].[MauSac] ([MaMau], [TenMau], [TrangThai]) VALUES (9, N'Hồng', 1)
SET IDENTITY_INSERT [dbo].[MauSac] OFF
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([ID], [TenQuyen]) VALUES (1, N'Admin')
INSERT [dbo].[Quyen] ([ID], [TenQuyen]) VALUES (2, N'Khách hàng')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (2, N'Áo thun tay ngắn nhãn trang trí.Regular', NULL, CAST(392000 AS Decimal(18, 0)), N'10S23TSS053_BRIGHT-WHITE_1_ao-thun-nam-ckno.webp', 1, CAST(N'2024-10-19' AS Date), 1, 2)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (3, N'Áo thun nam ngắn tay sọc ngang. Loose', NULL, CAST(441000 AS Decimal(18, 0)), N'10S24TSS012_FOREST-BIOME_1_ao-thun-nam-1-ebrp.webp', 1, CAST(N'2024-10-19' AS Date), 1, 2)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (4, N'Áo polo nam. Fitted', NULL, CAST(540000 AS Decimal(18, 0)), N'10F24POL003_TAWNY-PORT_1_ao-polo-nam-1-mopr.webp', 2, CAST(N'2024-10-19' AS Date), 1, 2)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (6, N'Áo polo nam viền cổ trang trí premium. Fitted', NULL, CAST(638000 AS Decimal(18, 0)), N'10S24POL002P_BRIGHT-WHITE_ao-polo-nam-1-mapj.webp', 2, CAST(N'2024-10-19' AS Date), 1, 2)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (7, N'Áo Gile nam dệt kim cổ V. Regular', NULL, CAST(471000 AS Decimal(18, 0)), N'10F23KNI007_BLACK_ao-gile-nam-4-zngj.webp', 3, CAST(N'2024-10-19' AS Date), 1, 2)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (8, N'Áo len dệt kim nam tay dài cổ cao. Fitted
', NULL, CAST(472000 AS Decimal(18, 0)), N'10F23KNI009_BROWN_ao-len-nam-1-ggap.webp', 3, CAST(N'2024-10-19' AS Date), 1, 2)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (9, N'Áo khoác denim nam. Loose', NULL, CAST(785000 AS Decimal(18, 0)), N'10f24dja003-m-indigo-ao-khoac-jean-nam-1-jpg-em5t.webp', 4, CAST(N'2024-10-19' AS Date), 1, 2)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (10, N'Áo khoác adidas xanh đen viền tay', NULL, CAST(590000 AS Decimal(18, 0)), N'6587__1_of_10__75defd1be0b84fd0ba153011b1f0dd92_1024x1024.webp', 4, CAST(N'2024-10-19' AS Date), 1, 2)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (11, N'Quần Jeans Thêu 4M Túi Sau Form Straight QJ104', NULL, CAST(545000 AS Decimal(18, 0)), N'quan-jeans-theu-4m-tui-sau-form-straight-qj104-mau-be-18752-slide-products-6700fa6ed7ef2.jpg', 5, CAST(N'2024-10-19' AS Date), 1, 2)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (12, N'Áo Thun Nữ Bear Polo RR24AT58', NULL, CAST(350000 AS Decimal(18, 0)), N'35.webp', 1, CAST(N'2024-10-19' AS Date), 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (13, N'Áo Thun Nữ Rabbit Tee RR24AT54', NULL, CAST(320000 AS Decimal(18, 0)), N'1-e4c15fd9-d6a9-4fe7-be79-66f897284ba9.webp', 1, CAST(N'2024-10-19' AS Date), 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (14, N'Áo Sơ Mi Nữ Olia Shirt RR24AS26', NULL, CAST(440000 AS Decimal(18, 0)), N'25-4347ceab-31a6-4ed2-b459-e6ef64b0adb3.webp', 9, CAST(N'2024-10-19' AS Date), 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (15, N'Quần Jeans Nữ Charles RR24QJ23', NULL, CAST(490000 AS Decimal(18, 0)), N'3-db49615a-d19f-48df-aa18-df18a5d473a2.webp', 5, CAST(N'2024-10-19' AS Date), 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (16, N'Quần Jeans Nữ Mitsu RR24QJ18', NULL, CAST(490000 AS Decimal(18, 0)), N'6-5b051a12-45c8-4b02-8c36-e0ebd09057bd.webp', 5, CAST(N'2024-10-19' AS Date), 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (17, N'Quần Ngắn Nữ Yulia Short RR24QN08', NULL, CAST(390000 AS Decimal(18, 0)), N'7-79a8c61f-2e8b-4582-ad73-a368d5ab653a.webp', 10, CAST(N'2024-10-19' AS Date), 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao], [TrangThai], [DoiTuong]) VALUES (18, N'Quần Ngắn Nữ Tiny Short RR24QN04', NULL, CAST(450000 AS Decimal(18, 0)), N'27-e96667ad-35eb-4733-940a-39ef2d0cd6df.webp', 10, CAST(N'2024-10-19' AS Date), 1, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham_MauSac_Size] ON 

INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (1, 2, 1, 5, 10, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (2, 2, 1, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (3, 2, 1, 3, 1, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (4, 2, 2, 1, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (5, 2, 2, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (6, 2, 2, 3, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (9, 2, 2, 5, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (10, 3, 3, 1, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (11, 3, 3, 2, 4, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (12, 3, 3, 3, 3, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (13, 3, 3, 5, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (14, 3, 4, 1, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (15, 3, 4, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (16, 3, 4, 3, 4, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (17, 3, 1, 2, 4, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (18, 3, 1, 3, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (19, 3, 2, 5, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (21, 3, 2, 3, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (22, 3, 6, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (23, 6, 1, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (24, 6, 2, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (25, 6, 5, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (26, 7, 6, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (27, 7, 2, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (28, 7, 5, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (29, 8, 6, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (30, 8, 2, 2, 4, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (31, 9, 7, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (32, 10, 7, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (33, 10, 7, 1, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (34, 11, 2, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (35, 11, 6, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (36, 12, 1, 1, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (37, 12, 1, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (38, 12, 1, 3, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (39, 12, 6, 1, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (40, 12, 6, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (41, 12, 6, 3, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (42, 13, 1, 1, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (43, 13, 1, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (44, 13, 1, 3, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (45, 13, 6, 1, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (46, 13, 6, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (47, 13, 6, 3, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (48, 14, 1, 1, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (49, 14, 1, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (50, 14, 1, 3, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (51, 15, 1, 1, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (52, 15, 1, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (53, 15, 1, 3, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (54, 16, 8, 1, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (55, 16, 8, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (56, 17, 1, 1, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (57, 17, 1, 3, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (58, 18, 1, 2, 5, 1)
INSERT [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize], [MaSanPham], [MaMau], [MaSize], [SoLuong], [TrangThai]) VALUES (59, 18, 1, 3, 5, 1)
SET IDENTITY_INSERT [dbo].[SanPham_MauSac_Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([MaSize], [TenSize], [TrangThai]) VALUES (1, N'XS', 1)
INSERT [dbo].[Size] ([MaSize], [TenSize], [TrangThai]) VALUES (2, N'S', 1)
INSERT [dbo].[Size] ([MaSize], [TenSize], [TrangThai]) VALUES (3, N'M', 1)
INSERT [dbo].[Size] ([MaSize], [TenSize], [TrangThai]) VALUES (5, N'L', 1)
INSERT [dbo].[Size] ([MaSize], [TenSize], [TrangThai]) VALUES (6, N'XL', 1)
INSERT [dbo].[Size] ([MaSize], [TenSize], [TrangThai]) VALUES (8, N'XXL', 1)
INSERT [dbo].[Size] ([MaSize], [TenSize], [TrangThai]) VALUES (9, N'XXXL', 1)
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [Username], [Password], [HoTen], [Email], [MaQuyen], [SoDienThoai], [DiaChi], [TrangThai]) VALUES (1, N'Admin', N'123456', N'Admin', N'admin@gmail.com', 1, N'0377450983', N'Bình Dương', 1)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [Username], [Password], [HoTen], [Email], [MaQuyen], [SoDienThoai], [DiaChi], [TrangThai]) VALUES (2, N'khach1', N'123', N'Khách 12', N'thanhtroll0915@gmail.com', 2, N'1234567890', N'TP HCM', 1)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaSanPhamMauSacSize])
REFERENCES [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_MaDon] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_MaDon]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD FOREIGN KEY([MaGioHang])
REFERENCES [dbo].[GioHang] ([MaGioHang])
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD FOREIGN KEY([MaSanPhamMauSacSize])
REFERENCES [dbo].[SanPham_MauSac_Size] ([MaSanPhamMauSacSize])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DoiTuong] FOREIGN KEY([DoiTuong])
REFERENCES [dbo].[DoiTuong] ([MaDoiTuong])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DoiTuong]
GO
ALTER TABLE [dbo].[SanPham_MauSac_Size]  WITH CHECK ADD FOREIGN KEY([MaMau])
REFERENCES [dbo].[MauSac] ([MaMau])
GO
ALTER TABLE [dbo].[SanPham_MauSac_Size]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[SanPham_MauSac_Size]  WITH CHECK ADD FOREIGN KEY([MaSize])
REFERENCES [dbo].[Size] ([MaSize])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([ID])
GO
USE [master]
GO
ALTER DATABASE [ShopThoiTrang] SET  READ_WRITE 
GO
