USE [master]
GO
/****** Object:  Database [sablancashop1]    Script Date: 9/24/2021 7:15:33 AM ******/
CREATE DATABASE [sablancashop]
GO
USE [sablancashop]
GO
/****** Object:  Table [dbo].[ChiTiet_DH]    Script Date: 9/24/2021 7:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_DH](
	[MaSP] [int] NOT NULL,
	[MaDH] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TongTien] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 9/24/2021 7:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDM] [int] NOT NULL,
	[TenDM] [nvarchar](100) NOT NULL,
	[MoTa] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 9/24/2021 7:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] NOT NULL,
	[MaTK] [int] NOT NULL,
	[NgayDat] [datetime] NOT NULL,
	[TinhTrangDH] [nvarchar](100) NOT NULL,
	[HinhThucTT] [nvarchar](100) NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 9/24/2021 7:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] NOT NULL,
	[MaDM] [int] NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[GiaBan] [decimal](18, 0) NOT NULL,
	[GiaGoc] [decimal](18, 0) NOT NULL,
	[MauSac] [nvarchar](20) NOT NULL,
	[ChatLieu] [nvarchar](100) NOT NULL,
	[LoaiDayDeo] [nvarchar](100) NULL,
	[KichThuoc] [nvarchar](50) NOT NULL,
	[SoNgan] [int] NOT NULL,
	[Dong] [nvarchar](50) NOT NULL,
	[MoTaSP] [ntext] NULL,
	[AnhSP] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 9/24/2021 7:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [nvarchar](11) NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](100) NULL,
	
	[MatKhau] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [MoTa]) VALUES (1, N'Túi Xách Mới Nhất', NULL)
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [MoTa]) VALUES (2, N'Túi Xách Tay', N'Túi xách tay nữ Sablanca thời trang với chất liệu cao cấp cùng mẫu mã đẹp cập nhật theo xu hướng quốc tế. Túi handbag, túi Satchel, túi Tote cỡ lớn, cỡ vừa, cỡ nhỏ phù hợp với nhiều mục đích sử dụng như đi chơi, đi làm, công sở, dự tiệc..')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [MoTa]) VALUES (3, N'Túi Đeo Chéo', N'Túi đeo chéo, túi đeo vai là phụ kiện bất cứ cô gái nào cũng nên sở hữu cho mình. Túi đeo chéo nhỏ xinh từ lâu không còn xa lạ gì với các tín đồ yêu thời trang. Nàng có thể ứng dụng nó trong rất nhiều hoàn cảnh, đi cùng rất nhiều trang phục phong cách khác nhau, khi nữ tính nếu kết hợp với váy, khi nghịch ngợm, trẻ trung nếu diện cùng cùng các loại quần short, đầm váy hay jeans rách cá tính nhé.')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [MoTa]) VALUES (4, N'Ví Cầm Tay', NULL)
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [MoTa]) VALUES (5, N'Balo', NULL)
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [MoTa]) VALUES (6, N'Ví Dự Tiệc', NULL)
GO
INSERT [dbo].[DonHang] ([MaDH], [MaTK],  [NgayDat], [TinhTrangDH], [HinhThucTT], [GhiChu]) VALUES (202109191, 20211,  CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'Đã Nhận Hàng', N'Thanh toán khi nhận hàng', N'Không')
INSERT [dbo].[DonHang] ([MaDH], [MaTK],  [NgayDat], [TinhTrangDH], [HinhThucTT], [GhiChu]) VALUES (202109211, 20212,   CAST(N'2021-09-21T00:00:00.000' AS DateTime), N'Đang Vận Chuyển', N'Thanh toán khi nhận hàng', N'Giao giờ hành chính')
INSERT [dbo].[DonHang] ([MaDH], [MaTK], [NgayDat], [TinhTrangDH], [HinhThucTT], [GhiChu]) VALUES (202109221, 20213,  CAST(N'2021-09-22T00:00:00.000' AS DateTime), N'Đang Vận Chuyển', N'Thanh toán bằng ZaloPay', N'Không')
INSERT [dbo].[DonHang] ([MaDH], [MaTK],  [NgayDat], [TinhTrangDH], [HinhThucTT], [GhiChu]) VALUES (202109222, 20215,CAST(N'2021-09-22T00:00:00.000' AS DateTime), N'Đang đóng gói', N'Ví Điện tử MOMO', N'Không')
GO
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (1,1, N'Ví dự tiệc khóa tròn trang trí CL0025', CAST(695000 AS Decimal(18, 0)), CAST(231667 AS Decimal(18, 0)), N'Đen', N'Da tổng hợp', N'Vật tư cùng loại', N'25x2x14', 2, N'đi tiệc, đi chơi', N'- Thiết kế cổ điển với điểm nhấn khóa tròn kim loại xinh xắn.
- Không gian túi 2 ngăn tiện dụng đựng vừa điện thoại.
- Gam màu hiện đại, phù hợp với nhiều trang phục.', N'cl0025_blk_1000x1000_4341273610.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (2, 1, N'Ví dự tiệc nắp gập phối belt CL0026', CAST(695000 AS Decimal(18, 0)), CAST(231667 AS Decimal(18, 0)), N'Vàng tươi', N'Da tổng hợp', N'Vật tư cùng loại', N'25x2x14', 2, N'đi tiệc, đi chơi', N'- Dáng ví nắp gập đơn giản phối belt thời trang, sang trọng.
- Không gian túi 2 ngăn tiện dụng đựng vừa điện thoại.
- Gam màu hiện đại, phù hợp với nhiều trang phục.', N'cl0026_yel_1000x1000_4719543264.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (3, 1, N'Ví dự tiệc họa tiết chần bông CL0027', CAST(625000 AS Decimal(18, 0)), CAST(208333 AS Decimal(18, 0)), N'Xanh dương', N'Da tổng hợp', N'Kim Loại', N'19,5x3,5x12', 2, N'đi tiệc, đi chơi, đi làm', N'- Thiết kế gặp đôi với 2 ngăn lớn kèm nhiều ngăn lót tiện dụng.
- Họa tiết dập chỉ với hiệu ứng chần bông sang trọng.
- Gam màu hiện đại, phù hợp với nhiều trang phục.', N'cl0027_blu_1000x1000_4938722685.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (4, 1, N'Túi xách tay nắp gập đơn giản HB0117', CAST(865000 AS Decimal(18, 0)), CAST(288333 AS Decimal(18, 0)), N'Đen', N'Da tổng hợp', N'Vật tư cùng loại', N'24x8x18,5', 1, N'đi làm, đi chơi, đi tiệc', N'- Thiết kế hình hộp đơn giản nhưng không kém phần sang trọng.
- Dáng nắp gập kết hợp khóa chắc chắn tiện dụng.
- Chất liệu da tổng hợp cao cấp mềm, bền, đẹp.
- Gam màu hiện đại, phù hợp với nhiều trang phục.', N'hb0117_blk_1000x1000_5428591433.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (5, 1, N'Túi xách tay quai cầm phối vải HB0119', CAST(845000 AS Decimal(18, 0)), CAST(281667 AS Decimal(18, 0)), N'Trắng', N'Da tổng hợp', NULL, N'21x10 x17,5', 1, N'đi tiệc, đi chơi, đi làm', N'- Quai cầm phối vải tinh tế, xinh xắn. Liệu vân da nổi bền, đẹp.
- Phom túi cỡ trung chứa đủ các vật dụng cá nhân cơ bản như điện thoại, ví tiền ngắn, mỹ phẩm cơ bản.
- Gam màu  hiện đại trẻ trung, dễ dàng kết hợp trang phục.', N'hb0119_wht_1000x1000_2116264165.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (6, 1, N'Túi xách tay thời trang phối vải HB0120', CAST(845000 AS Decimal(18, 0)), CAST(281667 AS Decimal(18, 0)), N'Đen', N'Da tổng hợp', N'Vật tư cùng loại', N'20x7x17', 1, N'đi tiệc, đi chơi, đi làm', N'- Thiết kế hình hộp đơn giản, quai cầm phối vải xinh xắn, nổi bật.
- Phom túi cỡ trung chứa đủ các vật dụng cá nhân cơ bản như điện thoại, ví tiền ngắn, mỹ phẩm cơ bản.
- Gam màu  hiện đại trẻ trung, dễ dàng kết hợp trang phục.', N'hb0120_blk_1000x1000_2942160837.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (7, 1, N'Túi xách tay cỡ trung đơn giản HB0124', CAST(745000 AS Decimal(18, 0)), CAST(248333 AS Decimal(18, 0)), N'Xanh bạc hà', N'Da tổng hợp', N'Không xác định', N'34x10x18', 1, N'đi tiệc, đi chơi, đi làm', N'- Thiết kế xếp ly mềm mại, xinh xắn.
- Phom túi cỡ trung chứa đủ các vật dụng cá nhân cơ bản như điện thoại, ví tiền ngắn, mỹ phẩm cơ bản.
- Gam màu  hiện đại trẻ trung, dễ dàng kết hợp trang phục.', N'hb0124_min_1000x1000_3203491068.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (8, 1, N'Túi xách tay phối 2 tone màu SA0044', CAST(825000 AS Decimal(18, 0)), CAST(275000 AS Decimal(18, 0)), N'Hồng', N'Da tổng hợp', NULL, N'18x6x14', 1, N'đi tiệc, đi chơi, đi làm', N'- Họa tiết Color Block kết hợp 2 gam màu nổi bật, ấn tượng.
- Thiết kế nắp gặp phối khóa gài kim loại sang trọng.
- Không gian túi nhỏ gọn chứa đủ các vật dụng cần thiết như điện thoại, son.
- Gam màu hiện đại, dễ dàng kết hợp trang phục.', N'sa0044_pik_1000x1000_5916131024.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (9, 1, N'Túi đeo chéo dáng vali SD0091', CAST(795000 AS Decimal(18, 0)), CAST(265000 AS Decimal(18, 0)), N'Đen', N'Da tổng hợp', N'Vật tư cùng loại', N'19x6x11,5', 2, N'Đi chơi, Đi tiệc', N'- Thiết kế dáng vali thời trang độc đáo, ấn tượng.
- Không gian túi 2 chứa đủ các vật dụng cá nhân cơ bản như điện thoại, ví ngắn, mỹ phẩm.
- Gam màu hiện đại trẻ trung, dễ dàng kết hợp trang phục.', N'sd0091_blk_1000x1000_1414296376.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (10, 1, N'Túi xách tay cỡ lớn đơn giản TO0052', CAST(835000 AS Decimal(18, 0)), CAST(278333 AS Decimal(18, 0)), N'Đen', N'Da tổng hợp', N'Không xác định', N'33x10x26', 1, N'đi làm, đi chơi', N'- Thiết kế hình hộp in logo thương hiệu thời trang, nổi bật.
- Phom cỡ lớn đi kèm túi nhỏ vô cùng tiện dụng.
- Gam màu hiện đại, dễ dàng kết hợp trang phục.', N'to0052_blk_1000x1000_5347444574.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (11, 4, N'Ví cầm tay khóa tròn kim loại WA0130', CAST(425000 AS Decimal(18, 0)), CAST(141667 AS Decimal(18, 0)), N'Cam', N'Da tổng hợp', N'Không xác định', N'12,3x2x10', 1, N'văn phòng, dạo phố, đi tiêc', N'Thiết kế nắp gập phối khóa tròn kim loại.
Thiết kế nhiều ngăn tiện dụng.
Có dây đeo kim loại kèm theo.
Gam màu hiện đại dễ dàng phối trang phục và phụ kiện.', N'wa0130_org_1000x1000_4745414551.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (12,4, N'Ví cầm tay họa tiết dập chỉ WA0149', CAST(525000 AS Decimal(18, 0)), CAST(175000 AS Decimal(18, 0)), N'Tím', N'Da tổng hợp', N'Không xác định', N'19x2,5x9.5', 2, N'đi tiệc, đi chơi, đi làm', N'- Thiết kế họa tiết dập chỉ tinh tế, nổi bật.
- Không gian ví 3 ngăn lớn phù hợp đựng điện thoại, name card.
- Gam màu trẻ trung, hiện đại, phù hợp với nhiều trang phục.', N'wa0149_pur_1000x1000_4358117355.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (13, 4, N'Ví cầm tay nắp gập phong thư đơn giản WA0150', CAST(525000 AS Decimal(18, 0)), CAST(175000 AS Decimal(18, 0)), N'Be', N'Da tổng hợp', N'Không xác định', N'19x2,5x9.5', 2, N'đi tiệc, đi chơi, đi làm', N'- Ví dài với thiết kế 3 ngăn đơn giản, tiện lợi.
- Chất liệu da tổng hợp cao cấp mềm, bền, đẹp.
- Gam màu hiện đại, dễ dàng kết hợp nhiều trang phục.', N'wa0150_bei_1000x1000_4409860269.jpg')
---Ma-i-----------------
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (14, 6, N'Ví cầm tay trang trí xích kim loại CL0024', CAST(695000 AS Decimal(18, 0)), CAST(231667 AS Decimal(18, 0)), N'Đen', N'Da tổng hợp', N'Vật tư cùng loại', N'25x2x14', 2, N'đi tiệc, đi chơi', N'Ví cầm tay nắp gập phối xích kim loại trang trí xinh xắn.
Ví 2 ngăn tiện dụng chứa đủ các vật dụng cá nhận như điện thoại thoại, cmnd, namecard.
Chất liệu da tổng hợp cao cấp, sang trọng.
Gam màu hiện đại, dễ dàng kết hợp nhiều trang phục.', N'cl0024_blk_1000x1000_3204549393.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (15, 6, N'Ví cầm tay họa tiết dập chỉ CL0022', CAST(695000 AS Decimal(18, 0)), CAST(231667 AS Decimal(18, 0)), N'Trắng', N'Da tổng hợp', N'Vật tư cùng loại', N'20x4x11', 3, N'đi tiệc, đi chơi', N'- Thiết kế cổ điển với điểm nhấn khóa tròn kim loại xinh xắn.
- Không gian túi 3 ngăn tiện dụng đựng vừa điện thoại.
- Gam màu hiện đại, phù hợp với nhiều trang phục.

', N'cl0022_wht_1000x1000_0528860603.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (16, 6, N'Ví dự tiệc thêu hoa trang trí CL0023', CAST(885000 AS Decimal(18, 0)), CAST(295000 AS Decimal(18, 0)), N'Be', N'Da tổng hợp', N'Vật tư cùng loại', N'24x4x15', 2, N'đi tiệc, đi chơi', N'- Kiểu dáng nắp gập kèm khóa bản to trẻ trung năng động
- Họa tiết thuê hoa tinh tế, đẹp mắt
- Chất liệu da tổng hợp cao cấp mềm, bền.

', N'cl0023_bei_1000x1000_3245093867.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (17, 6, N'Ví cầm tay khóa xoay kim loại CL0020', CAST(516000 AS Decimal(18, 0)), CAST(208333 AS Decimal(18, 0)), N'Be', N'Da tổng hợp', N'Vật tư cùng loại', N'23x2x13', 2, N'Office, dạo phố, party', N'- Ví dài cầm tay có nắp gâp kèm khóa tròn xoay chắc chắn
- Không gian 2 ngăn lớn cùng nhiều ngăn lót tiện dụng.
- Chất liệu da tổng hợp cao cấp, mềm, bền, đẹp.

', N'cl0020_bei_1000x1000_5905317348.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (18, 3, N'Túi đeo chéo phối Belt trang trí SD0084', CAST(725000 AS Decimal(18, 0)), CAST(241667 AS Decimal(18, 0)), N'Trắng', N'Da tổng hợp', N'Vật tư cùng loại', N'18x7.5x11.7', 1, N'Office, Dạo Phố , Party', N'- Túi đeo chéo cỡ nhỏ phối betl trang trí trẻ trung, năng động.
- Chất liệu da tổng hợp cap cấp, mềm, bền, đẹp.
- Túi 1 ngăn chứa vật dụng cá nhân cơ  bản.

', N'sd0084_wht_1000x1000_2931672244.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (19, 3, N'Túi đeo chéo họa tiết Color block SD0087', CAST(695000 AS Decimal(18, 0)), CAST(231667 AS Decimal(18, 0)), N'Hồng', N'Da tổng hợp', N'Vật tư cùng loại', N'22x8.5x14.5', 1, N'văn phòng, dạo phố', N'- Túi đeo chéo họa tiết Color block đẹp mắt, nổi bật.
- Chất liệu da tổng hợp cao cấp, mềm, bền đẹp.
- Túi 1 ngăn chứa vật dụng cá nhân cơ  bản.', N'sd0087_pik_1000x1000_1708961771.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (20, 3, N'Túi đeo chéo SD0089', CAST(845000 AS Decimal(18, 0)), CAST(281667 AS Decimal(18, 0)), N'Xanh bạc hà', N' Da tổng hợp', NULL, N'19.5x8x14', 2, N'Đi chơi, Đi tiệc', N'Nâng cấp bộ sưu tập túi của bạn bằng Túi đeo chéo SD0089 thời thượng được thiết kế hoàn hảo và lôi cuốn với quai cầm và miệng túi cách điệu.
Quai cầm dạng xích cỡ lớn tạo cảm giác cầm nắm tốt và thoải mái khi mang.', N'sd0089_min_1000x1000_5857261360.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (21, 3, N'Túi đeo chéo vân cá sấu SD0090', CAST(845000 AS Decimal(18, 0)), CAST(281667 AS Decimal(18, 0)), N'Hồng', N'Da tổng hợp', NULL, N'20.5x6x13', 3, N'Đi chơi, Đi tiệc', N'- Túi đeo chéo vân cá sấu thời thượng.
- Thiết kế nắp gập kết hợp khóa chắc chắn.
- Chất liệu da tổng hợp cao cấp mềm, đẹp.
- Không gian túi nhỏ chứa đủ các vật dụng cá nhân cơ bản.
- Gam màu hiện đại dễ dàng kết hợp nhiều trang phục.

', N'sd0090_pik_1000x1000_4029677451.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (22, 3, N'Túi đeo chéo họa tiết dập chỉ SD0092', CAST(785000 AS Decimal(18, 0)), CAST(261667 AS Decimal(18, 0)), N'Be', N'Da tổng hợp', N'Kim Loại', N'23x8x13', 1, N'đi làm, đi chơi, đi tiệc', N'- Thiết kế dập chỉ nổi tinh tế.
- Dáng nắp gập phối khóa xoay kim loại chắc chắn.
- Không gian túi 1 lớn chứa đủ các vật dụng cơ bản.
- Gam màu hiện đại, phù hợp với nhiều trang phục.

', N'sd0092_bei_1000x1000_5920387307.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (23, 3, N'Túi đeo chéo nắp gập đa năng SD0093', CAST(825000 AS Decimal(18, 0)), CAST(275000 AS Decimal(18, 0)), N'Xanh bạc hà', N'Da tổng hợp', N'Vật tư cùng loại', N'21x7x15', 2, N'đi tiệc, đi chơi, đi làm', NULL, N'sd0093_min_1000x1000_5157518953.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (24, 3, N'Túi đeo chéo dáng thuyền SD0101', CAST(695000 AS Decimal(18, 0)), CAST(231667 AS Decimal(18, 0)), N'Xanh dương', N'Da tổng hợp', N'Vật tư cùng loại', N'21x3x12', 1, N'đi tiệc, đi làm, đi chơi', N'Với kiểu dáng "Bao tử" trẻ trung năng động.
Chất liệu da tổng hợp cao cấp, mềm.
Không gian túi 1 ngăn nhỏ chứa đủ các vật dụng cá nhân cơ bản.
Gam màu hiện đại dễ dàng kết hợp nhiều trang phục. ', N'sd0101_blu_1000x1000_4238961538.jpg')

-----Trang------------------
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (25,2, N'Túi xách tay phối 2 màu HB0113', CAST(785000 AS Decimal(18, 0)), CAST(261667 AS Decimal(18, 0)), N'Vàng tươi', N'Da tổng hợp',  N'Không xác định', N'29x11x21', 3, N'văn phòng, dạo phố', N'- Sự kết hợp hài hòa giữa 2 gam màu tương phản đẹp mắt.
- Chất liệu da tổng hợp cao cấp mềm, bền , đẹp.
- Không gian túi 3 ngăn vô cùng tiện lợi chứa đủ các vật dụng cá nhân cơ bản.', N'hb0113_yel_1000x1000_2625178915.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (26, 2, N'Túi xách tay nơ vải trang trí HB0116', CAST(825000 AS Decimal(18, 0)), CAST(275000 AS Decimal(18, 0)), N'Đỏ', N'Da tổng hợp', N'Vật tư cùng loại', N'23x11x20', 1, N'Đi chơi, Đi tiệc', N'- Túi xách tay phối nơ vải trang trí vô cùng xin xắn.
- Quai cầm đang chéo đẹp mắt.
- Chất liệu da tổng hợp cao cấp mềm, bền.
- Không gian túi 1 ngăn chứa đủ các vật dụng cá nhận cơ bản.', N'hb0116_red_1000x1000_5742928996.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (27, 2, N'Túi xách tay đa năng HB0105', CAST(605500 AS Decimal(18, 0)), CAST(201833 AS Decimal(18, 0)), N'Đen', N'Da tổng hợp', N'Vật tư cùng loại', N'21x11x15', 3, N'Dạo phố, Office', N'- Với thiết kế hình hộp tinh giản nhưng không kém phần sang trọng, liệu da tổng hợp cao cấp mềm, bền, đẹp.
- Không gian 3 ngăn riêng biệt chứa đủ các vật dụng cá nhân cần thiết. (có dây đeo kèm theo)
- Gam màu hiện đại, phù hợp với nhiều trang phục.', N'hb0105_blk_1000x1000_5507048514.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (28, 2, N'Túi xách tay hình hộp đơn giản HB0118', CAST(875000 AS Decimal(18, 0)), CAST(291667 AS Decimal(18, 0)), N'Vàng tươi', N'Da tổng hợp', N'Vật tư cùng loại', N'25x11x24', 2, N'đi làm, đi chơi', N'- Thiết kế hình hộp đơn giản nhưng không kém phần sang trọng.
- Không gian túi 2 ngăn riêng biệt chứa đủ các vật dụng cá nhân như ví tiền, điện thoại.
- Gam màu hiện đại, phù hợp với nhiều trang phục.', N'hb0118_yel_1000x1000_2954972597.jpg')

INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (29, 2, N'Túi xách tay thời trang phối vải HB0109', CAST(660000 AS Decimal(18, 0)), CAST(220000 AS Decimal(18, 0)), N'Be', N'Da tổng hợp', N'Vật tư cùng loại', N'19x8x16', 2, N'Đi làm, Dạo Phố, Đi tiệc', N'- Túi xách tay dáng hình hộp phối quai cầm vân nổi ấn tượng, xinh xắn.
- Chất liệu da tổng hợp cao cấp, mềm, bền, đẹp.
- Không gian túi có 2 ngăn nhỏ gọn chứa đủ các vật dụng cá nhân cơ bản.', N'hb0109_bei_1000x1000_4435109072.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (30,2, N'Túi xách tay dập vân cá sấu HB0121', CAST(745000 AS Decimal(18, 0)), CAST(248333 AS Decimal(18, 0)), N'Be', N'Da tổng hợp', N'Vật tư cùng loại', N'26x6x12', 1, N'đi tiệc, đi chơi, đi làm', N'- Túi dáng chữ nhật với thiết kế Cut-out tinh tế, đẹp mắt.
- Họa tiết vân cá sấu sang trọng, thời thượng.
- Không gian túi 1 ngăn kéo lớn kèm ngăn nhỏ vô cùng chứa đủ các vật dụng cá nhân như ví tiền, điện thoại, mỹ phẩm.
- Màu sắc hiện đại dễ dàng kết hợp nhiều trang phục.', N'hb0121_bei_1000x1000_0035782904.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (31, 2, N'Túi xách tay xếp ly cổ điển HB0122', CAST(745000 AS Decimal(18, 0)), CAST(248333 AS Decimal(18, 0)), N'Tím', N'Da tổng hợp', N'Vật tư cùng loại', N'25x10x16', 1, N'đi tiệc, đi chơi, đi làm', N'- Túi xách tay hình học với thiết kế xếp ly cổ điện đẹp mắt.
- Không túi 1 ngăn chứa đủ các vật dụng cá nhân cơ bản như ví tiền, điện thoại.
- Màu sắc hiện đại dễ dàng kết hợp  nhiều trang phục.', N'hb0122_pur_1000x1000_1141506178.jpg')

INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (32, 2, N'Túi xách tay họa tiết Color block SA0041', CAST(865000 AS Decimal(18, 0)), CAST(288333 AS Decimal(18, 0)), N'Tất cả hoa văn', N'Da tổng hợp', N'Vật tư cùng loại', N'21x6x18', 1, N'Đi chơi, Đi tiệc', N'- Túi xách tay họa tiết Color block hiện đại, sang trọng.
- Chất liệu da tổng hợp cao cấp mềm, bên.
- Không gian túi 1 ngăn chứa đủ các vật dụng cơ bản.
- Gam màu hiện đại dễ dàng kết hợp nhiều trang phục.', N'sa0041_mul_1000x1000_3618723288.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (33,2, N'Túi xách tay họa tiết hoa SA0043', CAST(612500 AS Decimal(18, 0)), CAST(204167 AS Decimal(18, 0)), N'Tất cả hoa văn', N'Da tổng hợp', NULL, N'18x8x15,5', 1, N'Đi chơi, Đi tiệc', N'- Túi xách tay cỡ nhỏ họa tiết hoa văn xinh xắn.
- Chất liệu da tổng hợp cao cấp, mềm.
- Không gian túi 1 ngăn nhỏ chứa đủ các vật dụng cơ bản.
- Gam màu hiện đại dễ dàng kết hợp nhiều trang phục.

', N'sa0043_mul_1000x1000_5220397338.jpg')


INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (34, 2, N'Túi xách tay cỡ nhỏ quai cầm phối vải TO0051', CAST(825000 AS Decimal(18, 0)), CAST(275000 AS Decimal(18, 0)), N'Cam', N'Da tổng hợp', N'Kim Loại', N'23,5x10x16', 3, N'văn phòng, dạo phố, đi tiêc', N'- Túi xách tay cỡ nhỏ quai cầm phối vải xinh xắn.
- Thiết kế nhiều ngăn tiện dụng.
- Gam màu hiện đại dễ dàng phối trang phục và phụ kiện.', N'to0051_org_1000x1000_1201498502.jpg')

INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (35, 2, N'Túi xách tay cỡ trung đơn giản TO0047', CAST(628000 AS Decimal(18, 0)), CAST(209333 AS Decimal(18, 0)), N'Vàng tươi', N'Da tổng hợp',  N'Vật tư cùng loại', N'26x11x19', 2, N'Đi làm, Dạo Phố, Đi tiệc', N'- Túi xách tay cỡ trung với thiết kế hình học đơn giản, đi kèm là túi đựng mini vô cùng tiện dụng.
- Chất liệu da tổng hợp cao cấp mềm, bền , đẹp.
- Không gian túi chứa đủ các vật dụng cá nhận cần thiết.', N'to0047_yel_1000x1000_5444386917.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (36, 2, N'Túi xách tay cỡ trung viền nổi TO0044', CAST(676000 AS Decimal(18, 0)), CAST(225333 AS Decimal(18, 0)), N'Be', N'Da tổng hợp', NULL, N'22,5x8,5x20,5', 1, N'Đi làm, Dạo Phố', N'- Kiểu dáng hình hộp đơn giản, với điểm nhấn quai cầm cách điệu vô cùng xinh xắn.
- Không gian túi 1 ngăn kéo lớn chứa đủ các vật dụng cá nhân cần thiết.
- Chất liệu da tổng hợp cao cấp, mềm, bền, đẹp', N'to0044_bei_1000x1000_0354853703.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (37, 2, N'Túi xách tay cỡ lớn TO0046', CAST(692000 AS Decimal(18, 0)), CAST(230667 AS Decimal(18, 0)), N'Cam', N'Da tổng hợp', N'Vật tư cùng loại', N'33x11x23', 2, N'đi làm, đi dạo phố', N'- Túi xách tay cỡ lớn quai cầm phối vải cách điệu xinh xắn, nổi bật.
- Không gian túi lớn chứa đủ các vật dụng cá nhận cần thiết.
- Chất liệu da tổng hợp cao cấp, mềm, bền, đẹp.', N'to0046_org_1000x1000_3646727109.jpg')

INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (38, 2, N'Túi tote cỡ lớn họa tiết cắt laser TO0035', CAST(577500 AS Decimal(18, 0)), CAST(192500 AS Decimal(18, 0)), N'Xám tông ấm', N'Da tổng hợp', NULL , N'34x14x26', 1, N'Dạo phố, Office', N'- Với thiết kế họa tiết cắt laser chữ X tinh tế, nổi bật.
- Không gian túi lớn chứa đủ các vật dụng cá nhân cần thiết như ví nhỏ, điện thoại, giấy A4.
- Chất liệu da tổng hợp cao cấp mềm, bền, đẹp.', N'to0035_gry_1000x1000_4948353963.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [GiaGoc], [MauSac], [ChatLieu], [LoaiDayDeo], [KichThuoc], [SoNgan], [Dong], [MoTaSP], [AnhSP]) VALUES (39, 2, N'Túi tote cỡ vừa dây đeo kim loại TO0037', CAST(417000 AS Decimal(18, 0)), CAST(139000 AS Decimal(18, 0)), N'Xám tông ấm', N'Da tổng hợp',N'Vật tư cùng loại', N'26x10x30', 2, N'Dạo phố, Office', N'- Họa tiết răng cưa trang trí nổi bật, dây đeo kim loại kèm dây da đa năng ấn tượng.
- Không gian túi lớn chưa đủ các vật dụng cá nhận cần thiết.
- Chất liệu da tổng hợp cao cấp mềm, bền, đẹp.', N'to0037_gry_1000x1000_2816796627.jpg')



GO

INSERT [dbo].[TaiKhoan] ([MaTK], [HoTen], [SDT], [DiaChi], [Email],  [MatKhau]) VALUES (20211, N'Bùi Ngọc Mai', N'0961564619',N'Phường Tân Dân Thành Phố Việt Trì Tỉnh Phú Thọ', N'Buingocmai@gmail.com', N'ABC123')
INSERT [dbo].[TaiKhoan] ([MaTK], [HoTen], [SDT], [DiaChi], [Email],[MatKhau]) VALUES (20212, N'Đỗ Thị Quyên', N'0362840875',N'Xã Minh Trí Huyện Sóc Sơn TP Hà Nội', N'Dothiquyen@gmail.com', N'Quyen2000')
INSERT [dbo].[TaiKhoan] ([MaTK], [HoTen], [SDT], [DiaChi], [Email], [MatKhau]) VALUES (20213, N'Hoàng Thị Trang', N'0397346019',N'Xã Hải Vân Huyện Như Thanh Tỉnh Thanh Hóa', N'Hoangthitrang@gmail.com',  N'TrangXinh')
INSERT [dbo].[TaiKhoan] ([MaTK], [HoTen], [SDT], [DiaChi], [Email],  [MatKhau]) VALUES (20214, N'Nguyễn Văn Thìn', N'0971443843',N'Xã Bắc Hồng Huyện Đông Anh TP Hà Nội', N'Ngvanthin@gmail.com',  N'Thin19')
INSERT [dbo].[TaiKhoan] ([MaTK], [HoTen], [SDT], [DiaChi], [Email],  [MatKhau]) VALUES (20215, N'Đỗ Thanh Thịnh', N'0866256826',N'Xã Hải Vân Huyện Như Thanh Tỉnh Thanh Hóa', N'Thinhdo@gmail.com',  N'ThinhThanh')
GO
INSERT [dbo].[ChiTiet_DH] ([MaSP], [MaDH], [SoLuong], [TongTien]) VALUES (10, 202109191, 1, N'835000')
INSERT [dbo].[ChiTiet_DH] ([MaSP], [MaDH], [SoLuong], [TongTien]) VALUES (22, 202109211, 3, N'2355000')
INSERT [dbo].[ChiTiet_DH] ([MaSP], [MaDH], [SoLuong], [TongTien]) VALUES (13, 202109221, 2, N'1050000')
INSERT [dbo].[ChiTiet_DH] ([MaSP], [MaDH], [SoLuong], [TongTien]) VALUES (6, 202109222, 1, N'845000')
GO


ALTER TABLE [dbo].[ChiTiet_DH]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTiet_DH]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMuc] ([MaDM])
GO
USE [master]
GO
ALTER DATABASE [sablancashop] SET  READ_WRITE 
GO
