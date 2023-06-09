USE [master]
GO
/****** Object:  Database [HETHONGBONGDA]    Script Date: 03/12/2022 3:51:01 PM ******/
CREATE DATABASE [HETHONGBONGDA]
GO
USE [HETHONGBONGDA]
GO
/****** Object:  Table [dbo].[CHITIET_DICHVU]    Script Date: 03/12/2022 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_DICHVU](
	[MADICHVU] [int] NOT NULL,
	[MAPTT] [int] NOT NULL,
	[SOLANSUDUNG] [int] NOT NULL,
 CONSTRAINT [PK__CHITIET___8C2B6B0861F4FAC4] PRIMARY KEY CLUSTERED 
(
	[MADICHVU] ASC,
	[MAPTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIET_PHIEUDATSAN]    Script Date: 03/12/2022 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_PHIEUDATSAN](
	[MASAN] [int] NOT NULL,
	[MAPDS] [int] NOT NULL,
	[MAKHUNGGIO] [int] NULL,
	[MADICHVU] [int] NULL,
	[MAPTT] [int] NOT NULL,
 CONSTRAINT [PK__CHITIET___473A15EAD4A8741D] PRIMARY KEY CLUSTERED 
(
	[MASAN] ASC,
	[MAPDS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 03/12/2022 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MADICHVU] [int] IDENTITY(1,1) NOT NULL,
	[TENDICHVU] [nvarchar](50) NOT NULL,
	[GIATIEN] [int] NOT NULL,
 CONSTRAINT [PK_DICHVU] PRIMARY KEY CLUSTERED 
(
	[MADICHVU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIO]    Script Date: 03/12/2022 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIO](
	[MAKHUNGGIO] [int] IDENTITY(1,1) NOT NULL,
	[GIOBATDAU] [time](7) NOT NULL,
	[GIOKETTHUC] [time](7) NOT NULL,
 CONSTRAINT [PK_GIO] PRIMARY KEY CLUSTERED 
(
	[MAKHUNGGIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 03/12/2022 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[TENKH] [nvarchar](50) NOT NULL,
	[SDTKH] [nvarchar](10) NOT NULL,
	[DIACHIKH] [nvarchar](100) NOT NULL,
	[MATK] [int] NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISAN]    Script Date: 03/12/2022 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISAN](
	[MALOAISAN] [int] IDENTITY(1,1) NOT NULL,
	[TENLOAISAN] [nvarchar](30) NOT NULL,
	[GIATIEN] [int] NULL,
 CONSTRAINT [PK_LOAISAN] PRIMARY KEY CLUSTERED 
(
	[MALOAISAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 03/12/2022 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [int] IDENTITY(1,1) NOT NULL,
	[TENNV] [nvarchar](50) NOT NULL,
	[SDTNV] [nvarchar](10) NOT NULL,
	[EMAILNV] [nvarchar](50) NOT NULL,
	[CHUCVU] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUDATSAN]    Script Date: 03/12/2022 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUDATSAN](
	[MAPDS] [int] IDENTITY(1,1) NOT NULL,
	[NGAYDATSAN] [datetime] NOT NULL,
	[GIODATSAN] [datetime] NOT NULL,
	[NGAYLAPPDS] [datetime] NOT NULL,
	[MAKH] [int] NOT NULL,
	[MANV] [int] NULL,
 CONSTRAINT [PK_PHIEUDATSAN] PRIMARY KEY CLUSTERED 
(
	[MAPDS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUTHANHTOAN]    Script Date: 03/12/2022 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUTHANHTOAN](
	[MAPTT] [int] IDENTITY(1,1) NOT NULL,
	[NGAYLAPPTT] [datetime] NOT NULL,
	[TONGTIEN] [int] NOT NULL,
	[MANV] [int] NOT NULL,
 CONSTRAINT [PK_PHIEUTHANHTOAN] PRIMARY KEY CLUSTERED 
(
	[MAPTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SAN]    Script Date: 03/12/2022 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAN](
	[MASAN] [int] IDENTITY(1,1) NOT NULL,
	[TENSAN] [nvarchar](30) NOT NULL,
	[TRANGTHAI] [nvarchar](15) NOT NULL,
	[MALOAISAN] [int] NOT NULL,
 CONSTRAINT [PK_SAN] PRIMARY KEY CLUSTERED 
(
	[MASAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 03/12/2022 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[MATK] [int] IDENTITY(1,1) NOT NULL,
	[TENTK] [nvarchar](30) NOT NULL,
	[MATKHAU] [nvarchar](50) NOT NULL,
	[TENHIENTHI] [nvarchar](50) NOT NULL,
	[VAITRO] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[MATK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TINHTRANGSAN]    Script Date: 03/12/2022 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINHTRANGSAN](
	[MATINHTRANGSAN] [int] IDENTITY(1,1) NOT NULL,
	[MASAN] [int] NULL,
	[MAKHUNGGIO] [int] NULL,
	[TRANGTHAI] [int] NOT NULL,
 CONSTRAINT [PK_TINHTRANGSAN] PRIMARY KEY CLUSTERED 
(
	[MATINHTRANGSAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIET_DICHVU] ([MADICHVU], [MAPTT], [SOLANSUDUNG]) VALUES (1, 1, 1)
GO
INSERT [dbo].[CHITIET_DICHVU] ([MADICHVU], [MAPTT], [SOLANSUDUNG]) VALUES (2, 2, 1)
GO
INSERT [dbo].[CHITIET_DICHVU] ([MADICHVU], [MAPTT], [SOLANSUDUNG]) VALUES (2, 3, 1)
GO
INSERT [dbo].[CHITIET_PHIEUDATSAN] ([MASAN], [MAPDS], [MAKHUNGGIO], [MADICHVU], [MAPTT]) VALUES (1, 1, 2, 1, 1)
GO
INSERT [dbo].[CHITIET_PHIEUDATSAN] ([MASAN], [MAPDS], [MAKHUNGGIO], [MADICHVU], [MAPTT]) VALUES (1, 3, 3, 2, 3)
GO
INSERT [dbo].[CHITIET_PHIEUDATSAN] ([MASAN], [MAPDS], [MAKHUNGGIO], [MADICHVU], [MAPTT]) VALUES (2, 2, 4, 2, 2)
GO
SET IDENTITY_INSERT [dbo].[DICHVU] ON 
GO
INSERT [dbo].[DICHVU] ([MADICHVU], [TENDICHVU], [GIATIEN]) VALUES (1, N'Nước ngọt', 15000)
GO
INSERT [dbo].[DICHVU] ([MADICHVU], [TENDICHVU], [GIATIEN]) VALUES (2, N'Nước lọc', 10000)
GO
INSERT [dbo].[DICHVU] ([MADICHVU], [TENDICHVU], [GIATIEN]) VALUES (3, N'Áo đấu đội bóng', 150000)
GO
SET IDENTITY_INSERT [dbo].[DICHVU] OFF
GO
SET IDENTITY_INSERT [dbo].[GIO] ON 
GO
INSERT [dbo].[GIO] ([MAKHUNGGIO], [GIOBATDAU], [GIOKETTHUC]) VALUES (1, CAST(N'07:00:00' AS Time), CAST(N'08:30:00' AS Time))
GO
INSERT [dbo].[GIO] ([MAKHUNGGIO], [GIOBATDAU], [GIOKETTHUC]) VALUES (2, CAST(N'08:30:00' AS Time), CAST(N'10:00:00' AS Time))
GO
INSERT [dbo].[GIO] ([MAKHUNGGIO], [GIOBATDAU], [GIOKETTHUC]) VALUES (3, CAST(N'10:00:00' AS Time), CAST(N'11:30:00' AS Time))
GO
INSERT [dbo].[GIO] ([MAKHUNGGIO], [GIOBATDAU], [GIOKETTHUC]) VALUES (4, CAST(N'11:30:00' AS Time), CAST(N'13:00:00' AS Time))
GO
INSERT [dbo].[GIO] ([MAKHUNGGIO], [GIOBATDAU], [GIOKETTHUC]) VALUES (5, CAST(N'13:00:00' AS Time), CAST(N'14:30:00' AS Time))
GO
INSERT [dbo].[GIO] ([MAKHUNGGIO], [GIOBATDAU], [GIOKETTHUC]) VALUES (6, CAST(N'14:30:00' AS Time), CAST(N'16:00:00' AS Time))
GO
INSERT [dbo].[GIO] ([MAKHUNGGIO], [GIOBATDAU], [GIOKETTHUC]) VALUES (7, CAST(N'16:00:00' AS Time), CAST(N'17:30:00' AS Time))
GO
INSERT [dbo].[GIO] ([MAKHUNGGIO], [GIOBATDAU], [GIOKETTHUC]) VALUES (8, CAST(N'17:30:00' AS Time), CAST(N'19:00:00' AS Time))
GO
INSERT [dbo].[GIO] ([MAKHUNGGIO], [GIOBATDAU], [GIOKETTHUC]) VALUES (9, CAST(N'19:00:00' AS Time), CAST(N'20:30:00' AS Time))
GO
INSERT [dbo].[GIO] ([MAKHUNGGIO], [GIOBATDAU], [GIOKETTHUC]) VALUES (10, CAST(N'20:30:00' AS Time), CAST(N'22:00:00' AS Time))
GO
SET IDENTITY_INSERT [dbo].[GIO] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 
GO
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDTKH], [DIACHIKH], [MATK]) VALUES (1, N'Thanh', N'0912567790', N'TP Thủ Đức, TPHCM', 4)
GO
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDTKH], [DIACHIKH], [MATK]) VALUES (2, N'Hoàng', N'0909599995', N'Hà Nội', 6)
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAISAN] ON 
GO
INSERT [dbo].[LOAISAN] ([MALOAISAN], [TENLOAISAN], [GIATIEN]) VALUES (1, N'Sân cỏ tự nhiên', 150000)
GO
INSERT [dbo].[LOAISAN] ([MALOAISAN], [TENLOAISAN], [GIATIEN]) VALUES (2, N'Sân cỏ nhân tạo', 150000)
GO
INSERT [dbo].[LOAISAN] ([MALOAISAN], [TENLOAISAN], [GIATIEN]) VALUES (3, N'Sân hỗn hợp', 200000)
GO
SET IDENTITY_INSERT [dbo].[LOAISAN] OFF
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 
GO
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [SDTNV], [EMAILNV], [CHUCVU]) VALUES (1, N'Lại Hợp Thanh Bình', N'0909123123', N'binh2212@gmail.com', N'Nhân viên')
GO
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [SDTNV], [EMAILNV], [CHUCVU]) VALUES (2, N'Vũ Hoàng Lâm', N'0912223223', N'lam789@gmail.com', N'Nhân viên')
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[PHIEUDATSAN] ON 
GO
INSERT [dbo].[PHIEUDATSAN] ([MAPDS], [NGAYDATSAN], [GIODATSAN], [NGAYLAPPDS], [MAKH], [MANV]) VALUES (1, CAST(N'2022-12-03T00:00:00.000' AS DateTime), CAST(N'2022-12-03T09:00:00.000' AS DateTime), CAST(N'2022-12-03T00:00:00.000' AS DateTime), 1, 1)
GO
INSERT [dbo].[PHIEUDATSAN] ([MAPDS], [NGAYDATSAN], [GIODATSAN], [NGAYLAPPDS], [MAKH], [MANV]) VALUES (2, CAST(N'2022-12-03T00:00:00.000' AS DateTime), CAST(N'2022-12-03T11:30:00.000' AS DateTime), CAST(N'2022-12-03T00:00:00.000' AS DateTime), 1, 1)
GO
INSERT [dbo].[PHIEUDATSAN] ([MAPDS], [NGAYDATSAN], [GIODATSAN], [NGAYLAPPDS], [MAKH], [MANV]) VALUES (3, CAST(N'2022-12-03T00:00:00.000' AS DateTime), CAST(N'2022-12-03T10:00:00.000' AS DateTime), CAST(N'2022-12-03T00:00:00.000' AS DateTime), 1, 1)
GO
SET IDENTITY_INSERT [dbo].[PHIEUDATSAN] OFF
GO
SET IDENTITY_INSERT [dbo].[PHIEUTHANHTOAN] ON 
GO
INSERT [dbo].[PHIEUTHANHTOAN] ([MAPTT], [NGAYLAPPTT], [TONGTIEN], [MANV]) VALUES (1, CAST(N'2022-12-03T00:00:00.000' AS DateTime), 165000, 1)
GO
INSERT [dbo].[PHIEUTHANHTOAN] ([MAPTT], [NGAYLAPPTT], [TONGTIEN], [MANV]) VALUES (2, CAST(N'2022-12-03T00:00:00.000' AS DateTime), 160000, 1)
GO
INSERT [dbo].[PHIEUTHANHTOAN] ([MAPTT], [NGAYLAPPTT], [TONGTIEN], [MANV]) VALUES (3, CAST(N'2022-12-03T00:00:00.000' AS DateTime), 160000, 1)
GO
SET IDENTITY_INSERT [dbo].[PHIEUTHANHTOAN] OFF
GO
SET IDENTITY_INSERT [dbo].[SAN] ON 
GO
INSERT [dbo].[SAN] ([MASAN], [TENSAN], [TRANGTHAI], [MALOAISAN]) VALUES (1, N'Sân 01', N'1', 1)
GO
INSERT [dbo].[SAN] ([MASAN], [TENSAN], [TRANGTHAI], [MALOAISAN]) VALUES (2, N'Sân 02', N'1', 1)
GO
INSERT [dbo].[SAN] ([MASAN], [TENSAN], [TRANGTHAI], [MALOAISAN]) VALUES (3, N'Sân 03', N'1', 1)
GO
INSERT [dbo].[SAN] ([MASAN], [TENSAN], [TRANGTHAI], [MALOAISAN]) VALUES (4, N'Sân 04', N'1', 2)
GO
INSERT [dbo].[SAN] ([MASAN], [TENSAN], [TRANGTHAI], [MALOAISAN]) VALUES (5, N'Sân 05', N'1', 2)
GO
INSERT [dbo].[SAN] ([MASAN], [TENSAN], [TRANGTHAI], [MALOAISAN]) VALUES (6, N'Sân 06', N'1', 2)
GO
SET IDENTITY_INSERT [dbo].[SAN] OFF
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 
GO
INSERT [dbo].[TAIKHOAN] ([MATK], [TENTK], [MATKHAU], [TENHIENTHI], [VAITRO]) VALUES (1, N'binh123', N'827ccb0eea8a706c4c34a16891f84e7b', N'Lại Hợp Thanh Bình', N'Nhân viên')
GO
INSERT [dbo].[TAIKHOAN] ([MATK], [TENTK], [MATKHAU], [TENHIENTHI], [VAITRO]) VALUES (3, N'lam267', N'827ccb0eea8a706c4c34a16891f84e7b', N'Vũ Hoàng Lâm', N'Nhân viên')
GO
INSERT [dbo].[TAIKHOAN] ([MATK], [TENTK], [MATKHAU], [TENHIENTHI], [VAITRO]) VALUES (4, N'thanh225', N'01cfcd4f6b8770febfb40cb906715822', N'Thanh', N'Khách hàng')
GO
INSERT [dbo].[TAIKHOAN] ([MATK], [TENTK], [MATKHAU], [TENHIENTHI], [VAITRO]) VALUES (6, N'hoang377', N'2b24d495052a8ce66358eb576b8912c8', N'Hoàng', N'Khách hàng')
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
GO
SET IDENTITY_INSERT [dbo].[TINHTRANGSAN] ON 
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (1, 1, 1, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (2, 1, 2, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (3, 1, 3, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (4, 1, 4, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (5, 1, 5, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (6, 1, 6, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (7, 1, 7, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (8, 1, 8, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (9, 1, 9, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (10, 1, 10, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (11, 2, 1, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (12, 2, 2, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (13, 2, 3, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (14, 2, 4, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (15, 2, 5, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (16, 2, 6, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (17, 2, 7, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (18, 2, 8, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (19, 2, 9, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (20, 2, 10, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (21, 3, 1, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (22, 3, 2, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (23, 3, 3, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (24, 3, 4, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (25, 3, 5, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (26, 3, 6, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (27, 3, 7, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (28, 3, 8, 1)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (29, 3, 9, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (30, 3, 10, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (31, 4, 1, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (32, 4, 2, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (33, 4, 3, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (34, 4, 4, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (35, 4, 5, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (36, 4, 6, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (37, 4, 7, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (38, 4, 8, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (39, 4, 9, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (40, 4, 10, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (42, 5, 1, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (43, 5, 2, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (44, 5, 3, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (45, 5, 4, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (46, 5, 5, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (47, 5, 6, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (48, 5, 7, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (49, 5, 8, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (50, 5, 9, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (51, 5, 10, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (52, 6, 1, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (53, 6, 2, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (54, 6, 3, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (55, 6, 4, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (56, 6, 5, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (57, 6, 6, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (58, 6, 7, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (59, 6, 8, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (60, 6, 9, 0)
GO
INSERT [dbo].[TINHTRANGSAN] ([MATINHTRANGSAN], [MASAN], [MAKHUNGGIO], [TRANGTHAI]) VALUES (61, 6, 10, 0)
GO
SET IDENTITY_INSERT [dbo].[TINHTRANGSAN] OFF
GO
ALTER TABLE [dbo].[CHITIET_DICHVU]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_DICHVU_DICHVU] FOREIGN KEY([MADICHVU])
REFERENCES [dbo].[DICHVU] ([MADICHVU])
GO
ALTER TABLE [dbo].[CHITIET_DICHVU] CHECK CONSTRAINT [FK_CHITIET_DICHVU_DICHVU]
GO
ALTER TABLE [dbo].[CHITIET_DICHVU]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_DICHVU_PHIEUTHANHTOAN] FOREIGN KEY([MAPTT])
REFERENCES [dbo].[PHIEUTHANHTOAN] ([MAPTT])
GO
ALTER TABLE [dbo].[CHITIET_DICHVU] CHECK CONSTRAINT [FK_CHITIET_DICHVU_PHIEUTHANHTOAN]
GO
ALTER TABLE [dbo].[CHITIET_PHIEUDATSAN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_PHIEUDATSAN_DICHVU] FOREIGN KEY([MADICHVU])
REFERENCES [dbo].[DICHVU] ([MADICHVU])
GO
ALTER TABLE [dbo].[CHITIET_PHIEUDATSAN] CHECK CONSTRAINT [FK_CHITIET_PHIEUDATSAN_DICHVU]
GO
ALTER TABLE [dbo].[CHITIET_PHIEUDATSAN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_PHIEUDATSAN_GIO] FOREIGN KEY([MAKHUNGGIO])
REFERENCES [dbo].[GIO] ([MAKHUNGGIO])
GO
ALTER TABLE [dbo].[CHITIET_PHIEUDATSAN] CHECK CONSTRAINT [FK_CHITIET_PHIEUDATSAN_GIO]
GO
ALTER TABLE [dbo].[CHITIET_PHIEUDATSAN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_PHIEUDATSAN_PHIEUDATSAN] FOREIGN KEY([MAPDS])
REFERENCES [dbo].[PHIEUDATSAN] ([MAPDS])
GO
ALTER TABLE [dbo].[CHITIET_PHIEUDATSAN] CHECK CONSTRAINT [FK_CHITIET_PHIEUDATSAN_PHIEUDATSAN]
GO
ALTER TABLE [dbo].[CHITIET_PHIEUDATSAN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_PHIEUDATSAN_PHIEUTHANHTOAN] FOREIGN KEY([MAPTT])
REFERENCES [dbo].[PHIEUTHANHTOAN] ([MAPTT])
GO
ALTER TABLE [dbo].[CHITIET_PHIEUDATSAN] CHECK CONSTRAINT [FK_CHITIET_PHIEUDATSAN_PHIEUTHANHTOAN]
GO
ALTER TABLE [dbo].[CHITIET_PHIEUDATSAN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_PHIEUDATSAN_SAN] FOREIGN KEY([MASAN])
REFERENCES [dbo].[SAN] ([MASAN])
GO
ALTER TABLE [dbo].[CHITIET_PHIEUDATSAN] CHECK CONSTRAINT [FK_CHITIET_PHIEUDATSAN_SAN]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHANG_TAIKHOAN] FOREIGN KEY([MATK])
REFERENCES [dbo].[TAIKHOAN] ([MATK])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KHACHHANG_TAIKHOAN]
GO
ALTER TABLE [dbo].[PHIEUDATSAN]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDATSAN_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[PHIEUDATSAN] CHECK CONSTRAINT [FK_PHIEUDATSAN_KHACHHANG]
GO
ALTER TABLE [dbo].[PHIEUDATSAN]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDATSAN_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUDATSAN] CHECK CONSTRAINT [FK_PHIEUDATSAN_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUTHANHTOAN]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUTHANHTOAN_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUTHANHTOAN] CHECK CONSTRAINT [FK_PHIEUTHANHTOAN_NHANVIEN]
GO
ALTER TABLE [dbo].[SAN]  WITH CHECK ADD  CONSTRAINT [FK_SAN_LOAISAN] FOREIGN KEY([MALOAISAN])
REFERENCES [dbo].[LOAISAN] ([MALOAISAN])
GO
ALTER TABLE [dbo].[SAN] CHECK CONSTRAINT [FK_SAN_LOAISAN]
GO
ALTER TABLE [dbo].[TINHTRANGSAN]  WITH CHECK ADD  CONSTRAINT [FK_TINHTRANGSAN_GIO] FOREIGN KEY([MAKHUNGGIO])
REFERENCES [dbo].[GIO] ([MAKHUNGGIO])
GO
ALTER TABLE [dbo].[TINHTRANGSAN] CHECK CONSTRAINT [FK_TINHTRANGSAN_GIO]
GO
ALTER TABLE [dbo].[TINHTRANGSAN]  WITH CHECK ADD  CONSTRAINT [FK_TINHTRANGSAN_SAN] FOREIGN KEY([MASAN])
REFERENCES [dbo].[SAN] ([MASAN])
GO
ALTER TABLE [dbo].[TINHTRANGSAN] CHECK CONSTRAINT [FK_TINHTRANGSAN_SAN]
GO
USE [master]
GO
ALTER DATABASE [HETHONGBONGDA] SET  READ_WRITE 
GO
