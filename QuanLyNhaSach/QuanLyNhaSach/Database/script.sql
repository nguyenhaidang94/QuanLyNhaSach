GO
CREATE PROCEDURE [dbo].[BangChamCong_Delete]
    @MaBCC [varchar](20)
AS
BEGIN
    DELETE [dbo].[BANGCHAMCONG]
    WHERE ([MaBCC] = @MaBCC)
END
GO
/****** Object:  StoredProcedure [dbo].[BangChamCong_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BangChamCong_Insert]
    @MaBCC [varchar](20),
    @MaCaLamViec [varchar](20),
    @NgayChamCong [date],
    @NguoiChamCong [varchar](20)
AS
BEGIN
    INSERT [dbo].[BANGCHAMCONG]([MaBCC], [MaCaLamViec], [NgayChamCong], [NguoiChamCong])
    VALUES (@MaBCC, @MaCaLamViec, @NgayChamCong, @NguoiChamCong)
END
GO
/****** Object:  StoredProcedure [dbo].[BangChamCong_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BangChamCong_Update]
    @MaBCC [varchar](20),
    @MaCaLamViec [varchar](20),
    @NgayChamCong [date],
    @NguoiChamCong [varchar](20)
AS
BEGIN
    UPDATE [dbo].[BANGCHAMCONG]
    SET [MaCaLamViec] = @MaCaLamViec, [NgayChamCong] = @NgayChamCong, [NguoiChamCong] = @NguoiChamCong
    WHERE ([MaBCC] = @MaBCC)
END
GO
/****** Object:  StoredProcedure [dbo].[BoDem_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BoDem_Delete]
    @BangChamCong [int],
    @CaLamViec [int],
    @ChucVu [int],
    @DauSach [int],
    @DonViTinh [int],
    @HoaDonBanHang [int],
    @LoaiDDHT [int],
    @LoaiSanPham [int],
    @NhaCungCap [int],
    @NhanVien [int],
    @NhaSanXuat [int],
    @NhaXuatBan [int],
    @PhieuChi [int],
    @PhieuDatMua [int],
    @PhieuNhapKho [int],
    @PhieuThu [int],
    @PhieuXuatKho [int],
    @QuayHang [int],
    @SanPham [int],
    @TacGia [int],
    @TheLoaiSach [int]
AS
BEGIN
    DELETE [dbo].[BODEM]
    WHERE ((((((((((((((((((((([BangChamCong] = @BangChamCong) AND ([CaLamViec] = @CaLamViec)) AND ([ChucVu] = @ChucVu)) AND ([DauSach] = @DauSach)) AND ([DonViTinh] = @DonViTinh)) AND ([HoaDonBanHang] = @HoaDonBanHang)) AND ([LoaiDDHT] = @LoaiDDHT)) AND ([LoaiSanPham] = @LoaiSanPham)) AND ([NhaCungCap] = @NhaCungCap)) AND ([NhanVien] = @NhanVien)) AND ([NhaSanXuat] = @NhaSanXuat)) AND ([NhaXuatBan] = @NhaXuatBan)) AND ([PhieuChi] = @PhieuChi)) AND ([PhieuDatMua] = @PhieuDatMua)) AND ([PhieuNhapKho] = @PhieuNhapKho)) AND ([PhieuThu] = @PhieuThu)) AND ([PhieuXuatKho] = @PhieuXuatKho)) AND ([QuayHang] = @QuayHang)) AND ([SanPham] = @SanPham)) AND ([TacGia] = @TacGia)) AND ([TheLoaiSach] = @TheLoaiSach))
END
GO
/****** Object:  StoredProcedure [dbo].[BoDem_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BoDem_Insert]
    @BangChamCong [int],
    @CaLamViec [int],
    @ChucVu [int],
    @DauSach [int],
    @DonViTinh [int],
    @HoaDonBanHang [int],
    @LoaiDDHT [int],
    @LoaiSanPham [int],
    @NhaCungCap [int],
    @NhanVien [int],
    @NhaSanXuat [int],
    @NhaXuatBan [int],
    @PhieuChi [int],
    @PhieuDatMua [int],
    @PhieuNhapKho [int],
    @PhieuThu [int],
    @PhieuXuatKho [int],
    @QuayHang [int],
    @SanPham [int],
    @TacGia [int],
    @TheLoaiSach [int],
    @CT_SanPham [int]
AS
BEGIN
    INSERT [dbo].[BODEM]([BangChamCong], [CaLamViec], [ChucVu], [DauSach], [DonViTinh], [HoaDonBanHang], [LoaiDDHT], [LoaiSanPham], [NhaCungCap], [NhanVien], [NhaSanXuat], [NhaXuatBan], [PhieuChi], [PhieuDatMua], [PhieuNhapKho], [PhieuThu], [PhieuXuatKho], [QuayHang], [SanPham], [TacGia], [TheLoaiSach], [CT_SanPham])
    VALUES (@BangChamCong, @CaLamViec, @ChucVu, @DauSach, @DonViTinh, @HoaDonBanHang, @LoaiDDHT, @LoaiSanPham, @NhaCungCap, @NhanVien, @NhaSanXuat, @NhaXuatBan, @PhieuChi, @PhieuDatMua, @PhieuNhapKho, @PhieuThu, @PhieuXuatKho, @QuayHang, @SanPham, @TacGia, @TheLoaiSach, @CT_SanPham)
END
GO
/****** Object:  StoredProcedure [dbo].[BoDem_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BoDem_Update]
    @BangChamCong [int],
    @CaLamViec [int],
    @ChucVu [int],
    @DauSach [int],
    @DonViTinh [int],
    @HoaDonBanHang [int],
    @LoaiDDHT [int],
    @LoaiSanPham [int],
    @NhaCungCap [int],
    @NhanVien [int],
    @NhaSanXuat [int],
    @NhaXuatBan [int],
    @PhieuChi [int],
    @PhieuDatMua [int],
    @PhieuNhapKho [int],
    @PhieuThu [int],
    @PhieuXuatKho [int],
    @QuayHang [int],
    @SanPham [int],
    @TacGia [int],
    @TheLoaiSach [int],
    @CT_SanPham [int]
AS
BEGIN
    UPDATE [dbo].[BODEM]
    SET [CT_SanPham] = @CT_SanPham
    WHERE ((((((((((((((((((((([BangChamCong] = @BangChamCong) AND ([CaLamViec] = @CaLamViec)) AND ([ChucVu] = @ChucVu)) AND ([DauSach] = @DauSach)) AND ([DonViTinh] = @DonViTinh)) AND ([HoaDonBanHang] = @HoaDonBanHang)) AND ([LoaiDDHT] = @LoaiDDHT)) AND ([LoaiSanPham] = @LoaiSanPham)) AND ([NhaCungCap] = @NhaCungCap)) AND ([NhanVien] = @NhanVien)) AND ([NhaSanXuat] = @NhaSanXuat)) AND ([NhaXuatBan] = @NhaXuatBan)) AND ([PhieuChi] = @PhieuChi)) AND ([PhieuDatMua] = @PhieuDatMua)) AND ([PhieuNhapKho] = @PhieuNhapKho)) AND ([PhieuThu] = @PhieuThu)) AND ([PhieuXuatKho] = @PhieuXuatKho)) AND ([QuayHang] = @QuayHang)) AND ([SanPham] = @SanPham)) AND ([TacGia] = @TacGia)) AND ([TheLoaiSach] = @TheLoaiSach))
END
GO
/****** Object:  StoredProcedure [dbo].[CaLamViec_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CaLamViec_Delete]
    @MaCaLamViec [varchar](20)
AS
BEGIN
    DELETE [dbo].[CALAMVIEC]
    WHERE ([MaCaLamViec] = @MaCaLamViec)
END
GO
/****** Object:  StoredProcedure [dbo].[CaLamViec_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CaLamViec_Insert]
    @MaCaLamViec [varchar](20),
    @ThoiGianBD [time](7),
    @ThoiGianKT [time](7),
    @LuongCLV [decimal](19, 4)
AS
BEGIN
    INSERT [dbo].[CALAMVIEC]([MaCaLamViec], [ThoiGianBD], [ThoiGianKT], [LuongCLV])
    VALUES (@MaCaLamViec, @ThoiGianBD, @ThoiGianKT, @LuongCLV)
END
GO
/****** Object:  StoredProcedure [dbo].[CaLamViec_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CaLamViec_Update]
    @MaCaLamViec [varchar](20),
    @ThoiGianBD [time](7),
    @ThoiGianKT [time](7),
    @LuongCLV [decimal](19, 4)
AS
BEGIN
    UPDATE [dbo].[CALAMVIEC]
    SET [ThoiGianBD] = @ThoiGianBD, [ThoiGianKT] = @ThoiGianKT, [LuongCLV] = @LuongCLV
    WHERE ([MaCaLamViec] = @MaCaLamViec)
END
GO
/****** Object:  StoredProcedure [dbo].[ChucVu_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChucVu_Delete]
    @MaChucVu [varchar](20)
AS
BEGIN
    DELETE [dbo].[CHUCVU]
    WHERE ([MaChucVu] = @MaChucVu)
END
GO
/****** Object:  StoredProcedure [dbo].[ChucVu_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChucVu_Insert]
    @MaChucVu [varchar](20),
    @TenChucVu [nvarchar](50),
    @TrachNhiem [nvarchar](50)
AS
BEGIN
    INSERT [dbo].[CHUCVU]([MaChucVu], [TenChucVu], [TrachNhiem])
    VALUES (@MaChucVu, @TenChucVu, @TrachNhiem)
END
GO
/****** Object:  StoredProcedure [dbo].[ChucVu_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChucVu_Update]
    @MaChucVu [varchar](20),
    @TenChucVu [nvarchar](50),
    @TrachNhiem [nvarchar](50)
AS
BEGIN
    UPDATE [dbo].[CHUCVU]
    SET [TenChucVu] = @TenChucVu, [TrachNhiem] = @TrachNhiem
    WHERE ([MaChucVu] = @MaChucVu)
END
GO
/****** Object:  StoredProcedure [dbo].[CT_HDBanHang_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_HDBanHang_Delete]
    @MaHoaDon [varchar](20),
    @MaCTSanPham [nvarchar](20)
AS
BEGIN
    DELETE [dbo].[CT_HDBanHang]
    WHERE (([MaHoaDon] = @MaHoaDon) AND ([MaCTSanPham] = @MaCTSanPham))
END
GO
/****** Object:  StoredProcedure [dbo].[CT_HDBanHang_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_HDBanHang_Insert]
    @MaHoaDon [varchar](20),
    @MaCTSanPham [nvarchar](20)
AS
BEGIN TRANSACTION
    INSERT [dbo].[CT_HDBanHang]([MaHoaDon], [MaCTSanPham])
    VALUES (@MaHoaDon, @MaCTSanPham)
	UPDATE [dbo].CT_SANPHAM
	SET [TinhTrang] = 0
	WHERE [MaCTSanPham] = @MaCTSanPham
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[CT_HDBanHang_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_HDBanHang_Update]
    @MaHoaDon [varchar](20),
    @MaCTSanPham [nvarchar](20)
AS
BEGIN
    RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[CT_PhieuDatMua_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PhieuDatMua_Delete]
    @MaPhieuDatMua [varchar](20),
    @MaSanPham [varchar](20)
AS
BEGIN
    DELETE [dbo].[CT_PhieuDatMua]
    WHERE (([MaPhieuDatMua] = @MaPhieuDatMua) AND ([MaSanPham] = @MaSanPham))
END
GO
/****** Object:  StoredProcedure [dbo].[CT_PhieuDatMua_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PhieuDatMua_Insert]
    @MaPhieuDatMua [varchar](20),
    @MaSanPham [varchar](20),
    @DonGia [float],
    @SoLuong [float],
    @TinhTrang [bit]
AS
BEGIN
    INSERT [dbo].[CT_PhieuDatMua]([MaPhieuDatMua], [MaSanPham], [DonGia], [SoLuong], [TinhTrang])
    VALUES (@MaPhieuDatMua, @MaSanPham, @DonGia, @SoLuong, @TinhTrang)
END
GO
/****** Object:  StoredProcedure [dbo].[CT_PhieuDatMua_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PhieuDatMua_Update]
    @MaPhieuDatMua [varchar](20),
    @MaSanPham [varchar](20),
    @DonGia [float],
    @SoLuong [float],
    @TinhTrang [bit]
AS
BEGIN
    UPDATE [dbo].[CT_PhieuDatMua]
    SET [DonGia] = @DonGia, [SoLuong] = @SoLuong, [TinhTrang] = @TinhTrang
    WHERE (([MaPhieuDatMua] = @MaPhieuDatMua) AND ([MaSanPham] = @MaSanPham))
END
GO
/****** Object:  StoredProcedure [dbo].[CT_PhieuNhapKho_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PhieuNhapKho_Delete]
    @MaPhieuNhap [varchar](20),
    @MaSanPham [varchar](20)
AS
BEGIN
    DELETE [dbo].[CT_PhieuNhapKho]
    WHERE (([MaPhieuNhap] = @MaPhieuNhap) AND ([MaSanPham] = @MaSanPham))
END
GO
/****** Object:  StoredProcedure [dbo].[CT_PhieuNhapKho_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PhieuNhapKho_Insert]
    @MaPhieuNhap [varchar](20),
    @MaSanPham [varchar](20),
    @DonGia [money],
    @SoLuong [int]
AS
BEGIN
    INSERT [dbo].[CT_PhieuNhapKho]([MaPhieuNhap], [MaSanPham], [DonGia], [SoLuong])
    VALUES (@MaPhieuNhap, @MaSanPham, @DonGia, @SoLuong)
END
GO
/****** Object:  StoredProcedure [dbo].[CT_PhieuNhapKho_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PhieuNhapKho_Update]
    @MaPhieuNhap [varchar](20),
    @MaSanPham [varchar](20),
    @DonGia [money],
    @SoLuong [int]
AS
BEGIN
    UPDATE [dbo].[CT_PhieuNhapKho]
    SET [DonGia] = @DonGia, [SoLuong] = @SoLuong
    WHERE (([MaPhieuNhap] = @MaPhieuNhap) AND ([MaSanPham] = @MaSanPham))
END
GO
/****** Object:  StoredProcedure [dbo].[CT_PhieuXuatKho_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PhieuXuatKho_Delete]
    @MaPhieuXuat [varchar](20),
    @MaSanPham [varchar](20)
AS
BEGIN
    DELETE [dbo].[CT_PhieuXuatKho]
    WHERE (([MaPhieuXuat] = @MaPhieuXuat) AND ([MaSanPham] = @MaSanPham))
END
GO
/****** Object:  StoredProcedure [dbo].[CT_PhieuXuatKho_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PhieuXuatKho_Insert]
    @MaPhieuXuat [varchar](20),
    @MaSanPham [varchar](20),
    @SoLuong [int]
AS
BEGIN TRANSACTION
    INSERT [dbo].[CT_PhieuXuatKho]([MaPhieuXuat], [MaSanPham], [SoLuong])
    VALUES (@MaPhieuXuat, @MaSanPham, @SoLuong)
	update SANPHAM 
	set SoLuong = SoLuong - @SoLuong
	where MaSanPham = @MaSanPham
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[CT_PhieuXuatKho_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PhieuXuatKho_Update]
    @MaPhieuXuat [varchar](20),
    @MaSanPham [varchar](20),
    @SoLuong [int]
AS
BEGIN
    UPDATE [dbo].[CT_PhieuXuatKho]
    SET [SoLuong] = @SoLuong
    WHERE (([MaPhieuXuat] = @MaPhieuXuat) AND ([MaSanPham] = @MaSanPham))
END
GO
/****** Object:  StoredProcedure [dbo].[CT_SanPham_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_SanPham_Delete]
    @MaCTSanPham [nvarchar](20)
AS
BEGIN
    DELETE [dbo].[CT_SANPHAM]
    WHERE ([MaCTSanPham] = @MaCTSanPham)
END
GO
/****** Object:  StoredProcedure [dbo].[CT_SanPham_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_SanPham_Insert]
    @MaCTSanPham [nvarchar](20),
    @MaSanPham [varchar](20),
    @TinhTrang [bit]
AS
BEGIN TRANSACTION
    INSERT [dbo].[CT_SANPHAM]([MaCTSanPham], [MaSanPham], [TinhTrang])
    VALUES (@MaCTSanPham, @MaSanPham, @TinhTrang)
	update BODEM set CT_SanPham = CT_SanPham + 1
COMMIT TRANSACTION

GO
/****** Object:  StoredProcedure [dbo].[CT_SanPham_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_SanPham_Update]
    @MaCTSanPham [nvarchar](20),
    @MaSanPham [varchar](20),
    @TinhTrang [bit]
AS
BEGIN
    UPDATE [dbo].[CT_SANPHAM]
    SET [MaSanPham] = @MaSanPham, [TinhTrang] = @TinhTrang
    WHERE ([MaCTSanPham] = @MaCTSanPham)
END
GO
/****** Object:  StoredProcedure [dbo].[CT_TKBanHang_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_TKBanHang_Delete]
    @Thang [int],
    @Nam [int],
    @MaSanPham [varchar](20)
AS
BEGIN
    DELETE [dbo].[CT_TKBanHang]
    WHERE ((([Thang] = @Thang) AND ([Nam] = @Nam)) AND ([MaSanPham] = @MaSanPham))
END
GO
/****** Object:  StoredProcedure [dbo].[CT_TKBanHang_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_TKBanHang_Insert]
    @Thang [int],
    @Nam [int],
    @MaSanPham [varchar](20),
    @TonDau [int],
    @SoLuongNhap [int],
    @TienNhap [money],
    @SoLuongXuat [int],
    @TonCuoi [int],
    @SoLuongBan [int],
    @TienBan [money]
AS
BEGIN
    INSERT [dbo].[CT_TKBanHang]([Thang], [Nam], [MaSanPham], [TonDau], [SoLuongNhap], [TienNhap], [SoLuongXuat], [TonCuoi], [SoLuongBan], [TienBan])
    VALUES (@Thang, @Nam, @MaSanPham, @TonDau, @SoLuongNhap, @TienNhap, @SoLuongXuat, @TonCuoi, @SoLuongBan, @TienBan)
END
GO
/****** Object:  StoredProcedure [dbo].[CT_TKBanHang_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_TKBanHang_Update]
    @Thang [int],
    @Nam [int],
    @MaSanPham [varchar](20),
    @TonDau [int],
    @SoLuongNhap [int],
    @TienNhap [money],
    @SoLuongXuat [int],
    @TonCuoi [int],
    @SoLuongBan [int],
    @TienBan [money]
AS
BEGIN
    UPDATE [dbo].[CT_TKBanHang]
    SET [TonDau] = @TonDau, [SoLuongNhap] = @SoLuongNhap, [TienNhap] = @TienNhap, [SoLuongXuat] = @SoLuongXuat, [TonCuoi] = @TonCuoi, [SoLuongBan] = @SoLuongBan, [TienBan] = @TienBan
    WHERE ((([Thang] = @Thang) AND ([Nam] = @Nam)) AND ([MaSanPham] = @MaSanPham))
END
GO
/****** Object:  StoredProcedure [dbo].[DauSach_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DauSach_Delete]
    @MaDauSach [varchar](20)
AS
BEGIN
    DELETE [dbo].[DAUSACH]
    WHERE ([MaDauSach] = @MaDauSach)
END
GO
/****** Object:  StoredProcedure [dbo].[DauSach_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DauSach_Insert]
    @MaDauSach [varchar](20),
    @MaTheLoai [varchar](20),
    @TenDauSach [nvarchar](50)
AS
BEGIN
    INSERT [dbo].[DAUSACH]([MaDauSach], [MaTheLoai], [TenDauSach])
    VALUES (@MaDauSach, @MaTheLoai, @TenDauSach)
END
GO
/****** Object:  StoredProcedure [dbo].[DauSach_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DauSach_Update]
    @MaDauSach [varchar](20),
    @MaTheLoai [varchar](20),
    @TenDauSach [nvarchar](50)
AS
BEGIN
    UPDATE [dbo].[DAUSACH]
    SET [MaTheLoai] = @MaTheLoai, [TenDauSach] = @TenDauSach
    WHERE ([MaDauSach] = @MaDauSach)
END
GO
/****** Object:  StoredProcedure [dbo].[DoDungHocTap_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DoDungHocTap_Delete]
    @MaSanPham [varchar](20)
AS
BEGIN
    DELETE [dbo].[DODUNGHOCTAP]
    WHERE ([MaSanPham] = @MaSanPham)
    
    DELETE [dbo].[SANPHAM]
    WHERE ([MaSanPham] = @MaSanPham)
    AND @@ROWCOUNT > 0
END
GO
/****** Object:  StoredProcedure [dbo].[DoDungHocTap_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DoDungHocTap_Insert]
    @MaSanPham [varchar](20),
    @MaLoaiSanPham [varchar](20),
    @MaNhaCungCap [varchar](20),
    @MaDVT [varchar](20),
    @TenSanPham [nvarchar](50),
    @DonGia [money],
    @SoLuong [int],
    @MaQuayHang [varchar](20),
    @MaLoaiDDHT [varchar](20),
    @MaNhaSanXuat [varchar](20),
    @NamSanXuat [int]
AS
BEGIN
    INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang])
    VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaDVT, @TenSanPham, @DonGia, @SoLuong, @MaQuayHang)
    
    INSERT [dbo].[DODUNGHOCTAP]([MaSanPham], [MaLoaiDDHT], [MaNhaSanXuat], [NamSanXuat])
    VALUES (@MaSanPham, @MaLoaiDDHT, @MaNhaSanXuat, @NamSanXuat)
END
GO
/****** Object:  StoredProcedure [dbo].[DoDungHocTap_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DoDungHocTap_Update]
    @MaSanPham [varchar](20),
    @MaLoaiSanPham [varchar](20),
    @MaNhaCungCap [varchar](20),
    @MaDVT [varchar](20),
    @TenSanPham [nvarchar](50),
    @DonGia [money],
    @SoLuong [int],
    @MaQuayHang [varchar](20),
    @MaLoaiDDHT [varchar](20),
    @MaNhaSanXuat [varchar](20),
    @NamSanXuat [int]
AS
BEGIN
    UPDATE [dbo].[DODUNGHOCTAP]
    SET [MaLoaiDDHT] = @MaLoaiDDHT, [MaNhaSanXuat] = @MaNhaSanXuat, [NamSanXuat] = @NamSanXuat
    WHERE ([MaSanPham] = @MaSanPham)
    
    UPDATE [dbo].[SANPHAM]
    SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong, [MaQuayHang] = @MaQuayHang
    WHERE ([MaSanPham] = @MaSanPham)
    AND @@ROWCOUNT > 0
END
GO
/****** Object:  StoredProcedure [dbo].[DonViTinh_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DonViTinh_Delete]
    @MaDVT [varchar](20)
AS
BEGIN
    DELETE [dbo].[DONVITINH]
    WHERE ([MaDVT] = @MaDVT)
END
GO
/****** Object:  StoredProcedure [dbo].[DonViTinh_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DonViTinh_Insert]
    @MaDVT [varchar](20),
    @TenDVT [nvarchar](50)
AS
BEGIN
    INSERT [dbo].[DONVITINH]([MaDVT], [TenDVT])
    VALUES (@MaDVT, @TenDVT)
END
GO
/****** Object:  StoredProcedure [dbo].[DonViTinh_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DonViTinh_Update]
    @MaDVT [varchar](20),
    @TenDVT [nvarchar](50)
AS
BEGIN
    UPDATE [dbo].[DONVITINH]
    SET [TenDVT] = @TenDVT
    WHERE ([MaDVT] = @MaDVT)
END
GO
/****** Object:  StoredProcedure [dbo].[HoaDonBanHang_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoaDonBanHang_Delete]
    @MaHoaDon [varchar](20)
AS
BEGIN
    DELETE [dbo].[HOADONBANHANG]
    WHERE ([MaHoaDon] = @MaHoaDon)
END
GO
/****** Object:  StoredProcedure [dbo].[HoaDonBanHang_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoaDonBanHang_Insert]
    @MaHoaDon [varchar](20),
    @NgayBan [date],
    @MaNhanVien [varchar](20),
    @TenKhachHang [nvarchar](50),
    @TongThanhTien [money]
AS
BEGIN TRANSACTION
    INSERT [dbo].[HOADONBANHANG]([MaHoaDon], [NgayBan], [MaNhanVien], [TenKhachHang], [TongThanhTien])
    VALUES (@MaHoaDon, @NgayBan, @MaNhanVien, @TenKhachHang, @TongThanhTien)
	update BODEM set HoaDonBanHang = HoaDonBanHang +1
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[HoaDonBanHang_PhatSinhMa]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoaDonBanHang_PhatSinhMa]
    @MaHoadon varchar(20) output
AS
BEGIN TRANSACTION
	declare @count int
	set @count = (select HoaDonBanHang from BODEM) + 1
	set @MaHoaDon = 'HD' + (select right('000000' + CAST(@count as varchar(6)), 6))
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[HoaDonBanHang_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoaDonBanHang_Update]
    @MaHoaDon [varchar](20),
    @NgayBan [date],
    @MaNhanVien [varchar](20),
    @TenKhachHang [nvarchar](50),
    @TongThanhTien [money]
AS
BEGIN
    UPDATE [dbo].[HOADONBANHANG]
    SET [NgayBan] = @NgayBan, [MaNhanVien] = @MaNhanVien, [TenKhachHang] = @TenKhachHang, [TongThanhTien] = @TongThanhTien
    WHERE ([MaHoaDon] = @MaHoaDon)
END
GO
/****** Object:  StoredProcedure [dbo].[LoaiDDHT_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LoaiDDHT_Delete]
    @MaLoaiDDHT [varchar](20)
AS
BEGIN
    DELETE [dbo].[LOAIDDHT]
    WHERE ([MaLoaiDDHT] = @MaLoaiDDHT)
END
GO
/****** Object:  StoredProcedure [dbo].[LoaiDDHT_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LoaiDDHT_Insert]
    @MaLoaiDDHT [varchar](20),
    @TenLoaiDDHT [nvarchar](50)
AS
BEGIN
    INSERT [dbo].[LOAIDDHT]([MaLoaiDDHT], [TenLoaiDDHT])
    VALUES (@MaLoaiDDHT, @TenLoaiDDHT)
END
GO
/****** Object:  StoredProcedure [dbo].[LoaiDDHT_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LoaiDDHT_Update]
    @MaLoaiDDHT [varchar](20),
    @TenLoaiDDHT [nvarchar](50)
AS
BEGIN
    UPDATE [dbo].[LOAIDDHT]
    SET [TenLoaiDDHT] = @TenLoaiDDHT
    WHERE ([MaLoaiDDHT] = @MaLoaiDDHT)
END
GO
/****** Object:  StoredProcedure [dbo].[LoaiSanPham_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LoaiSanPham_Delete]
    @MaLoaiSanPham [varchar](20)
AS
BEGIN
    DELETE [dbo].[LOAISANPHAM]
    WHERE ([MaLoaiSanPham] = @MaLoaiSanPham)
END
GO
/****** Object:  StoredProcedure [dbo].[LoaiSanPham_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LoaiSanPham_Insert]
    @MaLoaiSanPham [varchar](20),
    @TenLoaiSanPham [nvarchar](50)
AS
BEGIN
    INSERT [dbo].[LOAISANPHAM]([MaLoaiSanPham], [TenLoaiSanPham])
    VALUES (@MaLoaiSanPham, @TenLoaiSanPham)
END
GO
/****** Object:  StoredProcedure [dbo].[LoaiSanPham_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LoaiSanPham_Update]
    @MaLoaiSanPham [varchar](20),
    @TenLoaiSanPham [nvarchar](50)
AS
BEGIN
    UPDATE [dbo].[LOAISANPHAM]
    SET [TenLoaiSanPham] = @TenLoaiSanPham
    WHERE ([MaLoaiSanPham] = @MaLoaiSanPham)
END
GO
/****** Object:  StoredProcedure [dbo].[NguoiDung_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NguoiDung_Delete]
    @TaiKhoan [varchar](20)
AS
BEGIN
    DELETE [dbo].[NGUOIDUNG]
    WHERE ([TaiKhoan] = @TaiKhoan)
END
GO
/****** Object:  StoredProcedure [dbo].[NguoiDung_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NguoiDung_Insert]
    @TaiKhoan [varchar](20),
    @MatKhau [varchar](32),
    @MaNhanVien [varchar](20)
AS
BEGIN
    INSERT [dbo].[NGUOIDUNG]([TaiKhoan], [MatKhau], [MaNhanVien])
    VALUES (@TaiKhoan, @MatKhau, @MaNhanVien)
END
GO
/****** Object:  StoredProcedure [dbo].[NguoiDung_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NguoiDung_Update]
    @TaiKhoan [varchar](20),
    @MatKhau [varchar](32),
    @MaNhanVien [varchar](20)
AS
BEGIN
    UPDATE [dbo].[NGUOIDUNG]
    SET [MatKhau] = @MatKhau, [MaNhanVien] = @MaNhanVien
    WHERE ([TaiKhoan] = @TaiKhoan)
END
GO
/****** Object:  StoredProcedure [dbo].[NhaCungCap_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhaCungCap_Delete]
    @MaNhaCungCap [varchar](20)
AS
BEGIN
    DELETE [dbo].[NHACUNGCAP]
    WHERE ([MaNhaCungCap] = @MaNhaCungCap)
END
GO
/****** Object:  StoredProcedure [dbo].[NhaCungCap_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhaCungCap_Insert]
    @MaNhaCungCap [varchar](20),
    @TenNhaCungCap [nvarchar](50),
    @DiaChi [nvarchar](100),
    @SoDienThoai [varchar](20)
AS
BEGIN
    INSERT [dbo].[NHACUNGCAP]([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai])
    VALUES (@MaNhaCungCap, @TenNhaCungCap, @DiaChi, @SoDienThoai)
END
GO
/****** Object:  StoredProcedure [dbo].[NhaCungCap_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhaCungCap_Update]
    @MaNhaCungCap [varchar](20),
    @TenNhaCungCap [nvarchar](50),
    @DiaChi [nvarchar](100),
    @SoDienThoai [varchar](20)
AS
BEGIN
    UPDATE [dbo].[NHACUNGCAP]
    SET [TenNhaCungCap] = @TenNhaCungCap, [DiaChi] = @DiaChi, [SoDienThoai] = @SoDienThoai
    WHERE ([MaNhaCungCap] = @MaNhaCungCap)
END
GO
/****** Object:  StoredProcedure [dbo].[NhanVien_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_Delete]
    @MaNhanVien [varchar](20)
AS
BEGIN
    DELETE [dbo].[NHANVIEN]
    WHERE ([MaNhanVien] = @MaNhanVien)
END
GO
/****** Object:  StoredProcedure [dbo].[NhanVien_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_Insert]
    @MaNhanVien [varchar](20),
    @MaChucVu [varchar](20),
    @TenNhanVien [nvarchar](50),
    @DiaChi [nvarchar](100),
    @DienThoai [varchar](20),
    @LuongNhanVien [money]
AS
BEGIN
    INSERT [dbo].[NHANVIEN]([MaNhanVien], [MaChucVu], [TenNhanVien], [DiaChi], [DienThoai], [LuongNhanVien])
    VALUES (@MaNhanVien, @MaChucVu, @TenNhanVien, @DiaChi, @DienThoai, @LuongNhanVien)
END
GO
/****** Object:  StoredProcedure [dbo].[NhanVien_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_Update]
    @MaNhanVien [varchar](20),
    @MaChucVu [varchar](20),
    @TenNhanVien [nvarchar](50),
    @DiaChi [nvarchar](100),
    @DienThoai [varchar](20),
    @LuongNhanVien [money]
AS
BEGIN
    UPDATE [dbo].[NHANVIEN]
    SET [MaChucVu] = @MaChucVu, [TenNhanVien] = @TenNhanVien, [DiaChi] = @DiaChi, [DienThoai] = @DienThoai, [LuongNhanVien] = @LuongNhanVien
    WHERE ([MaNhanVien] = @MaNhanVien)
END
GO
/****** Object:  StoredProcedure [dbo].[NhaSanXuat_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhaSanXuat_Delete]
    @MaNhaSanXuat [varchar](20)
AS
BEGIN
    DELETE [dbo].[NHASANXUAT]
    WHERE ([MaNhaSanXuat] = @MaNhaSanXuat)
END
GO
/****** Object:  StoredProcedure [dbo].[NhaSanXuat_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhaSanXuat_Insert]
    @MaNhaSanXuat [varchar](20),
    @TenNhaSanXuat [nvarchar](50)
AS
BEGIN
    INSERT [dbo].[NHASANXUAT]([MaNhaSanXuat], [TenNhaSanXuat])
    VALUES (@MaNhaSanXuat, @TenNhaSanXuat)
END
GO
/****** Object:  StoredProcedure [dbo].[NhaSanXuat_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhaSanXuat_Update]
    @MaNhaSanXuat [varchar](20),
    @TenNhaSanXuat [nvarchar](50)
AS
BEGIN
    UPDATE [dbo].[NHASANXUAT]
    SET [TenNhaSanXuat] = @TenNhaSanXuat
    WHERE ([MaNhaSanXuat] = @MaNhaSanXuat)
END
GO
/****** Object:  StoredProcedure [dbo].[NhaXuatBan_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhaXuatBan_Delete]
    @MaNhaXuatBan [varchar](20)
AS
BEGIN
    DELETE [dbo].[NHAXUATBAN]
    WHERE ([MaNhaXuatBan] = @MaNhaXuatBan)
END
GO
/****** Object:  StoredProcedure [dbo].[NhaXuatBan_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhaXuatBan_Insert]
    @MaNhaXuatBan [varchar](20),
    @TenNhaXuatBan [nvarchar](50)
AS
BEGIN
    INSERT [dbo].[NHAXUATBAN]([MaNhaXuatBan], [TenNhaXuatBan])
    VALUES (@MaNhaXuatBan, @TenNhaXuatBan)
END
GO
/****** Object:  StoredProcedure [dbo].[NhaXuatBan_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhaXuatBan_Update]
    @MaNhaXuatBan [varchar](20),
    @TenNhaXuatBan [nvarchar](50)
AS
BEGIN
    UPDATE [dbo].[NHAXUATBAN]
    SET [TenNhaXuatBan] = @TenNhaXuatBan
    WHERE ([MaNhaXuatBan] = @MaNhaXuatBan)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuChi_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuChi_Delete]
    @MaPhieuChi [varchar](20)
AS
BEGIN
    DELETE [dbo].[PHIEUCHI]
    WHERE ([MaPhieuChi] = @MaPhieuChi)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuChi_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuChi_Insert]
    @MaPhieuChi [varchar](20),
    @MaNhanVienChi [varchar](20),
    @NgayChi [date],
    @NguoiNhan [nvarchar](50),
    @SoTien [money],
    @LyDo [nvarchar](50)
AS
BEGIN
    INSERT [dbo].[PHIEUCHI]([MaPhieuChi], [MaNhanVienChi], [NgayChi], [NguoiNhan], [SoTien], [LyDo])
    VALUES (@MaPhieuChi, @MaNhanVienChi, @NgayChi, @NguoiNhan, @SoTien, @LyDo)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuChi_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuChi_Update]
    @MaPhieuChi [varchar](20),
    @MaNhanVienChi [varchar](20),
    @NgayChi [date],
    @NguoiNhan [nvarchar](50),
    @SoTien [money],
    @LyDo [nvarchar](50)
AS
BEGIN
    UPDATE [dbo].[PHIEUCHI]
    SET [MaNhanVienChi] = @MaNhanVienChi, [NgayChi] = @NgayChi, [NguoiNhan] = @NguoiNhan, [SoTien] = @SoTien, [LyDo] = @LyDo
    WHERE ([MaPhieuChi] = @MaPhieuChi)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuDatMua_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuDatMua_Delete]
    @MaPhieuDatMua [varchar](20)
AS
BEGIN
    DELETE [dbo].[PHIEUDATMUA]
    WHERE ([MaPhieuDatMua] = @MaPhieuDatMua)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuDatMua_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuDatMua_Insert]
    @MaPhieuDatMua [varchar](20),
    @NgayDatMua [date],
    @MaNhanVien [varchar](20),
    @MaNhaCungCap [varchar](20),
    @TongSoLuong [int],
    @TinhTrang [bit]
AS
BEGIN
    INSERT [dbo].[PHIEUDATMUA]([MaPhieuDatMua], [NgayDatMua], [MaNhanVien], [MaNhaCungCap], [TongSoLuong], [TinhTrang])
    VALUES (@MaPhieuDatMua, @NgayDatMua, @MaNhanVien, @MaNhaCungCap, @TongSoLuong, @TinhTrang)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuDatMua_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuDatMua_Update]
    @MaPhieuDatMua [varchar](20),
    @NgayDatMua [date],
    @MaNhanVien [varchar](20),
    @MaNhaCungCap [varchar](20),
    @TongSoLuong [int],
    @TinhTrang [bit]
AS
BEGIN
    UPDATE [dbo].[PHIEUDATMUA]
    SET [NgayDatMua] = @NgayDatMua, [MaNhanVien] = @MaNhanVien, [MaNhaCungCap] = @MaNhaCungCap, [TongSoLuong] = @TongSoLuong, [TinhTrang] = @TinhTrang
    WHERE ([MaPhieuDatMua] = @MaPhieuDatMua)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuNhapKho_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuNhapKho_Delete]
    @MaPhieuNhap [varchar](20)
AS
BEGIN
    DELETE [dbo].[PHIEUNHAPKHO]
    WHERE ([MaPhieuNhap] = @MaPhieuNhap)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuNhapKho_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuNhapKho_Insert]
    @MaPhieuNhap [varchar](20),
    @NgayNhap [date],
    @MaNhanVien [varchar](20),
    @MaPhieuDatMua [varchar](20),
    @TongSoLuong [int]
AS
BEGIN
    INSERT [dbo].[PHIEUNHAPKHO]([MaPhieuNhap], [NgayNhap], [MaNhanVien], [MaPhieuDatMua], [TongSoLuong])
    VALUES (@MaPhieuNhap, @NgayNhap, @MaNhanVien, @MaPhieuDatMua, @TongSoLuong)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuNhapKho_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuNhapKho_Update]
    @MaPhieuNhap [varchar](20),
    @NgayNhap [date],
    @MaNhanVien [varchar](20),
    @MaPhieuDatMua [varchar](20),
    @TongSoLuong [int]
AS
BEGIN
    UPDATE [dbo].[PHIEUNHAPKHO]
    SET [NgayNhap] = @NgayNhap, [MaNhanVien] = @MaNhanVien, [MaPhieuDatMua] = @MaPhieuDatMua, [TongSoLuong] = @TongSoLuong
    WHERE ([MaPhieuNhap] = @MaPhieuNhap)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuThu_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuThu_Delete]
    @MaPhieuThu [varchar](20)
AS
BEGIN
    DELETE [dbo].[PHIEUTHU]
    WHERE ([MaPhieuThu] = @MaPhieuThu)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuThu_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuThu_Insert]
    @MaPhieuThu [varchar](20),
    @MaNhanVienThu [varchar](20),
    @NgayThu [date],
    @SoTien [money],
    @LyDo [nvarchar](50)
AS
BEGIN
    INSERT [dbo].[PHIEUTHU]([MaPhieuThu], [MaNhanVienThu], [NgayThu], [SoTien], [LyDo])
    VALUES (@MaPhieuThu, @MaNhanVienThu, @NgayThu, @SoTien, @LyDo)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuThu_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuThu_Update]
    @MaPhieuThu [varchar](20),
    @MaNhanVienThu [varchar](20),
    @NgayThu [date],
    @SoTien [money],
    @LyDo [nvarchar](50)
AS
BEGIN
    UPDATE [dbo].[PHIEUTHU]
    SET [MaNhanVienThu] = @MaNhanVienThu, [NgayThu] = @NgayThu, [SoTien] = @SoTien, [LyDo] = @LyDo
    WHERE ([MaPhieuThu] = @MaPhieuThu)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuXuatKho_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuXuatKho_Delete]
    @MaPhieuXuat [varchar](20)
AS
BEGIN
    DELETE [dbo].[PHIEUXUATKHO]
    WHERE ([MaPhieuXuat] = @MaPhieuXuat)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuXuatKho_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuXuatKho_Insert]
    @MaPhieuXuat [varchar](20),
    @NgayXuat [date],
    @MaNhanVien [varchar](20),
    @TongSoLuong [int]
AS
BEGIN TRANSACTION
    INSERT [dbo].[PHIEUXUATKHO]([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong])
    VALUES (@MaPhieuXuat, @NgayXuat, @MaNhanVien, @TongSoLuong)
	update BODEM set PhieuXuatKho = PhieuXuatKho + 1
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[PhieuXuatKho_PhatSinhMa]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuXuatKho_PhatSinhMa]
@MaPhieuXuat varchar(20) output
AS
BEGIN TRANSACTION
	declare @count int
	set @count = (select PhieuXuatKho from BODEM) + 1
	set @MaPhieuXuat = 'PXK' + (select right('000000' + CAST(@count as varchar(6)), 6))
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[PhieuXuatKho_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuXuatKho_Update]
    @MaPhieuXuat [varchar](20),
    @NgayXuat [date],
    @MaNhanVien [varchar](20),
    @TongSoLuong [int]
AS
BEGIN
    UPDATE [dbo].[PHIEUXUATKHO]
    SET [NgayXuat] = @NgayXuat, [MaNhanVien] = @MaNhanVien, [TongSoLuong] = @TongSoLuong
    WHERE ([MaPhieuXuat] = @MaPhieuXuat)
END
GO
/****** Object:  StoredProcedure [dbo].[QuayHang_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[QuayHang_Delete]
    @MaQuay [varchar](20)
AS
BEGIN
    DELETE [dbo].[QUAYHANG]
    WHERE ([MaQuay] = @MaQuay)
END
GO
/****** Object:  StoredProcedure [dbo].[QuayHang_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[QuayHang_Insert]
    @MaQuay [varchar](20),
    @TenQuay [nvarchar](50),
    @ViTri [varchar](20)
AS
BEGIN
    INSERT [dbo].[QUAYHANG]([MaQuay], [TenQuay], [ViTri])
    VALUES (@MaQuay, @TenQuay, @ViTri)
END
GO
/****** Object:  StoredProcedure [dbo].[QuayHang_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[QuayHang_Update]
    @MaQuay [varchar](20),
    @TenQuay [nvarchar](50),
    @ViTri [varchar](20)
AS
BEGIN
    UPDATE [dbo].[QUAYHANG]
    SET [TenQuay] = @TenQuay, [ViTri] = @ViTri
    WHERE ([MaQuay] = @MaQuay)
END
GO
/****** Object:  StoredProcedure [dbo].[Sach_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sach_Delete]
    @MaSanPham [varchar](20)
AS
BEGIN
    DELETE [dbo].[SACH]
    WHERE ([MaSanPham] = @MaSanPham)
    
    DELETE [dbo].[SANPHAM]
    WHERE ([MaSanPham] = @MaSanPham)
    AND @@ROWCOUNT > 0
END
GO
/****** Object:  StoredProcedure [dbo].[Sach_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sach_Insert]
    @MaSanPham [varchar](20),
    @MaLoaiSanPham [varchar](20),
    @MaNhaCungCap [varchar](20),
    @MaDVT [varchar](20),
    @TenSanPham [nvarchar](50),
    @DonGia [money],
    @SoLuong [int],
    @MaQuayHang [varchar](20),
    @MaDauSach [varchar](20),
    @MaNhaXuatBan [varchar](20),
    @NamXuatBan [int]
AS
BEGIN
    INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang])
    VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaDVT, @TenSanPham, @DonGia, @SoLuong, @MaQuayHang)
    
    INSERT [dbo].[SACH]([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan])
    VALUES (@MaSanPham, @MaDauSach, @MaNhaXuatBan, @NamXuatBan)
END
GO
/****** Object:  StoredProcedure [dbo].[Sach_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sach_Update]
    @MaSanPham [varchar](20),
    @MaLoaiSanPham [varchar](20),
    @MaNhaCungCap [varchar](20),
    @MaDVT [varchar](20),
    @TenSanPham [nvarchar](50),
    @DonGia [money],
    @SoLuong [int],
    @MaQuayHang [varchar](20),
    @MaDauSach [varchar](20),
    @MaNhaXuatBan [varchar](20),
    @NamXuatBan [int]
AS
BEGIN
    UPDATE [dbo].[SACH]
    SET [MaDauSach] = @MaDauSach, [MaNhaXuatBan] = @MaNhaXuatBan, [NamXuatBan] = @NamXuatBan
    WHERE ([MaSanPham] = @MaSanPham)
    
    UPDATE [dbo].[SANPHAM]
    SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong, [MaQuayHang] = @MaQuayHang
    WHERE ([MaSanPham] = @MaSanPham)
    AND @@ROWCOUNT > 0
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPham_Delete]
    @MaSanPham [varchar](20)
AS
BEGIN
    DELETE [dbo].[SANPHAM]
    WHERE ([MaSanPham] = @MaSanPham)
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPham_Insert]
    @MaSanPham [varchar](20),
    @MaLoaiSanPham [varchar](20),
    @MaNhaCungCap [varchar](20),
    @MaDVT [varchar](20),
    @TenSanPham [nvarchar](50),
    @DonGia [money],
    @SoLuong [int],
    @MaQuayHang [varchar](20)
AS
BEGIN
    INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang])
    VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaDVT, @TenSanPham, @DonGia, @SoLuong, @MaQuayHang)
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Search]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPham_Search]
@MaSanPham varchar(20) = NULL,
@TenSanPham nvarchar(50) = NULL,
@MaLoaiSanPham varchar(20) = NULL,
@DonGiaMin money = NULL,
@DonGiaMax money = NULL,
@TrongKho bit
AS
BEGIN TRANSACTION
	if (@TrongKho = 1)
		BEGIN
			SELECT
				sp.MaSanPham,
				sp.TenSanPham,
				lsp.TenLoaiSanPham,
				ncc.TenNhaCungCap,
				dvt.TenDVT,
				sp.DonGia,
				sp.SoLuong
			FROM
				SANPHAM sp,
				LOAISANPHAM lsp,
				NHACUNGCAP ncc,
				DONVITINH dvt
			WHERE(sp.MaLoaiSanPham = lsp.MaLoaiSanPham
				AND sp.MaNhaCungCap = ncc.MaNhaCungCap
				AND sp.MaDVT = dvt.MaDVT)
				AND (@MaSanPham is null or @MaSanPham = '' or sp.MaSanPham like '%' + @MaSanPham + '%')
				AND (@TenSanPham is null or @TenSanPham = '' or sp.TenSanPham like '%' + @TenSanPham + '%')
				AND (@MaLoaiSanPham is null or @MaLoaiSanPham = '' or sp.MaLoaiSanPham = @MaLoaiSanPham)
				AND ((@DonGiaMin is null and @DonGiaMax is null)
					or (@DonGiaMax is null and sp.DonGia >= @DonGiaMin)
					or (@DonGiaMin is null and sp.DonGia <= @DonGiaMax)
					or (sp.DonGia > @DonGiaMin and sp.DonGia <= @DonGiaMax))
		END
	else
		BEGIN
			SELECT
				ctsp.MaCTSanPham,
				sp.TenSanPham,
				quay.TenQuay,
				lsp.TenLoaiSanPham,
				ncc.TenNhaCungCap,
				dvt.TenDVT,
				sp.DonGia,
				sp.SoLuong
			FROM
				CT_SANPHAM ctsp,
				SANPHAM sp,
				QUAYHANG quay,
				LOAISANPHAM lsp,
				NHACUNGCAP ncc,
				DONVITINH dvt
			WHERE(ctsp.TinhTrang = 1
				AND ctsp.MaSanPham = sp.MaSanPham
				AND sp.MaQuayHang = quay.MaQuay
				AND sp.MaLoaiSanPham = lsp.MaLoaiSanPham
				AND sp.MaNhaCungCap = ncc.MaNhaCungCap
				AND sp.MaDVT = dvt.MaDVT)
				AND (@MaSanPham is null or @MaSanPham = '' or ctsp.MaCTSanPham like '%' + @MaSanPham + '%')
				AND (@TenSanPham is null or @TenSanPham = '' or sp.TenSanPham like '%' + @TenSanPham + '%')
				AND (@MaLoaiSanPham is null or @MaLoaiSanPham = '' or sp.MaLoaiSanPham = @MaLoaiSanPham)
				AND ((@DonGiaMin is null and @DonGiaMax is null)
					or (@DonGiaMax is null and sp.DonGia >= @DonGiaMin)
					or (@DonGiaMin is null and sp.DonGia <= @DonGiaMax)
					or (sp.DonGia > @DonGiaMin and sp.DonGia <= @DonGiaMax))
		END
COMMIT TRANSACTION

GO
/****** Object:  StoredProcedure [dbo].[SanPham_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPham_Update]
    @MaSanPham [varchar](20),
    @MaLoaiSanPham [varchar](20),
    @MaNhaCungCap [varchar](20),
    @MaDVT [varchar](20),
    @TenSanPham [nvarchar](50),
    @DonGia [money],
    @SoLuong [int],
    @MaQuayHang [varchar](20)
AS
BEGIN
    UPDATE [dbo].[SANPHAM]
    SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong, [MaQuayHang] = @MaQuayHang
    WHERE ([MaSanPham] = @MaSanPham)
END
GO
/****** Object:  StoredProcedure [dbo].[TacGia_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TacGia_Delete]
    @MaTacGia [varchar](20)
AS
BEGIN
    DELETE [dbo].[TACGIA]
    WHERE ([MaTacGia] = @MaTacGia)
END
GO
/****** Object:  StoredProcedure [dbo].[TacGia_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TacGia_Insert]
    @MaTacGia [varchar](20),
    @TenTacGia [nvarchar](50)
AS
BEGIN
    INSERT [dbo].[TACGIA]([MaTacGia], [TenTacGia])
    VALUES (@MaTacGia, @TenTacGia)
END
GO
/****** Object:  StoredProcedure [dbo].[TacGia_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TacGia_Update]
    @MaTacGia [varchar](20),
    @TenTacGia [nvarchar](50)
AS
BEGIN
    UPDATE [dbo].[TACGIA]
    SET [TenTacGia] = @TenTacGia
    WHERE ([MaTacGia] = @MaTacGia)
END
GO
/****** Object:  StoredProcedure [dbo].[TheLoaiSach_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TheLoaiSach_Delete]
    @MaTheLoaiSach [varchar](20)
AS
BEGIN
    DELETE [dbo].[THELOAISACH]
    WHERE ([MaTheLoaiSach] = @MaTheLoaiSach)
END
GO
/****** Object:  StoredProcedure [dbo].[TheLoaiSach_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TheLoaiSach_Insert]
    @MaTheLoaiSach [varchar](20),
    @TenTheLoaiSach [nvarchar](50)
AS
BEGIN
    INSERT [dbo].[THELOAISACH]([MaTheLoaiSach], [TenTheLoaiSach])
    VALUES (@MaTheLoaiSach, @TenTheLoaiSach)
END
GO
/****** Object:  StoredProcedure [dbo].[TheLoaiSach_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TheLoaiSach_Update]
    @MaTheLoaiSach [varchar](20),
    @TenTheLoaiSach [nvarchar](50)
AS
BEGIN
    UPDATE [dbo].[THELOAISACH]
    SET [TenTheLoaiSach] = @TenTheLoaiSach
    WHERE ([MaTheLoaiSach] = @MaTheLoaiSach)
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKeBanHang_Delete]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKeBanHang_Delete]
    @Thang [int],
    @Nam [int]
AS
BEGIN
    DELETE [dbo].[THONGKEBANHANG]
    WHERE (([Thang] = @Thang) AND ([Nam] = @Nam))
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKeBanHang_Insert]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKeBanHang_Insert]
    @Thang [int],
    @Nam [int],
    @TongTonDau [int],
    @TongSoLuongNhap [int],
    @TongTienNhap [money],
    @TongSoLuongXuat [int],
    @TongTonCuoi [int],
    @TongSoLuongBan [int],
    @TongTienBan [money]
AS
BEGIN
    INSERT [dbo].[THONGKEBANHANG]([Thang], [Nam], [TongTonDau], [TongSoLuongNhap], [TongTienNhap], [TongSoLuongXuat], [TongTonCuoi], [TongSoLuongBan], [TongTienBan])
    VALUES (@Thang, @Nam, @TongTonDau, @TongSoLuongNhap, @TongTienNhap, @TongSoLuongXuat, @TongTonCuoi, @TongSoLuongBan, @TongTienBan)
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKeBanHang_Update]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKeBanHang_Update]
    @Thang [int],
    @Nam [int],
    @TongTonDau [int],
    @TongSoLuongNhap [int],
    @TongTienNhap [money],
    @TongSoLuongXuat [int],
    @TongTonCuoi [int],
    @TongSoLuongBan [int],
    @TongTienBan [money]
AS
BEGIN
    UPDATE [dbo].[THONGKEBANHANG]
    SET [TongTonDau] = @TongTonDau, [TongSoLuongNhap] = @TongSoLuongNhap, [TongTienNhap] = @TongTienNhap, [TongSoLuongXuat] = @TongSoLuongXuat, [TongTonCuoi] = @TongTonCuoi, [TongSoLuongBan] = @TongSoLuongBan, [TongTienBan] = @TongTienBan
    WHERE (([Thang] = @Thang) AND ([Nam] = @Nam))
END
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BANGCHAMCONG]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BANGCHAMCONG](
	[MaBCC] [varchar](20) NOT NULL,
	[MaCaLamViec] [varchar](20) NOT NULL,
	[NgayChamCong] [date] NULL,
	[NguoiChamCong] [varchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.BANGCHAMCONG] PRIMARY KEY CLUSTERED 
(
	[MaBCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BODEM]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BODEM](
	[BangChamCong] [int] NOT NULL,
	[CaLamViec] [int] NOT NULL,
	[ChucVu] [int] NOT NULL,
	[DauSach] [int] NOT NULL,
	[DonViTinh] [int] NOT NULL,
	[HoaDonBanHang] [int] NOT NULL,
	[LoaiDDHT] [int] NOT NULL,
	[LoaiSanPham] [int] NOT NULL,
	[NhaCungCap] [int] NOT NULL,
	[NhanVien] [int] NOT NULL,
	[NhaSanXuat] [int] NOT NULL,
	[NhaXuatBan] [int] NOT NULL,
	[PhieuChi] [int] NOT NULL,
	[PhieuDatMua] [int] NOT NULL,
	[PhieuNhapKho] [int] NOT NULL,
	[PhieuThu] [int] NOT NULL,
	[PhieuXuatKho] [int] NOT NULL,
	[QuayHang] [int] NOT NULL,
	[SanPham] [int] NOT NULL,
	[TacGia] [int] NOT NULL,
	[TheLoaiSach] [int] NOT NULL,
	[CT_SanPham] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CALAMVIEC]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CALAMVIEC](
	[MaCaLamViec] [varchar](20) NOT NULL,
	[ThoiGianBD] [time](7) NULL,
	[ThoiGianKT] [time](7) NULL,
	[LuongCLV] [decimal](19, 4) NULL,
 CONSTRAINT [PK_dbo.CALAMVIEC] PRIMARY KEY CLUSTERED 
(
	[MaCaLamViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[MaChucVu] [varchar](20) NOT NULL,
	[TenChucVu] [nvarchar](50) NULL,
	[TrachNhiem] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.CHUCVU] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_BANGCHAMCONG]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_BANGCHAMCONG](
	[MaBCC] [varchar](20) NOT NULL,
	[MaNhanVien] [varchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.CT_BANGCHAMCONG] PRIMARY KEY CLUSTERED 
(
	[MaBCC] ASC,
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_DAUSACH]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_DAUSACH](
	[MaDauSach] [varchar](20) NOT NULL,
	[MaTacGia] [varchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.CT_DAUSACH] PRIMARY KEY CLUSTERED 
(
	[MaDauSach] ASC,
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_HDBanHang]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_HDBanHang](
	[MaHoaDon] [varchar](20) NOT NULL,
	[MaCTSanPham] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.CT_HDBanHang] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaCTSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_PhieuDatMua]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_PhieuDatMua](
	[MaPhieuDatMua] [varchar](20) NOT NULL,
	[MaSanPham] [varchar](20) NOT NULL,
	[DonGia] [float] NULL,
	[SoLuong] [float] NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_dbo.CT_PhieuDatMua] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDatMua] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_PhieuNhapKho]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_PhieuNhapKho](
	[MaPhieuNhap] [varchar](20) NOT NULL,
	[MaSanPham] [varchar](20) NOT NULL,
	[DonGia] [money] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_dbo.CT_PhieuNhapKho] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_PhieuXuatKho]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_PhieuXuatKho](
	[MaPhieuXuat] [varchar](20) NOT NULL,
	[MaSanPham] [varchar](20) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_dbo.CT_PhieuXuatKho] PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuat] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_SANPHAM]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_SANPHAM](
	[MaCTSanPham] [nvarchar](20) NOT NULL,
	[MaSanPham] [varchar](20) NOT NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_dbo.CT_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaCTSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_TKBanHang]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_TKBanHang](
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
	[MaSanPham] [varchar](20) NOT NULL,
	[TonDau] [int] NULL,
	[SoLuongNhap] [int] NULL,
	[TienNhap] [money] NULL,
	[SoLuongXuat] [int] NULL,
	[TonCuoi] [int] NULL,
	[SoLuongBan] [int] NULL,
	[TienBan] [money] NULL,
 CONSTRAINT [PK_dbo.CT_TKBanHang] PRIMARY KEY CLUSTERED 
(
	[Thang] ASC,
	[Nam] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DAUSACH]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DAUSACH](
	[MaDauSach] [varchar](20) NOT NULL,
	[MaTheLoai] [varchar](20) NOT NULL,
	[TenDauSach] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.DAUSACH] PRIMARY KEY CLUSTERED 
(
	[MaDauSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DODUNGHOCTAP]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DODUNGHOCTAP](
	[MaSanPham] [varchar](20) NOT NULL,
	[MaLoaiDDHT] [varchar](20) NOT NULL,
	[MaNhaSanXuat] [varchar](20) NOT NULL,
	[NamSanXuat] [int] NULL,
 CONSTRAINT [PK_dbo.DODUNGHOCTAP] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DONVITINH]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONVITINH](
	[MaDVT] [varchar](20) NOT NULL,
	[TenDVT] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.DONVITINH] PRIMARY KEY CLUSTERED 
(
	[MaDVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOADONBANHANG]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOADONBANHANG](
	[MaHoaDon] [varchar](20) NOT NULL,
	[NgayBan] [date] NULL,
	[MaNhanVien] [varchar](20) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[TongThanhTien] [money] NULL,
 CONSTRAINT [PK_dbo.HOADONBANHANG] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAIDDHT]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAIDDHT](
	[MaLoaiDDHT] [varchar](20) NOT NULL,
	[TenLoaiDDHT] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.LOAIDDHT] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDDHT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MaLoaiSanPham] [varchar](20) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.LOAISANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[TaiKhoan] [varchar](20) NOT NULL,
	[MatKhau] [varchar](32) NOT NULL,
	[MaNhanVien] [varchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.NGUOIDUNG] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNhaCungCap] [varchar](20) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](20) NULL,
 CONSTRAINT [PK_dbo.NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNhanVien] [varchar](20) NOT NULL,
	[MaChucVu] [varchar](20) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [varchar](20) NULL,
	[LuongNhanVien] [money] NULL,
 CONSTRAINT [PK_dbo.NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHASANXUAT]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHASANXUAT](
	[MaNhaSanXuat] [varchar](20) NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.NHASANXUAT] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[MaNhaXuatBan] [varchar](20) NOT NULL,
	[TenNhaXuatBan] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.NHAXUATBAN] PRIMARY KEY CLUSTERED 
(
	[MaNhaXuatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUCHI]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUCHI](
	[MaPhieuChi] [varchar](20) NOT NULL,
	[MaNhanVienChi] [varchar](20) NOT NULL,
	[NgayChi] [date] NULL,
	[NguoiNhan] [nvarchar](50) NULL,
	[SoTien] [money] NULL,
	[LyDo] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.PHIEUCHI] PRIMARY KEY CLUSTERED 
(
	[MaPhieuChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUDATMUA]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUDATMUA](
	[MaPhieuDatMua] [varchar](20) NOT NULL,
	[NgayDatMua] [date] NULL,
	[MaNhanVien] [varchar](20) NOT NULL,
	[MaNhaCungCap] [varchar](20) NOT NULL,
	[TongSoLuong] [int] NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_dbo.PHIEUDATMUA] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDatMua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUNHAPKHO]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUNHAPKHO](
	[MaPhieuNhap] [varchar](20) NOT NULL,
	[NgayNhap] [date] NULL,
	[MaNhanVien] [varchar](20) NOT NULL,
	[MaPhieuDatMua] [varchar](20) NOT NULL,
	[TongSoLuong] [int] NULL,
 CONSTRAINT [PK_dbo.PHIEUNHAPKHO] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUTHU]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUTHU](
	[MaPhieuThu] [varchar](20) NOT NULL,
	[MaNhanVienThu] [varchar](20) NOT NULL,
	[NgayThu] [date] NULL,
	[SoTien] [money] NULL,
	[LyDo] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.PHIEUTHU] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUXUATKHO]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUXUATKHO](
	[MaPhieuXuat] [varchar](20) NOT NULL,
	[NgayXuat] [date] NULL,
	[MaNhanVien] [varchar](20) NOT NULL,
	[TongSoLuong] [int] NULL,
 CONSTRAINT [PK_dbo.PHIEUXUATKHO] PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QUAYHANG]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QUAYHANG](
	[MaQuay] [varchar](20) NOT NULL,
	[TenQuay] [nvarchar](50) NULL,
	[ViTri] [varchar](20) NULL,
 CONSTRAINT [PK_dbo.QUAYHANG] PRIMARY KEY CLUSTERED 
(
	[MaQuay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACH](
	[MaSanPham] [varchar](20) NOT NULL,
	[MaDauSach] [varchar](20) NOT NULL,
	[MaNhaXuatBan] [varchar](20) NOT NULL,
	[NamXuatBan] [int] NULL,
 CONSTRAINT [PK_dbo.SACH] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSanPham] [varchar](20) NOT NULL,
	[MaLoaiSanPham] [varchar](20) NOT NULL,
	[MaNhaCungCap] [varchar](20) NOT NULL,
	[MaDVT] [varchar](20) NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[DonGia] [money] NULL,
	[SoLuong] [int] NULL,
	[MaQuayHang] [varchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MaTacGia] [varchar](20) NOT NULL,
	[TenTacGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.TACGIA] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THELOAISACH]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THELOAISACH](
	[MaTheLoaiSach] [varchar](20) NOT NULL,
	[TenTheLoaiSach] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.THELOAISACH] PRIMARY KEY CLUSTERED 
(
	[MaTheLoaiSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THONGKEBANHANG]    Script Date: 27/06/2015 13:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGKEBANHANG](
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
	[TongTonDau] [int] NULL,
	[TongSoLuongNhap] [int] NULL,
	[TongTienNhap] [money] NULL,
	[TongSoLuongXuat] [int] NULL,
	[TongTonCuoi] [int] NULL,
	[TongSoLuongBan] [int] NULL,
	[TongTienBan] [money] NULL,
 CONSTRAINT [PK_dbo.THONGKEBANHANG] PRIMARY KEY CLUSTERED 
(
	[Thang] ASC,
	[Nam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201506261505231_initial', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7DDB6E1C3993E6FD02FB0E82AE76073D2EBBFBFF31DB0D7B065295DB3224953C5D65E1DF2B215D4AAB125395A9AD436F1B8B7DB2BDD847DA5758E689C94304CF995929251A70AB9264900C7E8C0806C9E0FFFB3FFFF7FDBFFDB5DD9CFD19EFF649967E387FF7E6EDF9599CAEB2C7247DFA707E3C7CFFE7FF76FE6FFFFA9FFFD3FB8F8FDBBFCEEEEB7CBFE4F948C974FFE17C7D383CFF3699EC57EB781BEDDF6C93D52EDB67DF0F6F56D976123D66939FDFBEFD75F2EEDD242624CE09ADB3B3F77F1CD343B28D8B1FE4E7344B57F1F3E1186D6EB3C778B3AFBE93944541F56C1E6DE3FD73B48A3F9CFFFB314A6F7ECCD7D1225AADDFCC9677E767179B24220D59C49BEFE767519A6687E8409AF9DBD77DBC38ECB2F469F14C3E449BE58FE798E4FB1E6DF671D5FCDF9AECA63D79FB73DE934953B026B53AEE0FD9D692E0BB5F2AD64CC4E24E0C3EA7AC23CCFB48987CF891F7BA60E087F3CB287D9AAEA32DE1F7D3F99958E16FD3CD2ECF0CF0F80D5BF2A7332EFD270A0B829EFCBF9FCEA6C7CDE1B88B3FA4F1F1B08B363F9D7D397EDB24ABEBF8C732FB8F38FD901E371BB6A5A4AD248DFB403E7DD965CFF1EEF0E38FF87BD5FEDBE8723A3D3F9BF0452762595A922F56F68D2022C97B7F1BFD7513A74F87F587F39F09987F4FFE8A1FEB0F1542BEA609990931FD3D27CD8EBE6D9A0F134DB5D3E826DADE27F1AAFBCAE74FD18F66A8CBDA67D1215E9269A72F7BCC12B1708B4D9F477F264F0504858630FCFB23DE1439F6EBE4B99CEA6F68EAC36C51E0938CF1EFBB6CFB47B661CBD2D48765B47B8A0FA443199A65911D772B8B16CE166416A484460A36919D360F6CDEA69D4816DA92BAB158BEBA53A62DAE0BE6DC025A4CE95E5ECC3F4DAF2E6EA777F34F7BB6C1700E89B9483688C1EF278DA452CA2F060F36C28B16EB5372316DB7975F3D0A92E53A4B3E25517A39ABEB36112175A9EBA54DA99B2301F7F4E69E0AAC78956CA3CDF9D9971DF9AB32517E3D3F5BACA2BCFD7FB399A7B584082148C4B9A990354E386FE4840DCCEB527DA2BC69B93DC89BB23D68EAF571757FEC6176C5A941B7FFAEABFCB03B6AAB9A25A49789A296776FC35413A764F647AA9A4C9969202D44EE85131982020CA92B45F9A151A9C6E6D2D5D7E9FD5758C415F8464C102951B694A41CF6869242007B9849624B75E694797BBFAC93F858CC18D5D0B3F980716F92F14167F2D88E78559418F6B7C7C8A8A17556BCAD650E6D73AB6C8E2D26D49EAFD7995193695EBCCD55166DA3EB7C8EAD5EAE8F462D2EF2E1AD25C9DA96E6791C5BF98F637430E52DCD8BB7B6CAA26D719DCFCBF2A9F5B095795F94E9D5B6AF5AED60D8F7677768AB0E62752C776430E6041FDBE035B92ECA2D75A164ECA3DAD209F18DFAB0C17C5DAA4FD4372DB7C77D53B67B5B9F7A40FAA8BEF4CB254E2EB9BCE16DCFD745B6F4B1A64513FDC72CEB6EDE2B67BD83C586BAB400ABCE7DEED71699F5F42F0BF62E01EAF63B0A81BA781F1391AFDB742EF6EBA920754F8F648D133DF76035E47B6959B1EEAE2BFF9C1E7EF9595B2E49D7C410684A5D66644245B29748A1D2A7CB07DD5A875D97C8059AB9AECA27A97B65E616563F7C7DD80208CFA5E980D73288C51E2C62AB64E56A13CC03095B38A3ED4ADE4A2B182F8F75BA41D158F3C5908060AB451157F6449504526211A55FD6D176702A856979D755CFB2F453D268B28C0C9E81A9C74972B342FEA2BC13292E4E4F23916FDA033ACA40EBAB3465CBB13C52ABD18C5E628536DF469E5485FA14241E62A1B779791BDD6451D263F57D9A8BB7D1EC7ED98B6F4BCFF0305B6ABCD4F55C2CBB58D6B711998F3FAEA27ECFE9103EDC27B9660045224D25728C0E4C230D816449104279EC77740C96105EE25BB4BCB572DEBEE9AA95835C1DB070403319B4DE7DF7A4A6A0DA9A10F23C005041B2C8DB95483E27C8A8B47D938C345748855A2A66716AE4F2FA324A4B31A0430693158105CDA1C64493CD16109C4E04DACBA4C33203CC203117CEE5B07E345EF4024D85D2D58B5DD786369A0068669D48E843500592A5464279BC0C51466DD898A2B4589FC66861D9D81BA27D1944EA7A83EFBFA926B78339208A2195C9E0E569A10AD3C5D55215EEDDD792B7A3234F4B59D5EBF5B37461F1AB1D295A57726DB429AD42754ED89B82676FD79F6265D4EA3D2AAA46DB6DE439098F93971C272E0BF26D3CB6E6616CE2F5EAA636DEC5F35C8F06133FE08E965E5AB5B24164711851B745E42A2EED1CE80E3B886AE77938A92979055CACAEAA70EFB2336F4747565759D52BB2BA02D8492ACF13E72B029C55C2A44173C21307CF1ED24EF2F09E49071C355E36770BC969A29FFC2C3FF1799B5B486CCD43B090429A289DCC7CD044D10B8A564C148B33FD3A134525A96CD4BCD3967353AED7B3FD4B0F75CD14769F42A5F36D38DA3AD069BFAB996A4B83D9381173831B307C2648E721396DA76AD0ED22453343F93D19C6594E4E5AB2CFE9799545B34C82561B73B9AEA987CBC9DD4911FC6EA9F146A8CB74546C8B2213D7B4DDE5A8A924099743D17A553EA903CACC5EDA54E890CD9CE58A9EDEA43DE549981BD197CDED9B41D8D0717ABD2623AB391C14E6961F31D497A4A76BAFCB433EF64090592CAA5BA329EFAA78997318968A9796EC6F0EE783FD64A475E7B2B60DED16AB1AC3AD13A5C9C2707771C876F1A7388D77641A3F7E890E877847B039CF52BD1C689470BB15F569BF67E92C3AAAD7DDB0838EDD8831BC1854C43F79761619703B587787593BB2747ACC12973E335AC1B8CBAC260926248D77516D0E8029F74FE57362A66D5DAE09E7AE639540E7B3285AAECC2875409DDBCB32133B6523D5F9B20395EBAF535217B68FBDC8645C9CF66233AF32B0E864DAE3223E9F5C442853A7B518AD58D08A283538521B483C8916A7993073124FDCA15B1BD9C414EC73D1C8B5DF7EE5D8EB3D1CB21633ABBFD393988EC7AC45CCAA0F633B61953D736D1902B12AD7731044DA7A7BA0F67AC1BFD029FAEA8714907091B51892D02F329BFB6D79201897FA5A7D1889E174D941D9D620E2A2B9F960232CEA527D8A8ABC0D2E42A22CD78378D0541C4430DC27CB5DB77355B9B7E170754684BCEA7A8DE3D59919994257D96A69AB22D99281907F7619EDE36AB4186FC3B98145369B5DF57021A650B2A4953D1DC889B642DD96675B1AC621465D9E48A0C6838437EB802CE0FD39289FC30D3ADA6158A954C98A36A399A0332C484E2FEF4EC374DBB5535EAAEF8553D972B755533F73B45A32692A0FBE5EE2F117767E410B27D53C745D3AD1C966B974AACAF5BC74A2AD775A3AF526D5CBA593BEFAEE11EB295F01F35D23891DA3D2AC2CEF0197E0ECD3829945C7B2D9BD1830F9105C2A2382B667C00875DB1ECEADF9065D0F2ED38AA5619E85B919CCA5C83142F864072385760A9E445532D0322911324A841C7E37E76B065A59FE65A15E6FCDD7ED76B839DFDF5C5BAEE39B30DE23878BFBDA6EB7E032F69D9AD27D7D78E69A376919AD8A6BD7CA46D599A06695698A8655196C9B5641036519939E6BCB7A30D9ED212003B06B0DE5F2DBADAEB865B54B5D94E95380D4ADB6971F75C91EE6B0B6EAF036A19182359830B892156694E3890966F6D81D97A0057B4523DB7E0748B2C5FBC0A551FD9D82D3515ECADBE82AA9EABAAEA6F6A1E5BABA2AD7F3BA9AB6DE695DDDDB62A35C57EBABEFCE0CB25C0A00EB6764B1E07EB1B67870C8FA522D29D5FB85DAA2E58EF7698BB2BD2CBD8B23FDBD549F5F44602A36BD88F06A9EF530787A4B77E9957D9ECB694A5E66B3D8F28C5551A4BFC9C83F0C6E70FA137DCD16CE0DBE8F0566453C0470DE267EA0416EE1E29441096CE304CD8C1C4F83CFCFA28784B0ECE0C3AA5866C48B8E65478C03307BF37C8E69668BE8FF7CB81AD3028016C133D3FBF106059A932506996D861F5EC8C2597D5619FCCCEEE23CB4F45675CBD571CFD8B55B97E08C6BB9B246BA75519D201EBBA852DCDF6DBF36E1006ECB3710A49394ADD7C75D356DBD36F8144B7BF5C19B4E2DD5D768B9CE6AE30302765021D5B39DD5C82C5D3AA88D6AFA2E6A141F6268B7B64E2519EFC06EB92ED929D9B201C144B6085F9FB97F317FE1333F4C61E95EAC8BF57867304AC82473F12C3625BBF7E210C110A9FC3739025A751F75D06947974A0DA987261BE3519152650FA79CC5C6C579B1DF67ABA46895B8A478982D8A05CD54C0E9C7F4F1AC8A1C23656D9AD79CEF61D628B7645624CF641E90967C387F27F150499ABA921AD2FC828BA7FE4F1275328BE25D4CD8106D48813D9997497A90A75C92AE92E768A3EDA3501271BCAA9C37135A9998328B9FE3F491B455CB8E00ADA095091245C7AFF713063D6A50516C5E5ECC3F4DAF2E6EA777F34F7B14587076085CCDAC31C71642BD1F7CA9BB6A36BA0A7F9539C4D45C316948218A149ECD2E8026BF378F4A18FCF1794676550E0F0BC185BE586F80DA50320BEB9AA1B0C03CC816F20AE3826F0BBA9455CCE3E55A5102BC521E4A4A418FA437A49BA573BBE249EE601FB249E6855D2B604F7A17A8825EE2C1865EF92C4F33F48CD3D21C56CA1700E543D9EDA04AD141B3F1045E84B20294820B5E0DE80048E8AB89D888EB9F50D40EBB0A50DA871759752ABCF3D80AB874FD351B607C7FC91C653AD678B7A403B8691E16C15061FACA88A0C8A893D41C7FA6CF29C928442A0B0443330E984140F5D498391CCD3815A045BD48411D22F5AF51859683BD4350DBE53E45A113EC4E4016E22F18282594C17306822CA41B2A96B2D0E0C914198848652165A19603169207396E63290BB59C0AD0A22E7C1EC87334A88B42F7368D073CF4B5982F36DE89FC7F7F97CEE24D7C88CF2E5687E220E534DAAFA247D9193F21ED08E14851F7A13BF1A919B221084F65D0680C446611A41B2409076BCC25A759C0796E623021AF5B119A267D371B78F4DD0673009AF0C7B731DD884AE4E9048518D33D6BC2A1C2C1723478AAA153E069BB6CE8C4C51E00B1957C6AE604684CB7C03350CFE8D3342650D32865EC4D9B81E863A4F99DAA62647886A085D5A17431D818C6D56D102486E73617868611C6B989C0C4026E45201A75DF64F49188DF60DEB9274E8D18D951A3BB7608E911AD89AD1FD015D43778D53DEDC903E404C4BE65271CC2190381269E738301EEACBC39C8D491A03BDBCA5376D36C54D5B7B9CC11A6E44890A67473FA008E548CE1401FB6983B87406F49589D4450C73B163D97AD6EEFE9FA6B36D0CA1B8156071394AC09D198AE41A7136CEAB8D341C1D69B5453F5B13F803989B4DEC1058574C6465F19DFB919FCE6FA8739B05461A13BC395A27F66A309C530B70294820DE62D406EE9766584412161556692323E2C6F889557245BF47BE85B0680920F24DA9A1DA7E093B9F9845CE2B733E3147CF16F49370A150903ABD07BBA98B09C6AA5F7413BC1AA4144F04ED1AAE596B16EC46337582969357742B4A68B33AA7CCC490C0C58004A0601F5DDFD4EC089C5AA6595BADC985047594166980D381E7FC5E2242BD879EFFA3B455B75E5553FBE6264512DE2547B2178FC45C68F5D5DC65552B572BF4321F7705FB832FE1EEB6E67EEF1DAF8DA95F1501DB8EBE85E5774D30CC98AB02D964E730547AC9AD29FE121C4CB53A8742C781E6768D040105D191A5874EF4EC439CA1563158E4777B23228602E8468455707252B4F98F13D055521F49024EC6AD49E91C4AAE9EBCE8249DFCDC65E1D03CCF280A4864D415AD4391CCDEF2F80455A83A2EECC7857771694BDEE13849EB7157A85A0788351BFA903646FEB6A69CFDB398A9E1AEBBBF0774C1D3772D086F400329D9043F2B705B37E659BA6B33D22CD49A49D18D4F25863A6386063FE0686181772588057110EAD1368311DEC11560C2FEC5A010778ED0355BA9B5548FEB6D0A5B847D5C1252A4D677B449AD3ADA99E05181BDAE7C1205C0C921F829A5DD4207D15EE01646CA69E1C880C9D168AA8644C139B187BE62C504433339ACB017D526E73146D7F97D3131D9F139C9965583A52E6404AC4BBFACCC8CD7C917F8BFF825E56FDBA8FAB288DFBEA7D03114F39CD457CA8771ABEF153B2098507CE58099D2235269A9A440A8DB406D069182D91C1C6006A4D152C496E0A184509A0D0C410926860F1E7312AF55A1126042FC1A13E094E37B96F42062D457AAE4722859CF70468300177242AE8FB088ADED1050FDA3D9AC38CFB38414B6AD2BD5FB48548807FAC8538414B6AECFD27A871E6A3CADFA8836831C95A6AC20D54899CF2650CB875CC0D01A8754CB2969A782F47A22766D052E44E4C4BE414E7A96179488F2A42121139C708506A0EA94974B0F36B48DFCA434460C7C077DEC15ED1631D50AFB037B801F9536FC3CAD20779EB154040B5A32D8F3CFCDA23842166AF150010FE8006C81BBA5305F1067B470D912EC5CA15962CD0DB57809D50BE26241B08E5777D7F1AA357EE4E9326D0614CA386181087F78CC9289A1B0F70B45ECEBA56C4EBA55D11EC1BC9025452AB6D758E9AD2B89AF07D37E00BB569F950B2006F909C788FE002308F1446B29660176C9203A142E851474BE5871B8D97CA63070BDDA9A204320435813D30C384F45401068BFCA9F40EB1B13F3DA00284FBE4A8A116B93D5BA09894005BB4A12BB98EA88257721D51BD286616AF9223879919F66C41232C02BC318BC6C8F5481B8FD1A45B6614414669964EF6FCD2840804B866135490EBA961584179C2204B1F1BE24A66624BAB10E85330D2300C9E062D4AF6B901B063A66922B36110348CE526A3441FCD4D8620FE149E750037909BD8DAD9C17640028A41168449EC315EFB6BA28FD9F4CD8870CBDA4219D70AE098791C2CAE774691B0B82EEADEE0B40C7E258E0BEE1471021C129609869C490C27111B9A284E62F74CC49E3E7053474C534F5065E021AC43BA6969C99F8E26A33ABC0DC01E8B78385CD7CC22E270BD54BBD62CA863E0C21D819E56889283268157706341C3336BE3A35B2EC11141002619840EE1FAA40E1EC275491DB2C2345E484BF3118B8F80ACBE0D225F888B6675EC0B711D8EDF84B70877219B76C196526020061DAFF47052866CF0E651475882E20800ACD1861BE03AA20A38C0F54371EDDD2CC6404B5CC1EEC32342487B755E9219AACBF3922042AE5C9B5F7A6F4F0E21F7B1E1C96572795B9C109AEBDBE234C3AFFADA5CBB6E895FC24D60C829A8B82BCC3BF0E0DBC2BC2B10BD88AABDE5DB3A03EA7D31150BA00BAC48E3852BAC1E6C106EADF2B626BC99E7625043175641435A7BB355307155775B05C35975B9D3F43AAB09A7DD248B70E1129628AA5B99E29C47EE658A1204BFE367729FB2A589A3BCFA87F9E18CAE0ACA8E32DD65415343CD9C72870E75F8BE9A9683368E74F5FDB600DCD3BB8203FB81916B56067B7D266B0DD5952CFF1DBF4E5719E03D210336E991A5BB54E4CFA83E01551C23D1B349BA0EA3EC107B21C69F3DEC1D189935D039187FB628365A8CEE74283BA4DC5A716291723F25F0660A76D1006095D19D04AE63BA5B09C6274C8CA8B67E4C03780C1D0094E6A6023FF2F85D05BE17D8E12C1DB5503CA91F68A727E169DAFBC962B58EB751F5E1FD846459C5CF8763B4B9CD1EE3CDBE4EB88D9E9F93F469DF94ACBE9C2D9EA355EE8FFFE7C5F9D95FDB4DBAFF70BE3E1C9E7F9B4CF605E9FD9B6DB2DA65FBECFBE1CD2ADB4EA2C76CF2F3DBB7BF4EDEBD9B6C4B1A931577724A3CB74F6B3A64BBE829165249D5A4A5BF27BBFD8128B1E85BB427FC9F3E6EA56CECB97F9E7394BF754DE0D17E79E8EA437875B1FC6FEA4F4A6F7E144BECD5FACD6C79F74645AAE1E6EFA483DB383D147D8D99715717270416AB6813EDEA2B17F4BEC5657EB46F9A6D8EDB94FB240251458339B2C753529CE5C3E9CD9FA21F8DA46009F2293614B9B7C17992CA67C373C40B9C174779220D73BB38C81E93EFC9AA98C4BF1FD3E266115C6F91FD73BA278CA8339ED57F549B78E2BC28E73AAF0A4A0A10A434A0FA12EDC8CF43BCE3BEDEC7BB7D7919EAB8CBEFECC0E3688435A90226CDAF1A1E68423D7CA26F451CFCA49AB854B3AADE4FF83187B27C7D7E8C0EB10F2A4A0A232A86830A7ECCA12CE56D451F549414C2A3E26E973C2569B4C1FAC6B71C92E1C6525327CFEBF4C6183034151A18FAE907948E8191A028DB95765FAEB3E45312A597339E1CFBDD9EDAF512A6760D6C08E1D46E8E04C4D39B7B9E56F3F504AC03E5E877601A34F72E5CEC824EC4348B24A11636294C2539C0904AF224BF4A1AE4095534093DDB040D1C5C0C82110E7DC1A1256380B995E56009D8C2E12558050A2F928D5AC0C818D80478517CA41A17136F11E0FE50E5B857B7B604EB02B9CB85535AC629DC302EC19CDE2C898AAB4E2CA9FA9B0D953CA85111949727443F5B1A28701F85A41330555498ECC052A14E521743A561A424899A24EF456B857059D855099E3A8945BDA894D834BF6AEA1921D4507FF6254E6789449FA604D0AA28A384D49ECD2D8A69176B6BC4F488691F4CB7643336DBA30E26A31DA65F82C158CD234F2F0248C4C4818414ECC4B88348319F2D68ED0823E6EB248FAAC11163BE9F8001858F52178E9E324E829397A7751D80D4C0A47856C10041AC8349EADBF9520E9193E7651C227E88DA728854D1465CBC21C643F412D49A22E4898DC8C4C818A836BC283E464D38145EBD616152D4D46A8B0520C825D91EA548A0531496748E5992B701383C517E36A7B5C89692F3A2FE66E109F931CB040748F1E504D4B60A831D286E1AC0C7457537C095C44E93E4BB46E4C08CDAED01AAA24807F7EA0390A7F087B6E8CB14BF2AEA8921D0AF3F7BAE128B19232E0E8B8F3D5B3614C32EB6CD88E111C336186EC9F4A3187631FEEC30FC620C40F41E8CB5FE8529999A815869CD80D57764006310BBBD84D3CC27384490FDEE625D86D9B363AFEA4BF4D04BFC38C565963E2DB2C23329F864D8040B7A49BA26EB40895AF3F9542C451CA95D198BD5DD2F677BB146232CAAEA547F3588D4C3268552EBADEE91B03304AA86267A7A48D89923BA48D834CF6A9A292556D2A49C823D59C1DCD9A41C613EC23C10CCDB3439EBFBCFAE56A725CC5F82EDA9BDF86FB56BA32466B2C7A621D0A5117A1BD1E00C3C3D34E8174E6B96A5455810EE1454F5CDC67D0818892FD540D463A98B9D403E0AC5499B890C30A56A688AE7F18D0AB2E2D98DEAB3AFAF045664A7A8C4DADAD5E4E176D2E6DA08B7EEE0D6D60E2D0FB7D3309BC2E0ED2598667810455C8F7EDEE77FDF7DFF2FB242ADC8FD5707B30C6989D16079DB4EB711176995A7A70CC2AAA219DA89771BCDEE9722A9E293D5392FB09BECF7A1DA9CB75113C89367121EE0B307AB531575D260A2CCEE665FE79FAEEEA6CB8B2F7DCE96321CA83C55E030A12A6A6CC04C699EA0A134718AE45F901EFBFD047000C50A34119417D3ABBEC69D865614641016DB5233EA34C8A134EA68F843E5A883F4D8EF2731EA889EEB64B159072E765965B66E8B0BAA56AA864B1D88FBB452D0520DC557EF53A018AFD8A4D7BB3E62F5BE34004D52CF0BF27A4ABAACC4C729394EC9D73C255B725AD0A7341CBC1503F520045FC57460CC7041F3478B66149F46958CE2D308B4E5321E446C991400AE74350EC195267A1EF96016FDE2910F26A96723901365A325388A32A34A46516604DA519475693C73A26CB4A0EDFDBF9DB80157EBD1621ED58C5925A39AD10F70BD03220F729D1200AC741F03022B4DF4563258356C52EF4E5322C0463B79146046958C024C3FC0A300EBD8C59C3F64F87AAC63E7136A6492DE27F97946CF7B03281D93233778D996CF6A4944EA6F27709241C9D14EDCFF55FD4E2B9936351A44BBFEDCBBA3B1669A8BF574EA4C6BCDA55133CD45629B30ED2548EAFAA837FE8CA4CBDD1C849A81D4D652C0878C9603EF799509AFE996576F37B314A3DFE1D5ACAA15EE77B34AC4C07717CAB4F1A24C803554EB97A66A2038DF9A1A81D011105ABECE5403C1F93E930510C6BB4C66F64740E3C3D3F2380DB3238F6821136BBE5A1ED60F18DD28FC457AD7F846FDC424EAD7AA198649D3E01408D41246557612A6A5B3CBD28103B5B41B2CE8E40DA9117E7DC3AFCD203EA763BE0DC3B4AACDDE7CF7249C6B07A166E1DA412968860FBA6BCA24F4E3DA198C5346316E1D3A65AA56B85B30C8793D26EDE4D7E243F19BD463E5ACEEC7B16AC6AA65D7463D56CEBAD162AC46D786856B238CF2F5D4BCA7A17673231C88EF40BFF6E5DA18961BA25F3D3E0C25DE600A580786D13C1DAC0307E51B38796361C444E70BF6D3314A8661301063CE25B41BB8E65344ACD12FD31DC2BA4D97C89A9A49E867853E94A0B6FDC6186A1AE0F6BCE512B7EE99B4935FEF0D2418AC4FF89971A83A5D9EFB8425B11DAA17A204AF6697515ADC90F016AA28293345A8288E8FDA5516CD3269655A7FB551826E4AB50FE5A5E47337EA8B36C14981D5C323CDB33AC1571E0615BB6DEA96868F2EDA65687C6C4FF0377C7411FDE67C7475C7BE46E552322F8C7651D232502F9AF2EDEB97DCF121075EAD3FF6E68D8DD3EB35E1B11C119A4FB1F3EF2E494BD6F21BCB42D209E8522DAA3A50A65C1B4E519B529002AEBC009751BBF1E4716896AF503189FE2E4306E380D39049EDD9FCE0917782F6C788BCBE91D792C1C623AF4F8B6D189614317097D7C196E92829B365BAA2388ACDB56C5FAC2D0D8BB9B8309FF7E8E5CED2597494AC9BE29BF56936F902029760E37B8F539958F3D5BA65F2F9012EC18A5FD36396480C2B3F5AB74BB2A3D9EF76FC9248D18F27609EEAE66A37AE1EDA0407E3B49AE5A2325A07D07773602D3D1F862FBD9214B28A2E3E073943079EBEE6D27CF7036AA9226D07D40941FA016E4A7369DE63510A217930CAEF417A0119B16C92FF584035D0EFFDBB391B1962BFCC1865C828434619321419D29E8BBF9121F60B463319E2E6DCD70B91F10CB7D93277B92660BE8EC32C74D5C40C96BA3A02A7BCD82DDC3DF022F5C97EA1CA9C7504D69762A2652BE1452B97E2D45279F12A255AF3135CC43E392C6499A6C82B5021CD9E9F20C9535AD8EAE766074B5BBE11AF6271CB4E7FC8411CC47A9404027E723A8815C9890AA85781AC49497CE0FD0A64553E292CCBA740D6A5286DF04E85B0325939840CD529AC5805D1F01AD6ACA3681845C38B120D2D2D4405D1F0B296A2C35826B2EF03F8D9A10A4A060B4465697C55CF3D6F203F0EEFB21D19A7285131ED04AC7F0DD73B30FD9916389DB8EAECFD0A71F4E4F3230E95B56636B16C75394E3474B6B6A47258B6BA9C957161EB4BD013CCEB2E7E020B2764A0255485F131635FA6918EF9D2142B1581911492CC69CE9268BA16FC61F5379B331D3362DA11B32A4AC4431D4CC209A82D350A3AD05A4D039C9456472F21097092456BB8AA6AB0897196ABCFBEDB6E0CFCA47D3726AD67A5CBA0C245E78EA8E817152DD90C0C2A5C4C067B54BC048381BE15E6A728303206C6025E141FABBC8C682494DFACCC03990CFD684EE73E59EE04355E7D3A0105AE1A970ED4775DBD93F22E07429A8AE5676FD10C52A7DFFDC857E32F10AFBEF6AC3BE990B868CE573E242D292E3A242E6ACB6C485E82AAA22FB3FBBBE2203286DE4FB8A8DA1351BE272FFB3DCBEFD64E4F991C9770026A47C5E38E7C9D79F5CE8ECE9291A0DFA84C0AE28B036BE1D24EC0B959F0D1D5B339343EB6E8CD2CF8E8EACA34E7E34B10F48524498B5D636FF71542C8CC89891656AE22EB52B21393A6D83A31419242D209887D35BFBB7117560D7075175276422E009A18C23184D524A4F6EF6AAB39EAE86A1B2C47DB7353D51C7574535972F425A884FAB9793FF9845031500668497CA0EA22E26BDFF5679B6BDCCB757C236D16319FADF409D830F6FB096812C54875F1867859BBDB0BE23517A5C949537C6FDAD16197AAA029DEE214EB069BD4B36AAA47C9E9C9F27194C4516AEB95F46A949CDE48B718A597A0E596D12A7F2DD74F74C2440C741C565001F1B284A895AAAF564A0922C57C3E019584F3B58B8B3B45E54E0AA966A12C86AA046F2984D4C0A4F47DB7A1E49E8BA21812F7DA3AFE5D72CF45809B73EF4588EF52AF0758A828289908725569ADC1022D5AB8243BB98E1115D34E41C2ABB9DEC9FD4CDA023759CF7214B33B4398B7E2E801C2CBBEB216EFB6356C75520203676B6BF7821AB63A690707B6BE043D41644EEEA2CBAF7679FBDB114266FB1B6861A5FBB12E25EF6FD014DBFD0D90A49074020A42CDEF6EF637AA06B8EE6F507642BE639A18C21B8FD524A4F6BFBF5173D4717F63B01C6D6F7FA3E6A8E3FE8625475F824A285E9C5BAE8F219E7105C818A803BC283E56B40CF47A6BF1DD6693A30E3F0D10E4922C420A3D453F246AF4A3CD7D1D39B27FFDCD9CCACD8F59C6D328BF9C806253E1A6AB475F49F5EE0FBE16030ABFE35824858A9A0ED7C3A5FAC77F872AA1DF7DEF7280A1D2EBCF7EC44B380BA4CB8F3D6B790A30E7D7634780BD0C80B5F91C6D0E30E7A7688D01F612CC9DCB6C16FB06B2006918183A48396C7888ADF9345D47DBA9F47A3B9F626E074CA39B684B66F38A27C77CB6A0B53EAEEE0503A7FE6671AB193A11E2705065961129953F8E29506A3E9BD3E2DF29E2E809491616187878DEE5243E1A7BC4319C097651DDED963AFC5C96CB6359D8D953B7C3AC98A7C7CD7554C846E9367EF3D5921291E8B7C70820562758D2CB836C5DAF3380204DB1A4282D655CD659ECC3E900359A624E91DE31E4A8355F2DD659D08C72090E041D26B03F95806E5DB9ED86314F70F3F29AF97E026B4154AF76B0102CEA765805F2AA58B0A2F8443F0B9451D2422D4C8A671595FA16E9579F3D03052027AA029D7A6334BD584193E25785A0FC856A8454CFE50676F326D4FD255594A280A19F14910DC285A068AC0BB98A20AFCA290EBE87BB48A0F03E87F3E637268A50459310A082DA6C81EAA8D30254438D19A81E9A18A02268811CCAFFC29B3E502534D1AFA2C62A122A69123CFD2F88380915450E39AC16E6309CEAE843B84316ACBD252A5926A9679765690AD9FB2B4753C890F8680A8DA6D0680A292B194D21AB6A46536834855EB529D4D2E65A690AD9EFACB998426E41E8ED6C21C73A0C8D2137EAE6D690237D2B73C8AD0E377BC8AD2E1B83C8BD063B8BC8F101054B93C8B916639BC8B9062BA3C8B9162BABC8AD161BB3C8A3062BBBC8A31E4BC3C8A32643CBC8A3064BD3C8AD261BDBC8AD0673E3C88DBEA975E448DDDA3C7A09A766E64FC72C991DBD83F5A2740C4ECF28CAE25048C89C906E77D0AF366784C9EC12DFF7A41F5DCE1A63078D4F622756394E5DDC36A9EB777928920EAF2401EA04DF2393D5B04B67E6AAEFA14E642A8E63F6EE246E46C8E1BDBE7184D8116AEB360C1D218767D32C466840FAED62BFCF56495191ACE4EA68318BDA52308812C5E446E276A181551EE16530A5F8B0C88EBB15306A18266DA37EE5CCA28D7068DF32DA3DC550B845ECCEAD55C816BC75EF27E0309A8F34EB7F21DD6926ACF26C1256483AE4CB64A4B9F4EC45E85BA3E0723A15595C7CF21C7DAC79B620B0B77E7C8050CB03D2EA4394A4F14ECC420DABEA0BFDBDAF3FE4C31B3DC54446C59B7D53AE94B145B7F6CFD10A17C34482EEB23F93C7784756383FF68778FB26CFF066F13F36D34D5268853AC36D9426DFE3FD6199FD474CE4EACF6FDFFD7C7E76B149A23D291A6FBE9F9FFDB5DDA4FBDF56C7FD21DB46699A1D8AAE7F385F1F0ECFBF4D26FBA2C6FD9B6DB2DA65FBECFBE1CD2ADB4EA2C76C4268FD3279F76E123F6E2762F18AAC1195B7BFD654F6FBC70D3BEC8C8109F940F981BB8E25C8D523FC47FCFD4C01DCF713B1EC7B780AE40DF970FE67B45BADA3DDF9D96DF4D74D9C3E1DD6395FCFCFE6C7CD26FAB62139BE479B7D2CD522D1649CA90265919DBF7D4E1FE3BF3E9CFFAFA2EC6F679FFFF1C014FFE9EC6E4786FAB7B3B767FFDBB755F9BD99C68F5C36AB30C5184287DDD1800E3114444236FDE308B8F790D5EE4A643583E1042BF4BA8309B87020F80DE6729D254411A697B39AF021D9C6B9708857496968FD8BEDC0D634AF97E168162F104F6FEE29E008A96D6EFC3144DFFD4AD42291FF24F96F6AFAC6430E6B52D311C7B48BC980F3E6414891526D9F38C993A26C486152DEE4E77A9A425DFDFB5B5BC4D44F812988BE7BEB40953EFE653A2EC6F01619B1CDD2F847202057A3EE26B8C0EB5546520BC69A376478BA8100B3DC11A37BBE4EE2AD1761E321A13B1B4E8382DDFA311996A66C60D9522318A26D24601802E14D96C4DB5AC99B171875F53D61E3290F088FE23E706790ADF6C9DC510B5F2F33066E5D3C28767384F0845D40A250DB56F00F897DFE2947C75655E5836A7EA2F11659A1F8EA6625F9B2D4526827E99A08EE86C6B74443C35C652E1FDAC43B5202B918E73B3B8C069A21101681B4532EADAA0A876CD12C4BA9AB9514D9649135F004E83AD16811BC35C79D50EB81416CA47D11C49DFF71411143E03548D7DB6876BF746B1029187885270C5CA8051E37899D2C277FFD53BE3B7915B979B09AD21DB8AF9A63874E42A1C093BD408060E80D288668BB066F6D03D447B6DC8D809C424726405995B30190177F4DEABF13C961B7C46A076E7E00F25F5FB1645FCEEAEA54AD6E97F595B55CAC8F7FBA03158EA8D38A5C2CAB721EA2BCF8CB968BED0AB576B0E237FAFE428D25FB52845ADBA2C36B713A5D7AC801A6B0C27C7C1193B95DCFD8D5ACBE57E43488E5D52443B9EF35E2754D2EA352960D2BF3150834DB825D7A63C5789CF90B640107DA63E0FC25F665B3871358607BAF6BAFD7D16ACD3A13426D6D1249BE24AD5E5BEE35D94884E5B50750F2C60181F3809C7328685C5873B16A0CA3F80C666651E8612ECE4B5B7C3672C1BDE2770E159FA0FECAF2173D3D5C739505C3AE3A9D36988A132ACF21BC05ACADE8D2942C9D1EB3C49F258C0474E4084321A41859AE49EBAEE3BE04898B68F09CE00E96B9F7C460CC7BDFC9913727C404619AE43F499EFC270AD31ECFC95271A8A509C36E8B39D9678AE8CD26469A6A5BCEDB1A0288B7EBED67B6F29C9889C7AE363CF1896D2486386329D03EE953968B2CC8394BE381A77B784EC39E977619F0B25CE8A166A9061AE4FB64B9EB6620682C11676106C5B537956465D936C4184BB975195647FE709561489C7B4319464BB720C304DAED72B2BEC1E8C446E4FAA3D18E795D34F0119A2A4C84DB02AF2A1CF86088D0D576C713BA126B3A9CF0755193D1646FF5869C0D3CDD9639873D136DCC3EFCFD00231EB2C583335226DEBA8406DF54B590D0C8DB2186129A966E41420BB43B388E2E3DE267B5A508BC2562BCA358940D2CA4B977CF7CF6030981D037289836B938CE0775D3017813C40C57EA37B280028A57B0A0DCC8535740563C020390177FB00AC8AD798E0A2881BF38856446DF87813C798A27A3E0ECD89D7F3033FAEC139C1D7DD709C88E3FDD8465B6B84BA07E79092B003EAE846546DF4E020AE0CF2301996D861F0DE50179873DEC107E66BBFB70A5ABDC4E44B81B902E1404DBDB89442335DC8908C2C49D90B8CE76A521B81C9DBCFC92BBCD910AB7CFEC484358343B52110C3B172AE2B553671AFC694B673254367AD261EC22671A5492BAD3112F22B8D008807D7E61EA44415E91398948269EB72915F3451C1CA9D0709312890469B0FF484B065E775401EA70AABFFCECB19AE9EB68A3ADAFCFC74564636EFB389430F7A0D9DDAEB270D8236D888BCBCCAF5894ED6084F5F1D13CC243E19E1AE7F82F503429238E9282C12F380E63122F2EA6572773E1B5AF6353A72820143E47530C55E583BAB4A2ADDAA8F5D93BBA9B7D9D7FBABA9B2E2FBE8C90C437578DAF6EE7A5838312DBAA340565553E3028D5EB35735032512A45CFC3C36C51E8C3A980CD8FE9E3D91FD9067252E49120DF305F6F8F9B43F2BC4956A4E60FE7EFA47E35A420BF49418D4FE009FE9344904C8E380F679C441B52607FD845891C90FCCB2E4957C973B491BA21E444669DCA193BA1C4C59459FC1C1384A407A8C7012AA6F40551A0630917A9540D0D1A59F5F262FE697A75713BBD9B7FDAA3F0106D82623C9B8FC300071626D7D29A6B171A4294CC5EC0513A1BD9F0C3A8D8E0DC92A5CCA83E9963C20A5CA10405101F0F4502BA09638E034BECE13576291B660B24665D0B8241741616849A8F2F4620C01CD5D6096F1A758106EAF42770808F1E3783286D1014A3C87C35C78360D41684E8B756D080C44B41870608906285049099B6B5750080AA9D64F89511D29C864E8500A1364EC70849ADE0C16E7CF01D4C7344A8F8EB527107E06037561884C0014D04692FECC734129F26D88305A229A5B50217BCDFE8D0A90205D9A32660DDBD48151D66028B95FE90D29F60B183C80948966A9B9441091C5544902CC2EE6A235968823D5E209A525A7B9205EC373A74AA503BF6B009587717AB57BED548F41147B92276E82E2DDF9D3ABB58956FA44CA3FD2A7A94FD7EF9F332A70BB1FE44921DB6FA1549DCD1A552266171519AC105CF3B15432BA45889A4A65E012C4C422B4851C40841470D8DFE62051784D50EB5762384380B478F13F9F84A3DA46E464E6F08C1023EA10385C6FB691B21CA8ABB05C92094941D3E87AC9A8255DA018AF8201AA5B8C182F334C32984DE6087544CB2123B4DCD024A98845670A28A25828C1C123C04CC3BF707153228ED35AEEB65BC1E75E1D6F0BDE1AC177964079DBE251273AADE60D30038835F8C25F7FD94370ED0A02CE8F0A86F3CB5B585A0A9B59B9DC5EA9E44BDB7A8D94A902F56D41B8CF4B3E51623B09BD0FE56021668061D2AE51537CBCD46ABDD0475C55D4344273A82C2A37BC1D1172CECC446EF90A82FBA104068D749E2A59862149B8FA78C063828113A2C5014A21651A0B8CED9C929049367EBD99308FCA1E8F21C42FDAD93F5327FC50468479DD2CE610628980D3AB8F85D16733829AED4B8D4DB07A6A057E6D925B33C94F018BE4844590D2C7A47BB5D3CE1D576E287A1D71809A4E06852ACFF45BAF458395F98EFE6EACA42DE05F3B7204182F0D1C16FE3BB20C3AED63E77B14B0BDCFC0095C342E5940F52D9AF42D4A12F5A3E50A5A9BC73D0981FA80A0719A7F35983878BEB31AA5EC1229ED6D67B54021ED8EECB9BD2CFB16D5B4F0A5A6D0FB0D00990B0B8E84974F4860C3BA17162D09023EAB5050B26724A0389E2E3CB8283C4516D9D7018AE3ED0A03B60191611B62735878E0CBBE36E3D0B0AF6F222731B50E77B73BAE3D992CF040C0382B5A9E53B870ED784E1D8236ED74F2D318F54DD23EC34EE394BC1F4E2E1D6F775E780F577A106EB005F0FDA4BCFA700B4261E19D788E6EB8B81141279ED547154B87FF32169083DFCBECBE809CF8765F600042E0A7E44AAA883A3517CE009BC7DF346A63190535132135DAAEB749B49B921D0FF8EA5116406BB3F6981977EB7259BE8573AC8C871B66A55443FBF38E060AF29A083A90CD1DD0A7CD4357612B221D79757D96A193DEB74D10C8F5C165C27717571728E4B78393A0A67AE4BB51D9DDCCD43AFE51BD80C88946777D9406FF4E06EF9B19B63112EA80A78F4577EBF0C1D5CC5B308AD824A556F371AAD0A72678A2B39585FADD9E8E7178FAD39F2B21B3ACACAB72B5AC597BAE6E008FBFD98AE307FD1E7744F5A777E76F1F4B48B9FA2434C03315E1E93CDE1734A7FCF934DF498AC6A62F4FBE7FD34DB3E677B2E8AE3976847EA3AC4BB1C038B781B9166AFF61FCE2F369BEC7F7EDE96634F1AF067BCDB27F9ADD3C56A4D727D387FFC26BAD22929DED52686E2CE1EC9CFCFA9146072A2A3268572F4A6993F06243A74CB17811A8A5A125C583B9786BD9FD443658A85AFCF652B472C8C582895C12BC182117B9AE8B0439499E191BD5C67C9A7244A2F6735C943B2E570FD6517AF927DD1EF7F312677BD0C42AE789B7C7A734FE71C29BB8D3608BD77BFE6DC8CF2C1F89B1734862842476874028D214A544F68187188EE570E51ACA28F3F78D8205C8C60FFB958BC3BCA35325513FDBB9E28FAAC3D44AF78E05E4B107DCFDEB1DFC52C177B5EBDAA099B5E76681DA2A41FD1FA5AD13A44E5E3875633ED5C466E1FA2E6093FF1788AFED36EB98B56EBF93A89B78E346D867088E2781C426E088728A37C86D0883775FCFB41CA28F1918200F60617E03FA88F8ED27371CFE5CD0A37EDC0A7E08D1B84BC021F6CBA52480E51E68E907CD1901CA20EF183A4397FAA1BB2835524FCE5C920538C276939CB5A594FCB219AFCED42B2B45C64C50AB3A6593C9A67DCD1FC9117620936C5BF2568716B380E56898C707C89701CAC02F181A3D92A8D0B0E31AA11F90862208AB32C6502167DDF6491CDEC10A6966DF1E0934B80CD28EE47D838C0E6558AE5F0B031627D7DDA7D88123EF4A412A2009FB25D55BD7918CE992CF43AC03E1C27A16C7D085E36231B90B3F58933441D374E9C71E2F43E7186A8E5DBD7C7CD8BC243D4C881E71643AE0D4772C3EB210AF1A1F27A88F3DE99D756CB9FFAA9E021CE7CE6C9DCD358FDF4A8599D067D8822681C74CF411FA22C3CB9413777FB8F0256DC8462099EC216541B6E34BB3D287B348D927B44533834BD429560A53AEB97CB072BC3D9C00D7DABCEEE2C9E7AD8062B2C5FF7B00D562A9DD2B0992B8351C889A6054BB07FD3A22D23609492AF7BDC5FA198355547433EA8305DDAED12F66241B471AA67C89BE4AF7ED086288C7C07CD944757B3EACDF941CAA3AB2C9A65211D2DDDB37D8812E505B07D883261986C2F5B3D4A196E35C044F33E81C5409C5EAFA3D59A3D2F15E0163E595B2C4953D7C657301DE0344ACF114E01E1F4DAB482A9DE5C5E0F577EE7A0713C463A6F34A3EDF9D3E0EBA32C9D4547B7D6548E1E765FCBF6EE6211E0EAD968DAE10D607D2B960DC8D2E9314BBCBACFC848FBDE3385FD650E37A186A7C1C609354EA8139E50C3D3E1039C5046C3B25C13945CC7A3E96039339F7C6413B3B3E3219FF24678CA28A6215E72EAC94B5631AD709757153782CA2C61728C66C03839C6C9814C8E51A5BBB191B9CC3A40EDDBCE65DC659C0264DBB829C6727F78E2FD25717F78F22300F74D436D5717D3072920DA08F455287681EA0946735F649EF1DC6DF131441136E2A33B7C0C51C8FAE2C3884775288A414AD8BCF121E70E4BCF7FD6DC27CB5D9BF0A6433744E1370EDD40178F3E436718C382793A7C8852698CFB146E5A8F719F0CA0C13E7F1E0617C2CBD7FEC780A2AD40D2D77BC44989212AC0514A8C526294125D4A8921DA5AED3BD96A680CD2D40A8EEBCA05CCD26CCBFF5B307D889A6BF04C1FA220F063BAA9BBAC12BF8394052D28A4D29D2A506D039A0CEB8728115E08EB8728177C596F184C7835CC48B9E3226B5C64C1CC696191358B8EF944090B8B7C6633A79742ACB10492BE6BAC42380C516B8DC261140EA370E840380CD1AEEAE00D82121183B4ABC2A379B98E6F9C4F83C0324968642BF1F6AB311CA2FA1BC7901FC3214A29AF31343BEC1EAD881E1EA4902A9B1E128D3CC536C058B17B88F264C0EC1EE2D4F761B7E13597B85CCF0CD44661DA1F149432D95690C9707F90D2E0C5707F90C2C197FBA6AEF36AB9384801D1C202BADCB510A8B6B46B51B37E88D2E185B07E88A2C197F5E6E19697EBE320E542DDF8B0BEBA228C5948AA796835869E6568B545661CAA0C287DF36396B539C7287E8628DC46FC9C0E7E8628A1FDF063C49FCB6C160FF1D63DD15A4FD375B49D3A6FEE4CA39B684BA6D2CAB1F8FAB8BA778CEF2138EB2C0BD72FBBBA15E72249BA91104FA0D99716F6542C234F48BBA0D6E5B948A2D6A5CD8F26C3E5CD77D680F2854C60EEE03A94E65F68732050BD9DE64181116A0EA5ABE73BDC28885BBA9641E57C90CB7BEA2CCBCA0B794B81455F1A08B5A55BEA8EE11966A3EE1875C7A83B46DD31EA8EBE75C7F01665A3EE1875C7A83B46DD31EA0E77D93F7F3A66497E1D77807EA76594100404DCADBACD211519BAF87EF9D9C245DCE67E2F1DC1E1ADFEC611E44770783698DF08C2ECF9489A77F841DA738892B431B608C1DF93DDFE405457F42D22FDE25B56965AC407D03A2C53CB362EE2CDF7377C32DBE1B365C9BCCB8BF9A7E9D5C5EDF46EFE49028A581B63494A553169503DD38B9B8BDBFBCF1FA7DA4A1A2C4A7534495015F3AB8B39A961AEEF4665D1CA7DA812C00E5C7D9DDE7FD5D26EAC16897A9304D1FF72F5F9E3D7E9D567B31A6ACB06AEA44E45EB995D2C6FBF5EE819553D128FD62666001927E4D1D449ED0EA9329A02D5B2B8987F2130D69267161552054C1A54C5EC8EC06BF9797E65CC376A3EA28CA339549CA3994C9081D7A9AFB0C00699465FAEAFEE8C3B496D54B4933487AA9334934927F13AF515169DFCC7D78BA561277140B28948D74C61C9BEC109D7C4242375313934B5094B63A93A211DAAEFEAEE82CC07A23D88D035501CCC433470F79864A47B4C0E4D6D7C947CA03E310354E3F28A68C4EB8FA63DE416FB52855C2A54DBCDDDC56753ACB06E014845D24444494EBF12957FF1455B4FB37E946A6992A03AFEFDEBC57F37665AE95F0139562661EC2A53F5BCA24E0C88573411E11519935C54E8D54AEDE892954A9D02AA948BAF8B8BA95EA1D4EB6919C9550288E08BE9A7CF7A25CFADB781A9C2A4C2F3E463095E836EB02E2168346822321AF950900969A6230ACF0BAC1F8A2454372CAFF4665EE14D860CEEF23B6869DFCD3E1A4CEE7A990471A8490319F4E9EBDDE7D95783795761124595908E086453F0B28B1085710F6743EAB65AB694AD94EDC9E2336C4C1A746B7697F3FAEA6EBACC65A9CC432E19B627D91C426D17FB7DB64AA27CD508ACBF1E668B825D6435C5641457624D2E8E76D197C7B33FB20DB4A423B5715F27785968F15914E713849E4DF8AE1974BB460337EA7BA8EB484EBC0B221E8BE6371F4FA0F3E59A940C65D32A60C8A54C8A11E756BFE570579F14DDB56294CF18CF16CD3A5931C04CB63646575CC617259B8FDEDDA54B4DD2116A18CADD85B2E18D96D6B645AB99AF8A0E0BB66B51927EF3EE2E7D7066217A03E43EA37983349E9F0AA07FA39C126AAF853D0BD8D537D337BA1E9719A129A101AFE00768008C781340C64044745E8910E8507005CFDC1E3EBA6103EBBA60BA479D190842F0121A84084E940621882B06640D4444E7D27150823CC50785C8C4B2B6878E6E58C0F964CAC1661C3E321F94F9F14E81AEA1A24B428A9A319233ABE60AEEA4724205270D94FCC0332B3B028183FD7C5A6C50CF0B31572B53C28E610EDD15DFC05CF0BE41B9E7EA027867603762D1213149CD12C9F559330577697A2A51253F909CADA0A193AE734F1AAACC693823DE01C0A95BB49FFBDE9B51CDBE31B6D018D5685EE5E2497033D7CB27FA59B78002ECEAB04635D72DC5C083F9DAEA7ABBA3DEBCDFB450897B281BDE64D1D55FB4B9F9D85B676980AC45152E67911D77AB185C2A235915CB65DE675F2E96EB6F8A2E83DE53B6749D12BEFBCB68F7141F8CBA5F6555A837B9FD70C37BEA3C170865410706D2EF5046955E97363C2AA5CE7CD7B3C00437AEABC052401AB94B94F983CAE77E5D27B48B466E1338777BEC7072B90470932A353E94B335676917BA9EEB90020258D6D63ADFC3C8177B98FAAEE7D95AEB36B3C5DA74B9F818BCBB0A2F1896B5B56EDB3ACE1CBACF6E2231DB3A0AFB475322F046164A01642D9CA13526E15692A644DBFB845D32A7396FADDA380472B5C104E9544359B4F91AC0FD41ACBF7CFB9DB0717FD845497A78F87D975167D7C3327B28B7F521878861D9F02E12F6684259083A7AE0B372C8FFF74EBD62D0D8CBAEEBA4B6FAC64641C3BB27E552035B389754439B7EEE630CD9170435F0E4CF92401BC98EB4C2431E3A3753624A751EC6CD2B58BEB9B6607B0F8205C9AB710DB24717A95F103A96D84BFFD9D7A5F41C4073ABA78D70B8B29E36F473877C783F2969D02B3534EDFDA43C7E557D203F0FD92E7A8AF3DB3B9B7DF1F5FDE48F2329BD8DCB5FB3789F3C3524DE139A69CC5FE1A1793EA7DFB32FBBEC39DE15ED675B5467A993EBFB56F1217A8C0ED1C5EE907C8F560792BC8AF7FB245784F7D1E648B27CDC7E8B1F3FA777C7C3F3F140BA1C6FBF6D7EB0CC783F51D7FF7E22B5F9FDDD73FE6B1FA20BA499497E0FEF2ECDEF6C3DD276FF5EDEC59A1890C8AF3A7D8AC9F7722C89303AC44F3F28A579961A12AAD8378B9FE3F4314E0FCB78FBBC21C4F677E922FA337669DBD77D7C133F45AB1FE4FB9FC963BCC389E8078267FBFB59123DEDA2EDBEA2D194273F09861FB77FFDEBFF07DF835B6D5BD60300, N'6.1.1-30610')
INSERT [dbo].[BODEM] ([BangChamCong], [CaLamViec], [ChucVu], [DauSach], [DonViTinh], [HoaDonBanHang], [LoaiDDHT], [LoaiSanPham], [NhaCungCap], [NhanVien], [NhaSanXuat], [NhaXuatBan], [PhieuChi], [PhieuDatMua], [PhieuNhapKho], [PhieuThu], [PhieuXuatKho], [QuayHang], [SanPham], [TacGia], [TheLoaiSach], [CT_SanPham]) VALUES (0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 28)
INSERT [dbo].[CALAMVIEC] ([MaCaLamViec], [ThoiGianBD], [ThoiGianKT], [LuongCLV]) VALUES (N'CH01', NULL, NULL, CAST(30000.0000 AS Decimal(19, 4)))
INSERT [dbo].[CALAMVIEC] ([MaCaLamViec], [ThoiGianBD], [ThoiGianKT], [LuongCLV]) VALUES (N'CH02', NULL, NULL, CAST(60000.0000 AS Decimal(19, 4)))
INSERT [dbo].[CALAMVIEC] ([MaCaLamViec], [ThoiGianBD], [ThoiGianKT], [LuongCLV]) VALUES (N'SA01', NULL, NULL, CAST(30000.0000 AS Decimal(19, 4)))
INSERT [dbo].[CALAMVIEC] ([MaCaLamViec], [ThoiGianBD], [ThoiGianKT], [LuongCLV]) VALUES (N'SA02', NULL, NULL, CAST(60000.0000 AS Decimal(19, 4)))
INSERT [dbo].[CALAMVIEC] ([MaCaLamViec], [ThoiGianBD], [ThoiGianKT], [LuongCLV]) VALUES (N'TO01', NULL, NULL, CAST(30000.0000 AS Decimal(19, 4)))
INSERT [dbo].[CALAMVIEC] ([MaCaLamViec], [ThoiGianBD], [ThoiGianKT], [LuongCLV]) VALUES (N'TO02', NULL, NULL, CAST(60000.0000 AS Decimal(19, 4)))
INSERT [dbo].[CALAMVIEC] ([MaCaLamViec], [ThoiGianBD], [ThoiGianKT], [LuongCLV]) VALUES (N'TR01', NULL, NULL, CAST(30000.0000 AS Decimal(19, 4)))
INSERT [dbo].[CALAMVIEC] ([MaCaLamViec], [ThoiGianBD], [ThoiGianKT], [LuongCLV]) VALUES (N'TR02', NULL, NULL, CAST(60000.0000 AS Decimal(19, 4)))
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [TrachNhiem]) VALUES (N'CV01', N'Nhân Viên Bán Hàng
', N'Bán hàng, quản lý quầy
')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [TrachNhiem]) VALUES (N'CV02', N'Nhân Viên Quản Lý
', N'Chấm công
')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [TrachNhiem]) VALUES (N'CV03', N'Nhân Viên Kế Toán
', N'Quản lý thu, chi
')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [TrachNhiem]) VALUES (N'CV04', N'Thủ Kho', N'Nhập, xuất, đặt mua, tính toán tồn kho')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [TrachNhiem]) VALUES (N'CV05', N'Giám  đốc
', N'Xem báo cáo, thống kê
')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [TrachNhiem]) VALUES (N'CV06', N'Quản trị', N'Quản trị hệ thống')
INSERT [dbo].[CT_DAUSACH] ([MaDauSach], [MaTacGia]) VALUES (N'DS00001', N'TG0001')
INSERT [dbo].[CT_DAUSACH] ([MaDauSach], [MaTacGia]) VALUES (N'DS00002', N'TG0001')
INSERT [dbo].[CT_DAUSACH] ([MaDauSach], [MaTacGia]) VALUES (N'DS00002', N'TG0002')
INSERT [dbo].[CT_DAUSACH] ([MaDauSach], [MaTacGia]) VALUES (N'DS00006', N'TG0003')
INSERT [dbo].[CT_DAUSACH] ([MaDauSach], [MaTacGia]) VALUES (N'DS00003', N'TG0004')
INSERT [dbo].[CT_DAUSACH] ([MaDauSach], [MaTacGia]) VALUES (N'DS00004', N'TG0005')
INSERT [dbo].[CT_DAUSACH] ([MaDauSach], [MaTacGia]) VALUES (N'DS00008', N'TG0006')
INSERT [dbo].[CT_DAUSACH] ([MaDauSach], [MaTacGia]) VALUES (N'DS00009', N'TG0006')
INSERT [dbo].[CT_DAUSACH] ([MaDauSach], [MaTacGia]) VALUES (N'DS00005', N'TG0007')
INSERT [dbo].[CT_DAUSACH] ([MaDauSach], [MaTacGia]) VALUES (N'DS00006', N'TG0008')
INSERT [dbo].[CT_DAUSACH] ([MaDauSach], [MaTacGia]) VALUES (N'DS00005', N'TG0009')
INSERT [dbo].[CT_DAUSACH] ([MaDauSach], [MaTacGia]) VALUES (N'DS00007', N'TG0009')
INSERT [dbo].[CT_DAUSACH] ([MaDauSach], [MaTacGia]) VALUES (N'DS00010', N'TG0010')
INSERT [dbo].[CT_HDBanHang] ([MaHoaDon], [MaCTSanPham]) VALUES (N'HD000001', N'CTSP000001')
INSERT [dbo].[CT_HDBanHang] ([MaHoaDon], [MaCTSanPham]) VALUES (N'HD000002', N'CTSP000002')
INSERT [dbo].[CT_HDBanHang] ([MaHoaDon], [MaCTSanPham]) VALUES (N'HD000002', N'CTSP000003')
INSERT [dbo].[CT_HDBanHang] ([MaHoaDon], [MaCTSanPham]) VALUES (N'HD000002', N'CTSP000004')
INSERT [dbo].[CT_HDBanHang] ([MaHoaDon], [MaCTSanPham]) VALUES (N'HD000003', N'CTSP000005')
INSERT [dbo].[CT_HDBanHang] ([MaHoaDon], [MaCTSanPham]) VALUES (N'HD000003', N'CTSP000006')
INSERT [dbo].[CT_HDBanHang] ([MaHoaDon], [MaCTSanPham]) VALUES (N'HD000005', N'CTSP000007')
INSERT [dbo].[CT_HDBanHang] ([MaHoaDon], [MaCTSanPham]) VALUES (N'HD000004', N'CTSP000008')
INSERT [dbo].[CT_HDBanHang] ([MaHoaDon], [MaCTSanPham]) VALUES (N'HD000007', N'CTSP000009')
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000001', N'SP000016', 10)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000001', N'SP000020', 10)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000002', N'SP000018', 10)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000002', N'SP000019', 10)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000003', N'SP000001', 2)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000004', N'SP000001', 1)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000005', N'SP000001', 1)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000006', N'SP000002', 1)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000007', N'SP000002', 5)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000008', N'SP000002', 2)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000009', N'SP000002', 1)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000010', N'SP000007', 2)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000011', N'SP000001', 2)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000012', N'SP000001', 2)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000012', N'SP000002', 2)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000001', N'SP000001', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000002', N'SP000001', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000003', N'SP000002', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000004', N'SP000002', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000005', N'SP000003', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000006', N'SP000003', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000007', N'SP000004', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000008', N'SP000005', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000009', N'SP000006', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000010', N'SP000001', 1)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000011', N'SP000001', 1)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000012', N'SP000002', 1)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000013', N'SP000002', 1)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000014', N'SP000002', 1)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000015', N'SP000002', 1)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000016', N'SP000002', 1)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000017', N'SP000002', 1)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000018', N'SP000002', 1)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000019', N'SP000002', 1)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000020', N'SP000002', 1)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000021', N'SP000007', 1)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000022', N'SP000007', 1)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000023', N'SP000001', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000024', N'SP000001', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000025', N'SP000001', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000026', N'SP000001', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000027', N'SP000002', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [TinhTrang]) VALUES (N'CTSP000028', N'SP000002', 0)
INSERT [dbo].[DAUSACH] ([MaDauSach], [MaTheLoai], [TenDauSach]) VALUES (N'DS00001', N'LSA001', N'Jeff Bezos Và Kỷ Nguyên Amazon
')
INSERT [dbo].[DAUSACH] ([MaDauSach], [MaTheLoai], [TenDauSach]) VALUES (N'DS00002', N'LSA002', N'Trò Chơi Của Nhà Tiên Tri
')
INSERT [dbo].[DAUSACH] ([MaDauSach], [MaTheLoai], [TenDauSach]) VALUES (N'DS00003', N'LSA003', N'Tâm Thành Và Lộc Đời')
INSERT [dbo].[DAUSACH] ([MaDauSach], [MaTheLoai], [TenDauSach]) VALUES (N'DS00004', N'LSA004', N'Làng Quê Đang Biến Mất
')
INSERT [dbo].[DAUSACH] ([MaDauSach], [MaTheLoai], [TenDauSach]) VALUES (N'DS00005', N'LSA005', N'Disney - Câu Chuyện Đồ Chơi
')
INSERT [dbo].[DAUSACH] ([MaDauSach], [MaTheLoai], [TenDauSach]) VALUES (N'DS00006', N'LSA006', N'Hồi Ký Hillary Clinton Và Chính Trường Nước Mỹ
')
INSERT [dbo].[DAUSACH] ([MaDauSach], [MaTheLoai], [TenDauSach]) VALUES (N'DS00007', N'LSA007', N'25 Thuật Đắc Nhân Tâm')
INSERT [dbo].[DAUSACH] ([MaDauSach], [MaTheLoai], [TenDauSach]) VALUES (N'DS00008', N'LSA008', N'Collins Cambridge EnglishPreliminary
')
INSERT [dbo].[DAUSACH] ([MaDauSach], [MaTheLoai], [TenDauSach]) VALUES (N'DS00009', N'LSA009', N'Làng Quê Đang Biến Mất
')
INSERT [dbo].[DAUSACH] ([MaDauSach], [MaTheLoai], [TenDauSach]) VALUES (N'DS00010', N'LSA009', N'Chuyện Con Nai
')
INSERT [dbo].[DONVITINH] ([MaDVT], [TenDVT]) VALUES (N'DVT001', N'Quyển
')
INSERT [dbo].[DONVITINH] ([MaDVT], [TenDVT]) VALUES (N'DVT002', N'Cây 
')
INSERT [dbo].[DONVITINH] ([MaDVT], [TenDVT]) VALUES (N'DVT003', N'Hộp
')
INSERT [dbo].[DONVITINH] ([MaDVT], [TenDVT]) VALUES (N'DVT004', N'Cái
')
INSERT [dbo].[DONVITINH] ([MaDVT], [TenDVT]) VALUES (N'DVT005', N'Thùng
')
INSERT [dbo].[HOADONBANHANG] ([MaHoaDon], [NgayBan], [MaNhanVien], [TenKhachHang], [TongThanhTien]) VALUES (N'HD000001', CAST(0xFC390B00 AS Date), N'NV0001', N'Nguyễn Hải Đăng', 69000.0000)
INSERT [dbo].[HOADONBANHANG] ([MaHoaDon], [NgayBan], [MaNhanVien], [TenKhachHang], [TongThanhTien]) VALUES (N'HD000002', CAST(0xFD390B00 AS Date), N'NV0002', N'Nguyễn Hải Đăng', 203000.0000)
INSERT [dbo].[HOADONBANHANG] ([MaHoaDon], [NgayBan], [MaNhanVien], [TenKhachHang], [TongThanhTien]) VALUES (N'HD000003', CAST(0x1C3A0B00 AS Date), N'NV0001', N'Lê Quang Vinh', 240000.0000)
INSERT [dbo].[HOADONBANHANG] ([MaHoaDon], [NgayBan], [MaNhanVien], [TenKhachHang], [TongThanhTien]) VALUES (N'HD000004', CAST(0x1E3A0B00 AS Date), N'NV0001', N'Dang', 175500.0000)
INSERT [dbo].[HOADONBANHANG] ([MaHoaDon], [NgayBan], [MaNhanVien], [TenKhachHang], [TongThanhTien]) VALUES (N'HD000005', CAST(0x1E3A0B00 AS Date), N'NV0001', N'Vinh', 150000.0000)
INSERT [dbo].[HOADONBANHANG] ([MaHoaDon], [NgayBan], [MaNhanVien], [TenKhachHang], [TongThanhTien]) VALUES (N'HD000007', CAST(0x1E3A0B00 AS Date), N'NV0001', N'Hậu', 204600.0000)
INSERT [dbo].[LOAIDDHT] ([MaLoaiDDHT], [TenLoaiDDHT]) VALUES (N'LDD0001', N'Bút Bi Xanh
')
INSERT [dbo].[LOAIDDHT] ([MaLoaiDDHT], [TenLoaiDDHT]) VALUES (N'LDD0002', N'Bút Bi Đỏ
')
INSERT [dbo].[LOAIDDHT] ([MaLoaiDDHT], [TenLoaiDDHT]) VALUES (N'LDD0003', N'Thước Kẻ
')
INSERT [dbo].[LOAIDDHT] ([MaLoaiDDHT], [TenLoaiDDHT]) VALUES (N'LDD0004', N'Màu
')
INSERT [dbo].[LOAIDDHT] ([MaLoaiDDHT], [TenLoaiDDHT]) VALUES (N'LDD0005', N'Kéo
')
INSERT [dbo].[LOAIDDHT] ([MaLoaiDDHT], [TenLoaiDDHT]) VALUES (N'LDD0006', N'Bút Lông
')
INSERT [dbo].[LOAIDDHT] ([MaLoaiDDHT], [TenLoaiDDHT]) VALUES (N'LDD0007', N'Bút Chì
')
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP0001', N'Sách')
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP0002', N'Đồ Dùng Học Tập')
INSERT [dbo].[NGUOIDUNG] ([TaiKhoan], [MatKhau], [MaNhanVien]) VALUES (N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'NV0011')
INSERT [dbo].[NGUOIDUNG] ([TaiKhoan], [MatKhau], [MaNhanVien]) VALUES (N'banhang', N'fb7d2f1132e4b0a89ad5817952ac46c5', N'NV0001')
INSERT [dbo].[NGUOIDUNG] ([TaiKhoan], [MatKhau], [MaNhanVien]) VALUES (N'giamdoc', N'23db8f175879817eedc5b488d7b9113b', N'NV0010')
INSERT [dbo].[NGUOIDUNG] ([TaiKhoan], [MatKhau], [MaNhanVien]) VALUES (N'ketoan', N'344349361213bad21be7f914b050b4b1', N'NV0005')
INSERT [dbo].[NGUOIDUNG] ([TaiKhoan], [MatKhau], [MaNhanVien]) VALUES (N'quanly', N'76ce09fc04225228897e61087b1172a8', N'NV0003')
INSERT [dbo].[NGUOIDUNG] ([TaiKhoan], [MatKhau], [MaNhanVien]) VALUES (N'thukho', N'5ab1f1c9490952cc08bfee0c6511005d', N'NV0007')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai]) VALUES (N'NCC0001', N'Doanh nghiệp sách Thành Nghĩa
', N' 288A-288B, An Dương Vương, Phường 4, Quận 5, Hồ Chí Minh
', N' 84 838 392 516
')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai]) VALUES (N'NCC0002', N'Cty CP sách Bách Việt
', N'25/63 Vũ Ngọc Phan, Phường Láng Hạ, Quận Đống Đa, Thành phố Hà Nội
', N'84 4 3776 5580
')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai]) VALUES (N'NCC0003', N'Cty Sách thiết bị trường học
', N'223 Nguyễn Tri Phương, 9, 5, Hồ Chí Minh
', N'84 838554645
')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai]) VALUES (N'NCC0004', N'Cty CP Sách Dân tộc
', N'25 Hàn Thuyên, Phường Phạm Đình Hổ quận Hai Bà Trưng, thành phố Hà Nội
', N'04 6663 7332
')
INSERT [dbo].[NHACUNGCAP] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai]) VALUES (N'NCC0005', N'Thiên Long 
', N'47/2C Đường TMT13, KP2, P. Trung Mỹ Tây, Quận 12, TP.HCM
', N' 08 3868 3537
')
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MaChucVu], [TenNhanVien], [DiaChi], [DienThoai], [LuongNhanVien]) VALUES (N'NV0001', N'CV01', N'Nguyễn Diệu Anh
', N'43, Nguyễn Thị Minh Khai, Quận 1, TP.HCM
', N'0972456782', 0.0000)
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MaChucVu], [TenNhanVien], [DiaChi], [DienThoai], [LuongNhanVien]) VALUES (N'NV0002', N'CV01', N'Trần Quỳnh Anh
', N'76, Kha Vạn Cân, Quận Thủ Đức, TP.HCM
', N'0972456781', 0.0000)
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MaChucVu], [TenNhanVien], [DiaChi], [DienThoai], [LuongNhanVien]) VALUES (N'NV0003', N'CV02', N'Lê Trâm Anh
', N'36, Hai Bà Trưng Quận 1, TPHCM
', N'0972456783', 0.0000)
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MaChucVu], [TenNhanVien], [DiaChi], [DienThoai], [LuongNhanVien]) VALUES (N'NV0004', N'CV02', N'Lê Linh Đan
', N'22, Nguyễn Thị Minh Khai, Quận 1, TP.HCM
', N'0972456784', 0.0000)
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MaChucVu], [TenNhanVien], [DiaChi], [DienThoai], [LuongNhanVien]) VALUES (N'NV0005', N'CV03', N'Bùi Trúc Chi
', N'56, Kha Vạn Cân, Quận Thủ Đức, TP.HCM
', N'0972456785', 0.0000)
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MaChucVu], [TenNhanVien], [DiaChi], [DienThoai], [LuongNhanVien]) VALUES (N'NV0006', N'CV03', N'Nguyễn Thu Giang
', N'376, Hai Bà Trưng Quận 1, TPHCM
', N'0972456787', 0.0000)
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MaChucVu], [TenNhanVien], [DiaChi], [DienThoai], [LuongNhanVien]) VALUES (N'NV0007', N'CV04', N'Nguyễn Thiên Hương 
', N'326, Hai Bà Trưng Quận 1, TPHCM
', N'0972456789', 0.0000)
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MaChucVu], [TenNhanVien], [DiaChi], [DienThoai], [LuongNhanVien]) VALUES (N'NV0008', N'CV04', N'Trần Thái Hòa
', N'27, Nguyễn Thị Minh Khai, Quận 1, TP.HCM
', N'0972456789', 0.0000)
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MaChucVu], [TenNhanVien], [DiaChi], [DienThoai], [LuongNhanVien]) VALUES (N'NV0009', N'CV01', N'Lê Văn Việt
', N'12, Nguyễn Thị Minh Khai, Quận 1, TP.HCM
', N'0972456782', 0.0000)
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MaChucVu], [TenNhanVien], [DiaChi], [DienThoai], [LuongNhanVien]) VALUES (N'NV0010', N'CV05', N'Đỗ Hoàng Phương', N'120, Quận 9, TP.HCM', N'0972456781', 0.0000)
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MaChucVu], [TenNhanVien], [DiaChi], [DienThoai], [LuongNhanVien]) VALUES (N'NV0011', N'CV06', N'Nguyễn Hải Đăng', N'120, Quận 9, TP.HCM', N'0982988970', 0.0000)
INSERT [dbo].[NHASANXUAT] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX0001', N'Thiên Long
')
INSERT [dbo].[NHASANXUAT] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX0002', N'Bến Nghé
')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB0001', N' Nhà xuất bản Chính trị Quốc gia
')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB0002', N'Nhà xuất bản Tư pháp
')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB0003', N'Nhà xuất bản Hồng Đức
')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB0004', N' Nhà xuất bản Quân đội
')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB0005', N'Nhà xuất bản Công an nhân dân
')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB0006', N' Nhà xuất bản Kim Đồng
')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB0007', N' Nhà xuất bản Thanh niên
')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB0008', N'Nhà xuất bản Phụ nữ
')
INSERT [dbo].[PHIEUXUATKHO] ([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong]) VALUES (N'PXK000001', CAST(0x1C3A0B00 AS Date), N'NV0007', 20)
INSERT [dbo].[PHIEUXUATKHO] ([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong]) VALUES (N'PXK000002', CAST(0x1D3A0B00 AS Date), N'NV0001', 20)
INSERT [dbo].[PHIEUXUATKHO] ([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong]) VALUES (N'PXK000003', CAST(0x1E3A0B00 AS Date), N'NV0007', 2)
INSERT [dbo].[PHIEUXUATKHO] ([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong]) VALUES (N'PXK000004', CAST(0x1E3A0B00 AS Date), N'NV0007', 1)
INSERT [dbo].[PHIEUXUATKHO] ([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong]) VALUES (N'PXK000005', CAST(0x1E3A0B00 AS Date), N'NV0007', 1)
INSERT [dbo].[PHIEUXUATKHO] ([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong]) VALUES (N'PXK000006', CAST(0x1E3A0B00 AS Date), N'NV0007', 1)
INSERT [dbo].[PHIEUXUATKHO] ([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong]) VALUES (N'PXK000007', CAST(0x1E3A0B00 AS Date), N'NV0007', 5)
INSERT [dbo].[PHIEUXUATKHO] ([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong]) VALUES (N'PXK000008', CAST(0x1E3A0B00 AS Date), N'NV0007', 2)
INSERT [dbo].[PHIEUXUATKHO] ([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong]) VALUES (N'PXK000009', CAST(0x1E3A0B00 AS Date), N'NV0007', 1)
INSERT [dbo].[PHIEUXUATKHO] ([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong]) VALUES (N'PXK000010', CAST(0x1E3A0B00 AS Date), N'NV0007', 2)
INSERT [dbo].[PHIEUXUATKHO] ([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong]) VALUES (N'PXK000011', CAST(0x1E3A0B00 AS Date), N'NV0007', 2)
INSERT [dbo].[PHIEUXUATKHO] ([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong]) VALUES (N'PXK000012', CAST(0x1E3A0B00 AS Date), N'NV0007', 4)
INSERT [dbo].[QUAYHANG] ([MaQuay], [TenQuay], [ViTri]) VALUES (N'QH001', N'Quầy Sách Giáo Khoa
', N'A1')
INSERT [dbo].[QUAYHANG] ([MaQuay], [TenQuay], [ViTri]) VALUES (N'QH002', N'Quầy Sách Tham Khảo
', N'A2')
INSERT [dbo].[QUAYHANG] ([MaQuay], [TenQuay], [ViTri]) VALUES (N'QH003', N'Quầy Tiểu Thuyết
', N'B1')
INSERT [dbo].[QUAYHANG] ([MaQuay], [TenQuay], [ViTri]) VALUES (N'QH004', N'Quầy Sách Tiếng Anh
', N'B2')
INSERT [dbo].[QUAYHANG] ([MaQuay], [TenQuay], [ViTri]) VALUES (N'QH005', N'Quầy Sách Ngoại Ngữ
', N'C1')
INSERT [dbo].[QUAYHANG] ([MaQuay], [TenQuay], [ViTri]) VALUES (N'QH006', N'Quầy Văn Phòng Phẩm
', N'C2')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000001', N'LSP0001', N'NCC0001', N'DVT001', N'Jeff Bezos Và Kỷ Nguyên Amazon
', 69000.0000, 243, N'QH001')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000002', N'LSP0001', N'NCC0002', N'DVT001', N'Trò Chơi Của Nhà Tiên Tri
', 72000.0000, 289, N'QH002')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000003', N'LSP0001', N'NCC0003', N'DVT001', N'Làng Quê Đang Biến Mất
', 120000.0000, 150, N'QH003')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000004', N'LSP0001', N'NCC0004', N'DVT001', N'Tâm Thành Và Lộc Đời', 150000.0000, 170, N'QH004')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000005', N'LSP0001', N'NCC0001', N'DVT001', N'Tháng Ngày Ta Đã Qua
', 175500.0000, 200, N'QH005')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000006', N'LSP0001', N'NCC0002', N'DVT001', N'Disney - Câu Chuyện Đồ Chơi
', 204600.0000, 260, N'QH006')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000007', N'LSP0001', N'NCC0003', N'DVT001', N'Hồi Ký Hillary Clinton Và Chính Trường Nước Mỹ
', 233700.0000, 118, N'QH001')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000008', N'LSP0001', N'NCC0004', N'DVT001', N'Chuyện Con Nai
', 262800.0000, 350, N'QH002')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000009', N'LSP0001', N'NCC0001', N'DVT001', N'Cún Bụi Đời ', 291900.0000, 310, N'QH002')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000010', N'LSP0001', N'NCC0002', N'DVT001', N'Sức Hút Của Kỹ Năng Nói Chuyện
', 321000.0000, 341, N'QH003')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000011', N'LSP0001', N'NCC0003', N'DVT001', N'25 Thuật Đắc Nhân Tâm', 350100.0000, 372, N'QH004')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000012', N'LSP0001', N'NCC0004', N'DVT001', N'Tiếng Anh Ma Thuật Dành Cho Người Tự Học
', 379200.0000, 403, N'QH005')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000013', N'LSP0001', N'NCC0001', N'DVT001', N'Collins Cambridge EnglishPreliminary
', 408300.0000, 434, N'QH006')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000014', N'LSP0001', N'NCC0002', N'DVT001', N'Võ Nguyên Giáp - Chân Dung Một Huyền Thoại
', 437400.0000, 465, N'QH001')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000015', N'LSP0001', N'NCC0003', N'DVT001', N'Dược Thảo Toàn Thư
', 466500.0000, 496, N'QH002')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000016', N'LSP0002', N'NCC0005', N'DVT002', N'Bút Bi Xanh
', 3500.0000, 500, N'QH003')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000017', N'LSP0002', N'NCC0005', N'DVT002', N'Bút Bi Đỏ
', 3500.0000, 500, N'QH004')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000018', N'LSP0002', N'NCC0005', N'DVT002', N'Thước Kẻ
', 2000.0000, 490, N'QH005')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000019', N'LSP0002', N'NCC0005', N'DVT003', N'Màu
', 10000.0000, 490, N'QH006')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [MaQuayHang]) VALUES (N'SP000020', N'LSP0002', N'NCC0005', N'DVT002', N'Kéo
', 3500.0000, 0, N'QH001')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG0001', N'Brad Stone')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG0002', N'Tạ Duy Anh')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG0003', N'Nguyễn Thị Minh Ngọc')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG0004', N'Tình Không Lam Hề')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG0005', N'Hillary Rodham Clinton
')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG0006', N'Thụ Nho')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG0007', N'Lê Thư
')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG0008', N'Daniel Pennac
')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG0009', N'Beauty Salon
')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG0010', N'JohnC Maxwell
')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG0011', N'Woo Bo Hyun
')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG0012', N'Collins
')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG0013', N'Andrew Chevallier
')
INSERT [dbo].[THELOAISACH] ([MaTheLoaiSach], [TenTheLoaiSach]) VALUES (N'LSA001', N'Kinh tế
')
INSERT [dbo].[THELOAISACH] ([MaTheLoaiSach], [TenTheLoaiSach]) VALUES (N'LSA002', N'Văn học trong nước
')
INSERT [dbo].[THELOAISACH] ([MaTheLoaiSach], [TenTheLoaiSach]) VALUES (N'LSA003', N'Văn học nước ngoài
')
INSERT [dbo].[THELOAISACH] ([MaTheLoaiSach], [TenTheLoaiSach]) VALUES (N'LSA004', N'Thiếu nhi
')
INSERT [dbo].[THELOAISACH] ([MaTheLoaiSach], [TenTheLoaiSach]) VALUES (N'LSA005', N'Phát triển bản thân
')
INSERT [dbo].[THELOAISACH] ([MaTheLoaiSach], [TenTheLoaiSach]) VALUES (N'LSA006', N'Tin học - Ngoại Ngữ
')
INSERT [dbo].[THELOAISACH] ([MaTheLoaiSach], [TenTheLoaiSach]) VALUES (N'LSA007', N'Giáo khoa - chuyên ngành
')
INSERT [dbo].[THELOAISACH] ([MaTheLoaiSach], [TenTheLoaiSach]) VALUES (N'LSA008', N'Sách giáo khoa
')
INSERT [dbo].[THELOAISACH] ([MaTheLoaiSach], [TenTheLoaiSach]) VALUES (N'LSA009', N'Tiểu thuyết
')
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaCaLamViec]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaCaLamViec] ON [dbo].[BANGCHAMCONG]
(
	[MaCaLamViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_NguoiChamCong]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_NguoiChamCong] ON [dbo].[BANGCHAMCONG]
(
	[NguoiChamCong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaBCC]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaBCC] ON [dbo].[CT_BANGCHAMCONG]
(
	[MaBCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhanVien]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhanVien] ON [dbo].[CT_BANGCHAMCONG]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaDauSach]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaDauSach] ON [dbo].[CT_DAUSACH]
(
	[MaDauSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaTacGia]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaTacGia] ON [dbo].[CT_DAUSACH]
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaCTSanPham]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaCTSanPham] ON [dbo].[CT_HDBanHang]
(
	[MaCTSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaHoaDon]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaHoaDon] ON [dbo].[CT_HDBanHang]
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaPhieuDatMua]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaPhieuDatMua] ON [dbo].[CT_PhieuDatMua]
(
	[MaPhieuDatMua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[CT_PhieuDatMua]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaPhieuNhap]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaPhieuNhap] ON [dbo].[CT_PhieuNhapKho]
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[CT_PhieuNhapKho]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaPhieuXuat]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaPhieuXuat] ON [dbo].[CT_PhieuXuatKho]
(
	[MaPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[CT_PhieuXuatKho]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[CT_SANPHAM]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[CT_TKBanHang]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Thang_Nam]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_Thang_Nam] ON [dbo].[CT_TKBanHang]
(
	[Thang] ASC,
	[Nam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaTheLoai]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaTheLoai] ON [dbo].[DAUSACH]
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaLoaiDDHT]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaLoaiDDHT] ON [dbo].[DODUNGHOCTAP]
(
	[MaLoaiDDHT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhaSanXuat]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhaSanXuat] ON [dbo].[DODUNGHOCTAP]
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[DODUNGHOCTAP]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhanVien]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhanVien] ON [dbo].[NGUOIDUNG]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaChucVu]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaChucVu] ON [dbo].[NHANVIEN]
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhanVienChi]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhanVienChi] ON [dbo].[PHIEUCHI]
(
	[MaNhanVienChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhaCungCap]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhaCungCap] ON [dbo].[PHIEUDATMUA]
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhanVien]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhanVien] ON [dbo].[PHIEUDATMUA]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhanVien]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhanVien] ON [dbo].[PHIEUNHAPKHO]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaPhieuDatMua]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaPhieuDatMua] ON [dbo].[PHIEUNHAPKHO]
(
	[MaPhieuDatMua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhanVienThu]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhanVienThu] ON [dbo].[PHIEUTHU]
(
	[MaNhanVienThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhanVien]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhanVien] ON [dbo].[PHIEUXUATKHO]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaDauSach]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaDauSach] ON [dbo].[SACH]
(
	[MaDauSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhaXuatBan]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhaXuatBan] ON [dbo].[SACH]
(
	[MaNhaXuatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[SACH]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaDVT]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaDVT] ON [dbo].[SANPHAM]
(
	[MaDVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaLoaiSanPham]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaLoaiSanPham] ON [dbo].[SANPHAM]
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhaCungCap]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhaCungCap] ON [dbo].[SANPHAM]
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaQuayHang]    Script Date: 27/06/2015 13:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_MaQuayHang] ON [dbo].[SANPHAM]
(
	[MaQuayHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BANGCHAMCONG]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BANGCHAMCONG_dbo.CALAMVIEC_MaCaLamViec] FOREIGN KEY([MaCaLamViec])
REFERENCES [dbo].[CALAMVIEC] ([MaCaLamViec])
GO
ALTER TABLE [dbo].[BANGCHAMCONG] CHECK CONSTRAINT [FK_dbo.BANGCHAMCONG_dbo.CALAMVIEC_MaCaLamViec]
GO
ALTER TABLE [dbo].[BANGCHAMCONG]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BANGCHAMCONG_dbo.NHANVIEN_NguoiChamCong] FOREIGN KEY([NguoiChamCong])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[BANGCHAMCONG] CHECK CONSTRAINT [FK_dbo.BANGCHAMCONG_dbo.NHANVIEN_NguoiChamCong]
GO
ALTER TABLE [dbo].[CT_BANGCHAMCONG]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_BANGCHAMCONG_dbo.BANGCHAMCONG_MaBCC] FOREIGN KEY([MaBCC])
REFERENCES [dbo].[BANGCHAMCONG] ([MaBCC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CT_BANGCHAMCONG] CHECK CONSTRAINT [FK_dbo.CT_BANGCHAMCONG_dbo.BANGCHAMCONG_MaBCC]
GO
ALTER TABLE [dbo].[CT_BANGCHAMCONG]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_BANGCHAMCONG_dbo.NHANVIEN_MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CT_BANGCHAMCONG] CHECK CONSTRAINT [FK_dbo.CT_BANGCHAMCONG_dbo.NHANVIEN_MaNhanVien]
GO
ALTER TABLE [dbo].[CT_DAUSACH]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_DAUSACH_dbo.DAUSACH_MaDauSach] FOREIGN KEY([MaDauSach])
REFERENCES [dbo].[DAUSACH] ([MaDauSach])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CT_DAUSACH] CHECK CONSTRAINT [FK_dbo.CT_DAUSACH_dbo.DAUSACH_MaDauSach]
GO
ALTER TABLE [dbo].[CT_DAUSACH]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_DAUSACH_dbo.TACGIA_MaTacGia] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TACGIA] ([MaTacGia])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CT_DAUSACH] CHECK CONSTRAINT [FK_dbo.CT_DAUSACH_dbo.TACGIA_MaTacGia]
GO
ALTER TABLE [dbo].[CT_HDBanHang]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_HDBanHang_dbo.CT_SANPHAM_MaCTSanPham] FOREIGN KEY([MaCTSanPham])
REFERENCES [dbo].[CT_SANPHAM] ([MaCTSanPham])
GO
ALTER TABLE [dbo].[CT_HDBanHang] CHECK CONSTRAINT [FK_dbo.CT_HDBanHang_dbo.CT_SANPHAM_MaCTSanPham]
GO
ALTER TABLE [dbo].[CT_HDBanHang]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_HDBanHang_dbo.HOADONBANHANG_MaHoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HOADONBANHANG] ([MaHoaDon])
GO
ALTER TABLE [dbo].[CT_HDBanHang] CHECK CONSTRAINT [FK_dbo.CT_HDBanHang_dbo.HOADONBANHANG_MaHoaDon]
GO
ALTER TABLE [dbo].[CT_PhieuDatMua]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_PhieuDatMua_dbo.PHIEUDATMUA_MaPhieuDatMua] FOREIGN KEY([MaPhieuDatMua])
REFERENCES [dbo].[PHIEUDATMUA] ([MaPhieuDatMua])
GO
ALTER TABLE [dbo].[CT_PhieuDatMua] CHECK CONSTRAINT [FK_dbo.CT_PhieuDatMua_dbo.PHIEUDATMUA_MaPhieuDatMua]
GO
ALTER TABLE [dbo].[CT_PhieuDatMua]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_PhieuDatMua_dbo.SANPHAM_MaSanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CT_PhieuDatMua] CHECK CONSTRAINT [FK_dbo.CT_PhieuDatMua_dbo.SANPHAM_MaSanPham]
GO
ALTER TABLE [dbo].[CT_PhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_PhieuNhapKho_dbo.PHIEUNHAPKHO_MaPhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[CT_PhieuNhapKho] CHECK CONSTRAINT [FK_dbo.CT_PhieuNhapKho_dbo.PHIEUNHAPKHO_MaPhieuNhap]
GO
ALTER TABLE [dbo].[CT_PhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_PhieuNhapKho_dbo.SANPHAM_MaSanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CT_PhieuNhapKho] CHECK CONSTRAINT [FK_dbo.CT_PhieuNhapKho_dbo.SANPHAM_MaSanPham]
GO
ALTER TABLE [dbo].[CT_PhieuXuatKho]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_PhieuXuatKho_dbo.PHIEUXUATKHO_MaPhieuXuat] FOREIGN KEY([MaPhieuXuat])
REFERENCES [dbo].[PHIEUXUATKHO] ([MaPhieuXuat])
GO
ALTER TABLE [dbo].[CT_PhieuXuatKho] CHECK CONSTRAINT [FK_dbo.CT_PhieuXuatKho_dbo.PHIEUXUATKHO_MaPhieuXuat]
GO
ALTER TABLE [dbo].[CT_PhieuXuatKho]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_PhieuXuatKho_dbo.SANPHAM_MaSanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CT_PhieuXuatKho] CHECK CONSTRAINT [FK_dbo.CT_PhieuXuatKho_dbo.SANPHAM_MaSanPham]
GO
ALTER TABLE [dbo].[CT_SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_SANPHAM_dbo.SANPHAM_MaSanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CT_SANPHAM] CHECK CONSTRAINT [FK_dbo.CT_SANPHAM_dbo.SANPHAM_MaSanPham]
GO
ALTER TABLE [dbo].[CT_TKBanHang]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_TKBanHang_dbo.SANPHAM_MaSanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CT_TKBanHang] CHECK CONSTRAINT [FK_dbo.CT_TKBanHang_dbo.SANPHAM_MaSanPham]
GO
ALTER TABLE [dbo].[CT_TKBanHang]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CT_TKBanHang_dbo.THONGKEBANHANG_Thang_Nam] FOREIGN KEY([Thang], [Nam])
REFERENCES [dbo].[THONGKEBANHANG] ([Thang], [Nam])
GO
ALTER TABLE [dbo].[CT_TKBanHang] CHECK CONSTRAINT [FK_dbo.CT_TKBanHang_dbo.THONGKEBANHANG_Thang_Nam]
GO
ALTER TABLE [dbo].[DAUSACH]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DAUSACH_dbo.THELOAISACH_MaTheLoai] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[THELOAISACH] ([MaTheLoaiSach])
GO
ALTER TABLE [dbo].[DAUSACH] CHECK CONSTRAINT [FK_dbo.DAUSACH_dbo.THELOAISACH_MaTheLoai]
GO
ALTER TABLE [dbo].[DODUNGHOCTAP]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DODUNGHOCTAP_dbo.LOAIDDHT_MaLoaiDDHT] FOREIGN KEY([MaLoaiDDHT])
REFERENCES [dbo].[LOAIDDHT] ([MaLoaiDDHT])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DODUNGHOCTAP] CHECK CONSTRAINT [FK_dbo.DODUNGHOCTAP_dbo.LOAIDDHT_MaLoaiDDHT]
GO
ALTER TABLE [dbo].[DODUNGHOCTAP]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DODUNGHOCTAP_dbo.NHASANXUAT_MaNhaSanXuat] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NHASANXUAT] ([MaNhaSanXuat])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DODUNGHOCTAP] CHECK CONSTRAINT [FK_dbo.DODUNGHOCTAP_dbo.NHASANXUAT_MaNhaSanXuat]
GO
ALTER TABLE [dbo].[DODUNGHOCTAP]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DODUNGHOCTAP_dbo.SANPHAM_MaSanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[DODUNGHOCTAP] CHECK CONSTRAINT [FK_dbo.DODUNGHOCTAP_dbo.SANPHAM_MaSanPham]
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NGUOIDUNG_dbo.NHANVIEN_MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NGUOIDUNG] CHECK CONSTRAINT [FK_dbo.NGUOIDUNG_dbo.NHANVIEN_MaNhanVien]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NHANVIEN_dbo.CHUCVU_MaChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[CHUCVU] ([MaChucVu])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_dbo.NHANVIEN_dbo.CHUCVU_MaChucVu]
GO
ALTER TABLE [dbo].[PHIEUCHI]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PHIEUCHI_dbo.NHANVIEN_MaNhanVienChi] FOREIGN KEY([MaNhanVienChi])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PHIEUCHI] CHECK CONSTRAINT [FK_dbo.PHIEUCHI_dbo.NHANVIEN_MaNhanVienChi]
GO
ALTER TABLE [dbo].[PHIEUDATMUA]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PHIEUDATMUA_dbo.NHACUNGCAP_MaNhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NHACUNGCAP] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[PHIEUDATMUA] CHECK CONSTRAINT [FK_dbo.PHIEUDATMUA_dbo.NHACUNGCAP_MaNhaCungCap]
GO
ALTER TABLE [dbo].[PHIEUDATMUA]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PHIEUDATMUA_dbo.NHANVIEN_MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PHIEUDATMUA] CHECK CONSTRAINT [FK_dbo.PHIEUDATMUA_dbo.NHANVIEN_MaNhanVien]
GO
ALTER TABLE [dbo].[PHIEUNHAPKHO]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PHIEUNHAPKHO_dbo.NHANVIEN_MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PHIEUNHAPKHO] CHECK CONSTRAINT [FK_dbo.PHIEUNHAPKHO_dbo.NHANVIEN_MaNhanVien]
GO
ALTER TABLE [dbo].[PHIEUNHAPKHO]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PHIEUNHAPKHO_dbo.PHIEUDATMUA_MaPhieuDatMua] FOREIGN KEY([MaPhieuDatMua])
REFERENCES [dbo].[PHIEUDATMUA] ([MaPhieuDatMua])
GO
ALTER TABLE [dbo].[PHIEUNHAPKHO] CHECK CONSTRAINT [FK_dbo.PHIEUNHAPKHO_dbo.PHIEUDATMUA_MaPhieuDatMua]
GO
ALTER TABLE [dbo].[PHIEUTHU]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PHIEUTHU_dbo.NHANVIEN_MaNhanVienThu] FOREIGN KEY([MaNhanVienThu])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PHIEUTHU] CHECK CONSTRAINT [FK_dbo.PHIEUTHU_dbo.NHANVIEN_MaNhanVienThu]
GO
ALTER TABLE [dbo].[PHIEUXUATKHO]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PHIEUXUATKHO_dbo.NHANVIEN_MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PHIEUXUATKHO] CHECK CONSTRAINT [FK_dbo.PHIEUXUATKHO_dbo.NHANVIEN_MaNhanVien]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SACH_dbo.DAUSACH_MaDauSach] FOREIGN KEY([MaDauSach])
REFERENCES [dbo].[DAUSACH] ([MaDauSach])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_dbo.SACH_dbo.DAUSACH_MaDauSach]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SACH_dbo.NHAXUATBAN_MaNhaXuatBan] FOREIGN KEY([MaNhaXuatBan])
REFERENCES [dbo].[NHAXUATBAN] ([MaNhaXuatBan])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_dbo.SACH_dbo.NHAXUATBAN_MaNhaXuatBan]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SACH_dbo.SANPHAM_MaSanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_dbo.SACH_dbo.SANPHAM_MaSanPham]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SANPHAM_dbo.DONVITINH_MaDVT] FOREIGN KEY([MaDVT])
REFERENCES [dbo].[DONVITINH] ([MaDVT])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_dbo.SANPHAM_dbo.DONVITINH_MaDVT]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SANPHAM_dbo.LOAISANPHAM_MaLoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LOAISANPHAM] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_dbo.SANPHAM_dbo.LOAISANPHAM_MaLoaiSanPham]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SANPHAM_dbo.NHACUNGCAP_MaNhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NHACUNGCAP] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_dbo.SANPHAM_dbo.NHACUNGCAP_MaNhaCungCap]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SANPHAM_dbo.QUAYHANG_MaQuayHang] FOREIGN KEY([MaQuayHang])
REFERENCES [dbo].[QUAYHANG] ([MaQuay])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_dbo.SANPHAM_dbo.QUAYHANG_MaQuayHang]
GO