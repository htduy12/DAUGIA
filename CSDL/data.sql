USE [DauGia]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 18/06/2017 2:34:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaNguoiDung] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[BinhLuan] [text] NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 18/06/2017 2:34:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DauGia]    Script Date: 18/06/2017 2:34:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DauGia](
	[MaNguoiDung] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[ThangCuoc] [bit] NULL,
	[KichNguoiDung] [bit] NULL,
	[NgayHienTai] [datetime] NULL,
 CONSTRAINT [PK_DauGia] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 18/06/2017 2:34:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TenNguoiDung] [nvarchar](50) NULL,
	[Email] [nchar](50) NULL,
	[MatKhau] [nchar](50) NULL,
	[TaiKhoan] [nchar](50) NULL,
	[PhanQuyen] [int] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 18/06/2017 2:34:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[HinhAnh1] [nvarchar](max) NULL,
	[HinhAnh2] [nvarchar](max) NULL,
	[HinhAnh3] [nvarchar](max) NULL,
	[Gia] [money] NULL,
	[MaTheLoai] [int] NULL,
	[MaNguoiDung] [int] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UuThich]    Script Date: 18/06/2017 2:34:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UuThich](
	[MaNguoiDung] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
 CONSTRAINT [PK_UuThich] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaTheLoai], [TenTheLoai]) VALUES (1, N'ĐiệnThoại')
INSERT [dbo].[DanhMuc] ([MaTheLoai], [TenTheLoai]) VALUES (2, N'TinTuc')
INSERT [dbo].[DanhMuc] ([MaTheLoai], [TenTheLoai]) VALUES (3, N'Quần Áo')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TaiKhoan], [PhanQuyen]) VALUES (1, N'Trinh', N'trinh@gmail.com                                   ', N'd829b843a6550a947e82f2f38ed6b7a7                  ', N'trinh                                             ', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TaiKhoan], [PhanQuyen]) VALUES (2, N'Duy', N'duy@gmail.com                                     ', N'd829b843a6550a947e82f2f38ed6b7a7                  ', N'duy                                               ', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TaiKhoan], [PhanQuyen]) VALUES (3, N'Vĩnh', N'vinh@gmail.com                                    ', N'd829b843a6550a947e82f2f38ed6b7a7                  ', N'vinh                                              ', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TaiKhoan], [PhanQuyen]) VALUES (4, N'Long', N'long@gmail.com                                    ', N'd829b843a6550a947e82f2f38ed6b7a7                  ', N'long                                              ', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TaiKhoan], [PhanQuyen]) VALUES (5, N'admin', N'admin@gmail.com                                   ', N'd829b843a6550a947e82f2f38ed6b7a7                  ', N'admin                                             ', 2)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HinhAnh1], [HinhAnh2], [HinhAnh3], [Gia], [MaTheLoai], [MaNguoiDung], [NgayBatDau], [NgayKetThuc]) VALUES (1, N'Laptop01', N'hinh1.png', NULL, NULL, 100.0000, 1, 1, CAST(0xF63B0B00 AS Date), CAST(0x163C0B00 AS Date))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HinhAnh1], [HinhAnh2], [HinhAnh3], [Gia], [MaTheLoai], [MaNguoiDung], [NgayBatDau], [NgayKetThuc]) VALUES (2, N'Laptop2', N'hinh1.png', NULL, NULL, 200.0000, 2, 2, CAST(0x163C0B00 AS Date), CAST(0x343C0B00 AS Date))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HinhAnh1], [HinhAnh2], [HinhAnh3], [Gia], [MaTheLoai], [MaNguoiDung], [NgayBatDau], [NgayKetThuc]) VALUES (3, N'Laptop', N'hinh2.png', NULL, NULL, 300.0000, 1, 3, CAST(0xEE3B0B00 AS Date), CAST(0xFB3A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_NguoiDung]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_SanPham]
GO
ALTER TABLE [dbo].[DauGia]  WITH CHECK ADD  CONSTRAINT [FK_DauGia_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[DauGia] CHECK CONSTRAINT [FK_DauGia_NguoiDung]
GO
ALTER TABLE [dbo].[DauGia]  WITH CHECK ADD  CONSTRAINT [FK_DauGia_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[DauGia] CHECK CONSTRAINT [FK_DauGia_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMuc] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[DanhMuc] ([MaTheLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DanhMuc]
GO
ALTER TABLE [dbo].[UuThich]  WITH CHECK ADD  CONSTRAINT [FK_UuThich_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[UuThich] CHECK CONSTRAINT [FK_UuThich_NguoiDung]
GO
ALTER TABLE [dbo].[UuThich]  WITH CHECK ADD  CONSTRAINT [FK_UuThich_SanPham] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[UuThich] CHECK CONSTRAINT [FK_UuThich_SanPham]
GO
