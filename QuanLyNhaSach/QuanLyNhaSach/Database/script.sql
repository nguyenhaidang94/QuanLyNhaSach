CREATE PROCEDURE [dbo].[BangChamCong_Delete]
    @MaBCC [varchar](20)
AS
BEGIN
    DELETE [dbo].[BANGCHAMCONG]
    WHERE ([MaBCC] = @MaBCC)
END
GO
/****** Object:  StoredProcedure [dbo].[BangChamCong_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[BangChamCong_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[BoDem_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[BoDem_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[BoDem_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CaLamViec_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CaLamViec_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CaLamViec_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[ChucVu_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[ChucVu_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[ChucVu_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_HDBanHang_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_HDBanHang_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_HDBanHang_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_PhieuDatMua_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_PhieuDatMua_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_PhieuDatMua_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_PhieuNhapKho_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_PhieuNhapKho_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_PhieuNhapKho_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_PhieuXuatKho_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_PhieuXuatKho_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_PhieuXuatKho_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_SanPham_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_SanPham_Insert]    Script Date: 26/06/2015 09:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_SanPham_Insert]
    @MaCTSanPham [nvarchar](20),
    @MaSanPham [varchar](20),
    @MaQuay [varchar](20),
    @TinhTrang [bit]
AS
BEGIN
    INSERT [dbo].[CT_SANPHAM]([MaCTSanPham], [MaSanPham], [MaQuay], [TinhTrang])
    VALUES (@MaCTSanPham, @MaSanPham, @MaQuay, @TinhTrang)
END
GO
/****** Object:  StoredProcedure [dbo].[CT_SanPham_Update]    Script Date: 26/06/2015 09:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_SanPham_Update]
    @MaCTSanPham [nvarchar](20),
    @MaSanPham [varchar](20),
    @MaQuay [varchar](20),
    @TinhTrang [bit]
AS
BEGIN
    UPDATE [dbo].[CT_SANPHAM]
    SET [MaSanPham] = @MaSanPham, [MaQuay] = @MaQuay, [TinhTrang] = @TinhTrang
    WHERE ([MaCTSanPham] = @MaCTSanPham)
END
GO
/****** Object:  StoredProcedure [dbo].[CT_TKBanHang_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_TKBanHang_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_TKBanHang_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[DauSach_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[DauSach_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[DauSach_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[DoDungHocTap_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[DoDungHocTap_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
    @MaLoaiDDHT [varchar](20),
    @MaNhaSanXuat [varchar](20),
    @NamSanXuat [int]
AS
BEGIN
    INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong])
    VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaDVT, @TenSanPham, @DonGia, @SoLuong)
    
    INSERT [dbo].[DODUNGHOCTAP]([MaSanPham], [MaLoaiDDHT], [MaNhaSanXuat], [NamSanXuat])
    VALUES (@MaSanPham, @MaLoaiDDHT, @MaNhaSanXuat, @NamSanXuat)
END
GO
/****** Object:  StoredProcedure [dbo].[DoDungHocTap_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
    @MaLoaiDDHT [varchar](20),
    @MaNhaSanXuat [varchar](20),
    @NamSanXuat [int]
AS
BEGIN
    UPDATE [dbo].[DODUNGHOCTAP]
    SET [MaLoaiDDHT] = @MaLoaiDDHT, [MaNhaSanXuat] = @MaNhaSanXuat, [NamSanXuat] = @NamSanXuat
    WHERE ([MaSanPham] = @MaSanPham)
    
    UPDATE [dbo].[SANPHAM]
    SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong
    WHERE ([MaSanPham] = @MaSanPham)
    AND @@ROWCOUNT > 0
END
GO
/****** Object:  StoredProcedure [dbo].[DonViTinh_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[DonViTinh_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[DonViTinh_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[HoaDonBanHang_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[HoaDonBanHang_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[HoaDonBanHang_PhatSinhMa]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[HoaDonBanHang_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[LoaiDDHT_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[LoaiDDHT_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[LoaiDDHT_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[LoaiSanPham_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[LoaiSanPham_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[LoaiSanPham_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NguoiDung_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NguoiDung_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NguoiDung_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaCungCap_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaCungCap_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaCungCap_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NhanVien_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NhanVien_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NhanVien_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaSanXuat_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaSanXuat_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaSanXuat_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaXuatBan_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaXuatBan_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaXuatBan_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuChi_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuChi_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuChi_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuDatMua_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuDatMua_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuDatMua_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuNhapKho_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuNhapKho_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuNhapKho_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuThu_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuThu_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuThu_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuXuatKho_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuXuatKho_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuXuatKho_PhatSinhMa]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuXuatKho_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[QuayHang_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[QuayHang_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[QuayHang_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[Sach_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[Sach_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
    @MaDauSach [varchar](20),
    @MaNhaXuatBan [varchar](20),
    @NamXuatBan [int]
AS
BEGIN
    INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong])
    VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaDVT, @TenSanPham, @DonGia, @SoLuong)
    
    INSERT [dbo].[SACH]([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan])
    VALUES (@MaSanPham, @MaDauSach, @MaNhaXuatBan, @NamXuatBan)
END
GO
/****** Object:  StoredProcedure [dbo].[Sach_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
    @MaDauSach [varchar](20),
    @MaNhaXuatBan [varchar](20),
    @NamXuatBan [int]
AS
BEGIN
    UPDATE [dbo].[SACH]
    SET [MaDauSach] = @MaDauSach, [MaNhaXuatBan] = @MaNhaXuatBan, [NamXuatBan] = @NamXuatBan
    WHERE ([MaSanPham] = @MaSanPham)
    
    UPDATE [dbo].[SANPHAM]
    SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong
    WHERE ([MaSanPham] = @MaSanPham)
    AND @@ROWCOUNT > 0
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[SanPham_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
    @SoLuong [int]
AS
BEGIN
    INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong])
    VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaDVT, @TenSanPham, @DonGia, @SoLuong)
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Search]    Script Date: 26/06/2015 09:07:41 ******/
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
				AND ctsp.MaQuay = quay.MaQuay
				AND ctsp.MaSanPham = sp.MaSanPham
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
/****** Object:  StoredProcedure [dbo].[SanPham_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
    @SoLuong [int]
AS
BEGIN
    UPDATE [dbo].[SANPHAM]
    SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong
    WHERE ([MaSanPham] = @MaSanPham)
END
GO
/****** Object:  StoredProcedure [dbo].[TacGia_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[TacGia_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[TacGia_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[TheLoaiSach_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[TheLoaiSach_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[TheLoaiSach_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[ThongKeBanHang_Delete]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[ThongKeBanHang_Insert]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  StoredProcedure [dbo].[ThongKeBanHang_Update]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[BANGCHAMCONG]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[BODEM]    Script Date: 26/06/2015 09:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BODEM](
	[BangChamCong] [int] NOT NULL,
	[CaLamViec] [int] NOT NULL,
	[ChucVu] [int] NOT NULL,
	[CT_SanPham] [int] NOT NULL,
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
	[TheLoaiSach] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CALAMVIEC]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[CT_BANGCHAMCONG]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[CT_DAUSACH]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[CT_HDBanHang]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[CT_PhieuDatMua]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[CT_PhieuNhapKho]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[CT_PhieuXuatKho]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[CT_SANPHAM]    Script Date: 26/06/2015 09:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_SANPHAM](
	[MaCTSanPham] [nvarchar](20) NOT NULL,
	[MaSanPham] [varchar](20) NOT NULL,
	[MaQuay] [varchar](20) NOT NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_dbo.CT_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaCTSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_TKBanHang]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[DAUSACH]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[DODUNGHOCTAP]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[DONVITINH]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[HOADONBANHANG]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[LOAIDDHT]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[NHASANXUAT]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[PHIEUCHI]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[PHIEUDATMUA]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[PHIEUNHAPKHO]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[PHIEUTHU]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[PHIEUXUATKHO]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[QUAYHANG]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[SACH]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 26/06/2015 09:07:41 ******/
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
 CONSTRAINT [PK_dbo.SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[THELOAISACH]    Script Date: 26/06/2015 09:07:41 ******/
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
/****** Object:  Table [dbo].[THONGKEBANHANG]    Script Date: 26/06/2015 09:07:41 ******/
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
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201505260146327_Initial', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7D5B6F1CB992E6FB02FB1F043DED0ECEB8EC3EE760A61BF20CA42A5B3274F374958DD927215D4AAB125395A9A94B6F0B8BFD65FBB03F69FFC2326F4C5E2278CFCC4A29D1805B95248364F06330224806FFDFFFF9BF67FFFAE7667DF247BCDD2559FAF1F4C3BBF7A72771BACC1E93F4E9E3E961FFF31FFFF9F45FFFE5BFFE97B34F8F9B3F4FBED7F9FE9AE72325D3DDC7D3D57EFFFCDB64B25BAEE24DB47BB74996DB6C97FDDCBF5B669B49F4984D7E79FFFED7C9870F9398903825B44E4ECE7E3FA4FB6413173FC8CF69962EE3E7FD215ADF668FF17A577D2729F382EAC95DB48977CFD132FE78FA6F8728BD79B95B45F368B97A375BDC9F9E9CAF938834641EAF7F9E9E44699AEDA33D69E66FDF76F17CBFCDD2A7F933F910AD172FCF31C9F7335AEFE2AAF9BF35D94D7BF2FE97BC2793A6604D6A79D8EDB38D25C10F7FAD5833118B3B31F894B28E30EF1361F2FE25EF75C1C08FA71751FA345D451BC2EFA7D313B1C2DFA6EB6D9E19E0F13BB6E45F4EB8F4BF505810F4E4FFFDE5647A58EF0FDBF8631A1FF6DB68FD9793AF871FEB64791DBF2CB2FF88D38FE961BD665B4ADA4AD2B80FE4D3D76DF61C6FF72FBFC73FABF6DF4617D3E9E9C9842F3A11CBD2927CB1B26F041149DEFBDBE8CF9B387DDAAF3E9EFE42C0FC39F9337EAC3F5408F996266426C4F4F71D6976F463DD7C9868AA9D4637D1E67B122FBBAFFCEE297A6986BAAC7D16EDE3059976FAB2872C110BB7D8F4BBE88FE4A980A0D010867FBFC7EB22C76E953C9753FD1D4D7D98CD0B7C9231FEBCCD36BF676BB62C4D7D5844DBA7784F3A94A159E6D961BBB468E16C4E66414A68A46013D969F3C0E66DDA8964A12DA91B8BE5AB3B65DAE2BA60CE2DA0C594EEC5F9DDE5F4EAFC767A7F77B9631B0CE790988B6483187C36692495527E3178B0115EB4589F928B69BBBDFCEA51902C5659729944E9C5ACAEDB4484D4A5AE1736A56E0E04DCD39BEF5460C5CB6413AD4F4FBE6EC95F958AF2EBE9C97C19E5EDFF9BCD3CAD2544084122CE4D85AC71C27923276C605E97EA13E54DCBED41DE94ED61A55E1D96DF0F3DCCAE3835E8F6DF7595EFB7076D55B384F43251D4F2E17D986AE294CCFE48559329330DA485C8BD702243580043AE95A2FCD02CA9C6EAD2D5B7E9F76FB0882BF08DA82052A2AC294939EC15258500F65093C496EAD429F3F67E5D25F1A19831AAA167F301E3DE24E383CEE4B11DF1AA2851EC6F0F915143EBAC785BCB1CDAE656D91C5B4CA83D5FAF32A326D3BC789BAB2CDA46D7F91C5BBD581D8C5A5CE4C35B4B92B52DCDF338B6F2DF0FD1DE94B7342FDEDA2A8BB6C5753E2FCDA75E87ADD4FBA24CAFBA7DD56A07C5BE3FBD435B7510AD63B125837147F0B1095E93AB516EB9164ACA3EBA5A3A21BE593E6C305F97EA13F54DCBED71DF94ED5ED7A71E903EAA2FFD7289934B2E6F78DBF3759E2D7CB46951457F9965DDCD7BE5AC77D0D8509716A0D5B9CFFD5A23B39EFE65C1DE2540DD7E47215017EF6322F2759BCEC57E3D15A4EEE981D838D1730F5A43BE97961576775DF99774FFD75F6C96E6E9E24167B3B0F6855CA099B3AA7CD2B2ADCCDC8215C3D7871932782E4D07BCCC191643B0A8AC929556239807129A70465B8BDC4ABA1B9BB93A19AF68ACB9512320D8CAB8E1CA1EA9B0474ACCA3F4EB2ADA0C6E69605ADE75D5B32CBD4C9A1529238367A0B27112D9ACD0224957C4366B8A5D6404FF91ECB847E76327525C9C9E4622DFB407749481D65769CA966379A456A319BDC40A6DBE8D3CA90AF529483CC4426FF3F236BAC9A2A4C7EAFB54FB6EA3D9F7452F3E2A3DC3C36C8DF152D7D3E8F5D49033A27FE4D219144B3495C812CA9C462201C9923082F2D8EF8E18A8F15E2254D47EB5B2D6BEE92AED5DAE0E50DED14C06AD77DF89A829A8DCFC429E07002A481679EB0FC9E70419D58ADB2423CD1552A1968A599C1AB9B8BE88D2AB4235D22183C98AC082E65063A2C9660B086E5D02DACBA4C33203CC203117CEE560C3191B9E4053A174B5C1A96AA8B1A2C588641B558B16EB53D92A566E7B45ABAF055F5D6FF07D22D5C471586AC529AE5A8EBD3C09743172712554857BF725E4EDE8C8935056F576FD08BD6AB466AED25A21526A5CEA9CB0B700CFDEAEBFC04A61D47B0C548DB6DB7072121E472F398E5C16E4DB4D6CCDC3D86CEAD50D1B72B7A913F103EED8E8A5552B1B201687E6745B20AEE2D2CE41ECB043A6760E87939A92C5EDA27555857B979D793B3AD2BACAAADE90D6751B91C17DB96276555A3BFC1E402553399038970FE07312E6279A139EA378765B19D3F01BE8449DA8EE009E4B6ABC226B485DD2C37B271D56D478F9DCB548276178F492F0C8655BAE45B2350F418B0CA9C67522B240354E2FE15A51E32CCEE7EBD43895A4329EFA8DBCB599F675A93EA77CDE0697D95E96EBC115AAA938C8C6E7F764B16DE1A29EE74CF65EB7C5196CB0C407DBC6E2EB02966E3083A6C9A19CC74E47469A72BDDEB1597898234C6177AC97136A68D6480FB2CBFB685981F9AB996A1B969914626E70D398CF04E9C9484E5B01616191180B07B51DE2BA191B74335EC1D050C28B19624BF1454BF629C0AEB268964993A00D6957D7D4431885DEE4EC65125D44C1EE2D19D92B52C89388C83DDDE5A97FA68DB03080CC4FCEB8C842C5391A446A9AB6BB04A24A8C733914AD57E5933AA0CCEC65FE081DB211435CD1E39343C72C5772AF073BB987E0F488D3EB1519598D2F38CC156B22A9CC848F63E824AD321664168B1A84D19477D52598837B96BA042DD9DF1CCE07FBC94891B8931588D07B3D5563B885529A2C0C77E7FB6C1B5FC669BC25D3F8F16BB4DFC75B82CDBB2CD5CB8146AF68B7A21E8D36329967D1C14AF1A89415F6748199C29214C1A79E032B4DAC7FDAAC1D593A3D64894B9F9955C1B8CB3E6AA2FFD1209B13C3CA4341F2C162D3B62E568473D7B14AA0F359142D5766943AA0CEEDA599899DB291EA7CD981CAF5B729A90BDDC75E64327B52F66233AF32B0E864DAE3223E9F5C442853A7B518AD58D08A2835B88311483C891AA7993073124FDC2D0D1BD9C414ECD368E4DA6F6F39F67A7992D86266F5777ABDC0F15E8E8859F5ED1D27ACB297742CE3CF56E57A8E404B5B6F0FD45EA3AB146B8ABEFA2145839D672DC683F50B8BE91EE2048884A88E8512466238DD8E53B63588B898653342F02A5B2E6C05065B3290C838B98876718533C6F63A35589F66B3AB1EEEBC152287B4B2A7F364D146A8DBF26856C3386489CB1309D27890F08B1C9005BC7E0AE573B8804A3B0C4FB12A59D166341374040BC9E965EB364CB7D524F3527DAB9165CBDD74C87EE668A5406A2A0FAE3DF2F80B3BBF203552350F5D15493AD92C15C9AA5CCF8A246DBD9322D99B542F15497DF5DD23D653BE02CA8C46123BE136879A6D54A565A85BFE8E1ACC2C3A94CDEE4581C987E042199CB63D0546A8DBF66C79CD37280240995628CA7916E6F23F972287D8E1931D9414DA29781255C940CBA44448291172F805C7A81968A5F997857A0D8C51B7DB2138467F736DB18A6FC2D8D20EB139B4DD6EC181E63B35A5901CF0CC356FD2225A169115948DAA3341CD2AD3140DAB32D836AD8206CA32263D5F2DEBC1649DE54006600F0FCAE5B7775771CB6ACFAE28D3A700A95B6D2F3FEA923DCC616DD5E17542A305D660C2E08BAC30A31CF78F99D963B7794C0BF68A46B6FD0E90648BF7814BA3FA3B05A7A3BC9437155552D5D5AEA6FAA1A55D5D95EBD9AEA6AD77B2AB7B33364ABB5A5F7D776A90A52900D8CF88B1E07E2FBC78FBCAFA4E3829D5FB7DF0A2E58ED7C18BB2BD98DEC501E75EAACF8F6533159B1ECB7E332FCC18BC02A7BBB3CDBE14E734252FB2596C79E2A428D2DF64E4DFA837380B873EAC0CE7069F6A03B3221E02386F1322D420B7708DC4A004B6718266460EEBC0A709D123135876F08D5F2C33E245C7B223CA0198BD9824C0136478668B072CF88854A605805504CF4CAFB51B14682E961A64B6197ED89085B3FA5819FCCCEEE274A8F46C7ACBD5712F2AB65B97E08C6BB9B246BA75519D201EBBA852DCDF6DBF36E13862CBE7B1A57365ADD7C75DBC6BBD36F8144B7BF5C19B4E2DD5D7AC729DD5C6C7FCECA042BACE76562363BA74501B5DE9BBA8518C42D86E6D9D4A32DE81DD725DB253B2650582B9E71FBE3ECC683CDFEDB265521013F5266287165ADB54B0E43EA58F2755B000296BE3656A0E31308AD82DB11B93676229929610535F62899234B5971BD2BC56C953FF07893A5165E36D4CD810AD49811DB15C93742FEBBD49BA4C9EA3B5B68F4249C4BBA4B25027B4323165163FC7E92369AB961D015A412B13747A1DBFCE260C7AD4A0A2BE8D8BF3BBCBE9D5F9EDF4FEEE7287020BCE0E81AB5136CCB18550EF075FEAAE9A8DAEC2283787989A2B260D29DEA956B86FBA009AFCBE3B2A61F0C7DE19D955597516820B7D21DE00B5A16416D635436181B9C92CE415C605DF167429AB98C7C2B5A20478153C9494821E256F4837F641BBE249EE601FB249E6855D2B60776117A8825E14C2865EF9BC5033F48C67C61C56CA5702E593A7EDA04AD141B3F1045EB6B20294820B5E0DE80048E8CB8AD888EB9F59D40EBB0A50DAC719D9E554780BB21570E9FA6B36C0B813DD1C653AD678B7A403B8691E48C15061FA5A8AB090514F9039FE4C9F8592518854160886661C308380EAC93473389A712A408B7A91823A44EA5FD50A2D077B87A0B6CB7D8A4227D81D812CC45F19504A28832707045948BDC696B2D0E03D16198848652165A19603169207395360290BB59C0AD0A20E60A908998F01C5247E7E0392664BC11C8A262FEBB8C2D08237CAE89458DBCD425536AD17F6ACCD996416D9966313135BB395A96AD277B36981C6BC369FA526FCF16D4C174E49344633EA45D407AFE750E1A0AF18C484EE1478DA2E1BBA0EB1E0E976FE4B1D730234A65BE0E97C4EAAB0FE26509351A0A46DEE72FA20F2FAEC3E9DC5EB781F9F9C2FF7C599E169B45B468FF20EEB8434212C329D7C458101E9E430EB1787F0D31766AA83028DFE7A89028E3650778295B29B66A30ABD6B65052B2537FCDAD08D7803DF4A54C821F5C3891E7691BE9681893C551F3A957BAA211B82F053072CC5506418BDB4C1921804D95C241AC671E626071371B515E168D47D93D147E22A8379EF3CC16AC4C88E1ADDB50F568F684D04F380DED7BEC1ABEE694F4E572720F62D3BE140B918083451731B0C7067F0CD41A68EB7DBD9EEB9B29B66A3AABE25668E3025478234A59B033F703C580C07FAE0B0DCD11F7AFBC2EAF08F3AAAACB859D0EA8EBAAEBF6603ADBC6968751648C99A108DE91A743AC1A68EEE1B146CBD4935551FFB03989348EB1D5C587050D5C2A68C14CA2F9DE565B9166D567DCB0078F221255B5B79157C325FF090EBDC760BAF822FFE2DE9460422014115924A171D941386F46660275835880DDD295AB5DC329666F82D7E2BB1AAE64E88D6747190978F3E8881010B45C820A0BEC5DD0938B1A8A5ECF22E3726D4795F901966038E47E2B038EE0B76DEBBFE4ED1565D7ED48FAF1863528B3895331B8FC4C7781EAB6B99A1CE6CC0C1D770EFA532121BEB20656E74DA78479591311DB8EBE8105574D30CC98A001E966E4E0547AC9AD29FE221444E532CE95818354ED1A02101BA5234B038CF9D8873942BC64B381EE7C74AA180B910A2155D9D26AD7C17C697395485D093A4B073487B9014ABA6AF8B1D267D371B7B753428CB53A41A36056951E77034BFE40116690D8ABA83F55D5DEC50F6BA4F107A5EE9E81582E2354FBD1B1EC8DED6FDDB9E1DF08A9E1AAF77E12FE23ABADED186F400329D9043F2B705B37E659BA6B33D22CD49A41D19D4F2A853A63860A3BF068618177C5680571118AB1368311DEC11560C2FEC5A0187FAEC0355BABB3E48FEB6D0A5B8E5D3C14D334D677B449AD3D5B29E05181BFFE8C120A60E921F829A5D68257D15EE5176507E9411D348457BC2C1785B9F65BFB99BE7DFE23FA1970DBFEDE22ABCF6AE8A2F2E7624A7398FF7B57FF707CF88264A1BC827892D223526D097440A0D0206D069782791C13009B5A68AE32337050CF0035068C2DB4834B0F8CF18955A438709C1860FD427C1D521F74DC8A0A548CF5548A4907351000D26168C44058D4FAEE81D5533D1EED11C66DCC7095A52934EE6A32D44026C632DC4095A526BAEA54894B038DE703F7160B089269498CB7B102D26594B4DB8EC2A9153C6B7875BC79CC7855AC7246BA989A7E0257A62062D45EE7CA2444E717A1196AAF46010245791534348ABCAA31B6093C07796C1F6D0CD74A83DD81BB880FCA937BF64E983BCB5088C5DB58F288F19FCDA1A34FACC0E1730F478007B9037747F00E20DF68E11225D0A7B01962CD0DB33809E50BEE6212B08E577A13CA3D2344480D0AE274C46514D788003C072EA9822042CED82A097489AAC925AADD771D4944AD184EFBB015FE0D097106F909C788FE002308F14CABE9660176C92636B42E85107E0E4871B0DC1C963078B06691275D388C33E9861A244AA0083059354DAD26C38490FA8001124396AA8266DCF1628CC21C0166D3444AE23AA78885C47542FF1988540E4C8610BBB3D5BD0A07D006FCC02FC713DD286F833E996194590511A93C79E5F9AA87300D73425F09E9AC56903260C62B2D810573213338942A04FC148C3C86A1AB428D9E706C08E99A609F68541D0303C988C127D80301982F81352D631C1406E6236AF3D371531AA004E9A46B4E23A6A10D38AEBA4E24D2DAB30562D734E19C10AE09D79C42BAEA34631AFB8AEEA1EB2B30C7325B211F7493868AE6800264883358BD6C4EB9FDA784D62F74C64A03E4453474C536872BA10435887947A9C3D7F3AD2E3E040365A09A6E78C3AE68DAFDC527247E14B74020D189205468E3E7A8B38DECAF82D3692D88870CB68524706015866114A84EB9F593011AE976A3FA905750C73B857D753C15572D0246605AE876A7866ADD776CB25389802C02483A80B5C9FD47117B82EA96FFB9B865A68693EA2810060C78E41D000D11FA30E1B20BA78F04BC416910264AB2198950EDE61D7F14A0F27E56D776F1E758425EC0A3632DDB4B7B5A5D9A1BAAF2D4D39E496AFF93DEBF6661C7205188691C97D6171E83537864540E1B74B6D6EFAB6C42FE1F229E459555C4FE5BDA0F00555DE9F8ADE7DD45E2C6D9D01F5A6A08A05D09D49A4F1C2AD490F3608172579AD0ADEC974511DA13B92A0CAA8BD4C292873AAEB94828AA8BA4F687A83D284D36E9245B8E3074B14D5454071CE2357014509825F2B33B9C2D7D2C451DE36C39C9946B7D3646FA3EE7E9AA94A624EB9C35D09F88A94968336BB11EA2B5501B8A7F7A70776A623377B0C364C4DB46AD52D20FF6DD34EF569F06A8A019BF4C8D2DD63F167549F802ACED0E8D924DDC0507688BD83E1CF1EF6DA85CC1AE810903F5B147B2C46D708941D52EEAE38B148B9B512785F053BDB0EB0CAE8183CD731DD4178E3633A4654439D75A91F09A747DE69DAD964BE5CC59BA8FA7036215996F1F3FE10AD6FB3C778BDAB136EA3E7E7247DDA3525AB2F27F3E76899BB5AFF717E7AF2E7669DEE3E9EAEF6FBE7DF26935D417AF76E932CB7D92EFBB97FB7CC3693E8319BFCF2FEFDAF930F1F269B92C664C91DB5120FE8D39AF6D9367A8A8554523569E9E764BBDB13811DFD88F2A7D4A78F1B291B7BC09FE71CE56F5D1378865F1EBFFAC45E5D2CFF9BEE27A4372F8539B95CBD9B2DEEDFA94835DCFC4C3AB889D37DD1D798197775714260BE8CD6D156787BFE36BAC8CF024EB3F56193729F4434AA683067FC784A8AC37F38BDBBA7E8A599152C413EC58622F73E354F52F974758E7881F3E2284FA4616E1707D963F233591693F8F3212D8289C0F516D9BFA43BC2883AE349FD47B56723CE8B72AEF362AFA400414A03AAAFD196FCDCC75BEEEBF778BB2BE39F1CB6F96525781C8DB02655C0A4F955C3034DA8874FF4AD88839F5413976A56D5D9841F7328CBB7E7C7681FFBA0A2A430A26238A8E0C71CCA520628F2414549213C2AEEB7C95392466BAC6F7CCB21196E2C3575F2BC4E6F94014355A181A1DFFA80D23150121465BB5ADD17AB2CB94CA2F462C69363BFDB53BB5EC0D4AE81CD0F9CDACD8180787AF39DA7D57C3D02ED4039FA1DA806CD450D17BDA01331CD2249A8854D0A53490E30A4923CC9AF92067942154D42CF3A41030717856084435F7068491960AE71396802B670780D5A81C2A564B32C60640C7402BC283E528D8B89D70870DF9F72DCAB6B5E8276815CFEC2292DE2146E1897604E6F9644C5DD289654FDCD864A1E33A68879CA13A29F2D1514B88F42D211A82A2A4C76A0A95027A98BA2D2305292444D92B7D15A215C16765582E79AC4A25E5C94D834BF6AEA1921D4507FF6254E6789449FA6045855514609A93DAB5B14D32EDAD688E911D33E986E49676CB6021D54463B4CBF0685B19A479E5E04908889030929D889720791623E5BD0DA1246DCAD923C7C06478CF97E040A143E4A5D387ACAC00A4E5E9ED6D700A40626C5B30A0608621D4C52DFCE9772889C3C2FE310F143D49643A40A4FE2E20D311EA2D7B0AC2962A4D8884C8C8CC1D28617C5C7A8899FC22F6F585C1535B55A6301087249B6472912E81485259D4396E46D000E4F949FCD69CDB385E4BCA8BF5978425E6699E00029BE1CC1B2ADC260070B378DF8E3B27437C095C44E93E46B23726046F5F6005551A4837BF501C853F8435BF4658A5F15F5C410E8D79F3DADC462C688C661F1B167CD8662D845B719313C62D806C32DA97E14C32ECA9F1D865F8D0288DEF9B05E7F614AA66A20565A3360F57D104019C46EEAE034F3090E1164BFBB689761F6ECD80BD8123DF46A364E7191A54FF3ACF04C0A3E1936E158B43B1C5D5D2978D5DD24671DAF46102C5EEA54FFA50BA9874D0AB514B7BAAFC1A21AAA86267A7A3558B48B6E0D36ED1814B40A83CE3ADA88C1B781C13615ACFA66ABAB8E6589C1D7A06969AF745BED51288999EC28690874A972DD46F4DA3D4F0F0D5C84D39A656911F0813BF3537DB37196012A91421D42E77492AE16DB4852AE9ACF47A05AE9B1D4C5BE171F5FE0A8152C0698523534C5F3B0420559F1A442F5D9D73300AF32962B8C01E8C565AC49E97B0F8F87DB51EB5223DCBA835B5BFB913CDC8E436D0A83B7D7A09AE121F2F075F4CB2EFFFBFEE77F9317D48ADC7F7750CB9096180D96B7EE741B71D122797ACA40922A9AA15D56B7D1ECFB4224557CB23AD5047693FD7EEC3A67E77AA22A02A001B467F7B36F779757F7D3C5F9D73EF15D866694C10D876C54516383174AC846C31AE214C9BF203DF6FB11E0008ADB6622DACEA7577D8D3B0D7327480D2CCEA066D469C03969D4D15074CA5107E9B1DF8F62D49195A913F3B00E22EB6217B6AE3D0B8BA3540D973A106F64B5A44A35145FBD4F2962BC62935EBF45D39A755BCF1617B3769C2DE36C39D2D9D292714EC3DE3B58E503B59483EBFE1DA8005CD8EF510F18259B512543906C26F62A08A632290092A879092189267A1E0960AC58F1480093D4B3EAC44999517F1AA58C5125A3943141D200A54C4B2A27276546BDD3DED7D889CB69B91AF5CC710530AB64D82B007584CBFCAF5302E088BAB3211CD1446FF98F55C326F5EEA023B265D42E47D96254C9285BF4381AA06C69CD9D993FFBF576744AE7533F64FE7C4FF233629E67B1513A268722F0B22D9F7F9188D4DF8E60AF59C9D14E5CCD55FD4EFA7F9B8B0D44BBFEDCBBE7AC669A8B6273EC4C6BCD115033CD45629B30ED3548EAFAF82CFEE89ACB7D07849A81D4D652C0878C9603EFCE94096FE9E64C6FB75D14A3DFE17597FA093FE7FB2E2562E0F3E065DA78F9E0988FEA884070BE893202A12320B47C45A40682F31D110B208CF743CCF48F80CA87A7E6711C6A477E855F26D67CED2F3E4AF8CBC9C38A90D2AF56330C95A6C129109922CC52D9495C8ACE2EA00E2A3ACAD12B5223FCFA865F9B81518E477D1B866A55ABBDF86BE82EC63D42CDC2B58352D00C1F741B9049E8C7B5731B1156BD5C497148D8EFAFD0C5A34041872E9EAA15EEFA1072668E493B7ACB9E059A5447937414163E217FBEDB65CBA440C7A7F4F184F959C888BAC10FB3B908B593CFDB6CA3CAF1B088B64F31A97A9129B3CDB3C37689AC1F6A2E4BFDA7B5D4E9C67C98F08CE8C32F56F3C3599D1B678F5925E3ECE963F6B4EC4CACF9E1AC8D5ACC9EFE9D896F087B5A4698806F08F64140E3C0D332380EB3207712001142E8D7BE5CAFC37293F66B190CC32C683005F8A9C2684E1DF8A906E5BB3C7A6577C444E70EC5E351E186A130507BC86F99C0C818280A78519DFA27FBE62C0FF5CA64E847733ADF93C55678BBACFA7404CBB76A5C3A58BAA946EEB26C833ABEB559A91E7BF9986B08F2D5F80BC4ABAF3DAF9C74485C56CD373E242D2D5C8D75ECB068990DC96B58AAA68B0797C8B3E08687223C9F7EC7CB21EAEC74816C4F31097D6E76792FA60389DCDF6F58C6A6016E2F562F70E71F933610077D5BEBC830C2E9FBC41C1C71D0350EDADB77F089A6678B8357A2045CCD2EA23480CDAA2265A608288AE3A3769545B34C7222D75F6D16EEB04AC56512494195EB6FED9D7641A7EF2A22B354F2B6339F8F43A15022A81B958236C149A9A8812749903AC157C677B25AD540156AA83F1FCB5EBF0EEAE24AD5A4F4AFB1343073D1594698BD2A98B5A7103530735189CC61E67AFEE22D2A5D25F3C2685D4A5A066A97A67CFB7A57BE7727BF3E517FECED40419C5EAF088FE553CB7C8ADD11054C0BE3938E4013D3A2AA03558C6BC331EA6214A4C06E7480F5AB9BCD680ECDF25E0193E8BFEBAD5832F9D49EB5331E7947A89E8DC8EB1B792D296C3CF2FAD4D886A149110577711DCC7D859232735F298AAB8C0851BF58592A1677A2C3EAAEBFDD2F329B66D141D26E8A6FD64E2FF98E3F9760B39B16A732B1E6AB75CBE423B05C8215BFA6872C9118567EB46E97A447B3DFEDF82591A21F8F403DD5CDD56E1C85B4090ECA6935CB01CF81F77A7707D8D27783D8C0AA2585BC44179F83B883C00BCE5C9AEF3E592D55A46DB23A21483FC073955C9AF7589442481E8CF27B905E404A2C9BE43F16500DF47BFF5EE04686D89B19A30C1965C82843862243DA73F13732C4DE603493216ECE7DBD10E9FFD2E630CCDCC58A80F93A0E63E8AA891998BA3A02C76CEC16EE1ED8487DB2375499EB3A807D29265AB612365AB914A796CAC6AB9468CD4FD0887D72306499A6C816A89066CF4F90E43119B6FAB9D98169CB37E24D18B7ECF4871CC441B4474920E097FF8268919CA8807A15489B94C407DEAF405AE59342B37C0AA45D8AD206EF54082D939543C8501D83C52A8886B760B38EA261140DAF4A34B464880AA2E17599A2C33013D9D7F1FCF4500525030351591AB7EAB9C7FDF8AD482EC9EA14174A544C3B02ED5FC3F50E547FA6054E27AE3A7BBD511C3DF9FC884365ADA94D2C5B5D8E130D9DAD2D2D392C5B5DCECAB8B0F535AC13CCDBA67E020B2764B04AA80AE363C6BECB2A1DF3A529564B0446524832A7394BA2E94AF087D5DF6CCE74CC886A47D4AA28110F75300947B06CA951D0C1AAD534C069D1EAE81D60014EB2680D57550D36F129A3EAB3EFB61B033F69DF8D49EB79D16550E1B2E68EA8E817152DE90C0C2A5C54067B54BC068521578566B3AB4500AB1222636852C245D5EA5D51063026CBEFD696A44C8E4B3882C558C5E38E0CC8BC7A67EBB16424A88C9749410C1CB0162EED082CC6828FAEE6E2D0F8D8A28958F0D1D53E34E7E36B10F48524490B57BCB74D801032B30CD1C2CAA5B92E255B8634C5D63204490A494720F6D5FCEEC606AB1AE06A835176427A154D0CA16D633509A9FDDB2F35471DED97C172B43DDDBFE6A8A3EE6FC9D1D7B024CCA2432E653CD703848AC1628096C407AA2E222C03F4B3CDDDB8C52ABE913C70CC67ABF5046C18FBFD085612C54875B08C54B53BAD21948BD2E4A429BED717E8B04B55D0146F718A75834DEA7969AA47C9655D1A47491AA59696BB7A945CD63A9B517A0DABDC225A5E2691EFC97A9088C11A87155440BC2C21AE4AD557AB450922C57C3E822509E76B17A7A18BCA9D16A49A85B218AA12BCA510520393D2F781D1927B2E0BC590B8D7D699BA927B2E02DC9C7BAF427C97EB7A00434541C94490AB4A6B1516C868E192ECE43A46544C3B0609AFE67A27975E680BDC643DCB514CEF0CA1DE8AA307082FFBCA5ABC30D0B0D5691118385B5B3B6CDDB0D569757060EB6B582788CCC95D74F979796F7F3B42C86C7F032DAC743FD6A5E4FD0D9A62BBBF019214928E608150F3BB9BFD8DAA01AEFB1B949D90EF982686F0C6633509A9FDEF6FD41C75DCDF182C47DBDBDFA839EAB8BF61C9D1D7B024142F512E568710CF3B03640C9603BC283E56B40CF4AA73F1DD6693A38EE90910E4922CE2343C452F1235FAD1E610B41C2EB9FE664EE5E66596F134CA2F47B0B0A970D3D563D0A47AF787A08B0195C44593142A142D5C0F97EA1F5417AA847EF73D200BC69FAD3FFB112FE12C902E3FF6BCCA538039BF2A3D02EC7500ACCD67AA7380393F516D0CB0D7A0EE5C64B3D8F7763048C340D141CA61C34374CDA7E92ADA4CA507B0F814733D601ADD441B329B973C39E6B305ADD561F95D5070EA6F1657C5A013210E075566199152F94B7C02A5E6B3392DFEF1078E9E9064A1818187E75D4EE2A317BA1DEF8863B7FFDCAEFEC16F90B8BC40829D3D753BCC8A797ADC5C47856C94AE38365F2D2911897E7B880062758225BD3C72C9F52A0308D2144B8A9229E362671565726EC36DA329E614E973F41CB5E6AB859D05CD2897880BD06102FB5309E8D695DB6E18F352312FAF99EF47600BA2EB6A07866051B78315C82FC58216C527FA69A0CC222DD4C2A47856512DDF22FDEAB3E7ED4BE44455A0536FCC4A2F56D0A4F855212CFE423542AAA7B981DDBC09757F4915FA21603C0DC575D170F77A1BED42AE22C8533D8A83EFE12E1228BCCFE1BCF98D8A2254D12404A8A0565BA03AEAB400D5506506AA872606A808329043F95F78D507AA8426FA55D4684542254D82A7FF051127A142F32087D5C21C86531D7D0877C882D5B7C4459649EAD96559AA42F6FECA511532243EAA42A32A34AA42CA4A4655C8AA9A51151A55A137AD0AB5B4B956AA42F63B6B2EAA905B645F3B5DC8B10E4365C88DBAB936E448DF4A1D72ABC34D1F72ABCB462172AFC14E23728C4A6DA91239D762AC1339D760A51439D762A515B9D562A31679D460A51779D463A91879D464A81979D460A91AB9D564A31BB9D560AE1CB9D137D58E1CA95BAB47033A3573BEDB65CBA4A8483A3A538FFFC36C4E14341E73AA4D3D5539E011712E83BC9DF888C055A6FE30CF0EDB25A0B56167A17252F046F2439D280E60CE4FDA22AFC62EA2ED530CC5AE521DDC82627D3109C08E2E42CDF60174BCDF67131043E630A3411BE6F5843508D6C2E446C2E7A0F10DC43112295AC3C836F88E2586A4F6D922C72E72428B23CD9A41A43B8D36A63C22801592CEDA3119692E3D7B11FAD628B8984E4516179F3C471F6B9E2D08E0635AECF79040A8971DD2EA7D94A4F156CC424F9A545FE8EF5DFD211FDEE829264B61BCDE35E54A33BDE8D6EE395AE2963C59ABB7D91FC963BC258AC6CB6E1F6FDEE519DECDFF733D5D278563A1CE701BA5C9CF78B75F64FF1193E5FB97F71F7E393D395F27D18E148DD73F4F4FFEDCACD3DD6FCBC36E9F6DA234CDF645D73F9EAEF6FBE7DF26935D51E3EEDD26596EB35DF673FF6E996D26D1633621B4FE3AF9F061123F6E2662F18AAC1195F7BFD65476BBC7353BECCC891BC815C10FDC752C41AE1EE1DFE39F270AE09E4DC4B267F014C81BF2F1F48F68BB5C45DBD393DBE8CF9B387DDAAF72BE9E9EDC1DD6EBE8C79AE4F819AD77B1548B4493F16908944576FEF6257D8CFFFC78FABF8AB2BF9D7CF9F707A6F85F4EEEB764A87F3B797FF2BF7D5B951F5F6FDC3965B38AAD3386D07E7B30A073C81291904DFF3802EE3D64954825B29AC17082157AEAD8045C3810FC0673B1CA12B210A617B39AF03ED9C4B970889749A9CFFF93EDC0D634AF17E16816AFAB4D6FBE53C011529BDCC660887EF8952C8B44FE93E4BFA9E91B0F39BC929A8E38B6BA980C38AF1E8414299517D3499E1465430A93F2422DD7D314EAEADFDFDB22A67EE64041F4C37B07AAF46103D3713186B7C8884D96C62F81805C8DBA9BE0026F3918492D186BDE90E1E90602CC624B94EE3B624E6EBC081B0F0975303A0D0A76F8DE64589AB281654B8D6088B691806108845759126F6D256F5E60D4D5D7F58CA73C203C8A6B799D41B67257BBA316BEE5610CDCBA7850ECE608E109BB8044B16C5BC13F24F6F9676A1C5B55950FBAF237AFE6D6CD4A72B334CC7257B91B5BC22A5202F11FFA22DB6890180261D1433BE5D2AAAA70C816CDB294BA4949917516694003C95C0E764E34F26D74A23134547E24A1C00B3E096B8A5A0F0C6223ED8B206E0BDD05450C81B720196FA3D9F7855B8348C1C0D6993070A18C336E123B693DADAD1DCD2919A709588C9DFDE48386DC7BF018A2ED2A86F57A5B9F30705F70730A1D2DB76555CE8B6D5EFC2D2DB5C7354B5B849B1F80FCED1096ECEBB1428E55C3EDC40E010F785801153EE2D08A5C2CAB721EA2BCF8EB968BE5F198AB08D8B6F2F202DBC250A6209DE0B1E79840A2837DB51667881FE6FD45394BF6B588F25605269D584E38804EAD9940009C2BDEDA374B3590DD440C93ADD7D693CDCAE5E587982E3C9621A6B0827DAF682D716B8E9F7CEED4A745E07435AB6F843801AABC5462A80279A1AFAEC96548CAB26101A2980D66BBF68B16704B0CC38BC86FDFCA5FDD5990E56D65B97F660C59FE165340CC7A60D05F2361062DB042E2BD5E5EAFA2E58AD5AA436DEC1390B58A1422DC16D71E40C91B07446F0372DE81A7D3831A81556398396920648A420F77A288B1C56723E2DC2BFEE050F1F1A90504B3B3E8E0211A2BE1CAFA925C046C529CCF7A0E21E7595BC8A529593A3D64893F4B1809E8C811BB85CF588C2C56A475D7715F82C44534784E7007CBD37B6230E6ABEFE4C89B136282304DF29F244FFE1385698FE764A938D4D2846137969DF43345086113254DB5B1EDAD0D01C4DBDDC36336C39D98890750363CEF8C6DC58738612CD03EEA33C6F32CC82963AB6954C451709E43504C6FD30954966D63F6B0945B9F3A75D403D7A983C4F8369C3AB4740B5347A0DD2E27EB6BA34E6C44EE9C1A1DBFA88B063EFB441FA077B12BAAC2814FF4085D6D773CA17BC8A6C309DFD135194DF62A75C8D9C0D36D9973D813B9C6ECC363A71BF1902D1E9C9132F1D62534F89EA4858446DE4D3094D0B4740B125AA0DDC11D00E90133AB9D5AE01D05E38DDAA26C6021CDBDF9E4B3CD4A0884BEB6C2B4C9C55F3BA8EB25C07B0866B852BF0F041450BC0004E5469EF901B2E2612F80BCF8633D406ECD533C4009FCB51D24331EFF047020299ECB81B3638116C0CCE893377076F44D1B203BFE6C0D96D9E21288FAD519AC00F8B00C96197D370628803F0D0364B6197E347E0AE494F4D043F899EDEE3A94EECF3B11E1AE9DBA5010746F27128DD470272208137742A29DED4A43F074393997252F8F23156E7BD3918660343B5211143B172AE25D5F671AFCD15D673254367AD261F422671A5C3C37373AE24150171A01B0CF1BA64E14648BCC494432B18C4DA9D83A877C7C0A36FA998F0702F32799DDE22A0B873D4584F844CC1C5145D90E8E02EBA398790471C24D7BE7282D50CC27238E9282C1AF32F67A4ED8FC76EBF9F4EA68AEB6F677EAF3F80484C249658AA1AA7C501F48B4516B413E9B0DF7B36F779757F7D3C5F9D71192F86E9CF125EDBC747050627B5BA6A0ACCA0706A55AC1370725134B5234551F66F3623D9C0AD8FC943E9EFC9EAD21AB368FD7F88EF97A7B58EF93E775B224357F3CFD20F5AB210519DA05353E8127F80F12413239E2FCDD8A245A9302BBFD364AE47754BF6E9374993C476BA91B424E64D6A9BC77134A5C4C99C5CF314148BA877A1CA0624A5F10053A9670F144D5D0A0F14F2FCEEF2EA757E7B7D3FBBBCB1D0A0F512728C6B3F9380C7060C16C2DB5B976A121C4B2EC051CA5778A0D128C8A0DCE8F55CA8CEA933926ACC0154A500051EC5024A05E7B731C58620FAFB14BD9309B2391E55A100CA277A920D47C7C350201E6A8B64E7897A10B34502F3181037C44B21944C9A35C8C22F3D51C0F82525B10A2DF5A410312AD051D1A203C8B15124066DAD6D60100AA76324F2F80B1D09C864E8500A1366E8D11925AC183DDF8285E7C3046848ABF2E1577000ED613CF20040EA722487BC181DF487C9A600F1688A694D60A5CF07EA343A70A53648F9A8075F722557498092C56FA434A7F82C50E22472059EA477EE41790949245D88E6B240B4DB0C70B44534A6B4FB2200F3BA9663772ECC51E3601EBEE00388A67B3B03116F75E8BC16D3E0E092C70D81374B0B0D7B95AC588C1EB601DE0843BB95282050B2CD10C3078DCA5185E21C50A334DBD0260988456D0A2884C8042060D9F61051A84D50EB576E110A367114C71229F5EA887D44D65E90D2158F41E74A0D080296D23445971B720D1F949AC5459B12FF769F9EEE5C9F9B27C3C6B1AED96D1A3BCD594BF3B160C9F43D67D8355DAB9F6A2035248C5A5173CF4A0AED8A1A14705457A96750852A567F5B73FDBDACE48EA57C8F0F1414A5183C51D6A4657882AC20EAE986425789A9A05BC3009AD80451526051939242E0A98F7CE1F59C8A0B4D7B8AE3D7F7AD48573FBF586B35E84921D74FA9648CCCD0D837D46E09E473196DCF763DE6B44E3CDA0C3A3BE55D7D6AEA3A6D66E0E23547771EAE3089ADD47F9F24E7D26817EB63C95006C40B6BFFB88C5D041874A798DD2F27C82D506A4BAE2AE21A2131D41E1D1BDE0E80B167662A3774854C7DA091ECA0B27E02BF4ECC115FE0C7D796CA5FED689E9C4DF4802DA51A7B473F6050A96830E2F7EF5C91C508A1B582EF5F681A945B47D8AC5384D8CB9240F253C86AF125156038BDE016F174F78B59DD8E0F49A2481141CAD8AB5BDA54B9595E1CD7C375FB82CE45D305B1B0942848F0E7EDBDF051976B5F679E8A1D4BECCCFDB3928A9C77CEECE5E035587D668F9FC9DA6F2CE41637EFE2E1C649C8EF30D1E2EAEA7EE7A058B78B85F6F4D073CDFDF9725DDCF297F5B2B1AADB60758E80448585CF4243A7A43869DD0383268C811FBDA82051399A58144F1F175C141E2A8B64E38CC571F68D01DAD0C8B08DB83BD434786DDA672CF8282BDEBCA5C1ED5F9DE9CAE04B7E43301A3C6606D6AF98AAAC3AD7238548DDB6D654BCC2355F7083B8D7BCE5230BD7AB8F57D3B3E60FD9D1C6258AE1EF2816A083D7CDE66F4E8E7C3227B00E213053FD650D4C1D1283EF004DEBF7B27D318C8490699892ED575BA3DA074E4F6BFD3640499C1EE2B59E0A5DFEDA426C8950E327238AD7AADA29F5F1D70B028FBE8602A4337B7021F758D9D4466981DD2A7AB6CB9889E756BD10C0F50167C4DE2EAE2E41C97F07AD6289CB92ED57674DA2E8FB0966F3C3220529EB763E3B9D1C376E5C76EB6B35D5015F0B89EFCAE153AB88A70F9AD824A556F372B5A15CBCE1457724CBE7A65A39F5F3DB6B017BFD05156BE69D02ABED4350747D8E743BAC4ECFC2FE98EB4EEF4E4FCE9691B3F45FB98C65BBC3824EBFD9794FEBE4BD6D163B2AC89D1EF5F76D36CF39CEDB8608D5FA32DA96B1F6F730CCCE34D449ABDDC7D3C3D5FAFB3FFF965538E3D69C01FF17697E4D751E7CB15C9F5F1F4F187E802A5A4781789F8E04CF6487E7E49A53892131D352962A337CDFC9118D11157BE14D350D492E0A2D7B934EC6C520F952916BE3D97AD1CB13062A15C0CDE08168CD8D304811DA2CC0C8FECC52A4B2E9328BD98D524F7C986C3F5D76DBC4C7645BFFFC998DCF52208B9E2A9E4E9CD773AE748D94DB446E87DF835E766940FC6DFBCA03144113A42A313680C51A27A42C38843749F698862157DE3C14307E14201FBCFC5E23D4AAE91A99AE8DFF544D157B6217AC57BDB5A82E8F3DA8EFD2E66B9D8F3EAB54558F5B243EB1025FD88D6B78AD6212E3E7E68355B9DCB00ED435C79C24F3C9EA2FFB45B6CA3E5EA6E95C41B479A36433844713C0E2137844394513E4368C49B3ACCFD206594F81641007D838BE31FD44747E9B9B8E7F266859B76E013E1C60D425E070F365D29248728734748BE6A480E710DF183A4397FAA9B8D835D48F84B6F41A6184FD27296B5624FCB6155FCF542625ACEB3C2C2AC69166FE379D8952C9E06BB0A8C783A4A3C0D5684FBE0C9CC4EE2AED58F825C3E041888E22C4B99502F3FD75984C21B5495B8B9615B3C7F398BD8DD0D811F89DFE4126033CAEB11360EB0799362393C6C8C585F9F371FA2840F3DA984D899C7AC18558F0B8673E70ABD0EB013C649285B2B3EB0D257A37C880BD288F211E576281FE2FAD9FE4AD73C8A3BC4B52EF04460C8B5E1246D783D44893B545E0F71DE3BF3DACAB0A85FBB1DE2CC675E7D3D0EBBE2D8974171D0872882C641F71CF421CAC2A31B747387FA2860C5FD1996E031ECCEB4E1A06A6B7B6694DC239AC2A3E90D2E09564B67FD66E16065381B94A0EFA513A4283EFDE94DD27CBA0085A527BD3B43D860E5FA88B081206CB0B2FEC811D6DD888E4B12A808B204FB5704DB52D9C685E26D8FFB1B14DF464CA2E2778802D17DC180F755587AFE3BB9DF93C5B6CD73F174E88628D3C6A12B1F5D1FA0586A5FF11EF211B2E9C2EE48488F665DB8F9D7C2F1CD211FB01A31101603439492BE1830E5D1D5EC224A07ABC15D65D12C0BB98DD0C2D4BB4C2226EA7A7BBBD2D0A42266D6CAF8EEAA3D6486285C47C8F40A9921CAE2A3838C11DBCB568FD29DF35A31D3EA089C56717ABD8A962B767F2440DC1A32F75B98C53C9C46C93FC229209CDEDAAA60BA6E2EAE872BBF73D0382A2177CDCA685730BC994BE03F8B0E6EADA91431F6B48CA532961421219F3D3541760FC0B201593A3D648957F7191969DF7B5335D87E420D6F051B27D438A18E78420D6F0D1FE084321A96C58AA0E43A1E5507CB99F9E4239B9813081EF2296F84A78C621AE225A79EBC6415D30A7779557123A8CC1226C7A8068C93639C1CC8E4189774373632F12C06B8FAB6138F6311A700D936EE9FB3DC1F9E787F4DDC1F9EFC08C07DD3C729AAD8348314106D44D62C167681EA11BE7F32CF3C5F40B1C5C71045D8888FEEF0314421EB8B0FC33834CCD3F64394B263A0B570B263B081D6D0712C1F690F3988C233EAFE3BE4D14620E96B5871537A880BE338A5C7293D4E69744A0F519769DF58ACA13148252638AE2B57064BB32D3F46C1F4212E338367FA1005811FD34DCDBE4AFC0E5216B4B020956E01816A1BD064583F4489F04A583F44B9E0CB7AC350DBCB61C6911E2DA2D1224298131D7254871DC37C1A325BE6210C2281A47FD0FCE530A3948F33799CC9E34C1667F21035960EDEBE281131488D253C9A17ABF8C679BF10162042235B79E7A11AC321AE55E318F263384429E5358666C721A32559340729A4CAA68744234FB10D3056EC1EA23C1930BB8738F57DD86D78103A2E8D8F81EA284CFB83825226DB0A3219EE0F521ABC1AEE0F5238F872DFD4295D998B8314102D18D0E57E8040B5A5FD809AF543940EAF84F543140DBEAC370F1CBD581D062917EAC687F5D515816E4252CD83EF30F42C83EFCC33E3603640E99B9759D6E61CA3F819A2701BF1733CF819A284F6C38F117F2EB2593CC47B9964D57A9AAEA2CDD47927661ADD441B3295968EC55787E577C71BE082B3CEB270FDA2B05B712ED6981B09F16C977D69614FC5F26EB2B465695D9E8B35675DDAFCD02F5CDE7C670D285FC804E696964369FE65400702D59B7D1E1418A1E650BA7A88C48D82F8089765D8211FE4F29E3ADB58B492216F29B0680CF0505BBAE5DA313CC56C5C3BC6B5635C3BC6B5635C3BFA5E3B8667948D6BC7B8768C6BC7B8768C6B8785ECFF44E4EFFE8588CC7D94A48D2423143E27DBDD9EE022FA1111C1CDB7A42C358FF7A0E82D53CB06CDE3F5CF777C322BD14F16E5EA70717E7739BD3ABF9DDEDF5D4AFD166B63C4B454159306D5333DBF39BFFDFEE5D3545B492312A43A9A24A88ABBABF33B52C39DBE1BD57221F7A14A003B70F56DFAFD9B9676231224EA4D1244FFEBD5974FDFA6575FCC6AA8C5065C499D8AD6333B5FDC7E3BD733AA7AA31AAD4DCC00324EC8A3A9934E6AA9329A02D5323FBFFB4A60AC25CFACD852054C1A54C5EC9EC06BF1E5EECA986F5436A38CA339549CA3994C9081D7A9AFB0C00699465FAFAFEE8D3B491700B4933487AA9334934927F13AF515169DFCF76FE70B934E360B9454539304D5F26FDFCEFF0791470632953123200E2A519FA71B029F7D6409AE894946EA6272686A13345BA93A211DAAEFEAFE9CCC38B23E99B291461A87BBC72423DD6372686AE3C3A002F58919A01A175764CDBDFE64DA434E57972AE452A1DA6EEECFBF986285D5EAA145982622CBF0F41B512ACEBF1A75A9345EC0FE94495867CA547D4FA88500F58426223D211CCB45857E59A9AD487951A953C025E5FCDBFC7CAA5F506A6555C6599500E2EB7C7AF945BFC873CA2C0064261546F1A7125A06DD60ED2D68346822321AF95090E962B64614660DBC3E1449E8DAB0B8D2AB7985AB0652B8CBEFA0A67D3FFB64A09F947041075C4847249929AE58FB40A177C3D990BAAD2C8AB295B2AA577C86F53C836ECDEE6744025DDD4F17B9109279C825C3AA1E9B43A8ED7CB7CB9649941B748069F4309B17EC22860E935134929A5C1CEDA22F8F27BF676BC8DA22B5715F277859C82E2C8AF30942CF267CD70CBA5DA3811BF51DD4752427DE05118F45F39B8F47D0F9D25C2443D9B40A1872299362C439C3B41CEEEA93A2BB568CF219E3D9BC31611503CC646B6374450BBB28D97CF4EE2EB5024947A846257717CA86375A323B8B56335F151D1694BEA224FDE6DD5D1A8A7B2E1AEA729FD1BC411ACF4F05D0F5504E09B543C19E05AC61CCF48D9ACA3223342534E0154CF406C088A10F320622A27318844087822B78E6F6F0D10D1B58AF02D33DEA6740108297D02044F06F340841BC24206B20223A6F8B3D6B6A3788195B14B9F10E894E98A227CDC7A36185F064E99CF798C8CC50E6C73B05FA568A2E09296AC648DEA09A2BB897C74145A20E2C037EE099951D814408FBF9B8D8A05029805CAD084E3B8679CB04458FE18C2D4982D6BB2D4814CD508359DB5B28BB1181E2FB5073DEAD2A33425D00EF16EC812D7A2526A99923798D6BCEE0DE604F354AC90F24672BB8E8A4EBDC733F2A830ACE887700F08717EDE7BEF76656B1EF6FCC3566159A57693E0B1EFADA80A69F75263460598535ABB86E29061ECCD756D7DB1D751A2D675EC5CE986787ED3206FD074856850F81DF63283D08F53745974197325BBA4E09DFFD45B47D8AF746DDAFB22A24BEDC7EB8E13D759E8B8A30A703032D795046D552276DD054EB1CF35DCF0213DCB89AC6A5CC30F22129F3071559FDFA9368178D7C4970EEF6D8E1E4870AE03B562E8250CED63CC85D2C7F5C871410C0B2B6D6F91E46BED873D5773DCFD65AB7992DE1A6CBC5C7E0DD55F8C0B0ACAD75DBD69BE8D07D76678DD9EB52E83F9A128177F7500A206BE10CAD3109D7923425DADE3CED9239853A946FD213BABBFD364AD2FDC3E76D465D610F8BECA1DCFC878C66C3B2E1CD68F6004359083AA0E0A34AE7FFFBA056A1350AA4ABE1D056DFD8184178F7A45C6AB80B078B6AC0D3CF7D8C21FB7295069EFC891368BBD9915678C843A76B4A4CA94ECDB8798ECAB77EE66CEF41B0207935EE23F6EC21F51D41E70A7BE93FFBAA899E03686EF5B4114E47D6D3867EEE900F67939206BD1343D3CE26E521ADEA03F9B9CFB6D1539CDFB759EF8AAF6793DF0FA4F4262E7FCDE25DF2D490382334D398BF8343F37C497F665FB7D973BC2DDACFB6A8CE52275723731BEFA3C7681F9D6FF7C9CF68B927C9CB78B74B72BDE37BB43E902C9F363FE2C72FE9FD61FF7CD8932EC79B1FEB179619671375FD6713A9CD67F7CFF9AF5D882E906626798C82FB34BF55FA48DBFDB9BC2D3A312091DF55BA8CC9F7722C8930DAC74F2F94D25D961A12AAD8378B9FE3F4314EF78B78F3BC26C476F7E93CFA237669DBB75D7C133F45CB17F2FD8FE431DEE244F403C1B3FD6C96444FDB68B3AB6834E5C94F82E1C7CD9FFFF2FF013B56D296CFD00300, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201505261852193_delete_attribute_cthoadonbanhang', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7D5B6F24B992DEBB01FF07414FF6E26C57F79C73B09E817A17525577ABA15BEF54B570FC246497B25589ADCA94EB321EC1F02FF3837F92FF829937262F11BC6766A59418A04795248364F06344304806FFDFFFF9BF67FFF6E7667DF247BCDD2559FAF1F4C3BBF7A72771BACC1E93F4E9E3E961FFF39FFFDBE9BFFDEB7FFE4F679F1E377F9EDCD7F9FE9AE72325D3DDC7D3D57EFFFCDB64B25BAEE24DB47BB74996DB6C97FDDCBF5B669B49F4984D7E79FFFED7C9870F9398903825B44E4ECE7E3FA4FB6413173FC8CF69962EE3E7FD215ADF648FF17A577D2729F382EAC96DB48977CFD132FE78FAEF8728BD7EB95D45F368B97A375BDC9D9E9CAF938834641EAF7F9E9E44699AEDA33D69E66FDF77F17CBFCDD2A7F933F910AD172FCF31C9F7335AEFE2AAF9BF35D94D7BF2FE97BC2793A6604D6A79D8EDB38D25C10F7FAD5833118B3B31F894B28E30EF1361F2FE25EF75C1C08FA71751FA345D451BC2EFA7D313B1C2DFA6EB6D9E19E0F13BB6E45F4EB8F4BF505810F4E4FFFDE5647A58EF0FDBF8631A1FF6DB68FD97936F871FEB647915BF2CB2FF88D38FE961BD665B4ADA4AD2B80FE4D3B76DF61C6FF72FBFC73FABF6DF4417D3E9E9C9842F3A11CBD2927CB1B26F041149DEFB9BE8CFEB387DDAAF3E9EFE42C0FC39F9337EAC3F5408F99E266426C4F4F72D6976F463DD7C9868AA9D46D7D1E63E8997DD577EFB14BD34435DD63E8BF6F1824C3B7DD9439688855B6CFA6DF447F25440506808C3BFDFE3759163B74A9ECBA9FE8EA63ECCE6053EC9187FDE669BDFB3355B96A63E2CA2ED53BC271DCAD02CF3ECB05D5AB4703627B320253452B089ECB47960F336ED44B2D096D48DC5F2D59D326D715D30E716D0624AF7E2FCF6CBF4F2FC667A77FB65C73618CE213117C90631F86CD2482AA5FC62F06023BC68B13E2517D3767BF9D5A32059ACB2E44B12A517B3BA6E13115297BA5AD894BA3E10704FAFEFA9C08A97C9265A9F9E7CDB92BF2A13E5D7D393F932CADBFF379B795A4B881082449C9B0A59E384F3464ED8C0BC2ED527CA9B96DB83BC29DB83A65E1D96F7871E66579C1A74FBEFBACAF7DB83B6AA59427A99286AF9F03E4C35714A667FA4AAC9949906D242E45E38912128C090BA52941F1A956A6C2E5D7E9FDE7F87455C816FC4049112654B49CA616F282904B0879924B654674E99B7F7DB2A890FC58C510D3D9B0F18F726191F74268FED88574589617F73888C1A5A67C5DB5AE6D036B7CAE6D86242EDF96A95193599E6C5DB5C65D136BACEE7D8EAC5EA60D4E2221FDE5A92AC6D699EC7B195FF38447B53DED2BC786BAB2CDA16D7F9BC2C9F5A0F5B99F745995E6DFBAAD50E867D7F7687B6EA2056C7624B06E396E06313BC26D745B9A52E948C7D545B3A21BE511F3698AF4BF589FAA6E5F6B86FCA766FEB530F481FD5977EB9C4C9259737BCEDF93ACF163ED6B468A2BFCCB2EEE6BD72D63B586CA84B0BB0EADCE77E6D91594FFFB260EF12A06EBFA310A88BF73111F9BA4DE762BF9E0A52F7F440D638D1730F5643BE979615EBEEBAF2AFE9FEAFBFD8A8E6E9E241B76661D717728166CEAAF2496A5B99B985550C5F1FB690C173693AE0B59C6131048BCA2A59B96A04F3404213CE68BB22B792EEC6CB5C9D8C5734D67C512320D86A71C3953D52618F949847E9B755B4199C6A605ADE75D5B32CFD92341A2923836760B27112D9ACD0224957646DD614BBC808FE23D9718FCEC74EA4B8383D8D44BE690FE82803ADAFD2942DC7F248AD46337A8915DA7C1B795215EA5390788885DEE6E54D749D45498FD5F769F6DD44B3FB452F3E2A3DC3C36C8DF152D773D1EB692167C4FEC8A5332896682A912594398D440292256104E5B1DF1D3130E3BD44A868FD6A65AD7DD355D6BB5C1D60BCA3990C5AEFBE13515350B9F9853C0F0054902CF2D61F92CF09322A8DDB2423CD1552A1968A599C1AB9B8BA88D2CBC234D22183C98AC082E65063A2C9660B084E2F01ED65D26199016690980BE77258C3192F3C81A642E9EA05A7AAA1C6861623926D4C2D5AAC4F63ABD0DCF686565F0A5F5D6FF07D22D5C47150B5E21457A9632F4F0255462EAE84AA70EFBE84BC1D1D7912CAAADEAE1FA1578BD6CC555A1B444A8B4B9D13F616E0D9DBF51758198C7A8F81AAD1761B4E4EC2E3E825C791CB827CBB89AD79189B4DBDBA6143EE3675227EC01D1BBDB46A6503C4E2D09C6E0BC4555CDA39881D76C8D4CEE17052535A71BB585D55E1DE6567DE8E8EACAEB2AA376475DD4464705F2E995D95D60EBF0730C9540E24CEE503F89C84F989E684E7289EDD56C634FC063A5127AA3B80E7921AAFC81AD296F4F0DE498715355E3E772BD249181EBD243C72D9965B916CCD43B022439A719D882CD08CD34BB856CC388BF3F93A334E25A98CA77E236F6DA67D5DAACF299FB7C165B697E57A70856A2A0EB2F1799F2CB62D5CD4F39CC9DE7A5B9CC1062A3ED836165F17A0BAC10C9A2687721E3B1D1969CAF57AC766E1B11C610ABB63BD9C50435B8DF420BBBC8F961598BF9CA9B661994921E606378DF94C909D8CE4B41510162B1263E1A05E87B86EC606DD8C57303494F06286D8527CD1927D0AB0CB2C9A65D2246843DAD535F51046A13B398BDF82373E66E2223814874E101163DAEE72D454328FCBA168BD2A9FD4016566AFB582D0219B39CB153DBE497BCC933077115C34F70407E12188D3AB1519598DE334CC7DE42C7D5A909EAEBCAE39FA582E4166B1A86E8DA6BCABE2654EB9592A5E5AB2BF399C0FF69391D6BD95B56DE88D91AA319C174C9A2C0C77E7FB6C1B7F89D3784BA6F1E3B768BF8FB7049BB759AA97038D126EB7A21E57386432CFA283DAAB08EF9BB05BF146E57271C1EDDF873952C33A73CDDA91A5D34396B8F499D10AC65D6635493021697C8EC6E678ADF2048D7C0AD7B4AD8B15E1DC55AC12E87C1645CB9519A50EA8737B596662A76CA43A5F76A072FD6D4AEAC2F6B11799CC068EBDD8CCAB0C2C3A99F6B888CF271711CAD4692D462B16B4224A0D2E2C04124FA2C56926CC9CC41377A5C146363105FB5C3472EDB75F39F67AD390ACC5CCEAEFF42CBEE3251611B3EAAB2E4E58656FB458066BADCAF51CAE95B6DE1EA8BD862229748ABEFA21854E9D672D064FF58B21E91E0F04081BA80E1C124662385D2553B63588B898653342F0325B2E6C05065B3290C838B9887671853366ED756AA09F66B3CB1E2E88152287B4B2A7C357D146A8DBF21C53C33844C5E58904693C487825076401EF6A42F91C6E6BD20EC353AC4A56B419CD049D5742727AAD751BA6DB5A9279A9BECDC8B2E56E36643F73B43220359507B71E79FC859D5F9019A99A87AE86249D6C96866455AE674392B6DEC990EC4DAA9786A4BEFAEE11EB295F01634623899D709B43CD3604D132D49578470B66161DCA66F762C0E44370A18CE4DA9E0123D46D7B10BBE61B745DBE4C2B0CE53C0B73539E4B91E3D1F0C90E460AED143C89AA64A065522264940839FC2249D40CB4B2FCCB42BD4691A8DBED1049A2BFB9B658C5D761D6D20E812CB4DD6EC181E63B35A5F815F0CC356FD2225A166108948DAA3341CD2AD3140DAB32D836AD8206CA32263DD796F560B2CE722003B08707E5F2DBBBABB865B5675794E95380D4ADB6971F75C91EE6B0B6EAF036A19182359830B892156694E3FE31337BEC368F69C15ED1C8B6DF01926CF13E7069547FA7E0749497F2A6A24AAABAAEABA97D68B9AEAECAF5BCAEA6AD775A57F7B6D828D7D5FAEABB33832C9702C0FA19592CB85FA22E1E8AB2BE404D4AF57E79BA68B9E3DDE9A26C2F4BEFE280732FD5E7C7B2998A4D8F65BF99E7580C9E4CD35D70669F55739A9217D92CB63C715214E96F32F20FBA1B9C85435F21867383EF9A8159110F019CB789A769905BB846625002DB384133238775E0D384E891092C3BF8202E9619F1A263D911E300CC5E4C12E0BD2E3CB3C56B0F7CF826D3028016C133D33BE006059A5B9806996D861F5EC8C2597D5619FCCCEEE274A8F4C678CBD571CF0FB65B97E08C6BB9B246BA75519D201EBBA852DCDF6DBF36E13862CBE7B1A57365ADD7C75DBC6BBD36F8144B7BF5C19B4E2DD5D768B9CE6AE30364765021D5B39DD5C82C5D3AA88D6AFA2E6A1443F6B55B5BA7928C7760B75C97EC946CD98060EEF987AF0F5B349EEF76D93229888976D3037DE39E6FF7A7F4F1A40A1620656DBC4CCD2106C610BB21EBC6E499AC14494BC8525F628992345D2F37A479AB92A7FE4F127562CAC6DB98B0215A93023BB2724DD2BD6CF726E932798ED6DA3E0A2511EF926A853AA1958929B3F8394E1F495BB5EC08D00A5A9960D3EBF8753661D0A30615F56D5C9CDF7E995E9EDF4CEF6EBFEC5060C1D9217035C68639B610EAFDE04BDD55B3D1552CCACD21A6E68A49438A479D15EE9B2E80263F868E4A18FC6574467655AB3A0BC1853EA76E80DA50320BEB9AA1B0C0DC6416F20AE3826F0BBA9455CCCBDA5A51023CA11D4A4A412F7837A49BF541BBE249EE601FB249E6855D2B60776117A8829EDFC1865EF9164F33F48C67C61C56CA27F5E493A7EDA04AD141B3F1049E81B20294820B5E0DE80048E83384D888EBDF24D40EBB0A50DA970C59752A3C9CD80AB874FD351B60DC896E8E321D6BBC5BD201DC34AF8960A8307D5A445064D413648E3FD33794641422950582A11907CC20A07A5FCC1C8E669C0AD0A25EA4A00E91FA27A842CBC1DE21A8ED729FA2D0097647200BF190FC4A0965109F5F9085D46B6C290B0D1E2F918188541652166A3960217990330596B250CBA9002DEA00968AF8F218504C82CD372069B614CCA168F20C8D2B0C2D78A38C4E89B5DD2C5465D37A61CFDA9C4966916D393631B1355B99AA267D379B16688068F3596AC21FDFC674E194446334A35E447DA4770E150EF68A414CE84E81A7EDB2A1EB108B346EE7BFD431274063BA059ECEE7A48A816F023519054ADAE62EA70F22AFCFEED259BC8EF7F1C9F9725F9C199E46BB65F428EFB04E4813C222D3C9571418904E0EB37E7108BF1361663A28D0E86F9728E0680375275829BB6936AAD0235056B05272C3AF0DDD8837F06141851C52BF32E8B12ED2D7323091A7EA43A7724F356443107EEA80A5188A0CA39736581283209B8B44C338CEDCE46022AEB6221C8DBA6F32FA485C6530EFAD27588D18D951A3BBF6C1EA11AD89601ED0FBDA3778D53DEDC9E9EA04C4BE65271C28170381266A6E8301EE0CBE39C8D4F1763BDB3D5776D36C54D5B7C4CC11A6E44890A67473E0078E078BE1401F1C963BFA436F5F581DFE51479515370B5ADD51D7F5D76CA095370DADCE02295913A2315D834E27D8D4D17D8382AD37A9A6EA637F00731269BD830B0B0EAA526CCA48A1BCEA2C2FCBB5B866D5B70C80271F52B235CDABE093B9C243AE73DB295E055FFC5BD28D084402822A24952E3A28270CE9CDC04EB06A101BBA53B46AB9652CCDF05BFC566255CD9D10ADE9E2202F1F7D100303168A9041407D8BBB137062514B59F52E3726D4795F901966038E47E2B038EE0B76DEBBFE4ED1565D7ED48FAF1863528B3895331B8FC4C7781EAB6B99A1CE6CC0C1D770EFA532121BEB20656E74DA78479591311DB8EBE8105574D30CC98A001E966E4E0547AC9AD29FE121444E53A8742C8C1A6768D090005D191A589CE74EC439CA1563158EC7F9B13228602E84684557A7492BDF85F1650E5521F42429EC1CD21E24C5AAE9EB628749DFCDC65E1D0DCAF214A9864D415AD4391CCD2F7980455A83A2EE607D57173B94BDEE13849E573A7A85A078CD53EF8607B2B775FFB66707BCA2A7C6FA2EFC455C47D73BDA901E40A6137248FEB660D6AF6CD374B647A43989B423835A1E75CA14076CF4D7C010E382CF0AF02A026375022DA6833DC28AE1855D2BE0509F7DA04A77D707C9DF16BA14B77C3AB869A6E96C8F4873BA5AD6B30063E31F3D18C4D441F24350B30BADA4AFC23DCA0ECA8F32621AA9684F38186FEBB3ECD7B7F3FC5BFC27F4B2E1F75D5C85D7DE55F1C5C58EE434E7F1BEF6EFFEE019D1446903F924B145A4C604FA9248A141C0003A0DEF24321826A1D654717CE4A680017E000A4D781B890616FF19A3525BE8302178E103F5497075C87D13326829D273151229E45C1440838905235141E3932B7A47CD4CB47B348719F7718296D4A493F9680B9100DB580B718296D49A6B2912252C8E37DC4F1C186CA20925E6F21E448B49D652132EBB4AE494F1EDE1D631E771A1D631C95A6AE22978899E98414B913B9F2891539C5E84A52A3D1804C955E4D410D2AAF2E806D824F09D65B03D74331D6A0FF6062E207FEACD2F59FA206F2D026357ED23CA6306BFB6068D3EB3C3050C3D1EC01EE40DDD1F807883BD6384489762BD004B16E8ED19C04E285FF3900D84F2BB509E31691A224068D71326A368263CC0016039734C1102967641B04B244B5649ADB6EB386A4AA368C2F7DD802F70E84B8837484EBC47700198470A635F4BB00B36C9B13521F4A80370F2C38D86E0E4B18345833489BA69C4611FCC3051225580C182492AD7D26C38490FA8001124396AA8256DCF1628CC21C0166D3444AE23AA78885C47542FF1988540E4C8618ADD9E2D68D03E80376601FEB81E6943FC9974CB8C22C828CD92C79E5F9AA87300D73425F09E9AC56903260CB264B121AE6426B6240A813E05230D23AB69D0A2649F1B003B669A26D8170641C3F060324AF401C26408E24F4859C70403B989AD79EDB9A988510570D234A215D7518398565C27156F6A5985B16A9973CA085600EFCC235E711D358A79C57555F7909D65982B918DB84FC2C1724503304116AC59B426DEFED4C66B12BB672203F5219A3A629AC292D38518C23AA4B4E3ECF9D3911D0707B2D14A303D67D4316F7CE596923B0A5FA21368C0902C3072F4D15BC4F156C66FB191C446845B46933A3208C0328B50225CFFCC828970BD54FB492DA86398C3BDBA9E06AE928326312B703B54C3336BBBB65B2EC1C114002619445DE0FAA48EBBC075497DDBDF34D4424BF3110D04003B760C820688FE1875D800D1C5835F22B6881420AF1A82ADD2C13BEC3A5EE9E1A4BCEDEECDA38EB0845DC146A69BF6B6B6343B54F7B5A52987DCF235BF67DDDE8C43AE00C33032B92F2C0EBDE6C6B00828FC76A9CD4DDF96F8255C3E853CAB8AEBA9BC1714BEA0CAFB53D1BB8FDA8BA5AD33A0DE1454B100BA3389345EB835E9C106E1A2246F55C13B992EA6237447123419B5972905634E759D52301155F7094D6F509A70DA4DB20877FC6089A2BA0828CE79E42AA02841F06B652657F85A9A38CADB669833D3E8769AEC6DD4DD4F333549CC2977B82B015F91D272D06637427DA52A00F7F4FEF4C0CE74E4668FC186A98955ADBA05E4BF6DDAA93D0D5E4D3160931E59BA7B2CFE8CEA1350C5191A3D9BA41B18CA0EB17730FCD9C35EBB9059031D02F2678B628FC5E81A81B243CADD15271629B75602EFAB6067DB0156191D83E73AA63B086F7C4CC7886AA8B32EF523E1F4C83B4D3B9BCC97AB7813551FCE2624CB327EDE1FA2F54DF618AF7775C24DF4FC9CA44FBBA664F5E564FE1C2D7357EB3FCF4F4FFEDCACD3DDC7D3D57EFFFCDB64B22B48EFDE6D92E536DB653FF7EF96D966123D66935FDEBFFF75F2E1C36453D2982CB9A356E2017D5AD33EDB464FB1904AAA262DFD9C6C777B22B0A31F51FE94FAF4712365630FF8F39CA3FCAD6B02CFF0CBE3579FD8AB8BE57FD3FD84F4FAA5584E2E57EF668BBB772A520D373F930E6EE2745FF43566C65D5D9C10982FA375B415DE9EBF892EF2B380D36C7DD8A4DC27118D2A1ACC193F9E92E2F01F4EEFF6297A6966054B904FB1A1C8BD4FCD93543E5D9D235EE0BC38CA136998DBC541F698FC4C96C524FE7C488B602270BD45F6AFE98E30A2CE7852FF51EDD988F3A29CEBBCD82B294090D280EA5BB4253FF7F196FB7A1F6F7765FC93C336BFAC048FA311D6A40A9834BF6A78A009F5F089BE1571F0936AE252CDAA3A9BF0630E65F9FEFC18ED631F54941446540C0715FC984359CA00453EA828298447C5DD36794AD2688DF58D6F3924C38DA5A64E9ED7E98D3160682A3430F4D30F281D03234151B62BEDBE5865C997244A2F663C39F6BB3DB5AB054CED0AD8FCC0A95D1F0888A7D7F73CADE6EB115807CAD1EFC034682E6AB8D8059D88691649422D6C52984A72802195E4497E9534C813AA68127AB6091A38B81804231CFA82434BC600738DCBC112B085C36BB00A142E251BB5809131B009F0A2F848352E26DE22C07D7FCA71AFAE7909D60572F90BA7B48853B8615C8239BD59121577A35852F5371B2A79CC9822E6294F887EB63450E03E0A494760AAA830D981A5429DA42E864AC34849123549DE8BD60AE1B2B0AB123C75128B7A5129B1697ED5D43342A8A1FEEC4B9CCE12893E4D09A055514609A93D9B5B14D32ED6D688E911D33E986EC9666CB6021D4C463B4CBF0683B19A479E5E04908889030929D889710791623E5BD0DA1246DCAE923C7C06478CF97E0406143E4A5D387ACAC00A4E5E9ED67500520393E259050304B10E26A96FE74B39444E9E977188F8216ACB2152852771F186180FD16B506B8A18293622132363A0DAF0A2F81835F15378F586C5555153AB2D16802097647B9422814E5158D2396449DE06E0F044F9D99CD63C5B48CE8BFA9B8527E46596090E90E2CB11A86D15063B50DC34E28F8BEA6E802B899D26C9778DC88119B5DB035445910EEED507204FE10F6DD197297E55D41343A05F7FF65C251633465C1C161F7BB66C28865D6C9B11C323866D30DC92E94731EC62FCD961F8D51880E89D0F6BFD0B53323503B1D29A01ABEF8300C620765307A7994F708820FBDDC5BA0CB367C75EC096E8A157B3718A8B2C7D9A67856752F0C9B009C762DDE1E8EACAC0ABEE2639DB78358260F152A7FAAB2EA41E3629942A6E755F834535540D4DF4F46AB06817DD1A6CDA31186815069D6DB411836F03836D1A58F5CD56571BCB1283AFC1D2D25EE9B6DAA3501233D951D210E8D2E4BA89E8B57B9E1E1AB808A735CBD222E00377E6A7FA66E32C034C22853984CEE9245D2DB691645C359F8FC0B4D263A98B7D2F3EBEC0511B580C30A56A688AE761850AB2E24985EAB3AF6700D632961AC600F4A21A6B52FADEC3E3E176D4B6D408B7EEE0D6D67E240FB7E3309BC2E0ED35986678883C5C8F7EDDE57FDFFDFC2FB242ADC8FD5707B30C6989D16079DB4E3711172D92A7A70C24A9A219DA657513CDEE1722A9E293D5A926B09BECF763B7393BB7135511000DA03DBB9B7DBFFD7279375D9C7FEB13DF65684619DC70C84615353678A1846C34AC214E91FC0BD263BF1F010EA0B86D26A2ED7C7AD9D7B8D3307782D4C0E20C6A469D069C93461D0D45A71C75901EFBFD28461DD14C9D2C0FEB20B22EEBC2D6AD6741394AD570A903F146562A55AAA1F8EA7D4A11E3159BF4FA5734ADAD6EEBD9E2B2AC1D67CB385B8E74B6B4B438A761EF1D56E5035D2907B7FD3B3001B8B0DFA31D304A36A34A8620D94CD6AB2098CAA40048A2CB4B084934D1F34800B38A158F0430493D9B4E9C9419EDA751CA1855324A1913240D50CAB46472725266B43BED7D8D9DB89C96ABD1CE1C35805925C3D600D4112EF3BF4E098023EACE86704413BDE53F560D9BD4BB838EC896D1BA1C658B5125A36CD1E36880B2A5357766FEECD7DBB1299D4FFD90F9739FE467C43CCF62A3744C0E45E0655B3EFF2211A9BF1DC15EB392A39DB89AABFA9DECFF36950D44BBFEDCBBE7AC669A8B6173EC4C6BCD115033CD45629B30ED3548EAFAF82CFEE89ACB7D07849A81D4D652C0878C9603EFCE94096FE9E64C6FB75D14A3DFE17597FA093FE7FB2E2562E0F3E065DA78F9E0988FEA884070BE893202A12320B47C45A40682F31D110B208CF743CCEC8F80C687A7E5711C66477E855F26D67CED2F3E4AF8CBC9C38A90D2AF55330C93A6C1291099228CAAEC242E4567175007151DE5E80DA9117E7DC3AFCDC028C763BE0DC3B4AACD5EFC357497C53D42CDC2B58352D00C1F741B9049E8C7B573131156BD5C4A7148D8EFAFD0C5A34041872E9EAA15EEF61072668E493BFA953D0B34A98E26E92856F884FCF96E972D93021D9FD2C713E6672123EA063FCCE622D44E3E6FB38D2AC7C322DA3EC5A4EA45A6CC36CF0EDB25A23FD45C96FA4F6BA9D38DF930E119D1875FACE687B33937CE1EB34AC6D9D3C7EC69D99958F3C3D91AB5983DFD3B13DF10F6B48C3001DF10D6070117079E2B83E35816E44E02204208FDDA97EB75586ED27E5706C35816349802FC54612CA70EFC5483F25D1EBDB13B62A27387E2F19870C33018E87AC84F4D60640C0C05BCA8CEFC937D7396877A6532F4A3399DFB64B115DE2EAB3E1D81FA568D4B07AA9B5AE42E6A1BB4F1AD9795EAB1978FB986205F8DBF40BCFADAB3E6A443E2A235DFF890B4A4B89AD5B183D2321B92D7A0AAA68B0797C8B3E08687223C9F7EC7CB21EAEC74816C4F31097D6E76792BD38144EEEF372C63D300B717AB17B8F38F491B8883BE2D3D328C70FA3E3107471C748D83F6F61D7CA2E9D9E2E095180197B38B280DB066559132330414C5F151BBCCA259263991EBAF368ADBCDA8E843ED2AF9DC8DE2A54D7052BDF5F048F3AC4EF0958441657A9B8AABE1A38BEA1A1A1FDB13FC0D1F5D44BF391F5DF799DFA27229991746BB286919A8174DF9F6F54BBE472147D9AF3FF6B6711AA7572BC263F974269F62B715BB202D592DA4260A4947A04BB5A8EA4099726D38466D4A410AECBA05886BD3CDA61B8766D927CA24FAEFEE311807F6F798D49ECD0F1E7947687F8CC8EB1B792D196C3CF2FAB4D886614911037771156C998E92325BA62B8AA3D85CC9F6C5CAD2B0B81517E6B7FD79F9C96C9A4507C9BA29BE595F6591EF32730936BB06712A136BBE5AB74C3EEAC72558F16B7AC8128961E547EB76497634FBDD8E5F1229FAF108CC53DD5CEDC6D5439BE0609C56B35C5446AB00FAEE16584BDF0EC2515F4B0A5945179F83DCA4002F727269BEFB01B55491B603EA8420FD00CF8F7169DE63510A217930CAEF417A0119B16C92FF584035D0EFFDBB391B1962BFCC1865C828434619321419D29E8BBF9121F60B463319E2E6DCD70B91FE2FA70D6399BB5811305FC56116BA6A62064B5D1D81635EEC16EE1E7891FA64BF5065AE2500EB4B31D1B295F0A2954B716AA9BC789512ADF9092E629F1C16B24C53E415A89066CF4F90E4312D6CF573B383A52DDF8837B1B865A73FE4200E623D4A0201BFE414C48AE44405D4AB40D6A4243EF07E05B22A9F1496E55320EB52943678A7425899AC1C4286EA1856AC8268780B6BD651348CA2E15589869616A28268785D4BD1612C13D957C0FCEC5005258305A2B234BEAAE71E31E3B722B924AB535C285131ED08AC7F0DD73B30FD9916389DB8EAEC953A71F4E4F3230E95B56636B16C75394E3474B6B6A47258B6BA9C957161EB6BD013CC1B8E7E020B2764A0255485F13163DF9F948EF9D2142B1581911492CC69CE9268BA12FC61F5379B331D3362DA11B32A4AC4431D4CC211A82D350A3AD05A4D039C945647EF9D0A7092456BB8AA6AB0894FB6549F7DB7DD18F849FB6E4C5ACF4A9741858BCE1D51D12F2A5AB2191854B8980CF6A8780D06436E0ACD66978B00AB4A888CE192122EAA36EF8A32C062B2FC6EBD9294C9710947A08C553CEE68019957EFBC7A2C19091AE3655290050E580B9776042BC6828FAECBC5A1F1B1C52562C147D7F5A1391F5F83A02F24495AB8E2BDD7040821B395215A58A99AEB52F2CA90A6D8AE0C419242D211887D35BFBB5983550D705D8351764276154D0C616D633509A9FDAF5F6A8E3AAE5F06CBD1F66CFF9AA38EB6BF25475F834A9845875CCA78EA03848A8132404BE203551711D400FD6C73376EB18AAF250F1CF3D94A9F800D63BF1F8126518C54076AA4AADD4987502E4A9393A6F85E5FA0C32E554153BCC529D60D36A967D5548F928B5E1A47491AA596D45D3D4A2EBACE66945E83965B44CBFC35733FD1091331D071584105C4CB12A256AABE5A29258814F3F9085412CED72E4E4317953B29A49A85B218AA12BCA510520393D2F781D1927B2E8A6248DC6BEB4C5DC93D17016ECEBD5721BE4BBD1E60A1A2A06422C855A5B5060BB468E192ECE43A46544C3B0609AFE67A27975E680BDC643DCB51CCEE0C61DE8AA307082FFBCA5ABC30D0B0D549090C9CADAD1DB66ED8EAA41D1CD8FA1AF4049139B98B2E3F2FEFED6F470899ED6FA08595EEC7BA94BCBF41536CF737409242D211280835BFBBD9DFA81AE0BABF41D909F98E6962086F3C569390DAFFFE46CD51C7FD8DC172B4BDFD8D9AA38EFB1B961C7D0D2AA178716FB13A8478C6162063A00EF0A2F858D132D0EBB5C5779B4D8E3AA62740904BB288D3F014BD48D4E8479B43D072B8E4FA9B3995EB9759C6D328BF1C816253E1A6AB476F49F5EE0FDE16030ABF635924850A450BD7C3A5FA07D5852AA1DF7D0FC882F167EBCF7EC44B380BA4CB8F3D6B790A30E7D7734780BD0E80B5F91C6F0E30E7A7788D01F61ACC9D8B6C16FBDE0E066918183A48396C7888ADF9345D459BA9F47A3D9F626E074CA3EB684366F39227C77CB6A0B53A2CEF0503A7FE6671550C3A11E270506596112995BF3826506A3E9BD3E21F7FE0E809491616187878DEE5243E7AA1DBF18E3876FBCFEDEA1FFC0689CB0B24D8D953B7C3AC98A7C7CD7554C846E98A63F3D5921291E837870820562758D2CB23975CAD3280204DB1A4282D655CD659ECC3F100359A624E913EBBCD516BBE5AACB3A019E51271013A4C607F2A01DDBA72DB0D635E64E5E535F3FD08D682A85EED602158D4EDB00AE455B16045F1897E1628A3A4855A9814CF2A2AF52DD2AF3E7BDEBE444E54053AF5C6687AB18226C5AF0A41F90BD508A99ECB0DECE64DA8FB4BAAD00F01E36928AE8B86BBD7DB58177215419EEA511C7C0F779140E17D0EE7CD6F4C14A18A26214005B5D902D551A705A8861A33503D34314045D0023994FF85377DA04A68A25F458D552454D22478FA5F1071122A340F72582DCC6138D5D18770872C587B4B54B24C52CF2ECBD214B2F7578EA69021F1D1141A4DA1D1145256329A4256D58CA6D0680ABD6953A8A5CDB5D214B2DF59733185DC22FBDAD9428E75181A436ED4CDAD2147FA56E6905B1D6EF6905B5D3606917B0D76169163546A4B93C8B916639BC8B9062BA3C8B9162BABC8AD161BB3C8A3062BBBC8A31E4BC3C8A32643CBC8A3064BD3C8AD261BDBC8AD0673E3C88DBEA975E448DDDA3C1AD0A999F3DD2E5B264545D2D1997AFC1F667362A0F198536DEAA9CA018F887319E4EDC44704AE32F5877976D82E01AB0D3B0B95938237921FEA447100737ED216793576116D9F62287695EAE01614EB8B49007674116AB60FA0E3FD3E9B80183287190DDA30AF27AC41B0162637123E078D6F208E9148D11A46B6C1772C3124B5CF16397691135A1C69761944BAD35863CA23025821E9AC1D9391E6D2B317A16F8D828BE9546471F1C973F4B1E6D982003EA6C57E0F09845AED9056EFA3248DB762167AD2A4FA427FEFEA0FF9F0464F315185F17AD7942B97E945B776CFD1125FC9135DBDCDFE481EE32D31345E76FB78F32ECFF06EFE3FD6D375523816EA0C37519AFC8C77FB45F61F3151DFBFBCFFF0CBE9C9F93A8976A468BCFE797AF2E7669DEE7E5B1E76FB6C13A569B62FBAFEF174B5DF3FFF3699EC8A1A77EF36C9729BEDB29FFB77CB6C33891EB309A1F5D7C9870F93F87133118B57648DA8BCFFB5A6B2DB3DAED961674EDC40AE087EE0AE620972F508FF1EFF3C5100F76C22963D83A740DE908FA77F44DBE52ADA9E9EDC447F5EC7E9D37E95F3F5F4E4F6B05E473FD624C7CF68BD8BA55A249A8C4F43A02CB2F3B7AFE963FCE7C7D3FF5594FDEDE4EB3F1E98E27F39B9DB92A1FEEDE4FDC9FFF66D557E7CBD71E794CD2AB6CE1842FBEDC180CE214B444236FDE308B8F790352295C86A06C30956E8A9631370E140F01BCCC52A4B88224C2F6635E17DB28973E1102F93D29EFF17DB81AD695E2DC2D12C5E579B5EDF53C011529B7C8DC110FDF02B518B44FE93E4BFA9E91B0F39AC494D471CD32E2603CE9B0721454AE5C574922745D990C2A4BC50CBF53485BAFAF7F7B688A99F395010FDF0DE812A7DD8C0745C8CE12D326293A5F14B202057A3EE26B8C05B0E46520BC69A376478BA8100B3D812A3FB962C27375E848D87843A189D06053B7C6F322C4DD9C0B2A5463044DB48C03004C29B2C89B7B592372F30EAEAEB7AC6531E101EC5B5BCCE205BB9ABDD510BDFF230066E5D3C28767384F0845D40A250DB56F00F897DFE991AC75655E5836AFEE6D5DCBA5949BE2C0DA3EE2A77634B58454A20FE435F641B0D1243202C7A68A75C5A55150ED9A2599652372929B2CE220D682099CBC1CE8946BE8D4E2C8686CA8F241478C127614D51EB81416CA47D11C46DA1BBA08821F01624E34D34BB5FB83588140CBC3A13062ED4E28C9BC44E564F6BBAA33925E334018BB1B39F7CD0907B0F1E43B45DC3B0D6B7F5090377859B53E848DD9655392BDBBCF85B52B5C7354B5B849B1F80FCD7212CD9D7B30A39560BB793750878C0C30AA8F0118756E4625995F310E5C55FB75C2C8FC75C46C0B6959717D816863205E9048F3DC704121DECABB53843FC30EF2FCA59B2AF4594B72A30E9C472C201746ACD0402E05CF1B6BE59AA81D64D6461B2F5DA7AB2D15C5E7E88E9C2430D318515EC7B45BAC4AD397EF2B9539F1681D3E5ACBE11E204A8F25289A109E485BEBA26972129CB860588623698EDDA2FBC716B3CCEFCD59F8003ED3170FE6AFCA2D9F60BACC5BD95CCD52A5AAE585334D46E3851EF0BD2EA95E5F6A48D44585C7900256F1C10F20CC8790B1EE90EBA72AA1AC358430633B328F4702BCE4B5B7C3672C1BDE20F0E151F9F2E25989D45078FE55365D6B20E18072AF98C6149F838CED805844B53B2747AC8127F963012D091230C85906264B122ADBB8AFB12242EA2C173823B2CD7BC2706B3E6F39D1C7973424C10A649FE93E4C97FA230EDF19C2C15875A9A30EC6EAC937DA688BB6B62A4A97683BDAD218078BB1B5FCC0EB21333F1A8C3868784B1FDEB10C77205DA477D30779E05399A6B358D8AE003CE73080A846D3A81CAB26DCC1E9672EB53A70E15E03A7590C0D8865387966E61EA08B4DBE5647DD7D2898DC8454DA3330B75D1C00786E8ABED2EEB8AAA70E063304257DB1D4FE8F2AEE970C2175B4D4693BD7F1C7236F0745BE61CF6AEAC31FBF080E3463C648B0767A44CBC75090D3EC26821A191C7060C25342DDD828416687770705E7AF5CB6A7B13787CC07877B3281B5848730F25F9EC4D1202A1EF7A306D72F1D70EEA4E06F0888019AED48FEA000514CFE640B991B77180AC78AC08202FFEC20D905BF37E0D50027FA206C98C070D011C488A3766E0EC5874023033FA4E0C9C1D7D0806C88EBFF58265B6B839A17EAA052B00BEC68265461F5B010AE0EFA900996D861F0D3A0239253DEC107E66BBBB0EA54BE74E44B8BB9A2E1404DBDB89442335DC8908C2C49D90B8CE76A52178BA9C9CCB9297C7910AB7BDE9484358343B52110C3B172AE20559671AFC7957673254367AD261EC22671A5C1034373AE2E949171A01B0CF2F4C9D28C82B322711C9040036A562EB1CF2F129D8D8673E1E08CC9F6476F5A92C1CF6E80DE21331734415653B3873A30FFDE511F9085FDA3B8736810225197194140C7EFFAFD7C3B5E65742CFA79747731FB4BFA392C72720144E2A530C55E583FA40A28DDA0AF2D96CB89B7DBFFD7279375D9C7F1B2189EFC619DF6CCE4B070725B6B7650ACAAA7C6050AA0D7C7350320118C5A5EAC36C5EE8C3A980CD4FE9E3C9EFD91A5AD5E6410EDF315F6F0EEB7DF2BC4E96A4E68FA71FA47E35A4A08576418D4FE009FE9344904C8E387FEC2189D6A4C06EBF8D12F9F1D16FDB245D26CFD15AEA86901399752AEFDD8412175366F1734C1092EEA11E07A898D21744818E255C104E353468D0D08BF3DB2FD3CBF39BE9DDED971D0A0FD12628C6B3F9380C706011602DADB976A1210480EC051CA5778A8DAC8B8A0DCE8F55CA8CEA933926ACC0154A5000A1DF5024A05E7B731C58620FAFB14BD9309B23E1D85A100CA277A920D47C7C350201E6A8B64E7897A10B34502F3181037C44B21944C9A35C8C22F3D51C0F82515B10A2DF5A410312E2041D1A20A68915124066DAD6D60100AA7632EF158001C49C864E8500A1364EC70849ADE0C16E7C14CF24182342C55F978A3B0007EB89671002C72011A4BDE0C06F243E4DB0070B44534A6B052E78BFD1A153C5F6B1474DC0BA7B912A3ACC04162BFD21A53FC162079123902CF5CB38F2B3414AC9226CC735928526D8E305A229A5B5275990D79054B31B39F6620F9B807577001CC55B53D8188B7BAFC5E0361F8704163856083A58D89356AD62C4E049AD0E70C29D5C29C18245636806183CEE520CAF90628599A65E01304C422B68514426402183C69CB0020DC26A875ABB7088D1B308A638914F2FD443EA66B2F486102CE40D3A50689491B611A2ACB85B90E8FC2456A6ACD897BBB47C2CF2E47C59BE38358D76CBE851DE6ACA1FEB0A86CF21DBBEC12AEDDC7AD10129A4E1D20B1E7A3057ECD0D0A38122BD653A04A9D2B3F9DBDFDADA6E91D4AF90E1E38394A2068B3BD48CAE1055841D5C31C94AF034350B7861125A018B2A4C0A3272485C1430EFAD3FB2904169AF715D7BFEF4A80BE7F6EB0D67BD08253BE8F42D91989B1B06FB8CC03D8F622CB9EFC7BCD788C69B4187477DABAEAD5D474DADDD1C46A8EEE2D4C71134BB8FF2E59DFA4C02FD6C792A01D8806C7FF7118BA1830E95F21AA5E5F904AB0D4875C55D4344273A82C2A37BC1D1172CECC446EF90A88EB5133C94174EC0A7DBD9832BFC19FAF2D84AFDAD93A5137F230968479DD2CED91728580E3ABCF8D5277340296E60B9D4DB07A616D1F62916E33431CB257928E1317C9588B21A58F40E78BB78C2ABED640D4EAF491248C1D1AAD8B5B774A9B25A7833DFCD159785BC0BB6D6468210E1A383DFF67741865DAD7D1E7A28AD2FF3F3760E46EA319FBBB3B740D5A1355A3E7FA7A9BC73D0989FBF0B0719A7E37C83878BEBA9BB5EC1221EEED7AFA6039EEFEF6B25DDCF297FDB55345A6D0FB0D00990B0B8E84974F4860C3BA17164D09023F6B5050B26324B0389E2E3EB8283C4516D9D7098AF3ED0A03B5A191611B6077B878E0CBB4DE59E05057BD795B93CAAF3BD395D096EC96702468DC1DAD4F21555875BE570A81AB7DBCA969847AAEE11761AF79CA5607AF570EBFB767CC0FA3B39C4B05C3DE403D5107AF8BCCDE8D1CF8745F600C4270A7EACA1A883A3517CE009BC7FF74EA63190930C32135DAAEB747B40E9C8ED7FA7C9083283DD57B2C04BBFDB494D902B1D64E4705AB5AEA29F5F1D70B028FBE8602A4337B7021F758D9D4466981DD2A7CB6CB9889E75BA688607280BAE93B8BA3839C725BC1E1D8533D7A5DA8E4EDBE511D6F28D470644CAF3766C3C377AD8AEFCD8CD76B60BAA021ED793DFB5420757112EBF5550A9EAED46A355B1EC4C7125C7E4AB351BFDFCEAB185BDF8858EB2F24D8356F1A5AE3938C23E1FD225B6CEFF9AEE48EB4E4FCE9F9EB6F153B48F69BCC58B43B2DE7F4DE9EFDB641D3D26CB9A18FDFE7537CD36CFD98E0BD6F82DDA92BAF6F136C7C03CDE44A4D9CBDDC7D3F3F53AFB9F5F37E5D89306FC116F77497E1D75BE5C915C1F4F1F7F882E504A8A7791880FCE648FE4E7D7548A2339D1519322367AD3CC1F89111D71E54B310D452D092E7A9D4BC3CE26F5509962E1FB73D9CA110B23164A65F046B060C49E2608EC10656678642F5659F22589D28B594D729F6C385C7FDBC6CB6457F4FB5F8CC95D2D82902B9E4A9E5EDFD33947CA6EA23542EFC3AF3937A37C30FEE6058D218AD0111A9D40638812D5131A461CA2FB4C4314ABE81B0F1E3608170AD87F2E16EF51728D4CD544FFAE278ABEB20DD12BDEDBD612449FD776EC7731CBC59E57AF2DC2A6971D5A8728E947B4BE55B40E51F9F8A1D54C3B9701DA87A879C24F3C9EA2FFB45B6CA3E5EA7695C41B479A36433844713C0E2137844394513E4368C49B3ACCFD206594F81641007B838BE31FD44747E9B9B8E7F266859B76E013E1C60D425E070F365D29248728734748BE6A480E5187F841D29C3FD5CDC6C12A12FED25B9029C693B49C65ADACA7E5B02AFE7621595ACEB3628559D32CDEC6F35857B2781AAC1618F17494781AAC08F7C193D93A89BB563F0A72F91060208AB32C6542BDFC5C67110A6FD054E2E6866DF1FCE52CB2EE6E08FC48FC2697009B515E8FB07180CD9B14CBE16163C4FAFABCF910257CE84925C4CE3C66C3A87A5C309C3B57E875809D304E42D9AEE2031B7D35CA87A89046948F28B743F910F567FB9AAE79147788BA2EF04460C8B5E1246D783D44893B545E0F71DE3BF3DA6A6151BF763BC499CFBCFA7A1CEB8A635783E2A00F51048D83EE39E84394854737E8E60EF551C08AFB332CC163D89D69C341D5D6F6CC28B947348547D31B540956AAB37EB370B0329C0D4AD0B7EA04298A4F7F7A93349F2E4061E949EFCE103658B93E226C20081BACAC3F72847537A2A34A020D419660FF86605B26DBA828DEF6B8BF41F16DC4242A7E872810DD1506BCAFC2D2F3DFC9BD4F16DB36CFC5D3A11BA24C1B87AE7C747D8062A97DC37BC847C8A60BBB23213D2EEBC2CDBF168E6F0EF980D58881B01818A294F4C580298F2E6717513A580BEE328B6659C86D84EED93E4401F50AD83E4499304CB697AD1EA50CE73D61DE613802E7499C5EADA2E58AF5D307889F92A54F0BD2D495F1E57907388DD27384534038BD35AD60AA371757C395DF39681CB70B6F1BCD685730FC728BC07F161DDC5A5339C6D9531B7604F229C796763C5AC9FAA22D1B90A5D3439678759F9191F6BD670AFBCB1C6E420D4F838D136A9C50473CA186A7C30738A18C8665B12228B98A47D3C172663EF9C8266627DC433EE58DF094514C43BCE4D49397AC625AE12EAF2A6E049559C2E418CD8071728C9303991CA34A77632313576180DAB79DB8108B3805C8B6710F9AE5FEF0C4FB6BE2FEF0E44700EE9B3E9250C54819A4806823C263A1D805AA47F80EC73CF37C89C3161F431461233EBAC3C71085AC2F3E0CE3A1304FAC0F51CA8E01BFC2C98EC106FC42C7917DD33DCC200ACF79FBEF90471B81A4EFC28A9BD243548CE3941EA7F438A5D1293D445BA6FDC5620D8D411A31C1715DB932589A6DF9310AA60F51CD0C9EE94314047E4C375DF655E27790B2A0058554BA0504AA6D409361FD1025C22B61FD10E5822FEB0D433E2F8719CF785C118D2B228439D1214775D831CCA721B3651E62412490F40FDEBE1C66B4EC71268F33799CC9E24C1EA2C5D2C11B0C25220669B18447F362155F3BEF17C2024468642BEF0D546338445D358E213F864394525E6368761C325A12A539482155363D241A798A6D80B162F710E5C980D93DC4A9EFC36EC383D071B9F818A88DC2B43F282865B2AD2093E1FE20A5C1ABE1FE2085832FF74D9DD2D572719002A2850574B91F20506D693FA066FD10A5C32B61FD1045832FEBCD03182F568741CA85BAF1617D7545A09B9054F3E03B0C3DCBE03BF3CC38980D50FAFA6596B539C7287E8628DC46FC1C0F7E8628A1FDF063C49F8B6C160FF15E26D15A4FD355B4993AEFC44CA3EB6843A6D2D2B1F8EAB0BC77BC012E38EB2C0BD72FDBBA15E7628DB99110CF76D99716F6542CEF264B5B96D6E5B95873D6A5CD0FFDC2E5CD77D680F2854C606E693994E65FA8732050BD1DE74181116A0EA5AB0731DC28888F4159861DF2412EEFA9B32C2B2FE42D05168D451D6A4BB7D41DC333CC46DD31EA8E51778CBA63D41D7DEB8EE12DCA46DD31EA8E51778CBA63D41D16B2FF1391BFFB172232F7519236928C50F89C6C777B828BE847440437DF92B2D43CDE83A2B74C2D1B348FD73FDFF1C9AC443F5994DAE1E2FCF6CBF4F2FC667A77FB45EAB7581B23A6A5AA9834A89EE9F9F5F9CDFDD74F536D258D4890EA6892A02A6E2FCF6F490DB7FA6E54EA42EE43950076E0F2FBF4FEBB9676231224EA4D1244FFDBE5D74FDFA7975FCD6AA8C5065C499D8AD6333B5FDC7C3FD733AA7A2B19AD4DCC00324EC8A3A9934E6AA9329A02D5323FBFFD4660AC25CF686CA902260DAA627647E0B5F87A7B69CC372A9B51C6D11C2ACED14C26C8C0EBD4575860834CA36F579777C69DA40A00ED24CDA1EA24CD64D249BC4E7D854527FFF1FD7C61D2C9464149353549502DFFFEFDFCBF1379642053996504C44125EAF37443E0B38F2CC13531C9485D4C0E4D6D82652B5527A443F55DDE9D931947F493291B69A471B87B4C32D23D2687A6363E0C2A509F9801AA71714974EED527D31E72B6BA5421970AD5767D77FED5142BAC550F29619A88A8E1E97762549C7F33EA52B97801FB5326619D2953F53DA12B04A8273411E909E1582E2AF46AA55E45CA4AA54E0155CAF9F7F9F954AF506A6355C6599500E2EB7CFAE5AB5EC973C62C0064261546F1A7125A06DD60D75BD068D0446434F2A120D3C54C4714CB1A583F1449A86E585CEACDBCC2550319DCE577D0D2BE9B7D32B04F4AB8A0032EA42392CC1457ECFA406177C3D990BAAD5614652B6553AFF80CDB7906DD9ADDCD8804BABC9B2E722124F3904B864D3D368750DBF96E972D93285FD0014BA387D9BC601759E83019C54552938BA35DF4E5F1E4F76C0DADB6486DDCD7095E165A1716C5F904A16713BE6B06DDAED1C08DFA0EEA3A9213EF8288C7A2F9CDC723E87CB95C2443D9B40A1872299362C4B9856939DCD5274577AD18E533C6B379B384550C3093AD8DD11557D845C9E6A37777E92A9074845A547277A16C78A3A56567D16AE6ABA2C382D15794A4DFBCBB4B4371CFC585BADC67346F90C6F35301743D945342ED50B06701BB3066FA4697CA3223342534E01596E80D8091853EC8188888CE6110021D0AAEE099DBC347376C60BD0A4CF7A89F0141085E428310C1BFD12004F19280AC8188E8BC2DF6ACA9DD20666C51E4C63B243A618A9E341F8F8615C293A573DE63223343991FEF14E85B29BA24A4A8192379836AAEE05E1E0713893AB00CF881675676041221ECE7E36283C2A40072B52238ED18E62D13143D8633B624095AEFB6205134430D666D4F51762302C5F7A1E6BC5B556684BA00DE2DD8035BF44A4C523347F21AD79CC1BDC19E6694921F48CE5670D149D7B9E77E540B2A3823DE01C01F5EB49FFBDEDBB28A7D7F63AE5956A17995CB67C1435F2FA0E967DD121A5859855D5671DD520C3C98AFADAEB73BEA345ACEBC8A9D31CF0EDB650CFA0F90AC0A1F02BFC7507A10EA6F8A2E832E65B6749D12BEFB8B68FB14EF8DBA5F6555487CB9FD70C37BEA3C1715614E07065279504695AA9336682A3DC77CD7B3C00437AE4BE3526618F99094F9838AAC7EFD49B48B46BE2438777BEC70F24305F01D2B952094B3350F7217EA8FEB90020258D6D63ADFC3C8177BAEFAAEE7D95AEB36B325DC74B9F818BCBB0A1F1896B5B56EDB7A131DBACFEEAC317B5D0AFB475322F0EE1E4A01642D9CA13526E15692A644DB9BA75D32A73087F24D7A4277B7DF4649BA7FF8BCCDA82BEC61913D949BFFD0A2D9B06CF865347B80A12C041D50F031A5F3FF7D509BD01A03D275E1D056DFD8184178F7A45C6AB80B078B6AC0D3CF7D8C21FB7295069EFC891368BBD9915678C843A76B4A4CA94ECDB8798ECAB77EE66CEF41B0207935EE23F6EC21F51D41E70A7BE93FFBAA899E03686EF5B4114E47D6D3867EEE900F67939206BD1343D3CE26E521ADEA03F9B9CFB6D1539CDFB759EF8AAF6793DF0FA4F4262E7FCDE25DF2D490382334D398BF8343F37C4D7F66DFB6D973BC2DDACFB6A8CE522757237313EFA3C7681F9D6FF7C9CF68B927C9CB78B74B72BBE33E5A1F48964F9B1FF1E3D7F4EEB07F3EEC4997E3CD8FF50BCB8CB389BAFEB389D4E6B3BBE7FCD72E44174833933C46C15D9ADF2A7DA4EDFE5CDE169D1890C8EF2A7D89C9F7722C8930DAC74F2F94D26D961A12AAD8378B9FE3F4314EF78B78F3BC26C47677E93CFA237669DBF75D7C1D3F45CB17F2FD8FE431DEE244F403C1B3FD6C96444FDB68B3AB6834E5C94F82E1C7CD9FFFFAFF019B813853A1CA0300, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201506041051498_add_attribute_tinhtrang_to_phieudatmua', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7D5B6F24B992DEBB01FF07414FF6E26C57F79C73B09E817A17525577ABA15BEF54B570FC246497B25589ADCA94EB321EC1F02FF3837F92FF829937262F11BC6766A59418A04795248364F06344304806FFDFFFF9BF67FFF6E7667DF247BCDD2559FAF1F4C3BBF7A72771BACC1E93F4E9E3E961FFF39FFFDBE9BFFDEB7FFE4F679F1E377F9EDCD7F9FE9AE72325D3DDC7D3D57EFFFCDB64B25BAEE24DB47BB74996DB6C97FDDCBF5B669B49F4984D7E79FFFED7C9870F9398903825B44E4ECE7E3FA4FB6413173FC8CF69962EE3E7FD215ADF648FF17A577D2729F382EAC96DB48977CFD132FE78FAEF8728BD7EB95D45F368B97A375BDC9D9E9CAF938834641EAF7F9E9E44699AEDA33D69E66FDF77F17CBFCDD2A7F933F910AD172FCF31C9F7335AEFE2AAF9BF35D94D7BF2FE97BC2793A6604D6A79D8EDB38D25C10F7FAD5833118B3B31F894B28E30EF1361F2FE25EF75C1C08FA71751FA345D451BC2EFA7D313B1C2DFA6EB6D9E19E0F13BB6E45F4EB8F4BF505810F4E4FFFDE5647A58EF0FDBF8631A1FF6DB68FD97936F871FEB647915BF2CB2FF88D38FE961BD665B4ADA4AD2B80FE4D3B76DF61C6FF72FBFC73FABF6DF4417D3E9E9C9842F3A11CBD2927CB1B26F041149DEFB9BE8CFEB387DDAAF3E9EFE42C0FC39F9337EAC3F5408F99E266426C4F4F72D6976F463DD7C9868AA9D46D7D1E63E8997DD577EFB14BD34435DD63E8BF6F1824C3B7DD9439688855B6CFA6DF447F25440506808C3BFDFE3759163B74A9ECBA9FE8EA63ECCE6053EC9187FDE669BDFB3355B96A63E2CA2ED53BC271DCAD02CF3ECB05D5AB4703627B320253452B089ECB47960F336ED44B2D096D48DC5F2D59D326D715D30E716D0624AF7E2FCF6CBF4F2FC667A77FB65C73618CE213117C90631F86CD2482AA5FC62F06023BC68B13E2517D3767BF9D5A32059ACB2E44B12A517B3BA6E13115297BA5AD894BA3E10704FAFEFA9C08A97C9265A9F9E7CDB92BF2A13E5D7D393F932CADBFF379B795A4B881082449C9B0A59E384F3464ED8C0BC2ED527CA9B96DB83BC29DB83A65E1D96F7871E66579C1A74FBEFBACAF7DB83B6AA59427A99286AF9F03E4C35714A667FA4AAC9949906D242E45E38912128C090BA52941F1A956A6C2E5D7E9FDE7F87455C816FC4049112654B49CA616F282904B0879924B654674E99B7F7DB2A890FC58C510D3D9B0F18F726191F74268FED88574589617F73888C1A5A67C5DB5AE6D036B7CAE6D86242EDF96A95193599E6C5DB5C65D136BACEE7D8EAC5EA60D4E2221FDE5A92AC6D699EC7B195FF38447B53DED2BC786BAB2CDA16D7F9BC2C9F5A0F5B99F745995E6DFBAAD50E867D7F7687B6EA2056C7624B06E396E06313BC26D745B9A52E948C7D545B3A21BE511F3698AF4BF589FAA6E5F6B86FCA766FEB530F481FD5977EB9C4C9259737BCEDF93ACF163ED6B468A2BFCCB2EEE6BD72D63B586CA84B0BB0EADCE77E6D91594FFFB260EF12A06EBFA310A88BF73111F9BA4DE762BF9E0A52F7F440D638D1730F5643BE979615EBEEBAF2AFE9FEAFBF68CB25E98A18024DA98B8C4CA848F6122954FA74F1A05BEBB0EB12B94033D755F92475AFCCDCC2EA87AF0F5B00E1B9341DF05A06B1D883456C95AC5C6D827920610B67B45DC95B6905E3E5B14E37281A6BBE1812106CB528E2CA1EA992404ACCA3F4DB2ADA0C4EA5302DEFBAEA59967E491A4D9691C13330F538496E56C85F947722C5C5E96924F24D7B404719687D95A66C3996476A359AD14BACD0E6DBC893AA509F82C4432CF4362F6FA2EB2C4A7AACBE4F73F1269ADD2F7AF16DE9191E664B8D97BA9E8B6523CB1A372D33627FE4D219144B3495C812CA9C462201C9923082F2D8EFAA1898F15E2254B47EB5B2D6BEE92AEB5DAE0E30DED14C06AD77DFC1A829A8B607843C0F0054902CF2962192CF09322A8DDB2423CD1552A1968A599C1AB9B8BA88D2CBC234D22183C98AC082E65063A2C9660B084E2F01ED65D26199016690980BE77258C3192F3C81A642E9EA05A7AAA1C6861623926D4C2D5AAC4F63ABD0DCF686565F0A5F5D6FF0FD25D5C47150B5E21457A9632F4F0255462EAE84AA70EFBE84BC1D1D7912CAAADEAE1FA1578BD6CC555A1B444A8B4B9D13F616E0D9DBF51758198C7A8F81AAD1761B554EC2E3E825C791CB827C9B8AAD79189B54BDBA618D77A93CD77AC1C40FB863A39756AD6C80581CB6D36D81B88A4B3B07B1C30E99DA391C4E6A4A2B6E17ABAB2ADCBBECCCDBD191D55556F586ACAE9B880CEECB25B3ABD2DAA1F9002699CA81C4B97C009F93303FD19CF01CC5B3DBCA9886DF4027EA447507F05C52E3155943DA921EDE3BE990A3C6CBE76E453A09C3A39784472EDB722B92AD790856644833AE1391059A717A09D78A196771AE5F67C6A92495F1D46FE4ADCDB4AF4BF539E5F336B8CCF6B25C0FAE504DC541363EEF93C5B6850B7E9E33D95B6F8B33D840C507DBC6E2EB0254379841D3E450CE63A723234DB95EEFE62C3C96234C6177AC97136A68AB911E64579853C29733D5362C3329C4DCE0A6319F09B293919CB602C26245622C1CD4EB10D7CDD8A09BF10A8686125ECC105B8A2F5AB24F01769945B34C9A046D48BBBAA61EC22F742767F1DBF3C6C74C5C0487E2D00922624CDB5D8E9A4AE6713914AD57E5933AA0CCECB556103A643367B9A2C737698F7912E62E828BE67EE1203C04717AB52223AB719C86B9C79CA54F0BD2D395D7F5481FCB25C82C16D5ADD1947755BCCC29374BC54B4BF63787F3C17E32D2BAB7B2B60DBD31523586F382499385E1EE7C9F6DE32F711A6FC9347EFC16EDF7F19660F3364BF572A051C2ED56D4E30A874CE65974507B15E17D13762BDEF0EA6311E1E9D95964C0ED609DB966EDC8D2E9214B5CFACC6805E32EB39A249890343E476373BC567982463E856BDAD6C58A70EE2A5609743E8BA2E5CA8C5207D4B9BD2C33B15336529D2F3B50B9FE36257561FBD88B4C6603C75E6CE65506169D4C7B5CC4E7938B0865EAB416A3150B5A11A5061716028927D1E23413664EE289BBD260239B98827D2E1AB9F6DBAF1C7BBD6948D66266F5777A16DFF1128B8859F5551727ACB2375A2C83BC56E57A0EF34A5B6F0FD45E4398143A455FFD9042AECEB31683AEFAC59E748F0702841B54070E0923319CAE9229DB1A445CCCB2192178992D17B602832D1948649C5C44BBB8C219B3F63A35D04FB3D9650F17C40A91435AD9D3E1AB6823D46D798EA9611CA2E2F24482341E24BC9203B2807735A17C0EB7356987E12956252BDA8C6682CE2B2139BDD6BA0DD36D2DC9BC54DF6664D972371BB29F395A19909ACA835B8F3CFEC2CE2FC88C54CD435743924E364B43B22AD7B321495BEF6448F626D54B43525F7DF788F594AF8031A391C44EB8CDA1661B826819EA4ABCA305338B0E65B37B3160F221B85046806DCF8011EAB63D885DF30DBA2E5FA61586729E85B929CFA5C8F168F864072385760A9E445532D0322911324A841C7E91246A065A59FE65A15EA348D4ED768824D1DF5C5BACE2EB306B69874016DA6EB7E040F39D9A52FC0A78E69A3769112D8B3004CA46D599A06695698A8655196C9B5641036519939E6BCB7A305967399001D8C38372F9EDDD55DCB2DAB32BCAF42940EA56DBCB8FBA640F73585B75789BD048C11A4C185CC90A33CA71FF98993D769BC7B460AF6864DBEF0049B6781FB834AABF53703ACA4B79535125555DD7D5D43EB45C5757E57A5E57D3D63BADAB7B5B6C94EB6A7DF5DD9941964B0160FD8C2C16DC2F51170F4C595FA026A57ABF3C5DB4DCF1EE7451B697A57771C0B997EAF363D94CC5A6C7B2DFCC332E064FADE92E38B3CFB1394DC98B6C165B9E38298AF43719F987E00DCEC2A1AF17C3B9C1F7D0C0AC888700CEDBC4D334C82D5C233128816D9CA09991C33AF06942F4C804961D7C4817CB8C78D1B1EC887100662F2609F0CE179ED9E2B5073E7C936901408BE099E91D708302CD2D4C83CC36C30F2F64E1AC3EAB0C7E6677713A547A9BBCE5EAB8670BDBAD4B70C6B55C5923DDBAA84E108F5D5429EEEFB65F9B701CB1E5F3D8D2B9B2D6EBE32EDEB55E1B7C8AA5BDFAE04DA796EA6BB45C67B5F101323BA890EAD9CE6A64962E1DD446357D17358A21FBDAADAD5349C63BB05BAE4B764AB66C4030F7FCC3D7872D1ACF77BB6C9914C444BB89AC430BAB6D2AACE43EA58F2755B000296BE3656A0E313086D80D593726CF64A5485A4296FA124B94A4E97AB921CD5B953CF57F92A8135336DEC6840DD19A14D891956B92EE65BB374997C973B4D6F65128897897542BD409AD4C4C99C5CF71FA48DAAA65478056D0CA049B5EC7AFB309831E35A8A86FE3E2FCF6CBF4F2FC667A77FB6587020BCE0E81AB3136CCB18550EF075FEAAE9A8DAE62516E0E3135574C1A523C06AD70DF740134F9117554C2E02FAA33B2AB5AD559082EF4197603D486925958D70C8505E626B3905718177C5BD0A5AC625EE4D68A12E0E9ED50520A7AF9BB21DDAC0FDA154F7207FB904D322FEC5A01BB0BBB4015F4FC0E36F4CAB7789AA1673C33E6B0523EA9279F3C6D07558A0E9A8D27F00C9415A0145CF06A400740429F21C4465CFF26A176D85580D2BE64C8AA53E1E1C456C0A5EBAFD900E34E747394E958E3DD920EE0A6794D044385E9D3228222A39E2073FC99BEA124A310A92C100CCD38600601D5FB62E67034E3548016F522057588D43F41155A0EF60E416D97FB14854EB03B02598887E4574A2883F8FC822CA45E634B5968F078890C44A4B290B250CB010BC9839C29B094855A4E05685107B054C497C78062126CBE0149B3A5600E459367685C6168C11B65744AACED66A12A9BD60B7BD6E64C328B6CCBB18989ADD9CA5435E9BBD9B44003449BCF5213FEF836A60BA7241AA319F522EA23BD73A870B0570C6242770A3C6D970D5D8758A4713BFFA58E39011AD32DF0743E27550C7C13A8C92850D23677397D10797D7697CEE275BC8F4FCE97FBE2CCF034DA2DA347798775429A1016994EBEA2C080747298F58B43F89D0833D34181467FBB4401471BA83BC14AD94DB351851E81B28295921B7E6DE846BC810F0B2AE490FA95418F7591BE9681893C551F3A957BAA211B82F053072CC5506418BDB4C1921804D95C241AC671E626071371B515E168D47D93D147E22A83796F3DC16AC4C88E1ADDB50F568F684D04F380DED7BEC1ABEE694F4E572720F62D3BE140B918083451731B0C7067F0CD41A68EB7DBD9EEB9B29B66A3AABE25668E3025478234A59B033F703C580C07FAE0B0DCD11F7AFBC2EAF08F3AAAACB859D0EA8EBAAEBF6603ADBC6968751648C99A108DE91A743AC1A68EEE1B146CBD4935551FFB03989348EB1D5C587050956253460AE555677959AEC535ABBE65003CF99092AD695E059FCC151E729DDB4EF12AF8E2DF926E442012105421A974D1413961486F0676825583D8D09DA255CB2D636986DFE2B712AB6AEE84684D170779F9E8831818B050840C02EA5BDC9D80138B5ACAAA77B931A1CEFB82CC301B703C1287C5715FB0F3DEF5778AB6EAF2A37E7CC518935AC4A99CD978243EC6F3585DCB0C7566030EBE867B2F9591D858072973A3D3C63BAA8C8CE9C05D4787A8A29B66485604F0B074732A3862D594FE0C0F21729A42A56361D43843838604E8CAD0C0E23C7722CE51AE18AB703CCE8F9541017321442BBA3A4D5AF92E8C2F73A80AA1274961E790F62029564D5F173B4CFA6E36F6EA685096A748356C0AD2A2CEE1687EC9032CD21A147507EBBBBAD8A1EC759F20F4BCD2D12B04C56B9E7A373C90BDADFBB73D3BE0153D35D677E12FE23ABADED186F400329D9043F2B705B37E659BA6B33D22CD49A41D19D4F2A853A63860A3BF068618177C5680571118AB1368311DEC11560C2FEC5A0187FAEC0355BABB3E48FEB6D0A5B8E5D3C14D334D677B449AD3D5B29E05181BFFE8C120A60E921F829A5D68257D15EE5176507E9411D348457BC2C1785B9F65BFBE9DE7DFE23FA1970DBFEFE22ABCF6AE8A2F2E7624A7398FF7B57FF707CF88264A1BC827892D223526D097440A0D0206D069782791C13009B5A68AE32337050CF0035068C2DB4834B0F8CF1895DA428709C10B1FA84F82AB43EE9B90414B919EAB904821E7A2001A4C2C18890A1A9F5CD13B6A66A2DDA339CCB88F13B4A4269DCC475B8804D8C65A8813B4A4D65C4B91286171BCE17EE2C060134D283197F7205A4CB2969A70D95522A78C6F0FB78E398F0BB58E49D652134FC14BF4C40C5A8ADCF944899CE2F4222C55E9C12048AE22A7869056954737C02681EF2C83EDA19BE9507BB0377001F9536F7EC9D207796B1118BB6A1F511E33F8B53568F4991D2E60E8F100F6206FE8FE00C41BEC1D2344BA14EB0558B2406FCF007642F99A876C2094DF85F28C49D3100142BB9E30194533E1010E00CB99638A10B0B40B825D2259B24A6AB55DC751531A4513BEEF067C81435F42BC4172E23D820BC03C5218FB5A825DB0498EAD09A1471D80931F6E3404278F1D2C1AA449D44D230EFB60868912A9020C164C52B99666C3497A40058820C951432D697BB640610E01B668A321721D51C543E43AA27A89C72C0422470E53ECF66C4183F601BC310BF0C7F5481BE2CFA45B6614414669963CF6FCD2449D03B8A62981F7D42C4E1B306190258B0D712533B1255108F429186918594D831625FBDC00D831D334C1BE30081A86079351A20F102643107F42CA3A2618C84D6CCD6BCF4D458C2A8093A611ADB88E1AC4B4E23AA97853CB2A8C55CB9C5346B00278671EF18AEBA851CC2BAEABBA87EC2CC35C896CC47D120E962B1A8009B260CDA235F1F6A7365E93D83D1319A80FD1D411D314969C2EC410D621A51D67CF9F8EEC3838908D5682E939A38E79E32BB794DC51F8129D400386648191A38FDE228EB7327E8B8D243622DC329AD491410096598412E1FA67164C84EBA5DA4F6A411DC31CEED5F53470951C34895981DBA11A9E59DBB5DD72090EA60030C920EA02D72775DC05AE4BEADBFEA6A1165A9A8F682000D8B163103440F4C7A8C306882E1EFC12B145A40079D5106C950EDE61D7F14A0F27E56D776F1E758425EC0A3632DDB4B7B5A5D9A1BAAF2D4D39E496AFF93DEBF6661C7205188691C97D6171E83537864540E1B74B6D6EFAB6C42FE1F229E459555C4FE5BDA0F00555DE9F8ADE7DD45E2C6D9D01F5A6A08A05D09D49A4F1C2AD490F3608172579AB0ADEC974311DA13B92A0C9A8BD4C291873AAEB948289A8BA4F687A83D284D36E9245B8E3074B14D5454071CE2357014509825F2B33B9C2D7D2C451DE36C39C9946B7D3646FA3EE7E9AA949624EB9C35D09F88A94968336BB11EA2B5501B8A7F7A70776A623377B0C364C4DAC6AD52D20FF6DD34EED69F06A8A019BF4C8D2DD63F167549F802ACED0E8D924DDC0507688BD83E1CF1EF6DA85CC1AE810903F5B147B2C46D708941D52EEAE38B148B9B512785F053BDB0EB0CAE8183CD731DD4178E3633A4654439D75A91F09A747DE69DAD964BE5CC59BA8FA7036215996F1F3FE10AD6FB2C778BDAB136EA2E7E7247DDA3525AB2F27F3E76899BB5AFF797E7AF2E7669DEE3E9EAEF6FBE7DF26935D417AF76E932CB7D92EFBB97FB7CC3693E8319BFCF2FEFDAF930F1F269B92C664C91DB5120FE8D39AF6D9367A8A8554523569E9E764BBDB13811DFD88F2A7D4A78F1B291B7BC09FE71CE56F5D1378865F1EBFFAC45E5D2CFF9BEE27A4D72FC57272B97A375BDCBD53916AB8F999747013A7FBA2AF3133EEEAE284C07C19ADA3ADF0F6FC4D74919F059C66EBC326E53E896854D160CEF8F1941487FF707AB74FD14B332B58827C8A0D45EE7D6A9EA4F2E9EA1CF102E7C5519E48C3DC2E0EB2C7E467B22C26F1E7435A041381EB2DB27F4D77841175C693FA8F6ACF469C17E55CE7C55E490182940654DFA22DF9B98FB7DCD7FB78BB2BE39F1CB6F96525781C8DB02655C0A4F955C3034DA8874FF4AD88839F5413976A56D5D9841F7328CBF7E7C7681FFBA0A2A430A26238A8E0C71CCA520628F2414549213C2AEEB6C95392466BAC6F7CCB21196E2C3575F2BC4E6F8C014353A181A19F7E40E91818098AB25D69F7C52A4BBE24517A31E3C9B1DFEDA95D2D606A57C0E6074EEDFA40403CBDBEE769355F8FC03A508E7E07A6417351C3C52EE8444CB348126A6193C25492030CA9244FF2ABA4419E504593D0B34DD0C0C1C52018E1D0171C5A3206986B5C0E96802D1C5E8355A07029D9A8058C8C814D8017C547AA7131F11601EEFB538E7B75CD4BB02E90CB5F38A5459CC20DE312CCE9CD92A8B81BC592AABFD950C963C614314F7942F4B3A58102F751483A02534585C90E2C15EA247531541A464A92A849F25EB4560897855D95E0A99358D48B4A894DF3ABA69E11420DF5675FE2749648F4694A00AD8A324A48EDD9DCA29876B1B6464C8F98F6C1744B3663B315E86032DA61FA35188CD53CF2F42280444C1C4848C14E8C3B8814F3D982D69630E27695E4E1333862CCF72330A0F051EAC2D153065670F2F2B4AE03901A9814CF2A1820887530497D3B5FCA2172F2BC8C43C40F515B0E912A3C898B37C478885E835A53C448B11199181903D58617C5C7A8899FC2AB372CAE8A9A5A6DB10004B924DBA31409748AC292CE214BF236008727CACFE6B4E6D942725ED4DF2C3C212FB34C7080145F8E406DAB30D881E2A6117F5C5477035C49EC3449BE6B440ECCA8DD1EA02A8A7470AF3E00790A7F688BBE4CF1ABA29E1802FDFAB3E72AB19831E2E2B0F8D8B3654331EC62DB8C181E316C83E1964C3F8A6117E3CF0EC3AFC60044EF7C58EB5F9892A9198895D60C587D1F043006B19B3A38CD7C824304D9EF2ED665983D3BF602B6440FBD9A8D535C64E9D33C2B3C93824F864DB0A097A42BB20E94A8359F8FC552C491DA95B158DD7372B6176B34C2A2AA4EF55783483D6C5228B5DEEA1E093B43A06A68A2A787849D39A28B844DF3ACA6995262254DCA31D89315CC9D4DCA11E623CC03C1BC4D93B3BEEBEB6A755AC2FC35D89EDA4BEE56BB364A62267B6C1A025D1AA137110D44C0D3434339E1B466595A84C0E04E4155DF6CDC878091F85A0D443D96BAD809E4232E1CB599C80053AA86A6781EDFA8202B9EDDA83EFBFA4A6045768C4AACAD5D4D1E6E476DAE8D70EB0E6E6DEDD0F2703B0EB3290CDE5E836986070DC4F5E8D75DFEF7DDCFFF222BD48ADC7F7530CB9096180D96B7ED741371F133797ACAD09A2A9AA19D7837D1EC7E21922A3E599DF302BBC97E3F769BB3733B511513D100DAB3BBD9F7DB2F9777D3C5F9B73EF15D06AB94C10D07B1545163C3394AC846033DE214C9BF203DF6FB11E0008A646722DACEA7977D8D3B0DFC27480D2CF2A266D469083E69D4D1E07CCA5107E9B1DF8F62D411CDD4C9F2B00EABEBB22E6CDD7A1694A3540D973A108767A552A51A8AAFDEE736315EB149AF7F45D3DAEAB69E2D2ECBDA71B68CB3E548674B4B8B73FA1080C3AA7CA02BE5E0B67F07260017087DB40346C96654C910249BC97A150453991400497479092189267A9E3A6056B1E2A90326A967D3899332A3FD344A19A34A46296382A4014A99964C4E4ECA8C76A7BDAFB11397D37235DA99A30630AB64D81A803AC265FED729017044DDD9108E68A2B7FCC7AA61937A77D011D9325A97A36C31AA64942D7A1C0D50B6B4E6CECC1F427B3B36A5F3A91F327FEE93FC8C98E7596C948EC9A108BC6CCBE75F2422F5B723D86B5672B413577355BF93FDDFA6B28168D79F7BF79CD54C73316C8E9D69AD39026AA6B9486C13A6BD06495D1F9FC59FA173B9EF80503390DA5A0AF890D172E0DD9932E12DDD9CE9EDB68B62F43BBCEE523F6AE87CDFA5440C7C1EBC4C1B2F1F1CF3511D1108CE3751462074048496AF88D44070BE23620184F17E8899FD11D0F8F0B43C8EC3ECC8A304C8C49AAF96C7A903468C097F39D935664C3F715EFAB56A8661D2343805825F8451959D84BEE8EC026AE0E017ED0660397A436A845FDFF06B3330CAF1986FC330AD6AB3177F1FDE65718F50B370EDA01434C307DD066412FA71EDDC4484552F97521C12F6FB2B74F12850D0A18BA76A85BB3D849C9963D28E7E65CF024DAAA3493A8A153E217FBEDB65CBA440C7A7F4F184F959C888BAC10FB3B908B593CFDB6CA3CAF1B088B64F31A97A9129B3CDB3C37689E80F3597A5FED35AEA74633E4C7846F4E117ABF9E16CCE8DB3C7AC9271F6F4317B5A7626D6FC70B6462D664FFFCEC437843D2D234CC03784F541C0C581E7CAE0389605B99300881042BFF6E57A1D969BB4DF95C13096050DA6003F5518CBA9033FD5A07C97476FEC8E98E8DCA1783C26DC300C06BA1EF2531318190343012FAA33FF64DF9CE5A15E990CFD684EE73E596C85D7DCAA4F47A0BE55E3D281EAA616B98BDA066D7CEB65A57AECE563AE21C857E32F10AFBEF6AC39E990B868CD373E242D29AE6675ECA0B4CC86E435A8AAE9E2C125F22CB8E1A108CFA7DFF172883A3B5D20DB534C429F9B5DDECA742091FBFB0DCBD834C0ED0DEF05EEFC63D206E2A06F4B8F0C239CBE4FCCC111075DE3A0BD7D079F687AB638782546C0E5EC224A03AC5955A4CC0C0145717CD42EB36896494EE4FAAB8DE276332AFA50BB4A3E77A37869139C546F3D3CD23CAB137C25615099DEA6E26AF8E8A2BA86C6C7F6047FC34717D16FCE47D77DE6B7A85C4AE685D12E4A5A06EA4553BE7DFD92EF51C851F6EB8FBD6D9CC6E9D58AF0583E9DC9A7D86DC52E484B560BA98942D211E8522DAA3A50A65C1B8E519B529002BB6E01E2DA74B3E9C6A159F6893289FEBB7B0CC681FD3D26B567F38347DE11DA1F23F2FA465E4B061B8FBC3E2DB6615852C4C05D5C055BA6A3A4CC96E98AE2283657B27DB1B2342C6EC585F96D7F5E7E329B66D141B26E8A6FD65759E4BBCC5C82CDAE419CCAC49AAFD62D938FFA710956FC9A1EB2446258F9D1BA5D921DCD7EB7E397448A7E3C02F3543757BB71F5D0263818A7D52C1795D12A80BEBB05D6D2B78370D4D7924256D1C5E7203729C08B9C5C9AEF7E402D55A4ED803A21483FC0F3635C9AF7589442481E8CF27B905E40462C9BE43F16500DF47BFF6ECE4686D82F33461932CA9051860C4586B4E7E26F6488FD82D14C86B839F7F542A4FFCB69C358E62E5604CC57719885AE9A98C1525747E09817BB85BB075EA43ED92F54996B09C0FA524CB46C25BC68E5529C5A2A2F5EA5446B7E828BD82787852CD31479052AA4D9F31324794C0B5BFDDCEC6069CB37E24D2C6ED9E90F398883588F9240C02F3905B122395101F52A903529890FBC5F81ACCA278565F914C8BA14A50DDEA91056262B8790A13A8615AB201ADEC29A75140DA3687855A2A1A585A8201A5ED7527418CB44F615303F3B5441C96081A82C8DAFEAB947CCF8AD482EC9EA14174A544C3B02EB5FC3F50E4C7FA6054E27AE3A7BA54E1C3DF9FC884365AD994D2C5B5D8E130D9DAD2DA91C96AD2E67655CD8FA1AF404F386A39FC0C20919680955617CCCD8F727A563BE34C54A4560248524739AB3249AAE047F58FDCDE64CC78C9876C4AC8A12F150079370046A4B8D820EB456D30027A5D5D17BA7029C64D11AAEAA1A6CE2932DD567DF6D37067ED2BE1B93D6B3D26550E1A2734754F48B8A966C0606152E26833D2A5E83C1909B42B3D9E522C0AA122263B8A4848BAACDBBA20CB0982CBF5BAF2465725CC2112863158F3B5A40E6D53BAF1E4B4682C6789914648103D6C2A51DC18AB1E0A3EB7271687C6C718958F0D1757D68CEC7D720E80B499216AE78EF350142C86C65881656AAE6BA94BC32A429B62B4390A4907404625FCDEF6ED66055035CD760949D905D45134358DB584D426AFFEB979AA38EEB97C172B43DDBBFE6A8A3ED6FC9D1D7A01266D12197329EFA00A162A00CD092F840D5450435403FDBDC8D5BACE26BC903C77CB6D22760C3D8EF47A0491423D5811AA96A77D221948BD2E4A429BED717E8B04B55D0146F718A75834DEA5935D5A3E4A297C6519246A92575578F928BAEB319A5D7A0E516D1327FCDDC4F74C2440C741C565001F1B284A895AAAF564A0922C57C3E029584F3B58BD3D045E54E0AA966A12C86AA046F2984D4C0A4F47D60B4E49E8BA21812F7DA3A535772CF45809B73EF5588EF52AF0758A828289908725569ADC1022D5AB8243BB98E1115D38E41C2ABB9DEC9A517DA023759CF7214B33B4398B7E2E801C2CBBEB2162F0C346C75520203676B6B87AD1BB63A690707B6BE063D41644EEEA2CBCFCB7BFBDB114266FB1B6861A5FBB12E25EF6FD014DBFD0D90A49074040A42CDEF6EF637AA06B8EE6F507642BE639A18C21B8FD524A4F6BFBF5173D4717F63B01C6D6F7FA3E6A8E3FE8625475F834A285EDC5BAC0E219EB105C818A803BC283E56B40CF47A6DF1DD6693A38EE90910E4922CE2343C452F1235FAD1E610B41C2EB9FE664EE5FA6596F134CA2F47A0D854B8E9EAD15B52BDFB83B7C580C2EF581649A142D1C2F570A9FE4175A14AE877DF03B260FCD9FAB31FF112CE02E9F263CF5A9E02CCF9F5DC1160AF03606D3EC79B03CCF9295E6380BD0673E7229BC5BEB783411A06860E520E1B1E626B3E4D57D1662ABD5ECFA798DB01D3E83ADA90D9BCE4C9319F2D68AD0ECB7BC1C0A9BF595C15834E84381C549965444AE52F8E09949ACFE6B4F8C71F387A42928505061E9E7739898F5EE876BC238EDDFE73BBFA07BF41E2F2020976F6D4ED302BE6E971731D15B251BAE2D87CB5A44424FACD210288D50996F4F2C82557AB0C2048532C294A4B19977516FB703C408DA69853A4CF6E73D49AAF16EB2C6846B9445C800E13D89F4A40B7AEDC76C39817597979CD7C3F82B520AA573B580816753BAC0279552C58517CA29F05CA2869A11626C5B38A4A7D8BF4ABCF9EB72F911355814EBD319A5EACA049F1AB4250FE423542AAE77203BB7913EAFE922AF443C0781A8AEBA2E1EEF536D6855C4590A77A1407DFC35D2450789FC379F31B1345A8A2490850416DB64075D46901AAA1C60C540F4D0C5011B4400EE57FE14D1FA8129AE857516315099534099EFE17449C840ACD831C560B73184E75F421DC210BD6DE12952C93D4B3CBB23485ECFD95A32964487C3485465368348594958CA6905535A329349A426FDA146A6973AD3485EC77D65C4C21B7C8BE76B690631D86C6901B75736BC891BE9539E456879B3DE456978D41E45E839D45E41895DAD22472AEC5D82672AEC1CA2872AEC5CA2A72ABC5C62CF2A8C1CA2EF2A8C7D230F2A8C9D032F2A8C1D23472ABC9C63672ABC1DC3872A36F6A1D3952B7368F06746AE67CB7CB964951917474A61EFF87D99C18683CE6549B7AAA72C023E25C06793BF11181AB4CFD619E1DB64BC06AC3CE42E5A4E08DE4873A511CC09C9FB4455E8D5D44DBA7188A5DA53AB805C5FA6212801D5D849AED03E878BFCF262086CC61468336CCEB096B10AC85C98D84CF41E31B88632452B486916DF01D4B0C49EDB3458E5DE48416479A5D0691EE34D698F2880056483A6BC764A4B9F4EC45E85BA3E0623A15595C7CF21C7DAC79B620808F69B1DF4302A1563BA4D5FB2849E3AD98859E34A9BED0DFBBFA433EBCD1534C5461BCDE35E5CA657AD1ADDD73B4C457F244576FB33F92C7784B0C8D97DD3EDEBCCB33BC9BFF8FF5749D148E853AC34D94263FE3DD7E91FD474CD4F72FEF3FFC727A72BE4EA21D291AAF7F9E9EFCB959A7BBDF9687DD3EDB44699AED8BAE7F3C5DEDF7CFBF4D26BBA2C6DDBB4DB2DC66BBECE7FEDD32DB4CA2C76C4268FD75F2E1C3247EDC4CC4E21559232AEF7FADA9EC768F6B76D8991337902B821FB8AB58825C3DC2BFC73F4F14C03D9B8865CFE0299037E4E3E91FD176B98AB6A72737D19FD771FAB45FE57C3D3DB93DACD7D18F35C9F1335AEF62A9168926E3D310288BECFCED6BFA18FFF9F1F47F15657F3BF9FA8F07A6F85F4EEEB664A87F3B797FF2BF7D5B951F5F6FDC3965B38AAD3386D07E7B30A073C81291904DFF3802EE3D648D4825B29AC17082157AEAD8045C3810FC0673B1CA12A208D38B594D789F6CE25C38C4CBA4B4E7FFC576606B9A578B70348BD7D5A6D7F7147084D4265F6330443FFC4AD42291FF24F96F6AFAC6430E6B52D311C7B48BC980F3E64148915279319DE4495136A430292FD4723D4DA1AEFEFDBD2D62EA670E14443FBC77A04A1F36301D1763788B8CD86469FC1208C8D5A8BB092EF0968391D482B1E60D199E6E20C02CB6C4E8BE25CBC98D1761E321A10E46A741C10EDF9B0C4B5336B06CA9110CD13612300C81F0264BE26DADE4CD0B8CBAFABA9EF194078447712DAF33C856EE6A77D4C2B73C8C815B170F8ADD1C213C61179028D4B615FC43629F7FA6C6B15555F9A09ABF7935B76E56922F4B2D857692AE88E06E68FC483434CC5566E5B26C09EF4809C407E93B3B8C069A21101681B4532EADAA0A876CD12C4BA9AB951459679135F004E83AD16811BCE0B3B2A6A8F5C02036D2BE08E2B6E15D50C410780BD2F5269ADD2FDC1A440A065EE10903176A81C74D6227CBC956FF184FBFE6A48DD3042CC6CE7EF24143EE3D780CD1768DCB5ADFD6A714DC156E4EA123755B56E5AC6CF3E26F49D51ED72C6D116E7E00F25FCBB0645FCF4AE6582D5C97B58CB55C040F895801153E26D18A5C2CAB721EA2BCF8EB968BE5119BCB08D8FAF2F224FB2FA9A55340F61C134874B037D7E20CF1C3BCBF2867C9BE1651DEAAC0A413CB0907D0C93713088073C5DBFA66A9065A379185C9D66BFBCA467379F921A60B0F35C41456B0EF15E912B7E6F8C9E7AE1DB297B3FA568913A0CA8B2986269017FAEA9A5C86A42C1B16208AD960B6F3BFF0C6ADF138F3D787020EB4C7C0F9ABF18B66EB30B016F7563257AB68B9624DD1503BEA44BD2F48AB57965B9C36126171E50194BC7140D83420E72D782C3CE8CAA96A0C630D19CCCCA2D0C3AD382F6DF1D9C805F78A3F38547C7CBA946076161D3C964F9559CB3A609CF6358B8351CF16B3066D0ABB8070694A964E0F59E2CF1246023A7284A110528C2C56A47557715F82C44534784E7087E59AF7C460D67CBE93236F4E8809C234C97F923CF94F14A63D9E93A5E2504B1386DD8D75B2CF14B17B4D8C34D56EB0B73504106F77E38BD9417662261EB9D8F0A031B67F1DE268AF40FBA80FF7CEB320C77BADA65111C0C0790E41C1B44D275059B68DD9C3526E7DEAD4E1065CA70E125CDB70EAD0D22D4C1D8176BB9CACEF6B3AB111B9EC697466A12E1AF8C0107DF9DD655D51150E7C0C46E86ABBE3095D00361D4EF872ACC968B2779843CE069E6ECB9CC3DEA635661F1EB4DC88876CF1E08C9489B72EA1C1871C2D2434F26081A184A6A55B90D002ED0E0EDF4B2F87596D6F020F1818EF6E1665030B69EEB1259FBD494220F47D11A64D2EFEDA41DDEB001E2230C395FA611EA080E2E91D2837F2BE0E90158F3701E4C55FC901726BDEC0014AE0CFDC2099F1C023800349F14E0D9C1D8B70006646DF9A81B3A38FC900D9F1F762B0CC163727D4CFBD6005C0175DB0CCE8832D4001FC4D1620B3CDF0A3814B20A7A4871DC2CF6C77D7A17471DD890877DFD38582607B3B9168A4863B114198B81312D7D9AE34044F97937359F2F23852E1B6371D69088B66472A8261E74245BC64EB4C833FEFEA4C86CA464F3A8C5DE44C830BA4E646473C3DE9422300F6F985A913057945E624229920C2A6546C9D433E3E051BFBCCC70381F993CCAE3E9585C31EBD417C22668EA8A26C07676EF4E1C33CA227E14B7BE7F02850B025238E9282C1EFFFF57AB8D6FC4AE8F9F4F268EE83F67754F2F80484C249658AA1AA7C501F48B4515B413E9B0D77B3EFB75F2EEFA68BF36F2324F1DD38E39BCD79E9E0A0C4F6B64C4159950F0C4AB5816F0E4A2688A3B8547D98CD0B7D3815B0F9297D3CF93D5B43ABDA3C50E23BE6EBCD61BD4F9ED7C992D4FCF1F483D4AF8614B4D02EA8F1093CC17F920892C911E70F4624D19A14D8EDB751223F60FA6D9BA4CBE4395A4BDD107222B34EE5BD9B50E262CA2C7E8E0942D23DD4E3001553FA8228D0B1840BE4A986060D3C7A717EFB657A797E33BDBBFDB243E121DA04C578361F87010E2C8AACA535D72E34842092BD80A3F44EB1D17951B1C1F9B14A99517D32C78415B842090A207C1C8A04D46B6F8E034BECE13576291B667324A45B0B8241F42E15849A8FAF4620C01CD5D609EF32748106EA252670808F4836832879948B5164BE9AE341306A0B42F45B2B6840429CA04303C434B14202C84CDBDA3A0040D54EE6CD03308098D3D0A91020D4C6E91821A9153CD88D8FE2A9056344A8F8EB527107E0603DF10C42E0182482B4171CF88DC4A709F66081684A69ADC005EF373A74AAD83EF6A80958772F52458799C062A53FA4F42758EC20720492A57E5D477E7A48295984EDB846B2D0047BBC4034A5B4F6240BF2A2926A7623C75EEC6113B0EE0E80A378AF0A1B6371EFB518DCE6E390C002C70A41070B7B16AB558C183CCBD5014EB8932B2558B0680CCD0083C75D8AE11552AC30D3D42B00864968052D8AC8042864D0981356A04158ED506B170E317A16C11427F2E9857A48DD4C96DE108285BC41070A8D32D236429415770B129D9FC4CA9415FB7297960F4E9E9C2FCB57ABA6D16E193DCA5B4DF9835FC1F03964DB3758A59D5B2F3A2085345C7AC1430FE68A1D1A7A3450A4F7508720557A367FFB5B5BDB2D92FA15327C7C9052D46071879AD115A28AB0832B2659099EA666012F4C422B6051854941460E898B02E6BDF547163228ED35AE6BCF9F1E75E1DC7EBDE1AC17A164079DBE25127373C3609F11B8E7518C25F7FD98F71AD17833E8F0A86FD5B5B5EBA8A9B59BC308D55D9CFA388266F751BEBC539F49A09F2D4F25001B90EDEF3E623174D0A1525EA3B43C9F60B501A9AEB86B88E844475078742F38FA82859DD8E81D12D5B1768287F2C209F8FC3B7B70853F435F1E5BA9BF75B274E26F2401EDA853DA39FB0205CB418717BFFA640E28C50D2C977AFBC0D422DA3EC5629C2666B9240F253C86AF125156038BDE016F174F78B59DACC1E935490229385A15BBF6962E55560B6FE6BBB9E2B29077C1D6DA4810227C74F0DBFE2EC8B0ABB5CF430FA5F5657EDECEC1483DE67377F616A83AB446CBE7EF3495770E1AF3F377E120E3749C6FF070713D75D72B58C4C3FDFAD574C0F3FD7DADA4FB39E56FBB8A46ABED01163A011216173D898EDE906127348E0C1A72C4BEB660C144666920517C7C5D709038AAAD130EF3D5071A74472BC322C2F660EFD09161B7A9DCB3A060EFBA32974775BE37A72BC12DF94CC0A831589B5ABEA2EA70AB1C0E55E3765BD912F348D53DC24EE39EB3144CAF1E6E7DDF8E0F587F27871896AB877CA01A420F9FB7193DFAF9B0C81E80F844C18F35147570348A0F3C81F7EFDEC9340672924166A24B759D6E0F281DB9FDEF34194166B0FB4A1678E9773BA90972A5838C1C4EABD655F4F3AB030E16651F1D4C65E8E656E0A3AEB193C80CB343FA74992D17D1B34E17CDF00065C17512571727E7B884D7A3A370E6BA54DBD169BB3CC25ABEF1C8804879DE8E8DE7460FDB951FBBD9CE764155C0E37AF2BB56E8E02AC2E5B70A2A55BDDD68B42A969D29AEE4987CB566A39F5F3DB6B017BFD05156BE69D02ABED4350747D8E743BAC4D6F95FD31D69DDE9C9F9D3D3367E8AF6318DB7787148D6FBAF29FD7D9BACA3C7645913A3DFBFEEA6D9E639DB71C11ABF455B52D73EDEE61898C79B88347BB9FB787ABE5E67FFF3EBA61C7BD2803FE2ED2EC9AFA3CE972B92EBE3E9E30FD1054A49F12E12F1C199EC91FCFC9A4A7124273A6A52C4466F9AF92331A223AE7C29A6A1A825C145AF7369D8D9A41E2A532C7C7F2E5B396261C442A90CDE08168CD8D304811DA2CC0C8FECC52A4BBE24517A31AB49EE930D87EB6FDB7899EC8A7EFF8B31B9AB451072C553C9D3EB7B3AE748D94DB446E87DF835E766940FC6DFBCA03144113A42A313680C51A27A42C38843749F698862157DE3C1C306E14201FBCFC5E23D4AAE91A99AE8DFF544D157B6217AC57BDB5A82E8F3DA8EFD2E66B9D8F3EAB545D8F4B243EB1025FD88D6B78AD6212A1F3FB49A69E73240FB10354FF889C753F49F768B6DB45CDDAE9278E348D3660887288EC721E486708832CA67088D785387B91FA48C12DF2208606F7071FC83FAE8283D17F75CDEAC70D30E7C22DCB841C8EBE0C1A62B85E41065EE08C9570DC921EA103F489AF3A7BAD9385845C25F7A0B32C5789296B3AC95F5B41C56C5DF2E244BCB7956AC306B9AC5DB78C61DCDDF7221966053FC478216B786E36095C808C7D708C7C12A101F389AADD2B84BFDA31A918F2006A238CB5226D0CCCF7516D9CC0E616AD9160F3EB904D88CE27E848D036CDEA4580E0F1B23D6D7A7DD8728E1434F2A2172E731DB55D5D386E19CC942AF03ECC37112CAD687606E335AA17C880A6944F988723B940F517FB6AFE99A277987A8EB024F04865C1B2EDA86D74394B843E5F510E7BD33AFAD1616F55BBB439CF9CC9BB3C7B1AE387635280EFA1045D038E89E833E44597874836EEE501F05ACB8BDC3123C86CD9D361C5476BB3BF6681A25F788A670687A832AC14A75D62F260E5686B32111FA569D2045F1E1516F925E5BEBD283E29D216CB0727D44D840103658597FE408EB6E444795041A822CC1FE0DC1B64CB65151BCED717F83E2DB884954FC0E5120BA2B0C785F85A5E7BF937B9F2CB66D9ECAA743374499360E5DF9E4FB00C552FB86F7908F904D177647427A5CD6859B7F2D1CDF1CF201AB11036131304429E98B01531E5DCE2EA274B016DC6516CDB290DB08DDB37D8802EA15B07D883261986C2F5B3D4A19CE7BC2BC027104CE9338BD5A45CB15EBA70F10BD254B9F16A4A92BE3ABFB0E701AA5E708A780707A6B5AC1546F2EAE862BBF73D0386E17DE369AD1AE60F8E51681FF2C3AB8B5A6728CB3A7366CEFBC1781119F8DA61DDE00D6176DD9802C9D1EB2C4ABFB8C8CB4EF3D53D85FE670136A781A6C9C50E3843AE209353C1D3EC00965342C8B1541C9553C9A0E9633F3C94736313BE11EF2296F84A78C621AE225A79EBC6415D30A7779557123A8CC1226C768068C93639C1CC8E41855BA1B1B99B80A03D4BEEDC48558C42940B68D7BD02CF78727DE5F13F787273F0270DFF489862A46CA2005441B01220BC52E503DC25740E699E73B20B6F818A2081BF1D11D3E8628647DF161180F8579E07D8852760CF8154E760C36E0173A8EEC8BF2610651784CDC7F873CDA08247D1756DC941EA2621CA7F438A5C7298D4EE921DA32ED2F166B680CD288098EEBCA95C1D26CCB8F51307D886A66F04C1FA220F063BAE9B2AF12BF8394052D28A4D22D20506D039A0CEB8728115E09EB8728177C596F18F27939CC78C6E38A685C1121CC890E39AAC38E613E0D992DF3100B2281A47FF0F6E530A3658F33799CC9E34C1667F2102D960EDE60281131488B253C9A17ABF8DA79BF10162042235B796FA01AC321EAAA710CF9311CA294F21A43B3E390D19228CD410AA9B2E921D1C8536C038C15BB87284F06CCEE214E7D1F761B1E848ECBC5C7406D14A6FD414129936D05990CF707290D5E0DF707291C7CB96FEA94AE968B8314102D2CA0CBFD00816A4BFB0135EB87281D5E09EB87281A7C596F1EC078B13A0C522ED48D0FEBAB2B02DD84A49A07DF61E85906DF9967C6C16C80D2D72FB3ACCD3946F13344E136E2E778F0334409ED871F23FE5C64B37888F73289D67A9AAEA2CDD47927661A5D471B3295968EC55787E5BDE30D70C1596759B87ED9D6AD38176BCC8D8478B6CBBEB4B0A762793759DAB2B42ECFC59AB32E6D7EE8172E6FBEB306942F6402734BCBA134FF429D0381EAED380F0A8C5073285D3D88E146417C0CCA32EC900F72794F9D655979216F29B0682CEA505BBAA5EE189E6136EA8E51778CBA63D41DA3EEE85B770C6F5136EA8E51778CBA63D41DA3EEB090FD9F88FCDDBF1091B98F92B4916484C2E764BBDB135C443F2222B8F99694A5E6F11E14BD656AD9A079BCFEF98E4F6625FAC9A2D40E17E7B75FA697E737D3BBDB2F52BFC5DA18312D55C5A441F54CCFAFCF6FEEBF7E9A6A2B6944825447930455717B797E4B6AB8D577A35217721FAA04B00397DFA7F7DFB5B41B9120516F9220FADF2EBF7EFA3EBDFC6A56432D36E04AEA54B49ED9F9E2E6FBB99E51D55BC9686D62069071421E4D9D74524B95D114A896F9F9ED3702632D7946634B1530695015B33B02AFC5D7DB4B63BE51D98C328EE650718E663241065EA7BEC2021B641A7DBBBABC33EE2455006827690E55276926934EE275EA2B2C3AF98FEFE70B934E360A4AAAA949826AF9F7EFE7FF9DC8230399CA2C23200E2A519FA71B029F7D6409AE894946EA6272686A132C5BA93A211DAAEFF2EE9CCC38A29F4CD948238DC3DD639291EE313934B5F1615081FAC40C508D8B4BA273AF3E99F690B3D5A50AB954A8B6EBBBF3AFA65861AD7A4809D344440D4FBF13A3E2FC9B5197CAC50BD89F3209EB4C99AAEF095D21403DA189484F08C77251A1572BF52A52562A750AA852CEBFCFCFA77A85521BAB32CEAA04105FE7D32F5FF54A9E3366012033A9308A3F95D032E806BBDE8246832622A3910F05992E663AA258D6C0FAA1484275C3E2526FE615AE1AC8E02EBF8396F6DDEC93817D52C2051D70211D9164A6B862D7070ABB1BCE86D46DB5A2285B299B7AC567D8CE33E8D6EC6E4624D0E5DD74910B2199875C326CEAB13984DACE77BB6C9944F9820E581A3DCCE605BBC84287C9282E929A5C1CEDA22F8F27BF676B68B5456AE3BE4EF0B2D0BAB028CE27083D9BF05D33E8768D066ED47750D7919C7817443C16CD6F3E1E41E7CBE52219CAA655C0904B991423CE2D4CCBE1AE3E29BA6BC5289F319ECD9B25AC6280996C6D8CAEB8C22E4A361FBDBB4B5781A423D4A292BB0B65C31B2D2D3B8B56335F151D168CBEA224FDE6DD5D1A8A7B2E2ED4E53EA37983349E9F0AA0EBA19C126A87823D0BD88531D337BA549619A129A101AFB0446F008C2CF441C64044740E8310E8507005CFDC1E3EBA6103EB5560BA47FD0C0842F0121A8408FE8D0621889704640D4444E76DB1674DED0631638B2237DE21D10953F4A4F97834AC109E2C9DF31E139919CAFC78A740DF4AD1252145CD18C91B547305F7F2389848D48165C00F3CB3B2239008613F1F171B14260590AB15C169C7306F99A0E8319CB12549D07AB70589A2196A306B7B8AB21B1128BE0F35E7DDAA3223D405F06EC11ED8A25762929A3992D7B8E60CEE0DF634A394FC4072B6828B4EBACE3DF7A35A50C119F10E00FEF0A2FDDCF7DE9655ECFB1B73CDB20ACDAB5C3E0B1EFA7A014D3FEB96D0C0CA2AECB28AEB9662E0C17C6D75BDDD51A7D172E655EC8C7976D82E63D07F806455F810F83D86D283507F5374197429B3A5EB94F0DD5F44DBA7786FD4FD2AAB42E2CBED871BDE53E7B9A808733A3090CA8332AA549DB44153E939E6BB9E0526B8715D1A9732C3C887A4CC1F5464F5EB4FA25D34F225C1B9DB6387931F2A80EF58A904A19CAD7990BB507F5C871410C0B2B6D6F91E46BED873D5773DCFD65AB7992DE1A6CBC5C7E0DD55F8C0B0ACAD75DBD69BE8D07D76678DD9EB52D83F9A128177F7500A206BE10CAD3109B7923425DADE3CED92398539946FD213BABBFD364AD2FDC3E76D465D610F8BECA1DCFC8716CD8665C32FA3D9030C6521E880828F299DFFEF83DA84D61890AE0B87B6FAC6C608C2BB27E552C35D385854039E7EEE630CD997AB34F0E44F9C40DBCD8EB4C2431E3A5D53624A756AC6CD7354BEF533677B0F8205C9AB711FB1670FA9EF083A57D84BFFD9574DF41C4073ABA78D703AB29E36F473877C389B9434E89D189A7636290F69551FC8CF7DB68D9EE2FCBECD7A577C3D9BFC7E20A53771F96B16EF92A786C419A199C6FC1D1C9AE76BFA33FBB6CD9EE36DD17EB64575963AB91A999B781F3D46FBE87CBB4F7E46CB3D495EC6BB5D92DB1DF7D1FA40B27CDAFC881FBFA67787FDF3614FBA1C6F7EAC5F58669C4DD4F59F4DA4369FDD3DE7BF7621BA409A99E4310AEED2FC56E9236DF7E7F2B6E8C480447E57E94B4CBE97634984D13E7E7AA1946EB3D49050C5BE59FC1CA78F71BA5FC49BE73521B6BB4BE7D11FB14BDBBEEFE2EBF8295ABE90EF7F248FF11627A21F089EED67B3247ADA469B5D45A3294F7E120C3F6EFEFCD7FF0F4BB5F941ADCC0300, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201506240204155_add_table_NguoiDung', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7D5B8F1CB992DEBB01FF87463FD98BB32A69CE3958CFA0B58BEE2A492DF44D3B55128E9F1AA9EA545762AB32DB75194FC3F02FF3837F92FF829937262F11BC676665293180A62B4906C9E0C78860900CFEBFFFF37F2FFEEDCFCDFAEC8F78BB4BB2F4FDF9BB376FCFCFE274993D25E9F3FBF3C3FEC73FFFB7F37FFBD7FFFC9F2E3E3C6DFE3CFB56E7FB6B9E8F944C77EFCF57FBFDCB6F93C96EB98A37D1EECD26596EB35DF663FF66996D26D15336F9E5EDDB5F27EFDE4D6242E29CD03A3BBBF8FD90EE934D5CFC203FA759BA8C5FF687687D973DC5EB5DF59DA4CC0BAA67F7D126DEBD44CBF8FDF9BF1FA2F4F6F57E15CDA3E5EACD6CF1707E76B94E22D29079BCFE717E16A569B68FF6A499BF7DDDC5F3FD364B9FE72FE443B45EBCBEC424DF8F68BD8BABE6FFD66437EDC9DB5FF29E4C9A8235A9E561B7CF369604DFFDB562CD442CEEC4E073CA3AC2BC0F84C9FBD7BCD70503DF9F5F45E9F374156D08BF9FCFCFC40A7F9BAEB7796680C76FD8927F39E3D2FF426141D093FFF797B3E961BD3F6CE3F7697CD86FA3F55FCEBE1CBEAF93E54DFCBAC8FE234EDFA787F59A6D29692B49E33E904F5FB6D94BBCDDBFFE1EFFA8DA7F175D4DA7E76713BEE8442C4B4BF2C5CABE11442479EFEFA23F6FE3F479BF7A7FFE0B01F3C7E4CFF8A9FE5021E46B9A909910D3DFF7A4D9D1F775F361A2A9761ADD469B6F49BCECBEF2FBE7E8B519EAB2F659B48F1764DAE9CB1EB2442CDC62D3EFA33F92E70282424318FEFD1EAF8B1CBB55F2524EF53734F571362FF049C6F8E336DBFC9EADD9B234F571116D9FE33DE9508666996787EDD2A285B339990529A191824D64A7CD239BB769279285B6A46E2C96AFEE94698BEB8239B7801653BA5797F79FA6D79777D387FB4F3BB6C1700E89B9483688C11793465229E51783071BE1458BF529B998B6DBCBAF1E05C96295259F9228BD9AD5759B8890BAD4CDC2A6D4ED81807B7AFB8D0AAC78996CA2F5F9D9972DF9AB32517E3D3F9B2FA3BCFD7FB399A7B584082148C4B9A990354E386FE4840DCCEB527DA2BC69B93DC89BB23D68EAD561F9EDD0C3EC8A53836EFF5D57F97E7BD056354B482F13452DEFDE86A9264EC9EC8F54359932D3405A88DC0B273204051852578AF243A3528DCDA5EBAFD36F5F611157E01B3141A444D9529272D81B4A0A01EC6126892DD59953E6EDFDB24AE24331635443CFE603C6BD49C6079DC9633BE2555162D8DF1D22A386D659F1B69639B4CDADB239B698507BB95965464DA679F1365759B48DAEF339B67AB13A18B5B8C887B796246B5B9AE7716CE53F0ED1DE94B7342FDEDA2A8BB6C5753E2FCBA7D6C356E67D51A657DBBE6AB58361DF9FDDA1AD3A88D5B1D892C1B827F8D804AFC975516EA90B25631FD5964E886FD4870DE6EB527DA2BE69B93DEE9BB2DDDBFAD403D247F5A55F2E7172C9E50D6F7BBECEB3858F352D9AE8AFB3ACBB79AF9CF50E161BEAD202AC3AF7B95F5B64D6D3BF2CD8BB04A8DBEF2804EAE27D4C44BE6ED3B9D8AFA782D43D3D90354EF4D283D590EFA565C5BABBAEFC73BAFFEB2FDA7249BA22864053EA2A23132A92BD440A953E5D3CEAD63AECBA442ED0CC75553E49DD2B33B7B0FAE1EBC31640782E4D07BC96412CF660115B252B579B601E48D8C2196D57F2565AC17879ACD30D8AC69A2F8604045B2D8AB8B247AA249012F328FDB28A368353294CCBBBAE7A96A59F9246936564F00C4C3D4E929B15F217E59D4871717A1A897CD31ED051065A5FA5295B8EE5915A8D66F4122BB4F936F2A42AD4A720F1100BBDCDCBBBE8368B921EABEFD35CBC8B66DF16BDF8B6F40C0FB3A5C64B5DCFC5B291658D9B9619B13F72E90C8A259A4A6409654E2391806449184179EC77550CCC782F112A5ABF5A596BDF7495F52E570718EF682683D6BBEF60D41454DB03429E47002A481679CB10C9E7041995C66D9291E60AA9504BC52C4E8D5CDC5C45E975611AE990C16445604173A831D164B30504A79780F632E9B0CC003348CC857339ACE18C179E4053A174F58253D55063438B11C936A6162DD6A7B155686E7B43AB2F85AFAE37F8FE926AE238A85A718AABD4B19727812A2317574255B8775F42DE8E8E3C0965553FAF1FA1578BD6CC555A1B444A8B4B9D13F616E0D9DBF51758198C7A8F81AAD1761B554EC2E3E825C791CB827C9B8AAD79189B54BDBA618D77A93CD77AC1C40FB863A39756AD6C80581CB6D36D81B88A4B3B07B1C30E99DA391C4E6A4A2B6E17ABAB2ADCBBECCCDBD191D55556F513595D771119DCD76B6657A5B543F3014C3295038973F9003E27617EA239E1398A67B795310DBF814ED489EA0EE0B9A4C62BB286B4253DBC77D221478D97CFDD8A741286472F098F5CB6E556245BF310ACC890665C27220B34E3F412AE1533CEE25CBFCE8C53492AE3A9DFC85B9B695F97EA73CAE76D7099ED65B91E5CA19A8A836C7C7E4B16DB162EF879CE646FBD2DCE6003151F6C1B8BAF0B50DD60064D9343398F9D8E8C34E57ABD9BB3F0588E3085DDB15E4EA8A1AD467A905D614E095FCF54DBB0CCA41073839BC67C26C84E4672DA0A088B1589B17050AF435C3763836EC62B181A4A7831436C29BE68C93E05D87516CD326912B421EDEA9A7A08BFD09D9CC56FCF1B1F3371111C8A43278888316D77396A2A99C7E550B45E954FEA8032B3D75A41E890CD9CE58A1EDFA43DE64998BB08AE9AFB8583F010C4E9CD8A8CACC6711AE61E73963E2F484F575ED7237D2C9720B35854B74653DE55F132A7DC2C152F2DD9DF1CCE07FBD948EBDECBDA36F4C648D518CE0B264D1686BBF37DB68D3FC569BC25D3F8E94BB4DFC75B82CDFB2CD5CB814609B75B518F2B1C329967D141ED5584F74DD8AD78C3AB8F4584A717679101B78375E69AB5234BA7872C71E933A3158CBBCC6A926042D2F81C8DCDF15AE5091AF914AE695B172BC2B99B5825D0F92C8A962B334A1D50E7F6B2CCC44ED94875BEEC40E5FACF29A90BDBC75E64321B38F66233AF32B0E864DAE3223E9F5D442853A7B518AD58D08A2835B8B010483C8916A7993073124FDC95061BD9C414EC73D1C8B5DF7EE5D8EB4D43B21633ABBFD3B3F88E975844CCAAAFBA386195BDD16219E4B52AD7739857DA7A7BA0F61AC2A4D029FAEA871472759EB51874D52FF6A47B3C1020DCA03A70481889E174954CD9D620E26296CD08C1EB6CB9B015186CC94022E3EC2ADAC515CE98B5D7B9817E9ACDAE7BB82056881CD2CA9E0E5F451BA16ECB734C0DE31015972712A4F120E1951C9005BCAB09E573B8AD493B0C4FB12A59D1663413745E09C9E9B5D66D986E6B49E6A5FA3623CB96BBD990FDCCD1CA80D4541EDC7AE4F117767E4166A46A1EBA1A9274B2591A9255B99E0D49DA7A2743B237A95E1A92FAEABB47ACA77C058C198D2476C26D0E35DB1044CB5057E21D2D985974289BDD8B01930FC19532026C7B068C50B7ED41EC9A6FD075F932AD3094F32CCC4D792E458E47C3273B1829B453F024AA9281964989905122E4F08B245133D0CAF22F0BF51A45A26EB7432489FEE6DA6215DF86594B3B04B2D076BB05079AEFD494E257C033D7BC498B685984215036AACE0435AB4C5334ACCA60DBB40A1A28CB98F45C5BD683C93ACB810CC01E1E94CB6FEFAEE296D59E5D51A64F0152B7DA5E7ED4257B98C3DAAAC3DB84460AD660C2E04A5698518EFBC7CCECB1DB3CA6057B4523DB7E0748B2C5FBC0A551FD9D82D3515ECA9B8A2AA9EABAAEA6F6A1E5BABA2AD7F3BA9AB6DE695DDDDB62A35C57EBABEFCE0CB25C0A00EB6764B1E07E89BA7860CAFA023529D5FBE5E9A2E58E77A78BB2BD2CBD8B03CEBD549F1FCB662A363D96FDD33CE362F0D49AEE8233FB1C9BD394BCCA66B1E58993A2487F93917F08DEE02C1CFA7A319C1B7C0F0DCC8A7808E0BC4D3C4D83DCC235128312D8C6099A1939AC039F26448F4C60D9C18774B1CC88171DCB8E180760F6629200EF7CE1992D5E7BE0C337991600B4089E99DE013728D0DCC234C86C33FCF04216CEEAB3CAE0677617A743A5B7C95BAE8E7BB6B0DDBA04675CCB9535D2AD8BEA04F1D84595E2FE6EFBB509C7115B3E8F2D9D2B6BBD3EEEE25DEBB5C1A758DAAB0FDE746AA9BE46CB75561B1F20B3830AA99EEDAC4666E9D2416D54D37751A318B2AFDDDA3A9564BC03BBE5BA64A764CB060473CF3F7C7DE6FEC5FC45D7FC3085A57BB12ED6E30DAA282193CCC5B3D894ECDE8B430443D4ABFBA883BA1D5D2A35A41E9B6C8C47454A953D9C72161B17E7E56E972D93A255E292E271362F16345301A71FD2A7B32A8E8694B5695E73BE8759A3DC915991BC9079405AF2FEFC9DC4432569EA4A6A48F30B2E9EFA3F49D4C92C8AB7316143B4260576645E26E95E9E7249BA4C5EA2B5B68F4249C4F1AA72DE4C686562CA2C7E89D327D2562D3B02B482562648141DBF2E260C7AD4A0A2D8BCBABCFF34BDBEBC9B3EDC7FDAA1C082B343E06A668D39B610EAFDE04BDD55B3D155F8ABCC21A6E68A49430A51A4F06C7601B4D243416609E5092A61C49CA0ECAA1C1E16824B220BE00A436D28998575CD5058601E640B798571C1B7055DCA2AE6B17AAD28015EA50F25A518D200949AA573BBE249EE601FB249E6855D2B604F7A17A8825EA6C2865EF94C5533F48CD3D21C56CAD726E543D9EDA04AD141B3F1045E48B30294820B5E0DE80048E80B9DD888EB9FEBD40EBB0A50DA473E59752ABC29DA0AB874FD351B607C7FC91C653AD678B7A403B8691EDAC15061FAEA8EA0C8A893D41C7FA6CF8BC928442A0B0443330E984140F5F49E391CCD3815A045BD48411D22F5AFB3859683BD4350DBE53E45A113EC8E4016E2AF55282594C1D315822CA41B2A96B2D0E05D1F198848652165A19603169207396E63290BB59C0AD0A20E60A9787A01038AC93B0C0D489ADD3673289ABCD0E40A430BDE2803B7626D378BE2DAB45E38CE61CE24B3A0CF1C9B98B0B3AD4C5593BE9B4D0B3476BAF92C35E18F6F63BA704AA2E1CB512FA2FE11040E150EF68A41B8F44E81A7EDB2A1EB100BC26FE7BFD431274063BA059ECEE7A47A1EC2046A320A94B4CD5D4EEF445E5F3CA4B3781DEFE3B3CBE5BE384E3F8D76CBE849DE929D90268445A693AF2830209D1C66FDE2107E42C5CC7450A0D1DF2E51C0D106EA4EB05276D36C54A1F7D1AC60A5E4865F1BBA116FE09B9B0A39A47E80D3635DA4AF6560224FD5874EE59E6AC88620FCD4B17C31141906F66DB024C6073717898621CEB9C9C104236E45381A75DF64F49190E360DE7B4FB01A31B2A34677ED83D5235A13DC3FA0F7B56FF0AA7BDA93D3D509887DCB4E38863406024D40E90603DCF5147390A9435177B67BAEECA6D9A8AA2F509A234CC991204DE9E6C00F1C2A19C3813E6E3277F4875E4CB23AFCA30EB82C6E16B4BAA3AEEBAFD9402B2FE15A9D0552B2264463BA069D4EB0A9035F07055B6F524DD5C7FE00E624D27A0717163757A5D894417479D559DE236D71CDAA6F19004F3EDA6A6B9A57C127738587443AB053BC0ABEF8B7A41B1188C4CA55482A5DE05C4E18D24BB39D60D5206C7AA768D572CB589AE1012EACC4AA9A3B215AD3C5415E3E302706062C4A2783803AC04127E0C402FAB2EA5D6E4CA8F3BE2033CC061C0F526371DC17ECBC77FD9DA2ADBA17AC1F5F31FCAA16712A67361EA492F13C563796439DD980E312E2DE4B659042D641CA5C76B6F18E2A83C63A70D7D121AAE8A6199215B16D2CDD9C0A8E5835A53FC343082AA850E9588441CED0A0D132BA3234B010E89D8873942BC62A1C0F81656550C05C08D18AAE4E9356BE0BE3CB1CAA42E84952D839A43D488A55D3D7C50E93BE9B8DBD3A509AE529520D9B82B4A873389A5FF2008BB40645DDC1FAAE2E76287BDD27083DAF74F40A41F19AA7DE0D0F646FEBFE6DCF0E78454F8DF55DF88BB88EAE77B4213D804C27E490FC6DC1AC5FD9A6E96C8F487312694706B53C209B290ED8C0C88121C6C56516E055C48CEB045A4C077B8415C30BBB56C05170FB4095EEAE0F92BF2D74296EF97470D34CD3D91E91E674B5AC6701C6C63F7A3488A983E487A066175A495F857B941D9BA927476B43A78522741BD3C42610A1390B1421DF8CE672409F94DB1C45DBDFE5F444C7E708676619BB8F94D99312F1B6BE55717B3FCFBFC57F42CFCF7EDDC55528CB5DF5088488A79CE63CDED73B0DDFF929D9C40B0467AC844E911A13724E228586A303E8348C96C8606300B5A68A282537050C35055068022D4934B020FD18957AAD08138297E0509F04A79BDC37218396223DE12391424EE8013498A8441215F4110945EFE88207ED1ECD61C67D9CA02535E98E08DA42E41504AC8538414B6ACD05298912F6D802DC4F1C186CA20925E61A29448B49D65213AE5D4BE4948F90C0AD634E8643AD6392B5D4C4FB18123D3183962277525622A738470B4B557A440D92ABC8F935A455E52122B049D0F922B83DF45807D41EECA17240FED4DBB0B2F4411EC405C6AEDAD196C70C7E12131A7D66AF15187AFC9511903774A70AE20DF6D81C225D8A952B2C59A007C2003BA17C72493610CAEF9AF2D4F0DA41BD69EC61810C631935B48058C5674C46D1DA7884231A73C6B522A631ED8960DE4806A0925A6DAA73D494B6D584EFBB015FA849CB87DB057883E4C47B04178079A4B091B504BB60931C2C16428F3AA22C3FDC684C591E3B58785315259021A805EC811926ECA90A30587454A573888D8FEA011520242A470D35C8EDD902C5ED04D8A20DEFC9754415E093EB88EAD5353539902F987D60CF16340A25C01BB388955C8FB4312B4DBA654611649466E564CF2F4D1845806B9A12784FCD020F02130659F9D8105732135B5985409F829186A102356851B2CF0D801D334D13BD0E83A061BC3B1925FA88773204F1E702AD83DC81DCC496CEF6DC54045D0338691AA28DEBA8419036AE938AF713ADE2B2B5CC396548368077E621DCB88E1A0571E3BAAA7BB4D4326E9BC846DCB5E160B9A211C5200BD62CFC186F7F6A039089DD339181FA98631D314D61C9E96266611D52DA71F6FCE9C88E8323336925989E33EA204EBE724BC91D854BD20934608C211839FA7044E2782B0312D9486223C22DA3491DEA066099456C1CAE7F66D171B85EAADDAD16D431CCE1CE614F0357C94193202CB81DAAE199B55DDB2D97E0E82000930CC288707D520712E1BAA40E5F611A3BA4A5F988C54A401C3B065130447F8C3A0E86E8E2C16FC55B84BE90570DC156E96050061DAFF47052866FF0E6514758C2620A20D34D1B7E409A1DAA0004D29443AEAD9B070E686FC62177DA6118995C8017875E73055E04147E5DDAE6EA7A4BFC126E53439E55C57D6BDE0B0ADFB8E6FDA9E8655EED4DE9D61950EF2DAA58005D02461A2F5C03F6608370F397B7AAE00D5117D311BAF40B9A8CDADBC18231A7BA1F2C9888AA0BB2A657824D38ED2659844BABB04451DD6C15E73C72B7559420F83D49933BA92D4D1CE5F549CC996974DD52F636EA2E5C9A9A24E6943BDC9580EFFC693968B31BA1BE2318807B7A7F7A60673A7255CD60C3D4C4AA565D6BF3DF36EDD49E06EF5A19B0498F2CDDC52C7F46F509A8E2288E9E4DD295226587D84B45FEEC61EF11C9AC81CE12F9B345B1C762742F46D921E5EE8A138B945B2B81F755B0CB1A00AB8CEE75701DD3DDEC303EA66344B5F5B32EF23D0E08509ADB1EFCC8E3F73D985EB087DF5430C26F78F8B224BFC49153A0970968DAC564BE5CC59BA8FA7031215996F1CBFE10ADEFB2A778BDAB13EEA297978474A129597D399BBF44CBDCFBFCCFF3F3B33F37EB74F7FE7CB5DFBFFC3699EC0AD2BB379B64B9CD76D98FFD9B65B699444FD9E497B76F7F9DBC7B37D99434264BEEF49978F581D6B4CFB6D1732CA492AA494B3F26DBDD9EE8B0E87BB423EC9F3E6DA46CECD5099E7394BF754DE0ED0879E8EA838C75B1FC6FBAC592DEBE162BECE5EACD6CF1F04645AAE1E647D2C14D9CEE8BBEC6CCB8AB8B1302F365B48EB6F5AD157A65E52A3F1E39CDD6874DCA7D1281A8A2C11C7BE42929CE43E2F4EE9FA3D74650B004F9141B8ADC1BF43C49E5F3F439E205CE8BA33C9186B95D1C644FC98F64594CE28F87B4B89C05D75B64FF9CEE0823EA8C67F51FD53696382FCAB9CE6B82920204290DA8BE445BF2731F6FB9AFDFE2EDAEBC4F76D8E6D79EE07134C29A540193E6570D0F34A11E3ED1B7220E7E524D5CAA595517137ECCA12C5F5F9EA27DEC838A92C2888AE1A0821F73284B79E1D307152585F0A878D826CF491AADB1BEF12D8764B8B1D4D4C9F33ABD31060C4D8506867EFA01A563602428CA76A5DD17AB2CF99444E9D58C27C77EB7A776B380A9DD00FB4138B5DB0301F1F4F61B4FABF97A04D68172F43B300D9ABB2B2E764127629A4592500B9B14A6921C60482579925F250DF2842A9A849E6D82060E2E06C10887BEE0D09231C0DC6C73B0046CE1700A5681C28964A31630320636015E141FA9C6C5C45B04B83B5439EED5CD37C1BA40EEC3E19416710A378C4B30A7374BA2E2BA184BAAFE6643258F0B55C435E609D1CF96060ADC4721E9084C1515263BB054A893D4C55069182949A226C97BD15A215C16765582A74E62512F2A2536CDAF9A7A460835D49F7D89D35922D1A72901B42ACA2821B567738B62DAC5DA1A313D62DA07D32DD98CCDEEA883C96887E9533018AB79E4E945008998389090829D18771029E6B305AD2D61C4FD2AC9039370C498EF476040E1A3D485A3A78C35E1E4E5695D07203530299E55304010EB6092FA76BE9443E4E4791987881FA2B61C2255C416176F88F1109D825A53848DB11199181903D58617C5C7A80929C3AB372CD48C9A5A6DB10004B924DBA31409748AC292CE214BF236008727CACFE6B4E6D942725ED4DF2C3C21AFB34C7080145F8E406DAB30D881E2A641905C5477035C49EC3449BE6B440ECCA8DD1EA02A8A7470AF3E00790A7F688BBE4CF1ABA29E1802FDFAB3E72AB19831E2E2B0F8D8B3654331EC62DB8C181E316C83E1964C3F8A6117E3CF0EC3276300A2D760ACF52F4CC9D40CC44A6B06ACBE22031883D8E5259C663EC12182EC7717EB32CC9E1D7B275DA287DE56C7292EB2F4799E159E49C127C32658D04BD21559074AD49ACFC76229E248EDCA58ACAE7E39DB8B351A615155A7FAAB41A41E3629945A6F758F849D21503534D1D343C2CE1CD145C2A67956D34C29B19226E518ECC90AE6CE26E508F311E68160DEA6C9595F7F76B53A2D617E0AB6A7F6DEBFD5AE8D9298C91E9B86409746E85D446333F0F4D0E85638AD5996165141B85350D5371BF72160249EAA81A8C752173B817C108AA3361319604AD5D014CFE31B1564C5B31BD5675F5F09ACC88E5189B5B5ABC9C3EDA8CDB5116EDDC1ADAD1D5A1E6EC7613685C1DB299866781C455C8F7EDEE57F3FFCF82FB242ADC8FD5707B30C6989D16079DB4E7711175294A7A78C36AAA219DA897717CDBE2D4452C527AB735E6037D9EFC76E73766E27AAC2441A407BF630FB7AFFE9FA61BAB8FCD227BECBF89D32B8E1B89E2A6A6C844B09D968EC4B9C22F917A4C77E3F021C40C1FD4C44DBE5F4BAAF71A7B11005A98105A3D48C3A8D4A288D3A1AAF5039EA203DF6FB518C3AA2993A591ED691865DD685AD5BCF827294AAE15207E2F0AC54AA5443F1D5FBDC26C62B36E9F45734ADAD6EEBD9E2B2AC1D67CB385B8E74B6B4B438A76F2338ACCA07BA520E6EFB77600270B1E1473B60946C46950C41B299AC57413095490190449797109268A2E7A90366152B9E3A60927A369D382933DA4FA39431AA64943226481AA09469C9E4E4A4CC6877DAFB1A3B71392D57A39D396A00B34A86AD01A8235CE67F9D120047D49D0DE188267ACB7FAC1A36A977071D912DA37539CA16A34A46D9A2C7D100654B6BEECCFC6DB89FC7A6743EF543E6CFB7243F23E679161BA5637228022FDBF2F9178948FDED08F69A951CEDC4D55CD5EF64FFB7A96C20DAF5E7DE3D6735D35C0C9B63675A6B8E809A692E12DB8469A720A9EBE3B3F8CB7C2EF71D106A06525B4B011F325A0EBC3B5326FC4C37677ABBEDA218FD0EAFBB54AD70BFEF5222063E0F5EA68D970F8EF9A88E0804E79B2823103A0242CB57446A2038DF11B100C2783FC4CCFE08687C785A1EC76176E451026462CD57CBE3D40123C684BF9CEC1A33A69F382FFD5A35C330691A9C02C12FC2A8CA4E425F7476013570F08B7603B01CBD2135C2AF6FF8B51918E578CCB7619856B5D95B3F461F66718F50B370EDA01434C307DD066412FA71EDDC458455AFD7521C12F6FB09BA781428E8D0C553B5C2DD1E42CECC316947BFB2678126D5D1241DC50A9F90BFDCEDB26552A0E343FA74C6FC2C6444DDE0C7D95C84DAD9C76DB651E5785C44DBE79854BDC894D9E6D961BB44F4879ACB52FF692D75BA311F263C23FAF08BD5FC7036E7C6D96356C9387BFA983D2D3B136B7E385BA316B3A77F67E24F843D2D234CC03784F541C0C581E7CAE0389605B99300881042BFF6E57A1D969BB4DF95C13096050DA6003F5518CBA9033FD5A07C97476FEC8E98E8DCA1783C26DC300C06BA1EF2531318190343012FAA33FF64DF9CE5A15E990CFD684EE75BB2D80AAFB9559F8E407DABC6A503D54D2D7217B50DDAF8D6CB4AF5D8CBC75C4390AFC65F205E7DED5973D22171D19A3FF990B4A4B89AD5B183D2321B92535055D3C5A34BE45970C343119E4FBFE3E5107576BA40B6A798843E37BBBC95E94022F7F71B96B16980DB1BDE0BDCF9C7A40DC441DF961E1946387D9F9883230EBAC6417BFB0E3ED1F46C71702246C0F5EC2A4A03AC5955A4CC0C0145717CD4AEB36896494EE4FAAB8DE276332AFA50BB4A3E77A37869139C546F3D3CD23CAB137C25615099DEA6E26AF8E8A2BA86C6C7F6047FC34717D16FCE47D77DE69F51B994CC0BA35D94B40CD48BA67CFBFA25DFA390A3ECD71F7BDB388DD39B15E1B17C3A934FB1DB8A5D9096AC16521385A423D0A55A5475A04CB9361CA336A5200576DD02C4B5E966D38D43B3EC136512FD77F7188C03FB7B4C6ACFE6078FBC23B43F46E4F58DBC960C361E797D5A6CC3B0A48881BBB809B64C4749992DD315C5516CAE64FB62656958DC8B0BF3FBFEBCFC6436CDA28364DD14DFACAFB2C87799B9049B5D83389589355FAD5B261FF5E312ACF8353D6489C4B0F2A375BB243B9AFD6EC72F8914FD7804E6A96EAE76E3EAA14D70304EAB592E2AA355007D770FACA5EF07E1A8AF2585ACA28BCF416E52801739B934DFFD805AAA48DB017542907E80E7C7B834EFB12885903C18E5F720BD808C5836C97F2CA01AE8F7FEDD9C8D0CB15F668C32649421A30C198A0C69CFC5DFC810FB05A3990C7173EEEB8548FF97D386B1CC5DAC08986FE2300B5D353183A5AE8EC0312F760B770FBC487DB65FA832D71280F5A59868D94A78D1CAA538B5545EBC4A89D6FC0417B1CF0E0B59A629F20A5448B3E72748F29816B6FAB9D9C1D2966FC44FB1B865A73FE4200E623D4A0201BFE414C48AE44405D4AB40D6A4243EF07E05B22A9F1596E57320EB52943678A7425899AC1C4286EA1856AC8268F819D6ACA3681845C34989869616A2826838ADA5E8309689EC2B607E76A88292C10251591A5FD5738F98F15B915C92D5292E94A8987604D6BF86EB1D98FE4C0B9C4E5C75F64A9D387AF2F91187CA5A339B58B6BA1C271A3A5B5B52392C5B5DCECAB8B0F514F404F386A39FC0C20919680955617CCCD8F727A563BE34C54A4560248524739AB3249AAE047F58FDCDE64CC78C9876C4AC8A12F150079370046A4B8D820EB456D30027A5D5D17BA7029C64D11AAEAA1A6CE2932DD567DF6D37067ED2BE1B93D6B3D26550E1A2734754F48B8A966C0606152E26833D2A4EC160C84DA1D9EC7A1160550991315C52C245D5E65D5106584C96DFAD579232392EE10894B18AC71D2D20F3EA9D578F25234163BC4C0AB2C0016BE1D28E60C558F0D175B938343EB6B8442CF8E8BA3E34E7E32908FA4292A4852BDE7B4D8010325B19A28595AAB92E25AF0C698AEDCA102429241D81D857F3BB9B3558D500D7351865276457D1C410D636569390DAFFFAA5E6A8E3FA65B01C6DCFF6AF39EA68FB5B72F41454C22C3AE452C6531F20540C94015A121FA8BA88A006E8679BBB718B557C2B79E098CF56FA046C18FBFD08348962A43A502355ED4E3A8472519A9C34C5F7FA021D76A90A9AE22D4EB16EB0493DABA67A945CF4D2384AD228B5A4EEEA5172D17536A3740A5A6E112DF3D7CCFD44274CC440C7610515102F4B885AA9FA6AA5942052CCE7235049385FBB380D5D54EEA4906A16CA62A84AF09642480D4C4ADF07464BEEB9288A2171AFAD337525F75C04B839F74E427C977A3DC0424541C94490AB4A6B0D1668D1C225D9C9758CA898760C125ECDF54E2EBDD016B8C97A96A398DD19C2BC15470F105EF695B57861A061AB931218385B5B3B6CDDB0D5493B38B0F514F4049139B98B2E3F2FEFED6F470899ED6FA08595EEC7BA94BCBF41536CF737409242D211280835BFBBD9DFA81AE0BABF41D909F98E6962086F3C569390DAFFFE46CD51C7FD8DC172B4BDFD8D9AA38EFB1B961C3D059550BCB8B7581D423C630B9031500778517CAC6819E8F5DAE2BBCD26471DD31320C82559C469788E5E256AF4A3CD2168395C72FDCD9CCAEDEB2CE369945F8E40B1A970D3D5A3B7A47AF7076F8B0185DFB12C924285A285EBE152FD83EA4295D0EFBE0764C1F8B3F5673FE2259C05D2E5C79EB53C0598F3EBB923C04E03606D3EC79B03CCF9295E63809D82B97395CD62DFDBC1200D03430729870D0FB1359FA7AB6833955EAFE753CCED8069741B6DC86C5EF2E498CF16B45687E537C1C0A9BF595C15834E84381C549965444AE52F8E09949ACFE6B4F8C71F387A42928505061E9E7739898F5EE876BC238EDDFE73BBFA07BF41E2F2020976F6D4ED302BE6E971731D15B251BAE2D87CB5A44424FADD210288D50996F4F2C82537AB0C2048532C294A4B19977516FB703C408DA69853A4CF6E73D49AAF16EB2C6846B9445C800E13D89F4A40B7AEDC76C39817597979CD7C3F82B520AA573B580816753BAC0279552C58517CA29F05CA2869A11626C5B38A4A7D8BF4ABCF9EB72F911355814EBD319A5EACA049F1AB4250FE423542AAE77203BB7913EAFE922AF443C0781A8AEBA2E1EEF536D6855C4590A77A1407DFC35D2450789FC379F31B1345A8A2490850416DB64075D46901AAA1C60C540F4D0C5011B4400EE57FE14D1FA8129AE857516315099534099EFE17449C840ACD831C560B73184E75F421DC210BD6DE12952C93D4B3CBB23485ECFD95A32964487C3485465368348594958CA6905535A329349A423FB529D4D2E65A690AD9EFACB998426E917DED6C21C73A0C8D2137EAE6D690237D2B73C8AD0E377BC8AD2E1B83C8BD063B8BC8312AB5A549E45C8BB14DE45C839551E45C8B9555E4568B8D59E45183955DE4518FA561E45193A165E45183A569E456938D6DE45683B971E446DFD43A72A46E6D1E0DFFD4CCFDF3214B66441CEF7C6F8DD4845C2E8DE065712424644A48973BE8579B23C26472896FA6D18F2E478DB173C66D6CC4EA86FD72B7CB9649812F69ECEB69FF389B13BB9C1735AAA1569503DE8EE732C8207B42A4944CFD719E1DB64BC058C7062427059F1F78AC13C511C9F9495BE4D5D845B47D8EA19065AAF37A5088372601C00F42CDF6DD7BBCDF17131043E630A3B13AE6B59C3688D1C3E446A226A1612DC43112295AC3C836E6922586A4F6D922C72E60468B23CDAE7E49771AB9A73C198215928E583219692E3D7B11FAD628B89A4E4516179F3C471F6B9E2D08EC958F0F106AB5435ABD8F9234DE8A59A85EABBED0DFBBFA433EBCD1734C2CA078BD6BCA95DE99A25BBB9768893B708889B6CDFE489EE22DB12F5F77FB78F326CFF066FE3FD6D37552F893EA0C77519AFC8877FB45F61F31B1DA7E79FBEE97F3B3CB7512ED48D178FDE3FCECCFCD3ADDFDB63CECF6D9264AD36C5F74FDFDF96ABF7FF96D32D91535EEDE6C92E536DB653FF66F96D966123D651342EBAF9377EF26F1D3662216AFC81A5179FB6B4D65B77B5AB3C3CED86190078A1FB89B58825C3DC2BFC73FCE14C0BD9888652FE0299037E4FDF91FD176B98AB6E76777D19FB771FABC5FE57C3D3FBB3FACD7D1F735C9F1235AEF62A9168926E3CA12288BECFCED73FA14FFF9FEFC7F15657F3BFBFC8F47A6F85FCE1EB664A87F3B7B7BF6BF7D5B95DF5A68BC7865B38A1D5386D07E7B30A043EC5A91904DFF3802EE3D648D4825B29AC17082157AD8DC045C3810FC0673B1CA12A208D3AB594D789F6CE25C38C4CBA45CC6FD8BEDC0D6346F16E168168FEA4D6FBF51C011529B7C69C9107DF72B518B44FE93E4BFA9E91B0F39AC494D471CD32E2603CE9B0721454AE5BC76922745D990C2A4BC47CDF53485BAFAF7B7B688A95FB750107DF7D6812A7DCFC2745C8CE12D326293A5F16B202057A3EE26B8C0CB2D46520BC69A376478BA8100B3D812A3FB9E2C27375E848D8784FA959D0605BB7361322C4DD9C0B2A5463044DB48C03004C29B2C89B7B592372F30EAEA5B9AC6531E101EC56DCCCE205BED52B8A316BEDC630CDCBA7850ECE608E109BB8044A1B6ADE01F12FBFCEB448EADAACA07D5FCCD63C975B3927C596A29B4937445047743E37BA2A161AE322B97654B78474A203E48DFD96134D00C81B008A49D7269555538648B66594A5DADA4C83A8BAC812740D789468BE0055F133645AD0706B191F6451077FAC205450C819F41BADE45B36F0BB7069182815778C2C0855AE07193D8C972B2D53FC6D3AF3960E534018BB1B39F7CD0907B0F1E43B45DE3B2D6B7F5E11477859B53E848DD9655392BDBBCF8CFA46A8F6B96B608373F00F9AF6558B2A7B39239560BD7652D632D17C143225640858F49B42217CBAA9C87282F7EDA72B13C62731D015B5F5E9E64FF25B5740AC89E6302890EF6E65A9C217E98F717E52CD95311E5AD0A4C3AB19C70009D7C3381003857BCAD6F966AA0751359986CBDB6AF6C3497971F62BAF050434C6105FB4E4897B835C74F3E77ED90BD9ED597899C0055DE47323481BCD057D7E4322465D9B00051CC06B39DFF85376E8DC799BF351670A03D06CE5F8D5F355B8781B5B8B792B95945CB156B8A86DA5127EA7D415ABDB2DCE2B491088B1B0FA0E48D03A2E50139EFC163E141574E5563186BC8606616851EEFC579698BCF462EB857FCCEA1E2E3D3A504B3B3E8E0B17CAACC5AD601E3B4AF591C8C7AB198356853D805844B53B2747AC8127F963012D091230C85906264B122ADBB89FB12242EA2C173823B2CD7BC2706B3E6F39D1C7973424C10A649FE93E4D97FA230EDF19C2C15875A9A30EC6EAC937DA608D96C62A4A97683BDAD218078BB1B5FCC0EB21333F180D586078DB1FDEB10477B05DA477DB8779E0539DE6B358D8AB815CE73088AA16E3A81CAB26DCC1E9672EB53A78E32E13A759098EA865387966E61EA08B4DBE5647D5FD3898DC8654FA3330B75D1C00786AA90046EEB8AAA70E063304257DB1D4FE802B0E970C297634D4693BDC31C7236F0745BE61CF624B131FBF058F5463C648B0767A44CBC75090DBEDF6921A191772A0C25342DDD828416687770F85E7A30CE6A7B1378B7C27877B3281B5848736F6CF9EC4D1202A1EF8B306D72F1D70EEA5E07F0FE8419AED4EF310105142F2E41B991679580AC78BC09202FFE3812905BF3F41150027FDD08C98C071E011C488AE789E0EC5884033033FAC4109C1D7D4308C88E3F138465B6B839A17EE5072B003EE4836546DFE9010AE04FF100996D861F0D5C0239253DEC107E66BBBB0EA58BEB4E44B8FB9E2E1404DBDB89442335DC8908C2C49D90B8CE76A52178BA9C9CCB9297C7910AB7BDE9484358343B52110C3B172AE2255B671AFC7957673254367AD261EC22671A5C2035373AE2E949171A01B0CF2F4C9D28C82B322711C9C48E36A562BE888343101AEE8D2161070DB6BD68C9C0EB8E2A7C614BAB99BE8E59DAFAFA7C5C4436E6B68F4309730F9ADD642B0B873D4985B8B8CCFC8A45D90E46581F0DCE231816EEA9718E7603C5CE32E2282918FC3AE73026F1FC727A7D34D77BFB3BF97A7C0242E17334C550553EA84B2BDAA88D5A9FBDA387D9D7FB4FD70FD3C5E5971192F8E6AAF145F5BC747050625B95A6A0ACCA0706A57ABD660E4A2626A7E879789CCD0B7D3815B0F9217D3AFB3D5B434E8A3CEEE51BE6EBDD61BD4F5ED6C992D4FCFEFC9DD4AF8614E43729A8F1093CC17F920892C911E7CFBE24D19A14D8EDB7512247BFFEB24DD265F212ADA56E08399159A772C64E2871316516BFC40421E91EEA71808A297D4114E858C2C565554383C691BDBABCFF34BDBEBC9B3EDC7FDAA1F0106D82623C9B8FC300071614D8D29A6B171A424CD05EC0513A1BD960CBA8D8E0DC92A5CCA83E9963C20A5CA10405100D104502BA09638E034BECE13576291B667324425F0B8241741616849A8F272310608E6AEB84378DBA400375FA1338C0275E9B419436088A5164BE9AE341306A0B42F45B2B684022D6A0430384A8B14202C84CDBDA3A0040D54EE6090B301E9CD3D0A91020D4C6E91821A9153CD88D8FE2E50C6344A8F8EB527107E06037561884C0216504692FECC734129F26D88305A229A5B50217BCDFE8D0A94235D9A32660DDBD48151D66028B95FE90D29F60B183C8114896FAB124F92529A5641176571BC94213ECF102D194D2DA932CC80359AAD98D9C62B2874DC0BA3B008EE2F9316C8CC5ADF462709B8F43020B1CFA051D2CEC95B3563162F0CA5A0738E10E229560C1826B34030C9E5E2A865748B1C24C53AF001826A115B428024DA09041438858810661B543AD5D38C4E8D112539CC88751EA217533597A430816C1081D2834684CDB085156DC2D48747E122B5356ECCB435A3E1B7B76B92C1F219B46BB65F4246F35E5EFB705C3E7906DDF6095766EBDE88014D270E9050F3D982B7668E8D140919EB71D8254E9D9FCED6F6D6DB748EA57C8F0E15E4A518385916A46570812C30EAE986425789A9A05BC3009AD804515F506193924CC0D98F7DE1F59C8A0B4D7B8AE3D7F7AD48573FBF586B35E84921D74FA9648CC451C837D46E0DA4E3196DCF763DE6B44C307A1C3A3BE24D9D6AEA3A6D66E0E235457ABEAE3089ADD47F92E567D26817EB63C95006C40B6BFFB88854442874A792BD6F27C82D506A4BAE2AE21A2131D41E1D1BDE0E80B167662A3774854C7DA091ECA0B278FF3ECB05DC6F8C115FE0C7D796CA5FED6C9D289BF9104B4A34E69E7EC0B14FB081D5EFCEA9339A01437B05CEAED03538B68FB1C8B61B798E5923C94F0189E24A2AC0616BDD2DF2E9EF06A3B5983D35BAF045270F03176ED2DDD91AD16DECC7773C56521EF82ADB5919852F8E8E0C11B5C9061576B9F871E4AEBCBFCBC9D83917ACCE7EEEC2D5075A49496CFDF692AEF1C34E6E7EFC241C6E938DFE0E1E27AEAAE57B08887FBF5ABE980E7FBFB5A49F773CADF76158D56DB032C7402242C2E7A121DBD21C34E681C1934E4008C6DC18209B4D340A2F8785A709038AAAD138EDAD6071A74472BC322C2F660EFD09161B7A9DCB3A060EFBA32974775BE37A72BC12DF94CC0A831589B5ABEA2EA70AB1C0E55E3765BD912F348D53DC24EE39EB3144C270FB7BE6FC707ACBF0B3558C7837BD4DE913F06A035E1EBB846345F4F065248A0BE63C551E1FECD87A421F4F8719BD123C48F8BEC11887315FC784C510747A3F8C01378FBE68D4C632027626426BA54D7E936937243A0FF1D4B23C80C767FD2022FFD6E4B36C1D2749091C3B2D5AA887E3E39E0608F6FA083A98CE8DE0A7CD4357612E123D797D7D97211BDE874D10C0F74175C27717571728E4B381D1D8533D7A5DA8E4E6DE691FAF20D6C0644CA739B6C5C407A68B3FCD8CDB1081754053CF6293F77870EAEE2158D5641A5AAB71B8D56C54434C5951CDBB1D66CF4F3C963EB1E7908101D65E55327ADE24B5D7370847D3CA44BCC5FF439DD91D69D9F5D3E3F6FE3E7681FD3B89D578764BDFF9CD2DFF7C93A7A4A963531FAFDF36E9A6D5EB21D17F4F34BB42575EDE36D8E8179BC8948B397BBF7E797EB75F63F3F6FCAB1270DF823DEEE92FC5AF37CB922B9DE9F3F7D175DE99414EF6A1323B7674FE4E7E7548A473AD15193227F7AD3CCDF8E121DBAE503520D452D092E0AA24BC32E26F5509962E1EB4BD9CA110B23164A65F09360C1883D4D30E121CACCF0C85EACB2E45312A557B39AE43ED970B8FEB28D97C9AEE8F7BF1893BB59042157BCA03EBDFD46E71C29BB89D608BD77BFE6DC8CF2C1F89B1734862842476874028D214A544F68187188EE570E51ACA26F8578D8205C4869FFB9583C53CB35325513FDBB9EE82C899850C51A7AEFDE9A10CCCFF440AF75BBF6BB98E562CFAB475861D3CB0EAD4394F4235A7F56B40E51F9F8A1D54C3B9781FE87A879C24F3C9EA2FFB45B6CA3E5EA7E95C41B479A36433844713C0E2137844394513E4368C49BFAB98441CA28F14D8B00F606F71E44501F1DA5E7E29ECB9B156EDACDB385A91900D912AFB3ACCDE94A213944993B42F2A42139441DE2074973FE54376407AB48F8CB9341A6184FD27296B5B29E96C3F3F8DB85646939CF8A15664DB37863D1B8A3F99B40C4126C8A7F4FD0E2D6701CAC1219E1788A701CAC02F181A3D92A8D0B0E31AA11F90862208AB32C650216FD586791CDEC10A6966DF1E0934B80CD28EE47D838C0E6A714CBE16163C4FAFAB4FB10257CE8492544803D66BBAA7A22339C3359E875807D384E42D9FA10CC6D462B940F51218D281F516E87F221EACFF6355DF3B4F310755DE089C0906BC345DBF07A881277A8BC1EE2BC77E6B5D5C2A27EB37988339F79BBF838D615C7AE06C5411FA2081A07DD73D087280B8F6ED0CD1DEAA38015B7775882C7B0B9D38683CA6E77C71E4DA3E41ED1140E4D3FA14AB0529DF5CB9B8395E16C4884BE552748517CC0D69BA4D7D6BAF4307D67081BAC5C1F113610840D56D61F39C2BA1BD151258186204BB07F43B02D936D54143FF7B8FF84E2DB884954FC0E5120BA2B0C785F85A5E7BF93FB2D596CDB3C954F876E88326D1CBA62E8862896DA37BC877C846CBAB03B12D2E3B22EDCFC6BE1F8E6900F588D18088B81214A495F0C98F2E87A7615A583B5E0AEB3689685DC46E89EED43145027C0F621CA8461B2BD6CF5286538EF09F30AC411384FE2F466152D57AC9F3E40F4962C7D5E90A6AE8CAFEE3BC069949E239C02C2E967D30AA67A7371335CF99D83C671BBF0BED18C7605C32FB708FC67D1C1AD3595639C3DB5617BE7BD088CF86234EDF006B0BE68CB0664E9F490255EDD6764A47DEF99C2FE32879B50C3D360E3841A27D4114FA8E1E9F0014E28A36159AC084A6EE2D174B09C99CF3EB289D909F7904F79233C6514D3102F39F5EC25AB9856B8CBAB8A1B41659630394633609C1CE3E44026C7A8D2DDD8C8C45518A0F66D272EC4224E01B26DDC8366B93F3CF17E4ADC1F9EFC08C07DD3271AAA18298314106D04882C14BB40F5085F0199679EEF80D8E26388226CC44777F818A290F5C587613C14E681F7214AD931E05738D931D8805FE838B22FCA871944E13171FF1DF2682390F45D5871537A888A719CD2E3941EA7343AA58768CBB4BF58ACA13148232638AE2B57064BB32D3F46C1F421AA99C1337D8882C08FE9A6CBBE4AFC0E5216B4A0904AB78040B50D6832AC1FA2443811D60F512EF8B2DE30E4F37298F18CC715D1B8224298131D7254871DC37C1A325BE62116440249FFE0EDCB6146CB1E67F23893C7992CCEE4215A2C1DBCC150226290164B78342F56F1ADF37E212C408446B6F2DE40358643D455E318F263384429E5358666C721A325519A83145265D343A291A7D806182B760F519E0C98DD439CFA3EEC363C081D978B8F81DA284CFB83825226DB0A3219EE0F521A9C0CF707291C7CB96FEA94AE968B8314102D2CA0CBFD00816A4BFB0135EB87281D4E84F543140DBEAC370F60BC581D062917EAC687F5D515816E4252CD83EF30F42C83EFCC33E3603640E9DBD759D6E61CA3F819A2701BF1733CF819A284F6C38F117FAEB2593CC47B99446B3D4F57D166EABC13338D6EA30D994A4BC7E2ABC3F29BE30D70C1596759B87ED9D6AD38176BCC8D8478B6CBBEB4B0A762793759DAB2B42ECFC59AB32E6D7EE8172E6FBEB306942F6402734BCBA134FF429D0381EAED380F0A8C5073285D3D88E146417C0CCA32EC900F72794F9D655979216F29B0682CEA505BBAA5EE189E6136EA8E51778CBA63D41DA3EEE85B770C6F5136EA8E51778CBA63D41DA3EEB090FD1F88FCDDBF1291B98F92B4916484C2C764BBDB135C44DF2322B8F99694A5E6F11E14BD656AD9A079BCFEF1864F6625FAD9A2D40E5797F79FA6D79777D387FB4F52BFC5DA18312D55C5A441F54C2F6F2FEFBE7DFE30D556D28804A98E2609AAE2FEFAF29ED470AFEF46A52EE43E54096007AEBF4EBF7DD5D26E448244BD4982E87FB9FEFCE1EBF4FAB3590DB5D8802BA953D17A66978BBBAF977A46556F25A3B5891940C609793475D2492D554653A05AE697F75F088CB5E4198D2D55C0A44155CC1E08BC169FEFAF8DF9466533CA389A43C5399AC90419789DFA0A0B6C9069F4E5E6FAC1B8935401A09DA439549DA4994C3A89D7A9AFB0E8E43FBE5E2E4C3AD92828A9A62609AAE5DFBF5EFE77228F0C642AB38C8038A8447D9E6E087CF69125B8262619A98BC9A1A94DB06CA5EA8474A8BEEB874B32E3887E3265238D340E778F4946BAC7E4D0D4C6874105EA133340352EAE89CEBDF960DA43CE56972AE452A1DA6E1F2E3F9B6285B5EA21254C1311353CFD4A8C8ACB2F465D2A172F607FCA24AC3365AABE27748500F58426223D211CCB45855EADD4AB4859A9D429A04AB9FC3ABF9CEA154A6DACCA38AB12407C5D4E3F7DD62B79CE980580CCA4C228FE5042CBA01BEC7A0B1A0D9A888C463E1464BA98E988625903EB872209D50D8B6BBD9957B86A2083BBFC0E5ADA0FB30F0653EFF9902579C01B88434D1AC8A04F5F1F3ECFBE1A88920A9328AA8474445C9A82975D84288C7B381B52B7D5B2A56CA56C4F169F6163D2A05BB3879CD7D70FD3452EE9641E72C9B03DC9E6106ABBDCEDB26512E5AB4660FDF5389B17EC22AB2926A3B8126B7271B48BBE3C9DFD9EADA1251DA98DFB3AC1CB428BCFA2389F20F46CC277CDA0DB351AB851DF415D4772E25D10F15834BFF978049D2FD7A464289B5601432E65528C38B7FA2D87BBFAA4E8AE15A37CC678366FD6C98A0166B2B531BAE232BE28D97CF4EE2E5D6A928E50B34DEE2E940D6FB4B4B62D5ACD7C557458B02C8B92F49B777769BCEFB9E80D90FB8CE60DD2787E2A80FE8D724AA8BD16F62C6057DF4CDFE87A5C6684A68406BC821FA00130E24D00190311D1792542A043C1153C737BF8E8860DACEB82E91E75662008C14B68102238511A8420AE18903510119D4BC79E35B5AFC58C2D8ADC7887444F4FD193E6E3D1B042781775CEBB65646628F3E39D021D38459784143563249753CD15DC95E46022512F99013FF0CCCA8E402284FD7C5C6C50981440AE5604A71DC3BC6582A2C770C6962441EBDD16248A66A8C1ACED29CA6E44A0F808D59CF7DDCA8C5017C0BB05BB798B5E89496AE648AEE99A33B8CBD9D38C52F203C9D90A2E3AE93AF7A6906A410567C43B0038DD8BF673DF7B5B56B18F7CCC35CB2A34AF72F92C6C03D40B68FA59B7840656566197555CB714030FE66BABEBED8E3A0DC933AF0274CCB3C3761983FE0324ABC287C06F64941E84FA9BA2CBA04B992D5DA784EFFE22DA3EC77BA3EE575915125F6E3FDCF09E3ACF855E98D38181541E9451A5EAA45DA04ACF31DFF52C30C18DEBD2B89419463E2465FEA022AB5F7F12EDA2912F09CEDD1E3B9CFC50017CC74A2508E56CCD83DC85FAE33AA4800096B5B5CEF730F2C5C6AEBEEB79B6D6BACDEC3B375D2E3E06EFAEC20786656DADDBB6DE4487EEB33B6BCC5E97C2FED19408BCBB875200590B67688D49B895A429D1F6E66997CCA127281E55BBA940AE3698201DF5288B365F03780488F5979F49206CDCEDB75192EE1F3F6E33EAF97B5C648FE55907C847605836BCD7803DAF511682CE63F8AC1CF2FFBD53AF1834F6B2EB3AA9ADBEB17197F0EE49B9D4C0160E6BD5D0A69FFB1843F635300D3CF90336D0EEBA23ADF090870E139598521D1272739495EF27CDD9DE836041F26ABC65EC794EEA2A83CE6AF6D27FF6A5183D07D0DCEA69239C38ADA70DFDDC211F2E26250D7ACF88A65D4CCA3369D507F2739F6DA3E738BFC3B4DE155F2F26BF1F48E94D5CFE9AC5BBE4B921714168A6317FAF89E6F99CFEC8BE6CB397785BB49F6D519DA54EAE46E62EDE474FD13EBADCEE931FD1724F9297F16E97E48AF05BB43E902C1F36DFE3A7CFE9C361FF72D8932EC79BEFEB579619171375FD1713A9CD170F2FF9AF5D882E90662679DC878734BFA9FB44DBFDB1BC813B312091DFFFFA1493EFE5581261B48F9F5F29A5FB2C352454B16F16BFC4E9539CEE17F1E6654D88ED1ED279F447ECD2B6AFBBF8367E8E96AFE4FB1FC953BCC589E8078267FBC52C899EB7D16657D168CA939F04C34F9B3FFFF5FF03E739CBC10EDB0300, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201506240208166_add_storedproc', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7D5B8F1CB992DEBB01FF87463FD98BB32A69CE3958CFA0B58BEE2A492DF44D3B55128E9F1AA9EA545762AB32DB75194FC3F02FF3837F92FF829937262F11BC676665293180A62B4906C9E0C78860900CFEBFFFF37F2FFEEDCFCDFAEC8F78BB4BB2F4FDF9BB376FCFCFE274993D25E9F3FBF3C3FEC73FFFB7F37FFBD7FFFC9F2E3E3C6DFE3CFB56E7FB6B9E8F944C77EFCF57FBFDCB6F93C96EB98A37D1EECD26596EB35DF663FF66996D26D15336F9E5EDDB5F27EFDE4D6242E29CD03A3BBBF8FD90EE934D5CFC203FA759BA8C5FF687687D973DC5EB5DF59DA4CC0BAA67F7D126DEBD44CBF8FDF9BF1FA2F4F6F57E15CDA3E5EACD6CF1707E76B94E22D29079BCFE717E16A569B68FF6A499BF7DDDC5F3FD364B9FE72FE443B45EBCBEC424DF8F68BD8BABE6FFD66437EDC9DB5FF29E4C9A8235A9E561B7CF369604DFFDB562CD442CEEC4E073CA3AC2BC0F84C9FBD7BCD70503DF9F5F45E9F374156D08BF9FCFCFC40A7F9BAEB7796680C76FD8927F39E3D2FF426141D093FFF797B3E961BD3F6CE3F7697CD86FA3F55FCEBE1CBEAF93E54DFCBAC8FE234EDFA787F59A6D29692B49E33E904F5FB6D94BBCDDBFFE1EFFA8DA7F175D4DA7E76713BEE8442C4B4BF2C5CABE11442479EFEFA23F6FE3F479BF7A7FFE0B01F3C7E4CFF8A9FE5021E46B9A909910D3DFF7A4D9D1F775F361A2A9761ADD469B6F49BCECBEF2FBE7E8B519EAB2F659B48F1764DAE9CB1EB2442CDC62D3EFA33F92E70282424318FEFD1EAF8B1CBB55F2524EF53734F571362FF049C6F8E336DBFC9EADD9B234F571116D9FE33DE9508666996787EDD2A285B339990529A191824D64A7CD239BB769279285B6A46E2C96AFEE94698BEB8239B7801653BA5797F79FA6D79777D387FB4F3BB6C1700E89B9483688C11793465229E51783071BE1458BF529B998B6DBCBAF1E05C96295259F9228BD9AD5759B8890BAD4CDC2A6D4ED81807B7AFB8D0AAC78996CA2F5F9D9972DF9AB32517E3D3F9B2FA3BCFD7FB399A7B584082148C4B9A990354E386FE4840DCCEB527DA2BC69B93DC89BB23D68EAD561F9EDD0C3EC8A53836EFF5D57F97E7BD056354B482F13452DEFDE86A9264EC9EC8F54359932D3405A88DC0B273204051852578AF243A3528DCDA5EBAFD36F5F611157E01B3141A444D9529272D81B4A0A01EC6126892DD59953E6EDFDB24AE24331635443CFE603C6BD49C6079DC9633BE2555162D8DF1D22A386D659F1B69639B4CDADB239B698507BB95965464DA679F1365759B48DAEF339B67AB13A18B5B8C887B796246B5B9AE7716CE53F0ED1DE94B7342FDEDA2A8BB6C5753E2FCBA7D6C356E67D51A657DBBE6AB58361DF9FDDA1AD3A88D5B1D892C1B827F8D804AFC975516EA90B25631FD5964E886FD4870DE6EB527DA2BE69B93DEE9BB2DDDBFAD403D247F5A55F2E7172C9E50D6F7BBECEB3858F352D9AE8AFB3ACBB79AF9CF50E161BEAD202AC3AF7B95F5B64D6D3BF2CD8BB04A8DBEF2804EAE27D4C44BE6ED3B9D8AFA782D43D3D90354EF4D283D590EFA565C5BABBAEFC73BAFFEB2FDA7249BA22864053EA2A23132A92BD440A953E5D3CEAD63AECBA442ED0CC75553E49DD2B33B7B0FAE1EBC31640782E4D07BC96412CF660115B252B579B601E48D8C2196D57F2565AC17879ACD30D8AC69A2F8604045B2D8AB8B247AA249012F328FDB28A368353294CCBBBAE7A96A59F9246936564F00C4C3D4E929B15F217E59D4871717A1A897CD31ED051065A5FA5295B8EE5915A8D66F4122BB4F936F2A42AD4A720F1100BBDCDCBBBE8368B921EABEFD35CBC8B66DF16BDF8B6F40C0FB3A5C64B5DCFC5B291658D9B9619B13F72E90C8A259A4A6409654E2391806449184179EC77550CCC782F112A5ABF5A596BDF7495F52E570718EF682683D6BBEF60D41454DB03429E47002A481679CB10C9E7041995C66D9291E60AA9504BC52C4E8D5CDC5C45E975611AE990C16445604173A831D164B30504A79780F632E9B0CC003348CC857339ACE18C179E4053A174F58253D55063438B11C936A6162DD6A7B155686E7B43AB2F85AFAE37F8FE926AE238A85A718AABD4B19727812A2317574255B8775F42DE8E8E3C0965553FAF1FA1578BD6CC555A1B444A8B4B9D13F616E0D9DBF51758198C7A8F81AAD1761B554EC2E3E825C791CB827C9B8AAD79189B54BDBA618D77A93CD77AC1C40FB863A39756AD6C80581CB6D36D81B88A4B3B07B1C30E99DA391C4E6A4A2B6E17ABAB2ADCBBECCCDBD191D55556F513595D771119DCD76B6657A5B543F3014C3295038973F9003E27617EA239E1398A67B795310DBF814ED489EA0EE0B9A4C62BB286B4253DBC77D221478D97CFDD8A741286472F098F5CB6E556245BF310ACC890665C27220B34E3F412AE1533CEE25CBFCE8C53492AE3A9DFC85B9B695F97EA73CAE76D7099ED65B91E5CA19A8A836C7C7E4B16DB162EF879CE646FBD2DCE6003151F6C1B8BAF0B50DD60064D9343398F9D8E8C34E57ABD9BB3F0588E3085DDB15E4EA8A1AD467A905D614E095FCF54DBB0CCA41073839BC67C26C84E4672DA0A088B1589B17050AF435C3763836EC62B181A4A7831436C29BE68C93E05D87516CD326912B421EDEA9A7A08BFD09D9CC56FCF1B1F3371111C8A43278888316D77396A2A99C7E550B45E954FEA8032B3D75A41E890CD9CE58A1EDFA43DE64998BB08AE9AFB8583F010C4E9CD8A8CACC6711AE61E73963E2F484F575ED7237D2C9720B35854B74653DE55F132A7DC2C152F2DD9DF1CCE07FBD948EBDECBDA36F4C648D518CE0B264D1686BBF37DB68D3FC569BC25D3F8E94BB4DFC75B82CDFB2CD5CB814609B75B518F2B1C329967D141ED5584F74DD8AD78C3AB8F4584A717679101B78375E69AB5234BA7872C71E933A3158CBBCC6A926042D2F81C8DCDF15AE5091AF914AE695B172BC2B99B5825D0F92C8A962B334A1D50E7F6B2CCC44ED94875BEEC40E5FACF29A90BDBC75E64321B38F66233AF32B0E864DAE3223E9F5D442853A7B518AD58D08A2835B8B010483C8916A7993073124FDC95061BD9C414EC73D1C8B5DF7EE5D8EB4D43B21633ABBFD3B3F88E975844CCAAAFBA386195BDD16219E4B52AD7739857DA7A7BA0F61AC2A4D029FAEA871472759EB51874D52FF6A47B3C1020DCA03A70481889E174954CD9D620E26296CD08C1EB6CB9B015186CC94022E3EC2ADAC515CE98B5D7B9817E9ACDAE7BB82056881CD2CA9E0E5F451BA16ECB734C0DE31015972712A4F120E1951C9005BCAB09E573B8AD493B0C4FB12A59D1663413745E09C9E9B5D66D986E6B49E6A5FA3623CB96BBD990FDCCD1CA80D4541EDC7AE4F117767E4166A46A1EBA1A9274B2591A9255B99E0D49DA7A2743B237A95E1A92FAEABB47ACA77C058C198D2476C26D0E35DB1044CB5057E21D2D985974289BDD8B01930FC19532026C7B068C50B7ED41EC9A6FD075F932AD3094F32CCC4D792E458E47C3273B1829B453F024AA9281964989905122E4F08B245133D0CAF22F0BF51A45A26EB7432489FEE6DA6215DF86594B3B04B2D076BB05079AEFD494E257C033D7BC498B685984215036AACE0435AB4C5334ACCA60DBB40A1A28CB98F45C5BD683C93ACB810CC01E1E94CB6FEFAEE296D59E5D51A64F0152B7DA5E7ED4257B98C3DAAAC3DB84460AD660C2E04A5698518EFBC7CCECB1DB3CA6057B4523DB7E0748B2C5FBC0A551FD9D82D3515ECA9B8A2AA9EABAAEA6F6A1E5BABA2AD7F3BA9AB6DE695DDDDB62A35C57EBABEFCE0CB25C0A00EB6764B1E07E89BA7860CAFA023529D5FBE5E9A2E58E77A78BB2BD2CBD8B03CEBD549F1FCB662A363D96FDD33CE362F0D49AEE8233FB1C9BD394BCCA66B1E58993A2487F93917F08DEE02C1CFA7A319C1B7C0F0DCC8A7808E0BC4D3C4D83DCC235128312D8C6099A1939AC039F26448F4C60D9C18774B1CC88171DCB8E180760F6629200EF7CE1992D5E7BE0C337991600B4089E99DE013728D0DCC234C86C33FCF04216CEEAB3CAE0677617A743A5B7C95BAE8E7BB6B0DDBA04675CCB9535D2AD8BEA04F1D84595E2FE6EFBB509C7115B3E8F2D9D2B6BBD3EEEE25DEBB5C1A758DAAB0FDE746AA9BE46CB75561B1F20B3830AA99EEDAC4666E9D2416D54D37751A318B2AFDDDA3A9564BC03BBE5BA64A764CB060473CF3F7C7DE6FEC5FC45D7FC3085A57BB12ED6E30DAA282193CCC5B3D894ECDE8B430443D4ABFBA883BA1D5D2A35A41E9B6C8C47454A953D9C72161B17E7E56E972D93A255E292E271362F16345301A71FD2A7B32A8E8694B5695E73BE8759A3DC915991BC9079405AF2FEFC9DC4432569EA4A6A48F30B2E9EFA3F49D4C92C8AB7316143B4260576645E26E95E9E7249BA4C5EA2B5B68F4249C4F1AA72DE4C686562CA2C7E89D327D2562D3B02B482562648141DBF2E260C7AD4A0A2D8BCBABCFF34BDBEBC9B3EDC7FDAA1C082B343E06A668D39B610EAFDE04BDD55B3D155F8ABCC21A6E68A49430A51A4F06C7601B4D243416609E5092A61C49CA0ECAA1C1E16824B220BE00A436D28998575CD5058601E640B798571C1B7055DCA2AE6B17AAD28015EA50F25A518D200949AA573BBE249EE601FB249E6855D2B604F7A17A8825EA6C2865EF94C5533F48CD3D21C56CAD726E543D9EDA04AD141B3F1045E48B30294820B5E0DE80048E80B9DD888EB9FEBD40EBB0A50DA473E59752ABC29DA0AB874FD351B607C7FC91C653AD678B7A403B8691EDAC15061FAEA8EA0C8A893D41C7FA6CF8BC928442A0B0443330E984140F5F49E391CCD3815A045BD48411D22F5AFB3859683BD4350DBE53E45A113EC8E4016E2AF55282594C1D315822CA41B2A96B2D0E05D1F198848652165A19603169207396E63290BB59C0AD0A20E60A9787A01038AC93B0C0D489ADD3673289ABCD0E40A430BDE2803B7626D378BE2DAB45E38CE61CE24B3A0CF1C9B98B0B3AD4C5593BE9B4D0B3476BAF92C35E18F6F63BA704AA2E1CB512FA2FE11040E150EF68A41B8F44E81A7EDB2A1EB100BC26FE7BFD431274063BA059ECEE7A47A1EC2046A320A94B4CD5D4EEF445E5F3CA4B3781DEFE3B3CBE5BE384E3F8D76CBE849DE929D90268445A693AF2830209D1C66FDE2107E42C5CC7450A0D1DF2E51C0D106EA4EB05276D36C54A1F7D1AC60A5E4865F1BBA116FE09B9B0A39A47E80D3635DA4AF6560224FD5874EE59E6AC88620FCD4B17C31141906F66DB024C6073717898621CEB9C9C104236E45381A75DF64F49190E360DE7B4FB01A31B2A34677ED83D5235A13DC3FA0F7B56FF0AA7BDA93D3D509887DCB4E38863406024D40E90603DCF5147390A9435177B67BAEECA6D9A8AA2F509A234CC991204DE9E6C00F1C2A19C3813E6E3277F4875E4CB23AFCA30EB82C6E16B4BAA3AEEBAFD9402B2FE15A9D0552B2264463BA069D4EB0A9035F07055B6F524DD5C7FE00E624D27A0717163757A5D894417479D559DE236D71CDAA6F19004F3EDA6A6B9A57C127738587443AB053BC0ABEF8B7A41B1188C4CA55482A5DE05C4E18D24BB39D60D5206C7AA768D572CB589AE1012EACC4AA9A3B215AD3C5415E3E302706062C4A2783803AC04127E0C402FAB2EA5D6E4CA8F3BE2033CC061C0F526371DC17ECBC77FD9DA2ADBA17AC1F5F31FCAA16712A67361EA492F13C563796439DD980E312E2DE4B659042D641CA5C76B6F18E2A83C63A70D7D121AAE8A6199215B16D2CDD9C0A8E5835A53FC343082AA850E9588441CED0A0D132BA3234B010E89D8873942BC62A1C0F81656550C05C08D18AAE4E9356BE0BE3CB1CAA42E84952D839A43D488A55D3D7C50E93BE9B8DBD3A509AE529520D9B82B4A873389A5FF2008BB40645DDC1FAAE2E76287BDD27083DAF74F40A41F19AA7DE0D0F646FEBFE6DCF0E78454F8DF55DF88BB88EAE77B4213D804C27E490FC6DC1AC5FD9A6E96C8F487312694706B53C209B290ED8C0C88121C6C56516E055C48CEB045A4C077B8415C30BBB56C05170FB4095EEAE0F92BF2D74296EF97470D34CD3D91E91E674B5AC6701C6C63F7A3488A983E487A066175A495F857B941D9BA927476B43A78522741BD3C42610A1390B1421DF8CE672409F94DB1C45DBDFE5F444C7E708676619BB8F94D99312F1B6BE55717B3FCFBFC57F42CFCF7EDDC55528CB5DF5088488A79CE63CDED73B0DDFF929D9C40B0467AC844E911A13724E228586A303E8348C96C8606300B5A68A282537050C35055068022D4934B020FD18957AAD08138297E0509F04A79BDC37218396223DE12391424EE8013498A8441215F4110945EFE88207ED1ECD61C67D9CA02535E98E08DA42E41504AC8538414B6ACD05298912F6D802DC4F1C186CA20925E61A29448B49D65213AE5D4BE4948F90C0AD634E8643AD6392B5D4C4FB18123D3183962277525622A738470B4B557A440D92ABC8F935A455E52122B049D0F922B83DF45807D41EECA17240FED4DBB0B2F4411EC405C6AEDAD196C70C7E12131A7D66AF15187AFC9511903774A70AE20DF6D81C225D8A952B2C59A007C2003BA17C72493610CAEF9AF2D4F0DA41BD69EC61810C631935B48058C5674C46D1DA7884231A73C6B522A631ED8960DE4806A0925A6DAA73D494B6D584EFBB015FA849CB87DB057883E4C47B04178079A4B091B504BB60931C2C16428F3AA22C3FDC684C591E3B58785315259021A805EC811926ECA90A30587454A573888D8FEA011520242A470D35C8EDD902C5ED04D8A20DEFC9754415E093EB88EAD5353539902F987D60CF16340A25C01BB388955C8FB4312B4DBA654611649466E564CF2F4D1845806B9A12784FCD020F02130659F9D8105732135B5985409F829186A102356851B2CF0D801D334D13BD0E83A061BC3B1925FA88773204F1E702AD83DC81DCC496CEF6DC54045D0338691AA28DEBA8419036AE938AF713ADE2B2B5CC396548368077E621DCB88E1A0571E3BAAA7BB4D4326E9BC846DCB5E160B9A211C5200BD62CFC186F7F6A039089DD339181FA98631D314D61C9E96266611D52DA71F6FCE9C88E8323336925989E33EA204EBE724BC91D854BD20934608C211839FA7044E2782B0312D9486223C22DA3491DEA066099456C1CAE7F66D171B85EAADDAD16D431CCE1CE614F0357C94193202CB81DAAE199B55DDB2D97E0E82000930CC288707D520712E1BAA40E5F611A3BA4A5F988C54A401C3B065130447F8C3A0E86E8E2C16FC55B84BE90570DC156E96050061DAFF47052866FF0E6514758C2620A20D34D1B7E409A1DAA0004D29443AEAD9B070E686FC62177DA6118995C8017875E73055E04147E5DDAE6EA7A4BFC126E53439E55C57D6BDE0B0ADFB8E6FDA9E8655EED4DE9D61950EF2DAA58005D02461A2F5C03F6608370F397B7AAE00D5117D311BAF40B9A8CDADBC18231A7BA1F2C9888AA0BB2A657824D38ED2659844BABB04451DD6C15E73C72B7559420F83D49933BA92D4D1CE5F549CC996974DD52F636EA2E5C9A9A24E6943BDC9580EFFC693968B31BA1BE2318807B7A7F7A60673A7255CD60C3D4C4AA565D6BF3DF36EDD49E06EF5A19B0498F2CDDC52C7F46F509A8E2288E9E4DD295226587D84B45FEEC61EF11C9AC81CE12F9B345B1C762742F46D921E5EE8A138B945B2B81F755B0CB1A00AB8CEE75701DD3DDEC303EA66344B5F5B32EF23D0E08509ADB1EFCC8E3F73D985EB087DF5430C26F78F8B224BFC49153A0970968DAC564BE5CC59BA8FA7031215996F1CBFE10ADEFB2A778BDAB13EEA297978474A129597D399BBF44CBDCFBFCCFF3F3B33F37EB74F7FE7CB5DFBFFC3699EC0AD2BB379B64B9CD76D98FFD9B65B699444FD9E497B76F7F9DBC7B37D99434264BEEF49978F581D6B4CFB6D1732CA492AA494B3F26DBDD9EE8B0E87BB423EC9F3E6DA46CECD5099E7394BF754DE0ED0879E8EA838C75B1FC6FBAC592DEBE162BECE5EACD6CF1F04645AAE1E647D2C14D9CEE8BBEC6CCB8AB8B1302F365B48EB6F5AD157A65E52A3F1E39CDD6874DCA7D1281A8A2C11C7BE42929CE43E2F4EE9FA3D74650B004F9141B8ADC1BF43C49E5F3F439E205CE8BA33C9186B95D1C644FC98F64594CE28F87B4B89C05D75B64FF9CEE0823EA8C67F51FD53696382FCAB9CE6B82920204290DA8BE445BF2731F6FB9AFDFE2EDAEBC4F76D8E6D79EE07134C29A540193E6570D0F34A11E3ED1B7220E7E524D5CAA595517137ECCA12C5F5F9EA27DEC838A92C2888AE1A0821F73284B79E1D307152585F0A878D826CF491AADB1BEF12D8764B8B1D4D4C9F33ABD31060C4D8506867EFA01A563602428CA76A5DD17AB2CF99444E9D58C27C77EB7A776B380A9DD00FB4138B5DB0301F1F4F61B4FABF97A04D68172F43B300D9ABB2B2E764127629A4592500B9B14A6921C60482579925F250DF2842A9A849E6D82060E2E06C10887BEE0D09231C0DC6C73B0046CE1700A5681C28964A31630320636015E141FA9C6C5C45B04B83B5439EED5CD37C1BA40EEC3E19416710A378C4B30A7374BA2E2BA184BAAFE6643258F0B55C435E609D1CF96060ADC4721E9084C1515263BB054A893D4C55069182949A226C97BD15A215C16765582A74E62512F2A2536CDAF9A7A460835D49F7D89D35922D1A72901B42ACA2821B567738B62DAC5DA1A313D62DA07D32DD98CCDEEA883C96887E9533018AB79E4E945008998389090829D18771029E6B305AD2D61C4FD2AC9039370C498EF476040E1A3D485A3A78C35E1E4E5695D07203530299E55304010EB6092FA76BE9443E4E4791987881FA2B61C2255C416176F88F1109D825A53848DB11199181903D58617C5C7A80929C3AB372CD48C9A5A6DB10004B924DBA31409748AC292CE214BF236008727CACFE6B4E6D942725ED4DF2C3C21AFB34C7080145F8E406DAB30D881E2A641905C5477035C49EC3449BE6B440ECCA8DD1EA02A8A7470AF3E00790A7F688BBE4CF1ABA29E1802FDFAB3E72AB19831E2E2B0F8D8B3654331EC62DB8C181E316C83E1964C3F8A6117E3CF0EC3276300A2D760ACF52F4CC9D40CC44A6B06ACBE22031883D8E5259C663EC12182EC7717EB32CC9E1D7B275DA287DE56C7292EB2F4799E159E49C127C32658D04BD21559074AD49ACFC76229E248EDCA58ACAE7E39DB8B351A615155A7FAAB41A41E3629945A6F758F849D21503534D1D343C2CE1CD145C2A67956D34C29B19226E518ECC90AE6CE26E508F311E68160DEA6C9595F7F76B53A2D617E0AB6A7F6DEBFD5AE8D9298C91E9B86409746E85D446333F0F4D0E85638AD5996165141B85350D5371BF72160249EAA81A8C752173B817C108AA3361319604AD5D014CFE31B1564C5B31BD5675F5F09ACC88E5189B5B5ABC9C3EDA8CDB5116EDDC1ADAD1D5A1E6EC7613685C1DB299866781C455C8F7EDEE57F3FFCF82FB242ADC8FD5707B30C6989D16079DB4E7711175294A7A78C36AAA219DA897717CDBE2D4452C527AB735E6037D9EFC76E73766E27AAC2441A407BF630FB7AFFE9FA61BAB8FCD227BECBF89D32B8E1B89E2A6A6C844B09D968EC4B9C22F917A4C77E3F021C40C1FD4C44DBE5F4BAAF71A7B11005A98105A3D48C3A8D4A288D3A1AAF5039EA203DF6FB518C3AA2993A591ED691865DD685AD5BCF827294AAE15207E2F0AC54AA5443F1D5FBDC26C62B36E9F45734ADAD6EEBD9E2B2AC1D67CB385B8E74B6B4B438A76F2338ACCA07BA520E6EFB77600270B1E1473B60946C46950C41B299AC57413095490190449797109268A2E7A90366152B9E3A60927A369D382933DA4FA39431AA64943226481AA09469C9E4E4A4CC6877DAFB1A3B71392D57A39D396A00B34A86AD01A8235CE67F9D120047D49D0DE188267ACB7FAC1A36A977071D912DA37539CA16A34A46D9A2C7D100654B6BEECCFC6DB89FC7A6743EF543E6CFB7243F23E679161BA5637228022FDBF2F9178948FDED08F69A951CEDC4D55CD5EF64FFB7A96C20DAF5E7DE3D6735D35C0C9B63675A6B8E809A692E12DB8469A720A9EBE3B3F8CB7C2EF71D106A06525B4B011F325A0EBC3B5326FC4C37677ABBEDA218FD0EAFBB54AD70BFEF5222063E0F5EA68D970F8EF9A88E0804E79B2823103A0242CB57446A2038DF11B100C2783FC4CCFE08687C785A1EC76176E451026462CD57CBE3D40123C684BF9CEC1A33A69F382FFD5A35C330691A9C02C12FC2A8CA4E425F7476013570F08B7603B01CBD2135C2AF6FF8B51918E578CCB7619856B5D95B3F461F66718F50B370EDA01434C307DD066412FA71EDDC458455AFD7521C12F6FB09BA781428E8D0C553B5C2DD1E42CECC316947BFB2678126D5D1241DC50A9F90BFDCEDB26552A0E343FA74C6FC2C6444DDE0C7D95C84DAD9C76DB651E5785C44DBE79854BDC894D9E6D961BB44F4879ACB52FF692D75BA311F263C23FAF08BD5FC7036E7C6D96356C9387BFA983D2D3B136B7E385BA316B3A77F67E24F843D2D234CC03784F541C0C581E7CAE0389605B99300881042BFF6E57A1D969BB4DF95C13096050DA6003F5518CBA9033FD5A07C97476FEC8E98E8DCA1783C26DC300C06BA1EF2531318190343012FAA33FF64DF9CE5A15E990CFD684EE75BB2D80AAFB9559F8E407DABC6A503D54D2D7217B50DDAF8D6CB4AF5D8CBC75C4390AFC65F205E7DED5973D22171D19A3FF990B4A4B89AD5B183D2321B92535055D3C5A34BE45970C343119E4FBFE3E5107576BA40B6A798843E37BBBC95E94022F7F71B96B16980DB1BDE0BDCF9C7A40DC441DF961E1946387D9F9883230EBAC6417BFB0E3ED1F46C71702246C0F5EC2A4A03AC5955A4CC0C0145717CD4AEB36896494EE4FAAB8DE276332AFA50BB4A3E77A37869139C546F3D3CD23CAB137C25615099DEA6E26AF8E8A2BA86C6C7F6047FC34717D16FCE47D77DE69F51B994CC0BA35D94B40CD48BA67CFBFA25DFA390A3ECD71F7BDB388DD39B15E1B17C3A934FB1DB8A5D9096AC16521385A423D0A55A5475A04CB9361CA336A5200576DD02C4B5E966D38D43B3EC136512FD77F7188C03FB7B4C6ACFE6078FBC23B43F46E4F58DBC960C361E797D5A6CC3B0A48881BBB809B64C4749992DD315C5516CAE64FB62656958DC8B0BF3FBFEBCFC6436CDA28364DD14DFACAFB2C87799B9049B5D83389589355FAD5B261FF5E312ACF8353D6489C4B0F2A375BB243B9AFD6EC72F8914FD7804E6A96EAE76E3EAA14D70304EAB592E2AA355007D770FACA5EF07E1A8AF2585ACA28BCF416E52801739B934DFFD805AAA48DB017542907E80E7C7B834EFB12885903C18E5F720BD808C5836C97F2CA01AE8F7FEDD9C8D0CB15F668C32649421A30C198A0C69CFC5DFC810FB05A3990C7173EEEB8548FF97D386B1CC5DAC08986FE2300B5D353183A5AE8EC0312F760B770FBC487DB65FA832D71280F5A59868D94A78D1CAA538B5545EBC4A89D6FC0417B1CF0E0B59A629F20A5448B3E72748F29816B6FAB9D9C1D2966FC44FB1B865A73FE4200E623D4A0201BFE414C48AE44405D4AB40D6A4243EF07E05B22A9F1596E57320EB52943678A7425899AC1C4286EA1856AC8268F819D6ACA3681845C34989869616A2826838ADA5E8309689EC2B607E76A88292C10251591A5FD5738F98F15B915C92D5292E94A8987604D6BF86EB1D98FE4C0B9C4E5C75F64A9D387AF2F91187CA5A339B58B6BA1C271A3A5B5B52392C5B5DCECAB8B0F514F404F386A39FC0C20919680955617CCCD8F727A563BE34C54A4560248524739AB3249AAE047F58FDCDE64CC78C9876C4AC8A12F150079370046A4B8D820EB456D30027A5D5D17BA7029C64D11AAEAA1A6CE2932DD567DF6D37067ED2BE1B93D6B3D26550E1A2734754F48B8A966C0606152E26833D2A4EC160C84DA1D9EC7A1160550991315C52C245D5E65D5106584C96DFAD579232392EE10894B18AC71D2D20F3EA9D578F25234163BC4C0AB2C0016BE1D28E60C558F0D175B938343EB6B8442CF8E8BA3E34E7E32908FA4292A4852BDE7B4D8010325B19A28595AAB92E25AF0C698AEDCA102429241D81D857F3BB9B3558D500D7351865276457D1C410D636569390DAFFFAA5E6A8E3FA65B01C6DCFF6AF39EA68FB5B72F41454C22C3AE452C6531F20540C94015A121FA8BA88A006E8679BBB718B557C2B79E098CF56FA046C18FBFD08348962A43A502355ED4E3A8472519A9C34C5F7FA021D76A90A9AE22D4EB16EB0493DABA67A945CF4D2384AD228B5A4EEEA5172D17536A3740A5A6E112DF3D7CCFD44274CC440C7610515102F4B885AA9FA6AA5942052CCE7235049385FBB380D5D54EEA4906A16CA62A84AF09642480D4C4ADF07464BEEB9288A2171AFAD337525F75C04B839F74E427C977A3DC0424541C94490AB4A6B0D1668D1C225D9C9758CA898760C125ECDF54E2EBDD016B8C97A96A398DD19C2BC15470F105EF695B57861A061AB931218385B5B3B6CDDB0D5493B38B0F514F4049139B98B2E3F2FEFED6F470899ED6FA08595EEC7BA94BCBF41536CF737409242D211280835BFBBD9DFA81AE0BABF41D909F98E6962086F3C569390DAFFFE46CD51C7FD8DC172B4BDFD8D9AA38EFB1B961C3D059550BCB8B7581D423C630B9031500778517CAC6819E8F5DAE2BBCD26471DD31320C82559C469788E5E256AF4A3CD2168395C72FDCD9CCAEDEB2CE369945F8E40B1A970D3D5A3B7A47AF7076F8B0185DFB12C924285A285EBE152FD83EA4295D0EFBE0764C1F8B3F5673FE2259C05D2E5C79EB53C0598F3EBB923C04E03606D3EC79B03CCF9295E63809D82B97395CD62DFDBC1200D03430729870D0FB1359FA7AB6833955EAFE753CCED8069741B6DC86C5EF2E498CF16B45687E537C1C0A9BF595C15834E84381C549965444AE52F8E09949ACFE6B4F8C71F387A42928505061E9E7739898F5EE876BC238EDDFE73BBFA07BF41E2F2020976F6D4ED302BE6E971731D15B251BAE2D87CB5A44424FADD210288D50996F4F2C82537AB0C2048532C294A4B19977516FB703C408DA69853A4CF6E73D49AAF16EB2C6846B9445C800E13D89F4A40B7AEDC76C39817597979CD7C3F82B520AA573B580816753BAC0279552C58517CA29F05CA2869A11626C5B38A4A7D8BF4ABCF9EB72F911355814EBD319A5EACA049F1AB4250FE423542AAE77203BB7913EAFE922AF443C0781A8AEBA2E1EEF536D6855C4590A77A1407DFC35D2450789FC379F31B1345A8A2490850416DB64075D46901AAA1C60C540F4D0C5011B4400EE57FE14D1FA8129AE857516315099534099EFE17449C840ACD831C560B73184E75F421DC210BD6DE12952C93D4B3CBB23485ECFD95A32964487C3485465368348594958CA6905535A329349A423FB529D4D2E65A690AD9EFACB998426E917DED6C21C73A0C8D2137EAE6D690237D2B73C8AD0E377BC8AD2E1B83C8BD063B8BC8312AB5A549E45C8BB14DE45C839551E45C8B9555E4568B8D59E45183955DE4518FA561E45193A165E45183A569E456938D6DE45683B971E446DFD43A72A46E6D1E0DFFD4CCFDF3214B66441CEF7C6F8DD4845C2E8DE065712424644A48973BE8579B23C26472896FA6D18F2E478DB173C647B111AB1CA72E2E9BD4F5BB3CBE45875712007582EF89C96AD8A52373D5F750073215A7317BF7113723E4F006D23842EC08B57519868E90C3533416233420F576B9DB65CBA4A848D271B579F3389B4F178FBC49A51295AA72A20A1333C842FA09B1C664EA8FF3ECB05D02A38A613627059F937AAC13C501CCF9495BE4D5D845B47D8EA1D08CAA73C950284B2601D0930835E4511DF4E813DEEF8B0988217398D19844F3DA1E358845C6E446A2C3A1E17BC43112295AC3C836B69C2586A4F6D922C72E30508B23CD7AF948771ABDA03C018715928E923319692E3D7B11FAD628B89A4E4516179F3C471F6B9E2D08EC8D6C1F20D46A87B47A1F2569BC15B350FBBDFA427FEFEA0FF9F046CF315185F17AD7942B5579D1ADDD4BB4C4B53D51D4DBEC8FE429DE9275F4EB6E1F6FDEE419DECCFFC77ABA4E0AE3A3CE7017A5C98F78B75F64FF1113F5FDCBDB77BF9C9F5DAE9368478AC6EB1FE7677F6ED6E9EEB7E561B7CF36519A66FBA2EBEFCF57FBFDCB6F93C9AEA871F766932CB7D92EFBB17FB3CC3693E8299B105A7F9DBC7B37899F3613B17845D688CADB5F6B2ABBDDD39A1D76661D0379DAF981BB8925C8D523FC7BFCE34C01DC8B8958F6029E027943DE9FFF116D97AB687B7E7617FD791BA7CFFB55CED7F3B3FBC37A1D7D5F931C3FA2F52E966A9168322E7B81B2C8CEDF3EA74FF19FEFCFFF5751F6B7B3CFFF78648AFFE5EC614B86FAB7B3B767FFDBB755F9EDAC66B7A26C5661F13384F6DB83011D628F8A846CFAC71170EF216B442A91D50C8613ACD04B3526E0C281E037988B55961045985ECD6AC2FB6413E7C2215E26A53DFF2FB6035BD3BC5984A3593C1E3ABDFD460147486DF2350643F4DDAF442D12F94F92FFA6A66F3CE4B026351D714CBB980C386F1E841429D5269D933C29CA86142665BC08AEA729D4D5BFBFB5454CFD8A8F82E8BBB70E54E9BB3DA6E3620C6F91119B2C8D5F0301B91A7537C1055EE233925A30D6BC21C3D30D0498C59618DDF76439B9F1226C3C2474FFCC6950B0BB6526C3D2940D2C5B6A0443B48D040C4320BCC992785B2B79F302A3AEBE8D6E3CE501E151DC3AEF0CB2D56EAC3B6AE14B8CC6C0AD8B07C56E8E109EB00B48146ADB0AFE21B1CFBFC2E6D8AAAA7C50CDDF3C0A5F372BC997A596423B495744703734BE271A1AE62AB37259B68477A404E283F49D1D4603CD10088B40DA299756558543B66896A5D4D54A8AACB3C81A7802749D68B4085EF0D57453D47A60101B695F0471A7CC5C50C410F819A4EB5D34FBB6706B1029187885270C5CA8051E37899D2C275BFD633CFD9A83A44E13B0183BFBC9070DB9F7E03144DB352E6B7D5B1FC27357B839858ED46D5995B3B2CD8BFF4CAAF6B866698B70F30390FF5A86257B3A2B9963B5705DD632D672113C24620554F898442B72B1ACCA7988F2E2A72D17CB2336D711B0F5E5E549F65F524BA780EC392690E8606FAEC519E287797F51CE923D1551DEAAC0A413CB0907D0C93713088073C5DBFA66A9065A379185C9D66BFBCA467379F921A60B0F35C41456B0EF8474895B73FCE473D70ED9EB597D69D20950E5BD4B4313C80B7D754D2E4352960D0B10C56C30DBF95F78E3D6789CF9DBB10107DA63E0FCD5F855B37518588B7B2B999B55B45CB1A668A81D75A2DE17A4D52BCB2D4E1B89B0B8F1004ADE38202A2890F31E3C161E74E5543586B1860C666651E8F15E9C97B6F86CE4827BC5EF1C2A3E3E5D4A303B8B0E1ECBA7CAAC651D304EFB9AC5C1A8178B598336855D40B834254BA7872CF1670923011D39C250082946162BD2BA9BB82F41E2221A3C27B8C372CD7B62306B3EDFC9913727C404619AE43F499EFD270AD31ECFC95271A8A509C3EEC63AD9678AD0F426469A6A37D8DB1A0288B7BBF1C5EC203B31130FCC6F78D018DBBF0E71B457A07DD4877BE75990E3BD56D3A888CFE33C87A0B7224C275059B68DD9C3526E7DEAD4D1745CA70EF27684E1D4A1A55B983A02ED763959DFD774622372D9D3E8CC425D34F081A12AF48ADBBAA22A1CF8188CD0D576C713BA006C3A9CF0E55893D164EF30879C0D3CDD9639873DBD6ECC3EFC4D0E231EB2C583335226DEBA8406DF29B690D0C87B3C86129A966E41420BB43B387C2F3D8C69B5BD09BCCF63BCBB59940D2CA4B9B7047DF6260981D0F7459836B9F86B0775AF037867C70C57EA77E780028A97E5A0DCC8F37140563CDE0490177F040EC8AD79E20D2881BFE28664C6038F000E24C5336C70762CC20198197D4A0DCE8EBE950664C79F43C3325BDC9C50BF668615001F2CC332A3EF910105F027C780CC36C38F062E819C921E76083FB3DD5D87D2C5752722DC7D4F170A82EDED44A2911AEE440461E24E485C67BBD2103C5D4ECE65C9CBE34885DBDE74A4212C9A1DA908869D0B15F192AD330DFEBCAB33192A1B3DE9307691330D2E909A1B1DF1F4A40B8D00D8E717A64E14E4159993886462E49B52315FC4C1E13F0DF7C690F0AA06DB5EB464E0754715F5B1A5D54C5FC72C6D7D7D3E2E221B73DBC7A184B907CD6EB29585C39EA4425C5C667EC5A26C0723AC8F06E7110C0BF7D43847BB816267197194140C7E9D731893787E39BD3E9AEBBDFD9D7C3D3E01A1F0399A62A82A1FD4A5156DD446ADCFDED1C3ECEBFDA7EB87E9E2F2CB08497C73D5F8A27A5E3A3828B1AD4A535056E5038352BD5E330725139353F43C3CCEE6853E9C0AD8FC903E9DFD9EAD2127451EF7F20DF3F5EEB0DE272FEB64496A7E7FFE4EEA57430AF29B14D4F8049EE03F4904C9E488F318E149B4260576FB6D94C851FEBF6C937499BC446BA91B424E64D6A99CB1134A5C4C99C52F314148BA877A1CA0624A5F10053A96707159D5D0A07164AF2EEF3F4DAF2FEFA60FF79F76283C449BA018CFE6E330C0810505B6B4E6DA85861013B4177094CE4636D8322A3638B7642933AA4FE698B0025728410144034491806EC298E3C0127B788D5DCA86D91C89D0D78260109D8505A1E6E3C9080498A3DA3AE14DA32ED0409DFE040EF089D76610A50D82621499AFE678108CDA8210FDD60A1A908835E8D000216AAC900032D3B6B60E0050B59379C2028C07E734742A0408B5713A46486A050F76E3A37839C318112AFEBA54DC0138D88D15062170481941DA0BFB318DC4A709F66081684A69ADC005EF373A74AA504DF6A80958772F52458799C062A53FA4F42758EC20720492A57E2C497E494A295984DDD546B2D0047BBC4034A5B4F6240BF240966A7623A798EC6113B0EE0E80A3787E0C1B63712BBD18DCE6E390C002877E41070B7BE5AC558C18BCB2D6014EB883482558B0E01ACD0083A7978AE11552AC30D3D42B00864968052D8A40132864D0102256A04158ED506B170E317AB4C41427F261947A48DD4C96DE1082453042070A0D1AD336429415770B129D9FC4CA9415FBF29096EF879E5D2ECB47C8A6D16E193DC95B4DF9FB6DC1F03964DB3758A59D5B2F3A2085345C7AC1430FE68A1D1A7A3450A4E76D8720557A367FFB5B5BDB2D92FA15327CB89752D46061A49AD11582C4B0832B2659099EA666012F4C422B605145BD41460E097303E6BDF747163228ED35AE6BCF9F1E75E1DC7EBDE1AC17A164079DBE25127311C7609F11B8B6538C25F7FD98F71AD1F041E8F0A82F49B6B5EBA8A9B59BC308D5D5AAFA388266F751BE8B559F49A09F2D4F25001B90EDEF3E622191D0A152DE8AB53C9F60B501A9AEB86B88E844475078742F38FA82859DD8E81D12D5B1768287F2C2C9E33C3B6C97317E70853F435F1E5BA9BF75B274E26F2401EDA853DA39FB02C53E428717BFFA640E28C50D2C977AFBC0D422DA3EC762D82D66B9240F253C86278928AB8145AFF4B78B27BCDA4ED6E0F4D62B81141C7C8C5D7B4B7764AB8537F3DD5C7159C8BB606B6D24A6143E3A78F0061764D8D5DAE7A187D2FA323F6FE760A41EF3B93B7B0B541D29A5E5F3779ACA3B078DF9F9BB7090713ACE3778B8B89EBAEB152CE2E17EFD6A3AE0F9FEBE56D2FD9CF2B75D45A3D5F6000B9D00098B8B9E44476FC8B0131A47060D3900635BB06002ED3490283E9E161C248E6AEB84A3B6F58106DDD1CAB088B03DD83B7464D86D2AF72C28D8BBAECCE5519DEFCDE94A704B3E13306A0CD6A696AFA83ADC2A8743D5B8DD56B6C43C52758FB0D3B8E72C05D3C9C3ADEFDBF101EBEF420DD6F1E01EB577E48F01684DF83AAE11CDD793811412A8EF587154B87FF32169083D7EDC66F408F1E3227B04E25C053F1E53D4C1D1283EF004DEBE7923D318C8891899892ED575BACDA4DC10E87FC7D2083283DD9FB4C04BBFDB924DB0341D64E4B06CB52AA29F4F0E38D8E31BE8602A23BAB7021F758D9D44F8C8F5E575B65C442F3A5D34C303DD05D7495C5D9C9CE3124E4747E1CC75A9B6A3539B79A4BE7C039B0191F2DC261B17901EDA2C3F76732CC20555018F7DCACFDDA183AB7845A35550A9EAED46A35531114D7125C776AC351BFD7CF2D8BA471E02444759F9D449ABF852D71C1C611F0FE912F3177D4E77A475E76797CFCFDBF839DAC7346EE7D52159EF3FA7F4F77DB28E9E92654D8C7EFFBC9B669B976CC705FDFC126D495DFB789B63601E6F22D2ECE5EEFDF9E57A9DFDCFCF9B72EC4903FE88B7BB24BFD63C5FAE48AEF7E74FDF45573A25C5BBDAC4C8EDD913F9F93995E2914E74D4A4C89FDE34F3B7A344876EF9805443514B828B82E8D2B08B493D54A658F8FA52B672C4C288855219FC245830624F134C788832333CB217AB2CF99444E9D5AC26B94F361CAEBF6CE365B22BFAFD2FC6E46E1641C8152FA84F6FBFD13947CA6EA23542EFDDAF3937A37C30FEE6058D218AD0111A9D40638812D5131A461CA2FB954314ABE85B211E36081752DA7F2E16CFD4728D4CD544FFAE273A4B222654B186DEBBB72604F3333DD06BDDAEFD2E66B9D8F3EA1156D8F4B243EB1025FD88D69F15AD43543E7E6835D3CE65A0FF216A9EF0138FA7E83FED16DB68B9BA5F25F1C691A6CD100E511C8F43C80DE1106594CF101AF1A67E2E6190324A7CD32280BDC1BD0711D44747E9B9B8E7F266859B76F36C616A0640B6C4EB2C6B73BA52480E51E68E903C69480E5187F841D29C3FD50DD9C12A12FEF2649029C693B49C65ADACA7E5F03CFE7621595ACEB3628559D32CDE5834EE68FE2610B1049BE2DF13B4B8351C07AB4446389E221C07AB407CE068B64AE382438C6A443E821888E22C4B9980453FD65964333B84A9655B3CF8E41260338AFB11360EB0F929C57278D818B1BE3EED3E44091F7A520911608FD9AEAA9EC80CE74C167A1D601F8E9350B63E04739BD10AE543544823CA4794DBA17C88FAB37D4DD73CED3C445D17782230E4DA70D136BC1EA2C41D2AAF8738EF9D796DB5B0A8DF6C1EE2CC67DE2E3E8E75C5B1AB4171D0872882C641F71CF421CAC2A31B747387FA2860C5ED1D96E0316CEEB4E1A0B2DBDDB147D328B947348543D34FA812AC5467FDF2E66065381B12A16FD50952141FB0F526E9B5B52E3D4CDF19C2062BD747840D04618395F5478EB0EE46745449A021C812ECDF106CCB641B15C5CF3DEE3FA1F836621215BF431488EE0A03DE5761E9F9EFE47E4B16DB364FE5D3A11BA24C1B87AE18BA218AA5F60DEF211F219B2EEC8E84F4B8AC0B37FF5A38BE39E403562306C262608852D21703A63CBA9E5D45E9602DB8EB2C9A6521B711BA67FB1005D409B07D883261986C2F5B3D4A19CE7BC2BC027104CE9338BD5945CB15EBA70F10BD254B9F17A4A92BE3ABFB0E701AA5E708A78070FAD9B482A9DE5CDC0C577EE7A071DC2EBC6F34A35DC1F0CB2D02FF5974706B4DE518674F6DD8DE792F0223BE184D3BBC01AC2FDAB201593A3D648957F7191969DF7BA6B0BFCCE126D4F034D838A1C60975C4136A783A7C8013CA6858162B82929B78341D2C67E6B38F6C6276C23DE453DE084F19C534C44B4E3D7BC92AA615EEF2AAE2465099254C8ED10C1827C7383990C931AA74373632711506A87DDB890BB18853806C1BF7A059EE0F4FBC9F12F787273F0270DFF489862A46CA2005441B01220BC52E503DC25740E699E73B20B6F818A2081BF1D11D3E8628647DF161180F8579E07D8852760CF8154E760C36E0173A8EEC8BF2610651784CDC7F873CDA08247D1756DC941EA2621CA7F438A5C7298D4EE921DA32ED2F166B680CD288098EEBCA95C1D26CCB8F51307D886A66F04C1FA220F063BAE9B2AF12BF8394052D28A4D22D20506D039A0CEB8728114E84F543940BBEAC370CF9BC1C663CE3714534AE8810E644871CD561C7309F86CC967988059140D23F78FB7298D1B2C7993CCEE471268B337988164B076F30948818A4C5121ECD8B557CEBBC5F080B10A191ADBC37508DE11075D53886FC180E514A798DA1D971C8684994E6208554D9F49068E429B601C68ADD4394270366F710A7BE0FBB0D0F42C7E5E263A0360AD3FEA0A094C9B6824C86FB83940627C3FD410A075FEE9B3AA5ABE5E22005440B0BE8723F40A0DAD27E40CDFA214A871361FD1045832FEBCD03182F568741CA85BAF1617D7545A09B9054F3E03B0C3DCBE03BF3CC38980D50FAF67596B539C7287E8628DC46FC1C0F7E8628A1FDF063C49FAB6C160FF15E26D15ACFD355B4993AEFC44CA3DB6843A6D2D2B1F8EAB0FCE678035C70D65916AE5FB6752BCEC51A7323219EEDB22F2DECA958DE4D96B62CADCB73B1E6AC4B9B1FFA85CB9BEFAC01E50B99C0DCD27228CDBF50E740A07A3BCE830223D41C4A570F62B851101F83B20C3BE4835CDE536759565EC85B0A2C1A8B3AD4966EA93B8667988DBA63D41DA3EE1875C7A83BFAD61DC35B948DBA63D41DA3EE1875C7A83BDC65FFFDF3214BF28BAE03F43B2DA2842020E06ED55D0EA9A80D17719BFBBD740487B7FA1B47901FC1E1D9607E2308B3E70369DEFE95B4671F2569636C11821F93ED6E4F5457F43D22FDE25B56969AC77BD03A2C53CB36CEE3F58F377C32DBE1B345C9BCABCBFB4FD3EBCBBBE9C3FD270928626D8C252955C5A441F54C2F6F2FEFBE7DFE30D556D26051AAA34982AAB8BFBEBC2735DCEBBB5159B4721FAA04B003D75FA7DFBE6A6937568B44BD4982E87FB9FEFCE1EBF4FAB3590DB565035752A7A2F5CC2E17775F2FF58CAA9E73476B1333808C13F268EAA4768754194D816A995FDE7F2130D69267161552054C1A54C5EC81C06BF1F9FEDA986FD47C44194773A8384733992003AF535F61810D328DBEDC5C3F187792DAA86827690E55276926934EE275EA2B2C3AF98FAF970B934E3636B454539304D5F2EF5F2FFF3B9147063295F174401C54A23E4F37043EFB0E1C5C13938CD4C5E4D0D4262CBEA5EA8474A8BEEB874B32E3887E3265237D0C01EE1E938C748FC9A1A98D8FD40CD42766806A5C5C139D7BF3C1B4879C3B41AA904B856ABB7DB8FC6C8A15D6F10029619A88A8E1E95762545C7E31EA52E95F01FB5326619D2953F53DA14E0CA8273411E909E1582E2AF46AA57674C94AA54E0155CAE5D7F9E554AF50EAF5B48CB32A01C4D7E5F4D367BD92E7D6DB0090995418C51F4A68197483750941A3411391D1C887824C17331D51785E60FD5024A1BA6171AD37F30A6F32647097DF414BFB61F6C160EAD5CB2488434D1AC8A04F5F1F3ECFBE1A88920A9328AA8474445C9A82975D84288C7B381B52B7D5B2A56CA56C4F169F6163D2A05BB3879CD7D70FD3452EE9641E72C9B03DC9E6106ABBDCEDB26512E5AB4660FDF5389B17EC22AB2926A3B8126B7271B48BBE3C9DFD9EADA1251DA98DFB3AC1CB428BCFA2389F20F46CC277CDA0DB351AB851DF415D4772E25D10F15834BFF978049D2FD7A464289B5601432E65528C38B7FA2D87BBFAA4E8AE15A37CC678366FD6C98A0166B2B531BAE232BE28D97CF4EE2E5D6A928E50B34DEE2E940D6FB4B4B62D5ACD7C557458B02C8B92F49B7777E9930473D11B20F719CD1BA4F1FC5400FD1BE594507B2DEC59C0AEBE99BED1F5B8CC084D090D78053F400360C49B00320622A2F34A844087822B78E6F6F0D10D1B58D705D33DEACC40108297D0204470A23408415C31206B20223A978E3D6B6A5F8B195B14B9F10E899E9EA227CDC7A36185F074F39C77CBC8CC50E6C73B053A708A2E09296AC6482EA79A2BB82BC9C144A25E32037EE099951D814408FBF9B8D8A03029805CAD084E3B8679CB04458FE18C2D4982D6BB2D4814CD508359DB5394DD8840F19DBC39EFBB9519A12E80770B76F316BD1293D4CC915CD335677097B3A719A5E40792B3155C74D275EED933D5820ACE88770070BA17EDE7BEF7B6AC62DF219A6B9655685EE5F259D806A817D0F4B36E090DACACC22EABB86E29061ECCD756D7DB1D751A356C5EC5109A6787ED3206FD074856850F81DFC8283D08F53745974197325BBA4E09DFFD45B47D8EF746DDAFB22A24BEDC7EB8E13D759E8B0E33A70303A93C28A34AD549BB40959E63BEEB5960821BD7A57129338C7C48CAFC414556BFFE24DA45235F129CBB3D7638F9A102F88E954A10CAD99A07B90BF5C7754801012C6B6B9DEF61E48B8D5D7DD7F36CAD759BD9776EBA5C7C0CDE5D850F0CCBDA5AB76DBD890EDD6777D698BD2E85FDA3291178770FA500B216CED01A93702B4953A2EDCDD32E99D31C4257EDA602B9DA608274D4A32CDA7C0DE01120D65F7E2681B071B7DF4649BA7FFCB8CDA8E7EF71913D96671D201F8161D9F05E03F6BC4659083A8FE1B372C8FFF74EBD62D0D8CBAEEBA4B6FAC68686C3BB27E552035B38AC55439B7EEE630CD9070B35F0E40FD840BBEB8EB4C2431E3A4C54624A7548C8CD51563EF136677B0F8205C9ABF196B1E739A9AB0C3AABD94BFFD9C7ACF41C4073ABA78D70E2B49E36F473877CB8989434E83D239A763129CFA4551FC8CF7DB68D9EE3FC4AD37A577CBD98FC7E20A53771F96B16EF92E786C405A199C6FCBD269AE773FA23FBB2CD5EE26DD17EB64575963AB9BE8416EFA3A7681F5D6EF7C98F68B927C9CB78B74B7245F82D5A1F48960F9BEFF1D3E7F4E1B07F39EC4997E3CDF7F52BCB8C8B89BAFE8B89D4E68B8797FCD72E4417483393FC72E2439A5F647BA2EDFE585E509B1890C8EF7F7D8AC9F7722C8930DAC7CFAF94D27D961A12AAD8378B5FE2F4294EF78B78F3B226C4760FE93CFA237669DBD75D7C1B3F47CB57F2FD8FE429DEE244F403C1B3FD629644CFDB68B3AB6834E5C94F82E1A7CD9FFFFAFF011D29A28799E40300, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201506240316503_change_password_length', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7DDB8E1C3993DEBD01BF43A3AFECC5AC4A9AF97FAC6720EDA2BB4A520B7DD24E9584DF578D5475AA2BB15599ED3A8CD530FC64BEF023F915CC3C317988E039332B4B8901345D493248063F46048364F0FFFD9FFFFBF6DF7E6CD6677FC5DB5D92A5EFCEDFBC7A7D7E16A7CBEC31499FDE9D1FF6DFFFF9BF9DFFDBBFFEE7FFF4F6FDE3E6C7D9D73ADF6F793E5232DDBD3B5FEDF7CF7F4C26BBE52ADE44BB579B64B9CD76D9F7FDAB65B699448FD9E4D7D7AF7F9FBC79338909897342EBECECED9F87749F6CE2E207F939CDD265FCBC3F44EBDBEC315EEFAAEF24655E503DBB8B36F1EE395AC6EFCEFFFD10A5372F77AB681E2D57AF668BFBF3B38B75129186CCE3F5F7F3B3284DB37DB427CDFCE3CB2E9EEFB759FA347F261FA2F5E2E53926F9BE47EB5D5C35FF8F26BB694F5EFF9AF764D214AC492D0FBB7DB6B124F8E6B78A3513B1B81383CF29EB08F3DE1326EF5FF25E170C7C777E19A54FD355B421FC7E3A3F132BFC63BADEE699011EBF624BFE72C6A5FF426141D093FFF7CBD9F4B0DE1FB6F1BB343EECB7D1FA97B3CF876FEB64791DBF2CB2FF88D377E961BD665B4ADA4AD2B80FE4D3E76DF61C6FF72F7FC6DFABF6DF4697D3E9F9D9842F3A11CBD2927CB1B26F041149DEFBDBE8C74D9C3EED57EFCE7F2560FE90FC881FEB0F1542BEA409990931FD7D479A1D7D5B371F269A6AA7D14DB4F99AC4CBEE2BBF7B8A5E9AA12E6B9F45FB7841A69DBEEC214BC4C22D36FD2EFA2B792A20283484E1DF9FF1BAC8B15B25CFE5547F45531F66F3029F648C3F6CB3CD9FD99A2D4B531F16D1F629DE930E6568967976D82E2D5A389B935990121A29D84476DA3CB0799B762259684BEAC662F9EA4E99B6B82E98730B6831A57B7971F7717A75713BBDBFFBB8631B0CE790988B648318FC76D2482AA5FC62F06023BC68B13E2517D3767BF9D5A32059ACB2E46312A597B3BA6E13115297BA5ED894BA3910704F6FBE5281152F934DB43E3FFBBC257F5526CAEFE767F36594B7FF6F36F3B49610210489383715B2C609E78D9CB081795DAA4F94372DB7077953B6074DBD3A2CBF1E7A985D716AD0EDBFEB2ADF6F0FDAAA6609E965A2A8E5CDEB30D5C42999FD91AA2653661A480B917BE14486A00043EA4A517E6854AAB1B974F565FAF50B2CE20A7C23268894285B4A520E7B434921803DCC24B1A53A73CABCBD9F57497C28668C6AE8D97CC0B837C9F8A033796C47BC2A4A0CFBDB4364D4D03A2BDED63287B6B95536C716136ACFD7ABCCA8C9342FDEE62A8BB6D1753EC7562F5607A31617F9F0D692646D4BF33C8EADFCC721DA9BF296E6C55B5B65D1B6B8CEE765F9D47AD8CABC2FCAF46ADB57AD7630ECFBB33BB45507B13A165B321877041F9BE035B92ECA2D75A164ECA3DAD209F18DFAB0C17C5DAA4FD4372DB7C77D53B67B5B9F7A40FAA8BEF4CB254E2EB9BCE16DCFD779B6F0B1A64513FD65967537EF95B3DEC162435D5A8055E73EF76B8BCC7AFA97057B970075FB1D85405DBC8F89C8D76D3A17FBF55490BAA707B2C6899E7BB01AF2BDB4AC5877D7957F4AF7BFFDAA2D97A42B620834A52E3332A122D94BA450E9D3C5836EADC3AE4BE402CD5C57E593D4BD32730BAB1FBE3E6C0184E7D274C06B19C4620F16B155B272B509E681842D9CD176256FA5158C97C73ADDA068ACF9624840B0D5A2882B7BA44A0229318FD2CFAB68333895C2B4BCEBAA6759FA316934594606CFC0D4E324B959217F51DE891417A7A791C837ED011D65A0F5559AB2E5581EA9D568462FB1429B6F234FAA427D0A120FB1D0DBBCBC8D6EB228E9B1FA3ECDC5DB68F675D18B6F4BCFF0305B6ABCD4F55C2C1B59D6B8699911FB2397CEA058A2A9449650E63412094896841194C77E57C5C08CF712A1A2F5AB95B5F64D5759EF727580F18E663268BDFB0E464D41B53D20E47900A0826491B70C917C4E905169DC261969AE900AB554CCE2D4C8C5F565945E15A6910E194C56041634871A134D365B40707A09682F930ECB0C3083C45C3897C31ACE78E10934154A572F38550D3536B418916C636AD1627D1A5B85E6B637B4FA52F8EA7A83EF2FA9268E83AA15A7B84A1D7B7912A83272712554857BF725E4EDE8C8935056F5F3FA117AB568CD5CA5B541A4B4B8D439616F019EBD5D7F8195C1A8F718A81A6DB751E5243C8E5E721CB92CC8B7A9D89A87B149D5AB1BD67897CA73AD174CFC803B367A69D5CA0688C5613BDD1688ABB8B473103BEC90A99DC3E1A4A6B4E276B1BAAAC2BDCBCEBC1D1D595D65553F91D5751B91C17DB96276555A3B341FC02453399038970FE07312E6279A139EA378765B19D3F01BE8449DA8EE009E4B6ABC226B485BD2C37B271D72D478F9DCAD48276178F492F0C8655B6E45B2350FC18A0C69C67522B240334E2FE15A31E32CCEF5EBCC3895A4329EFA8DBCB599F675A93EA77CDE0697D95E96EBC115AAA938C8C6E7D764B16DE1829FE74CF6D6DBE20C3650F1C1B6B1F8BA00D50D66D0343994F3D8E9C84853AED7BB390B8FE50853D81DEBE5841ADA6AA407D915E694F0D54CB50DCB4C0A3137B869CC6782EC6424A7AD80B05891180B07F53AC4753336E866BC82A1A1841733C496E28B96EC53805D65D12C9326411BD2AEAEA987F00BDDC959FCF6BCF1311317C1A13874828818D37697A3A692795C0E45EB55F9A40E28337BAD15840ED9CC59AEE8F14DDA639E84B98BE0B2B95F38080F419C5EAFC8C86A1CA761EE3167E9D382F474E5753DD2C77209328B45756B34E55D152F73CACD52F1D292FDCDE17CB09F8CB4EE9DAC6D436F8C548DE1BC60D26461B83BDF67DBF8639CC65B328D1F3F47FB7DBC25D8BCCB52BD1C689470BB15F5B8C2219379161DD45E4578DF84DD8A37BCFA5844787A761619703B5867AE593BB2747AC812973E335AC1B8CBAC260926248DCFD1D81CAF559EA0914FE19AB675B1229CBB8E55029DCFA268B932A3D401756E2FCB4CEC948D54E7CB0E54AEFF9C92BAB07DEC4526B381632F36F32A038B4EA63D2EE2F3C9458432755A8BD18A05AD8852830B0B81C49368719A093327F1C45D69B0914D4CC13E178D5CFBED578EBDDE34246B31B3FA3B3D8BEF788945C4ACFAAA8B1356D91B2D96415EAB723D8779A5ADB7076AAF214C0A9DA2AF7E482157E7598B4157FD624FBAC70301C20DAA03878491184E57C9946D0D222E66D98C10BCCA960B5B81C1960C2432CE2EA35D5CE18C597B9D1BE8A7D9ECAA870B6285C821ADECE9F055B411EAB63CC7D4300E51717922411A0F125EC90159C0BB9A503E87DB9AB4C3F014AB92156D463341E795909C5E6BDD86E9B696645EAA6F33B26CB99B0DD9CF1CAD0C484DE5C1AD471E7F61E7176446AAE6A1AB2149279BA5215995EBD990A4AD7732247B93EAA521A9AFBE7BC47ACA57C098D1486227DCE650B30D41B40C7525DED182994587B2D9BD1830F9105C2A23C0B667C00875DB1EC4AEF9065D972FD30A4339CFC2DC94E752E478347CB28391423B054FA22A19689994081925420EBF48123503AD2CFFB250AF5124EA763B4492E86FAE2D56F14D98B5B443200B6DB75B70A0F94E4D297E053C73CD9BB4889645180265A3EA4C50B3CA3445C3AA0CB64DABA081B28C49CFB5653D98ACB31CC800ECE141B9FCF6EE2A6E59EDD91565FA142075ABEDE5475DB28739ACAD3ABC4D68A4600D260CAE648519E5B87FCCCC1EBBCD635AB05734B2ED7780245BBC0F5C1AD5DF29381DE5A5BCA9A892AAAEEB6A6A1F5AAEABAB723DAFAB69EB9DD6D5BD2D36CA75B5BEFAEECC20CBA500B07E46160BEE97A88B07A6AC2F509352BD5F9E2E5AEE7877BA28DBCBD2BB38E0DC4BF5F9B16CA662D363D93FCD332E064FADE92E38B3CFB1394DC9CB6C165B9E38298AF43719F987E00DCEC2A1AF17C3B9C1F7D0C0AC888700CEDBC4D334C82D5C233128816D9CA09991C33AF06942F4C804961D7C4817CB8C78D1B1EC887100662F2609F0CE179ED9E2B5073E7C936901408BE099E91D708302CD2D4C83CC36C30F2F64E1AC3EAB0C7E6677713A547A9BBCE5EAB8670BDBAD4B70C6B55C5923DDBAA84E108F5D5429EEEFB65F9B701CB1E5F3D8D2B9B2D6EBE32EDEB55E1B7C8AA5BDFAE04DA796EA6BB45C67B5F101323BA890EAD9CE6A64962E1DD446357D17358A21FBDAADAD5349C63BB05BAE4B764AB66C4030F7FCC3D767EE5FCC5F74CD0F5358BA17EB623DDEA08A1232C95C3C8B4DC9EEBD384430442AFF4D8E8056DD471D74DAD1A55243EAA1C9C67854A454D9C32967B171715EEC76D932295A252E291E66F36241331570FA3E7D3CABE26848599BE635E77B9835CA2D9915C9339907A425EFCEDF483C5492A6AEA48634BFE0E2A9FF93449DCCA2781B1336446B526047E66592EEE52997A4CBE4395A6BFB2894441CAF2AE7CD845626A6CCE2E7387D246DD5B223402B68658244D1F1EBED84418F1A54149B9717771FA75717B7D3FBBB8F3B14587076085CCDAC31C71642BD1F7CA9BB6A36BA0A7F9539C4D45C316948218A149ECD2E80567A28C82CA13C41258C9813945D95C3C342704964015C61A80D25B3B0AE190A0BCC836C21AF302EF8B6A04B59C53C56AF1525C0ABF4A1A414431A8052B3746E573CC91DEC4336C9BCB06B05EC49EF0255D0CB54D8D02B9FA96A869E715A9AC34AF9DAA47C28BB1D54293A68369EC00B6956805270C1AB011D00097DA1131B71FD739DDA6157014AFBC827AB4E8537455B0197AEBF66038CEF2F99A34CC71AEF96740037CD433B182A4C5FDD11141975929AE3CFF4793119854865816068C6013308A89EDE3387A319A702B4A81729A843A4FE75B6D072B077086ABBDCA7287482DD11C842FCB50AA5843278BA4290857443C552161ABCEB230311A92CA42CD472C042F220C76D2C65A19653015AD4012C154F2F6040317987A10149B3DB660E4593179A5C6168C11B65E056ACED66515C9BD60BC739CC996416F49963131376B695A96AD277B36981C64E379FA526FCF16D4C174E49347C39EA45D43F82C0A1C2C15E310897DE29F0B45D36741D6241F8EDFC973AE604684CB7C0D3F99C54CF4398404D468192B6B9CBE98DC8EBB7F7E92C5EC7FBF8EC62B92F8ED34FA3DD327A94B76427A4096191E9E42B0A0C48278759BF38849F5031331D1468F4B74B1470B481BA13AC94DD341B55E87D342B5829B9E1D7866EC41BF8E6A6420EA91FE0F45817E96B1998C853F5A153B9A71AB221083F752C5F0C4586817D1B2C89F1C1CD45A26188736E7230C1885B118E46DD37197D24E43898F7CE13AC468CECA8D15DFB60F588D604F70FE87DED1BBCEA9EF6E474750262DFB2138E218D81401350BAC100773DC51C64EA50D49DED9E2BBB6936AAEA0B94E6085372244853BA39F003874AC670A08F9BCC1DFDA11793AC0EFFA8032E8B9B05ADEEA8EBFA6B36D0CA4BB856678194AC09D198AE41A7136CEAC0D741C1D69B5453F5B13F803989B4DEC185C5CD55293665105D5E7596F7485B5CB3EA5B06C0938FB6DA9AE655F0C95CE121910EEC14AF822FFE2DE9460422B17215924A1738971386F4D26C275835089BDE295AB5DC32966678800B2BB1AAE64E88D6747190970FCC8981018BD2C920A00E70D00938B180BEAC7A971B13EABC2FC80CB301C783D4581CF7053BEF5D7FA768ABEE05EBC7570CBFAA459CCA998D07A9643C8FD58DE5506736E0B884B8F75219A490759032979D6DBCA3CAA0B10EDC7574882ABA698664456C1B4B37A78223564DE9CFF010820A2A543A166190333468B48CAE0C0D2C047A27E21CE58AB10AC74360591914301742B4A2ABD3A495EFC2F83287AA107A9214760E690F9262D5F475B1C3A4EF6663AF0E9466798A54C3A6202DEA1C8EE6973CC022AD415177B0BEAB8B1DCA5EF70942CF2B1DBD4250BCE6A977C303D9DBBA7FDBB3035ED153637D17FE22AEA3EB1D6D480F20D30939247F5B30EB57B6693ADB23D29C44DA91412D0FC8668A03363072608871719905781531E33A8116D3C11E61C5F0C2AE157014DC3E50A5BBEB83E46F0B5D8A5B3E1DDC34D374B647A4395D2DEB5980B1F18F1E0C62EA20F921A8D98556D257E11E65C766EAC9D1DAD069A108DDC634B1094468CE0245C837A3B91CD027E53647D1F677393DD1F139C29959C6EE2365F6A444BCAD6F55DCDCCDF36FF10FE8F9D92FBBB80A65B9AB1E8110F194D39CC7FB7AA7E11B3F259B7881E08C95D029526342CE49A4D07074009D86D112196C0CA0D65411A5E4A680A1A6000A4DA025890616A41FA352AF156142F0121CEA93E07493FB2664D052A4277C2452C8093D8006139548A2823E22A1E81D5DF0A0DDA339CCB88F13B4A426DD11415B88BC8280B510276849ADB9202551C21E5B80FB8903834D34A1C45C23856831C95A6AC2B56B899CF21112B875CCC970A8754CB2969A781F43A22766D052E44ECA4AE414E76861A94A8FA841721539BF86B4AA3C440436093A5F04B7871EEB80DA833D540EC89F7A1B56963EC883B8C0D8553BDAF298C14F6242A3CFECB502438FBF3202F286EE5441BCC11E9B43A44BB17285250BF440186027944F2EC90642F95DDF9FC6E895BBD3A4097418D3A82106042B3E63328AE6C6031CD298B3AE15418D695704FB46B20095D46A5B9DA3A634AE267CDF0DF8426D5A3EDE2EC01B2427DE23B800CC238591AC25D8059BE468B1107AD42165F9E14683CAF2D8C1E29BAA28810C414D600FCC30714F5580C1C2A32ABD436C80540FA8003151396AA8456ECF16287027C0166D7C4FAE23AA089F5C4754CFAEA9C9817CC10C047BB6A0612801DE9885ACE47AA40D5A69D22D338A20A3344B277B7E69E228025CD394C07B6A1679109830C8D2C786B89299D8D22A04FA148C348C15A8418B927D6E00EC98699AF07518040D03DEC928D187BC932188BF17681DE50EE426B676B6E7A622EA1AC049D3186D5C470DA2B4719D543CA0681598AD65CE2963B201BC338FE1C675D4288A1BD755DDABA59681DB4436E2BE0D07CB150D290659B066F1C778FB531B814CEC9E890CD4071DEB88690A4B4E17340BEB90D28EB3E74F47761C1C9A492BC1F49C514771F2955B4AEE287C924EA001830CC1C8D1C72312C75B1991C846121B116E194DEA583700CB2C82E370FD330B8FC3F552ED6FB5A08E610EF70E7B1AB84A0E9A4461C1ED500DCFACEDDA6EB9048707019864104784EB933A9208D72575FC0AD3E0212DCD472C5802E2D831088321FA63D4813044170F7E2DDE22F685BC6A08B64A07A332E878A58793327E83378F3AC212165400996EDAF803D2EC50452090A61C726FDD3C72407B330EB9D40EC3C8E406BC38F49A3BF022A0F0FBD23677D75BE297709D1AF2AC2A2E5CF35E50F8CA35EF4F456FF36AAF4AB7CE807A7351C502E81630D278E11EB0071B84ABBFBC5505EF88BA988ED0AD5FD064D45E0F168C39D50561C14454DD9035BD136CC26937C922DC5A85258AEA6AAB38E791CBADA204C12F4A9A5C4A6D69E228EF4F62CE4CA3FB96B2B75177E3D2D42431A7DCE1AE047CE94FCB419BDD08F525C100DCD3FBD3033BD391BB6A061BA62656B5EA5E9BFFB669A7F63478D9CA804D7A64E96E66F933AA4F40156771F46C92EE14293BC4DE2AF2670F7B9148660D7498C89F2D8A3D16A38B31CA0E2977579C58A4DC5A09BCAF82DDD600586574B183EB98EE6A87F1311D23AAAD9F75912F724080D25CF7E0471EBFF0C1F7023BE1A6A3168A27F9358E9C02BD4E40D3DE4EE6CB55BC89AA0F6F2724CB327EDE1FA2F56DF618AF7775C26DF4FC9CA44FBBA664F5E56CFE1C2D73F7F33FCFCFCF7E6CD6E9EEDDF96ABF7FFE6332D915A477AF36C9729BEDB2EFFB57CB6C33891EB3C9AFAF5FFF3E79F366B229694C96DCF133F1F203AD699F6DA3A75848255593967E48B6BB3D5162D1B76847F83F7DDC48D9D8CB133CE7287FEB9AC0FB11F2D0D52719EB62F9DF748F25BD792996D8CBD5ABD9E2FE958A54C3CD0FA4839B38DD177D8D997157172704E6CB681D6DEB7B2BF4D2CA657E3E729AAD0F9B94FB240251458339F7C853521C88C4E9DD3D452F8DA46009F2293614B957E87992CA07EA73C40B9C174779220D73BB38C81E93EFC9B298C41F0E69713D0BAEB7C8FE29DD1146D419CFEA3FAA7D2C715E94739D5705250508521A507D8EB6E4E73EDE725FBFC6DB5D79A3ECB0CD2F3EC1E3688435A90226CDAF1A1E68423D7CA26F451CFCA49AB854B3AADE4EF83187B27C797E8CF6B10F2A4A0A232A86830A7ECCA12CE5954F1F549414C2A3E27E9B3C2569B4C6FAC6B71C92E1C6525327CFEBF4C6183034151A18FAE907948E8191A028DB95765FACB2E46312A597339E1CFBDD9EDAF502A6760D6C08E1D46E0E04C4D39BAF3CADE6EB115807CAD1EFC034682EAFB8D8059D88691649422D6C52984A72802195E4497E9534C813AA68127AB6091A38B81804231CFA82434BC60073B5CDC112B085C32958050A2F928D5AC0C818D80478517CA41A17136F11E0FE50E5B85757DF04EB02B91087535AC429DC302EC19CDE2C898AFB622CA9FA9B0D953C325411D99827443F5B1A28701F85A42330555498ECC052A14E521743A561A424899A24EF456B857059D855099E3A8945BDA894D834BF6AEA1921D4507FF6254E6789449FA604D0AA28A384D49ECD2D8A69176B6BC4F488691F4CB7643336DBA30E26A31DA64FC160ACE691A717012462E240420A7662DC41A498CF16B4B6841177AB240F4DC21163BE1F8101858F52178E9E32D8849397A7751D80D4C0A47856C10041AC8349EADBF9520E9193E7651C227E88DA728854215B5CBC21C643740A6A4D1137C6466462640C541B5E141FA326A60CAFDEB058336A6AB5C50210E4926C8F5224D0290A4B3A872CC9DB001C9E283F9BD39A670BC979517FB3F084BCCC32C101527C3902B5ADC260078A9B46417251DD0D7025B1D324F9AE113930A3767B80AA28D2C1BDFA00E429FCA12DFA32C5AF8A7A6208F4EBCF9EABC462C6888BC3E263CF960DC5B08B6D336278C4B00D865B32FD28865D8C3F3B0C9F8C0188DE83B1D6BF30255333102BAD19B0FA8E0C600C62B797709AF9048708B2DF5DACCB307B76ECA574891E7A5D1DA7B8C8D2A779567826059F0C9B60412F4957641D28516B3E1F8BA58823B52B63B1BAFBE56C2FD6688445559DEAAF06917AD8A4506ABDD53D12768640D5D0444F0F093B734417099BE6594D33A5C44A9A9463B0272B983B9B9423CC47980782799B26677DFFD9D5EAB484F929D89EDA8BFF56BB364A62267B6C1A025D1AA1B7110DCEC0D343C35BE1B466595A8405E14E4155DF6CDC87809178AA06A21E4B5DEC04F251288EDA4C6480295543533C8F6F549015CF6E549F7D7D25B0223B4625D6D6AE260FB7A336D746B87507B7B6766879B81D87D914066FA7609AE18114713DFA6997FF7DFFFDBFC80AB522F75F1DCC32A4254683E56D3BDD465C4C519E9E32DCA88A666827DE6D34FBBA1049159FACCE7981DD64BF1FBBCDD9B99DA88A136900EDD9FDECCBDDC7ABFBE9E2E2739FF82E0378CAE086037BAAA8B1212E2564A3C12F718AE45F901EFBFD08700045F733116D17D3ABBEC69D064314A406168D5233EA342CA134EA68C042E5A883F4D8EF4731EA8866EA647958871A765917B66E3D0BCA51AA864B1D88C3B352A9520DC557EF739B18AFD8A4D35FD1B4B6BAAD678BCBB2769C2DE36C39D2D9D2D2E29C3E8EE0B02A1FE84A39B8EDDF8109C005871FED8051B219553204C966B25E05C154260540125D5E4248A2899EA70E9855AC78EA8049EAD974E2A4CC683F8D52C6A89251CA9820698052A62593939332A3DD69EF6BECC4E5B45C8D76E6A801CC2A19B606A08E7099FF754A001C51773684239AE82DFFB16AD8A4DE1D7444B68CD6E5285B8C2A19658B1E4703942DADB933F3C7E17E1E9BD2F9D40F993F5F93FC8C98E7596C948EC9A108BC6CCBE75F2422F5B723D86B5672B413577355BF93FDDFA6B28168D79F7BF79CD54C73316C8E9D69AD39026AA6B9486C13A69D82A4AE8FCFE24FF3B9DC7740A819486D2D057CC86839F0EE4C99F033DD9CE9EDB68B62F43BBCEE52B5C2FDBE4B8918F83C7899365E3E38E6A33A22109C6FA28C40E808082D5F11A981E07C47C40208E3FD1033FB23A0F1E169791C87D99147099089355F2D8F53078C1813FE72B26BCC987EE2BCF46BD50CC3A469700A04BF08A32A3B097DD1D905D4C0C12FDA0DC072F486D408BFBEE1D7666094E331DF86615AD5666FFD1A7D98C53D42CDC2B58352D00C1F741B9049E8C7B5731B1156BD5C497148D8EF27E8E251A0A043174FD50A777B083933C7A41DFDCA9E059A54479374142B7C42FE62B7CB9649818EF7E9E319F3B3901175831F6673116A671FB6D94695E361116D9F6252F52253669B6787ED12D11F6A2E4BFDA7B5D4E9C67C98F08CE8C32F56F3C3D99C1B678F5925E3ECE963F6B4EC4CACF9E16C8D5ACC9EFE9D893F11F6B48C3001DF10D6070117079E2B83E35816E44E02204208FDDA97EB75586ED27E5706C35816349802FC54612CA70EFC5483F25D1EBDB13B62A27387E2F19870C33018E87AC84F4D60640C0C05BCA8CEFC937D7396877A6532F4A3399DAFC9622BBCE6567D3A02F5AD1A970E5437B5C85DD43668E35B2F2BD5632F1F730D41BE1A7F8178F5B567CD4987C4456BFEE443D292E26A56C70E4ACB6C484E41554D170F2E9167C10D0F45783EFD8E9743D4D9E902D99E6212FADCECF256A60389DCDF6F58C6A6016E6F782F70E71F933610077D5B7A6418E1F47D620E8E38E81A07EDED3BF844D3B3C5C189180157B3CB280DB066559132330414C5F151BBCAA259263991EBAF368ADBCDA8E843ED2AF9DC8DE2A54D7052BDF5F048F3AC4EF0958441657A9B8AABE1A38BEA1A1A1FDB13FC0D1F5D44BF391F5DF7997F46E552322F8C7651D232502F9AF2EDEB977C8F428EB25F7FEC6DE3344EAF5784C7F2E94C3EC56E2B76415AB25A484D14928E40976A51D58132E5DA708CDA948214D8750B10D7A69B4D370ECDB24F9449F4DFDD63300EECEF31A93D9B1F3CF28ED0FE1891D737F25A32D878E4F569B10DC3922206EEE23AD8321D2565B64C571447B1B992ED8B95A56171272ECCEFFAF3F293D9348B0E9275537CB3BECA22DF65E6126C760DE25426D67CB56E997CD48F4BB0E2D7F4902512C3CA8FD6ED92EC68F6BB1DBF2452F4E31198A7BAB9DA8DAB8736C1C138AD66B9A88C5601F4DD1DB096BE1B84A3BE9614B28A2E3E07B949015EE4E4D27CF7036AA9226D07D40941FA019E1FE3D2BCC7A21442F26094DF83F4023262D924FFB1806AA0DFFB77733632C47E9931CA9051868C32642832A43D177F2343EC178C6632C4CDB9AF1722FD5F4E1BC63277B12260BE8EC32C74D5C40C96BA3A02C7BCD82DDC3DF022F5C97EA1CA5C4B00D69762A2652BE1452B97E2D45279F12A255AF3135CC43E392C6499A6C82B5021CD9E9F20C9635AD8EAE766074B5BBE113FC5E2969DFE90833888F5280904FC9253102B92131550AF02599392F8C0FB15C8AA7C5258964F81AC4B51DAE09D0A6165B2720819AA6358B10AA2E16758B38EA261140D27251A5A5A880AA2E1B496A2C35826B2AF80F9D9A10A4A060B4465697C55CF3D62C66F45724956A7B850A262DA1158FF1AAE7760FA332D703A71D5D92B75E2E8C9E7471C2A6BCD6C62D9EA729C68E86C6D49E5B06C75392BE3C2D653D013CC1B8E7E020B2764A0255485F13163DF9F948EF9D2142B1581911492CC69CE9268BA12FC61F5379B331D3362DA11B32A4AC4431D4CC211A82D350A3AD05A4D039C945647EF9D0A7092456BB8AA6AB0894FB6549F7DB7DD18F849FB6E4C5ACF4A9741858BCE1D51D12F2A5AB2191854B8980CF6A838058321378566B3AB4580552544C670490917559B7745196031597EB75E49CAE4B8842350C62A1E77B480CCAB775E3D968C048DF13229C80207AC854B3B821563C147D7E5E2D0F8D8E212B1E0A3EBFAD09C8FA720E80B499216AE78EF350142C86C65881656AAE6BA94BC32A429B62B4390A4907404625FCDEF6ED66055035CD760949D905D45134358DB584D426AFFEB979AA38EEB97C172B43DDBBFE6A8A3ED6FC9D1535009B3E8904B194F7D805031500668497CA0EA22821AA09F6DEEC62D56F18DE481633E5BE913B061ECF723D0248A91EA408D54B53BE910CA456972D214DFEB0B74D8A52A688AB738C5BAC126F5AC9AEA5172D14BE32849A3D492BAAB47C945D7D98CD22968B945B4CC5F33F7139D3011031D87155440BC2C216AA5EAAB95528248319F8F4025E17CEDE2347451B99342AA59288BA12AC15B0A213530297D1F182DB9E7A22886C4BDB6CED495DC7311E0E6DC3B09F15DEAF5000B1505251341AE2AAD3558A0450B976427D731A262DA31487835D73BB9F4425BE026EB598E62766708F3561C3D4078D957D6E2858186AD4E4A60E06C6DEDB075C35627EDE0C0D653D01344E6E42EBAFCBCBCB7BF1D2164B6BF811656BA1FEB52F2FE064DB1DDDF00490A4947A020D4FCEE667FA36A80EBFE066527E43BA68921BCF1584D426AFFFB1B35471DF73706CBD1F6F6376A8E3AEE6F5872F4145442F1E2DE627508F18C2D40C6401DE045F1B1A265A0D76B8BEF369B1C754C4F8020976411A7E1297A91A8D18F3687A0E570C9F537732A372FB38CA7517E3902C5A6C24D578FDE92EADD1FBC2D06147EC7B2480A158A16AE874BF50FAA0B5542BFFB1E9005E3CFD69FFD8897701648971F7BD6F21460CEAFE78E003B0D80B5F91C6F0E30E7A7788D01760AE6CE65368B7D6F0783340C0C1DA41C363CC4D67C9AAEA2CD547ABD9E4F31B703A6D14DB421B379C993633E5BD05A1D965F0503A7FE6671550C3A11E270506596112995BF3826506A3E9BD3E21F7FE0E809491616187878DEE5243E7AA1DBF18E3876FBCFEDEA1FFC0689CB0B24D8D953B7C3AC98A7C7CD7554C846E98A63F3D5921291E8B7870820562758D2CB23975CAF3280204DB1A4282D655CD659ECC3F100359A624E913EBBCD516BBE5AACB3A019E51271013A4C607F2A01DDBA72DB0D635E64E5E535F3FD08D682A85EED602158D4EDB00AE455B16045F1897E1628A3A4855A9814CF2A2AF52DD2AF3E7BDEBE444E54053AF5C6687AB18226C5AF0A41F90BD508A99ECB0DECE64DA8FB4BAAD00F01E36928AE8B86BBD7DB58177215419EEA511C7C0F779140E17D0EE7CD6F4C14A18A26214005B5D902D551A705A8861A33503D34314045D0023994FF85377DA04A68A25F458D552454D22478FA5F1071122A340F72582DCC6138D5D18770872C587B4B54B24C52CF2ECBD214B2F7578EA69021F1D1141A4DA1D1145256329A4256D58CA6D0680AFDD4A6504B9B6BA52964BFB3E6620AB945F6B5B3851CEB303486DCA89B5B438EF4ADCC21B73ADCEC21B7BA6C0C22F71AEC2C22C7A8D4962691732DC63691730D564691732D5656915B2D366691470D567691473D968691474D869691470D96A6915B4D36B6915B0DE6C6911B7D53EBC891BAB579740AA766EE9E0E59323B78BFBD86D231383DA3288B4321217342BADD41BFDA9C1126B34B7C348D7E74396B8C1D343E8A9D58E5387571DBA4AEDFE5F52D3ABC9204A8137C8F4C56C32E9D99ABBE873A91A9388ED9BB93B81921874790C6116247A8ADDB3074841CDEA2B118A101E9B78BDD2E5B2645459292ABED9B87D97CBA78E06D2A95A85495135598984116D28F883926537F986787ED1218550CB33929F8A0D4439D280E60CE4FDA22AFC62EA2ED530CC566541D4C8662593209809E44A821AFEAA0679FF07EBF9D80183287190D4A34AF0D528360644C6E243C1C1ABF471C2391A2358C6C83CB5962486A9F2D72EC2203B538D2AC9B8F74A7D10BCA23705821E92C399391E6D2B317A16F8D82CBE9546471F1C973F4B1E6D982C0DEC8F60142AD7648ABF75192C65B310BB5DFAB2FF4F7AEFE900F6FF414135518AF774DB9529517DDDA3D474B5CDB1345BDCDFE4A1EE32D5948BFECF6F1E6559EE1D5FC7FACA7EBA4303EEA0CB7519A7C8F77FB45F61F3151DFBFBE7EF3EBF9D9C53A8976A468BCFE7E7EF663B34E777F2C0FBB7DB689D234DB175D7F77BEDAEF9FFF984C76458DBB579B64B9CD76D9F7FDAB65B699448FD984D0FA6DF2E6CD247EDC4CC4E21559232AAF7FAFA9EC768F6B76D899750CE46AE707EE3A9620578FF09FF1F7330570DF4EC4B26FE1299037E4DDF95FD176B98AB6E767B7D18F9B387DDAAF72BE9E9FDD1DD6EBE8DB9AE4F81EAD77B1548B4493F1D90B944576FEF1297D8C7FBC3BFF5F45D93FCE3EFDE38129FECBD9FD960CF51F67AFCFFEB76FABF2EB59CD7645D9ACC2E26708EDB707033AC41E1509D9F48F23E0DE43D6885422AB190C2758A1B76A4CC08503C16F3017AB2C218A30BD9CD584F7C926CE8543BC4C4A7BFE5F6C07B6A679BD0847B3783D747AF395028E90DAE46B0C86E89BDF895A24F29F24FF4D4DDF78C8614D6A3AE29876311970DE3C082952AA5D3A277952940D294CCA80115C4F53A8AB7F7F6D8B98FA191F05D137AF1DA8D2877B4CC7C518DE222336591ABF04027235EA6E820BBCC56724B560AC794386A71B08308B2D31BAEFC87272E345D87848E8069AD3A06097CB4C86A5291B58B6D40886681B09188640789325F1B656F2E605465D7D1DDD78CA03C2A3B876DE1964ABED5877D4C2B7188D815B170F8ADD1C213C61179028D4B615FC43629F7F86CDB15555F9A09ABF7915BE6E56922F4B2D857692AE88E06E687C4B3434CC5566E5B26C09EF4809C407E93B3B8C069A21101681B4532EADAA0A876CD12C4BA9AB951459679135F004E83AD16811BCE0B3E9A6A8F5C02036D2BE08E28E99B9A08821F03348D7DB68F675E1D6205230F00A4F18B8500B3C6E123B594EB6FAC778FA3527499D26603176F6930F1A72EFC16388B66B5CD6FAB63E85E7AE70730A1DA9DBB22A67659B17FF9954ED71CDD216E1E60720FFB50C4BF6745632C76AE1BAAC65ACE5227848C40AA8F0318956E4625995F310E5C54F5B2E96476CAE2260EBCBCB93ECBFA4964E01D9734C20D1C1DE5C8B33C40FF3FEA29C257B2AA2BC5581492796130EA0936F261000E78AB7F5CD520DB46E220B93ADD7F6958DE6F2F2434C171E6A8829AC60DF09E912B7E6F8C9E7AE1DB257B3FAD6A413A0CA8B9786269017FAEA9A5C86A42C1B16208AD960B6F3BFF0C6ADF138F3D763030EB4C7C0F9ABF1CB66EB30B016F75632D7AB68B9624DD1503BEA44BD2F48AB57965B9C36126171ED0194BC7140585020E71D782C3CE8CAA96A0C630D19CCCCA2D0C39D382F6DF1D9C805F78ADF38547C7CBA946076161D3C964F9559CB3A609CF6358B8351CF16B3066D0ABB8070694A964E0F59E2CF1246023A7284A110528C2C56A475D7715F82C44534784E7087E59AF7C460D67CBE93236F4E8809C234C97F923CF94F14A63D9E93A5E2504B1386DD8D75B2CF14B1E94D8C34D56EB0B73504106F77E38BD9417662261E99DFF0A031B67F1DE268AF40FBA80FF7CEB320C77BADA65111A0C7790E418F45984EA0B26C1BB387A5DCFAD4A9C3E9B84E1DE4F108C3A9434BB7307504DAED72B2BEAFE9C446E4B2A7D19985BA68E0034355EC15B775455538F03118A1ABED8E277401D87438E1CBB126A3C9DE610E391B78BA2D730E7B7BDD987DF8A31C463C648B0767A44CBC75090D3E546C21A19107790C25342DDD828416687770F85E7A19D36A7B1378A0C77877B3281B5848738F09FAEC4D1202A1EF8B306D72F1D70EEA5E07F0D08E19AED40FCF0105144FCB41B991F7E380AC78BC09202FFE0A1C905BF3C61B50027FC60DC98C071E011C488A77D8E0EC5884033033FA961A9C1D7D2C0DC88EBF878665B6B839A17ECE0C2B00BE588665461F24030AE06F8E01996D861F0D5C0239253DEC107E66BBBB0EA58BEB4E44B8FB9E2E1404DBDB89442335DC8908C2C49D90B8CE76A52178BA9C9CCB9297C7910AB7BDE9484358343B52110C3B172AE2255B671AFC7957673254367AD261EC22671A5C2035373AE2E949171A01B0CF2F4C9D28C82B322711C904C937A562BE8883C37F1AEE8D21E1550DB6BD68C9C0EB8E2AEA234EF5B75F3D56337D1DB3B4F5F5F9B8886CCC6D1F8712E61E34BBC956160E7B920A717199F9158BB21D8CB03E1A9C47302CDC53E31CED068A9D65C4515230F875CE614CE2F9C5F4EA68AEF7F677F2F5F80484C2E7688AA1AA7C509756B4511BB53E7B47F7B32F771FAFEEA78B8BCF2324F1CD55E38BEA79E9E0A0C4B62A4D4159950F0C4AF57ACD1C944C4C4ED1F3F0309B17FA702A60F37DFA78F667B6869C1479DCCB57CCD7DBC37A9F3CAF9325A9F9DDF91BA95F0D29C86F5250E3137882FF2411249323CE638427D19A14D8EDB7512247F9FFBC4DD265F21CADA56E08399159A772C64E28713165163FC70421E91EEA71808A297D4114E858C2C565554383C691BDBCB8FB38BDBAB89DDEDF7DDCA1F0106D82623C9B8FC300071614D8D29A6B171A424CD05EC0513A1BD960CBA8D8E0DC92A5CCA83E9963C20A5CA10405100D104502BA09638E034BECE13576291B667324425F0B8241741616849A8F272310608E6AEB84378DBA400375FA1338C0275E9B419436088A5164BE9AE341306A0B42F45B2B684022D6A0430384A8B14202C84CDBDA3A0040D54EE6090B301E9CD3D0A91020D4C6E91821A9153CD88D8FE2E50C6344A8F8EB527107E06037561884C0216504692FECC734129F26D88305A229A5B50217BCDFE8D0A94235D9A32660DDBD48151D66028B95FE90D29F60B183C8114896FAB124F92529A5641176571BC94213ECF102D194D2DA932CC80359AAD98D9C62B2874DC0BA3B008EE2F9316C8CC5ADF462709B8F43020B1CFA051D2CEC95B3563162F0CA5A0738E10E229560C1826B34030C9E5E2A865748B1C24C53AF001826A115B428024DA09041438858810661B543AD5D38C4E8D112539CC88751EA217533597A430816C1081D2834684CDB085156DC2D48747E122B5356ECCB7D5ABE1F7A76B12C1F219B46BB65F4286F35E5EFB705C3E7906DDF6095766EBDE88014D270E9050F3D982B7668E8D140919EB71D8254E9D9FCED6F6D6DB748EA57C8F0E15E4A518385916A46570812C30EAE986425789A9A05BC3009AD804515F506193924CC0D98F7CE1F59C8A0B4D7B8AE3D7F7AD48573FBF586B35E84921D74FA9648CC451C837D46E0DA4E3196DCF763DE6B44C307A1C3A3BE24D9D6AEA3A6D66E0E235457ABEAE3089ADD47F92E567D26817EB63C95006C40B6BFFB88854442874A792BD6F27C82D506A4BAE2AE21A2131D41E1D1BDE0E80B167662A3774854C7DA091ECA0B270FF3ECB05DC6F8C115FE0C7D796CA5FED6C9D289BF9104B4A34E69E7EC0B14FB081D5EFCEA9339A01437B05CEAED03538B68FB148B61B798E5923C94F0189E24A2AC0616BDD2DF2E9EF06A3B5983D35BAF045270F03176ED2DDD91AD16DECC7773C56521EF82ADB5919852F8E8E0C11B5C9061576B9F871E4AEBCBFCBC9D83917ACCE7EEEC2D5075A49496CFDF692AEF1C34E6E7EFC241C6E938DFE0E1E27AEAAE57B08887FBF5ABE980E7FBFB5A49F773CADF76158D56DB032C7402242C2E7A121DBD21C34E681C1934E4008C6DC18209B4D340A2F8785A709038AAAD138EDAD6071A74472BC322C2F660EFD09161B7A9DCB3A060EFBA32974775BE37A72BC12DF94CC0A831589B5ABEA2EA70AB1C0E55E3765BD912F348D53DC24EE39EB3144C270FB7BE6FC707ACBF0B3558C7837BD0DE913F06A035E1EBB846345F4F065248A0BE63C551E1FECD87A421F4F0619BD123C40F8BEC01887315FC784C510747A3F8C01378FDEA954C632027626426BA54D7E936937243A0FF1D4B23C80C767FD2022FFD6E4B36C1D2749091C3B2D5AA887E3E39E0608F6FA083A98CE8DE0A7CD4357612E123D79757D972113DEB74D10C0F74175C27717571728E4B381D1D8533D7A5DA8E4E6DE691FAF20D6C0644CA739B6C5C407A68B3FCD8CDB1081754053CF6293F77870EAEE2158D5641A5AAB71B8D56C54434C5951CDBB1D66CF4F3C963EB0E7908101D65E55327ADE24B5D7370847D38A44BCC5FF429DD91D69D9F5D3C3D6DE3A7681FD3B89D978764BDFF94D2DF77C93A7A4C963531FAFDD36E9A6D9EB31D17F4F373B42575EDE36D8E8179BC8948B397BB77E717EB75F63F3F6DCAB1270DF82BDEEE92FC5AF37CB922B9DE9D3F7E135DE99414EF6A1323B7678FE4E7A7548A473AD15193227F7AD3CCDF8E121DBAE503520D452D092E0AA24BC3DE4EEAA132C5C297E7B2952316462C94CAE027C182117B9A60C2439499E191BD5865C9C7244A2F6735C97DB2E170FD791B2F935DD1EF7F312677BD0842AE78417D7AF395CE39527613AD117A6F7ECFB919E583F1372F680C51848ED0E8041A4394A89ED030E210DDAF1CA25845DF0AF1B041B890D2FE73B178A6966B64AA26FA773DD1591231A18A35F4DEBC3621989FE9815EEB76ED7731CBC59E578FB0C2A6971D5A8728E947B4FEAC681DA2F2F143AB99762E03FD0F51F3849F783C45FF69B7D846CBD5DD2A89378E346D867088E2781C426E088728A37C86D08837F57309839451E29B1601EC0DEE3D88A03E3A4ACFC53D97372BDCB49B670B533300B2255E66599BD395427288327784E4494372883AC40F92E6FCA96EC80E5691F09727834C319EA4E52C6B653D2D87E7F1B70BC9D2729E152BCC9A66F1C6A27147F337818825D814FF96A0C5ADE138582532C2F114E1385805E20347B3551A171C625423F211C440146759CA042CFABECE229BD9214C2DDBE2C12797009B51DC8FB07180CD4F2996C3C3C688F5F569F7214AF8D0934A88007BCC7655F544663867B2D0EB00FB709C84B2F52198DB8C56281FA2421A513EA2DC0EE543D49FED6BBAE669E721EABAC0138121D7868BB6E1F51025EE50793DC479EFCC6BAB8545FD66F310673EF376F171AC2B8E5D0D8A833E4411340EBAE7A00F51161EDDA09B3BD447012B6EEFB0048F6173A70D0795DDEE8E3D9A46C93DA2291C9A7E429560A53AEB9737072BC3D990087DAB4E90A2F880AD3749AFAD75E961FACE103658B93E226C20081BACAC3F72847537A2A34A020D419660FF86605B26DBA8287EEE71FF09C5B71193A8F81DA240745718F0BE0A4BCF7F27F76BB2D8B6792A9F0EDD1065DA3874C5D00D512CB56F780FF908D974617724A4C7655DB8F9D7C2F1CD211FB01A31101603439492BE1830E5D1D5EC324A076BC15D65D12C0BB98DD03DDB8728A04E80ED439409C3647BD9EA51CA70DE13E6158823709EC4E9F52A5AAE583F7D80E82D59FAB4204D5D195FDD7780D3283D47380584D3CFA6154CF5E6E27AB8F23B078DE376E15DA319ED0A865F6E11F8CFA2835B6B2AC7387B6AC3F6CE7B1118F1D968DAE10D607DD1960DC8D2E9214BBCBACFC848FBDE3385FD650E37A186A7C1C609354EA8239E50C3D3E1039C5046C3B25811945CC7A3E96039339F7C6413B313EE219FF24678CA28A6215E72EAC94B5631AD709757153782CA2C61728C66C03839C6C9814C8E51A5BBB19189AB3040EDDB4E5C88459C0264DBB807CD727F78E2FD94B83F3CF91180FBA64F34543152062920DA081059287681EA11BE0232CF3CDF01B1C5C71045D8888FEEF0314421EB8B0FC37828CC03EF4394B263C0AF70B263B001BFD071645F940F3388C263E2FE3BE4D14620E9BBB0E2A6F41015E338A5C7293D4E69744A0FD196697FB158436390464C705C57AE0C96665B7E8C82E94354338367FA1005811FD34D977D95F81DA42C684121956E01816A1BD064583F44897022AC1FA25CF065BD61C8E7E530E3198F2BA271458430273AE4A80E3B86F93464B6CC432C880492FEC1DB97C38C963DCEE471268F33599CC943B4583A7883A144C4202D96F0685EACE21BE7FD425880088D6CE5BD816A0C87A8ABC631E4C7708852CA6B0CCD8E43464BA2340729A4CAA68744234FB10D3056EC1EA23C1930BB8738F57DD86D78103A2E171F03B55198F60705A54CB6156432DC1FA4343819EE0F5238F872DFD4295D2D170729205A584097FB0102D596F6036AD60F513A9C08EB87281A7C596F1EC078B13A0C522ED48D0FEBAB2B02DD84A49A07DF61E85906DF9967C6C16C80D2372FB3ACCD3946F13344E136E2E778F0334409ED871F23FE5C66B37888F73289D67A9AAEA2CDD47927661ADD441B3295968EC55787E557C71BE082B3CEB270FDB2AD5B712ED6981B09F16C977D69614FC5F26EB2B465695D9E8B35675DDAFCD02F5CDE7C670D285FC804E696964369FE853A0702D5DB711E1418A1E650BA7A10C38D82F8189465D8211FE4F29E3ACBB2F242DE5260D158D4A1B6744BDD313CC36CD41DA3EE1875C7A83B46DDD1B7EE18DEA26CD41DA3EE1875C7A83B46DDE12EFBEF9E0E59925F741DA0DF69112504010177AB6E734845862EBEDF7EB57011B7B9DF4B477078ABBF7104F9111C9E0DE63782307BDE93E6ED5F487BF6519236C61621F821D9EEF6447545DF22D22FBE6565A979BC07ADC332B56CE33C5E7F7FC527B31D3E5B94CCBBBCB8FB38BDBAB89DDEDF7D948022D6C6589252554C1A54CFF4E2E6E2F6EBA7F7536D250D16A53A9A24A88ABBAB8B3B52C39DBE1B95452BF7A14A003B70F565FAF58B967663B548D49B2488FEE7AB4FEFBF4CAF3E99D5505B367025752A5ACFEC6271FBE542CFA8EA3977B4363103C838218FA64E6A774895D114A896F9C5DD6702632D7966512155C0A44155CCEE09BC169FEEAE8CF946CD47947134878A7334930932F03AF51516D820D3E8F3F5D5BD7127A98D8A7692E65075926632E9245EA7BEC2A293FFF872B130E96463434B353549502DFFFEE5E2BF1379642053194F07C44125EAF37443E0B3EFC0C13531C9485D4C0E4D6DC2E25BAA4E4887EABBBABF20338EE8275336D2C710E0EE31C948F7981C9ADAF848CD407D6206A8C6C515D1B9D7EF4D7BC8B913A40AB954A8B69BFB8B4FA658611D0F9012A689881A9E7E2146C5C567A32E95FE15B03F6512D6993255DF13EAC4807A4213919E108EE5A242AF566A4797AC54EA1450A55C7C995F4CF50AA55E4FCB38AB12407C5D4C3F7ED22B796EBD0D0099498551FCBE84964137589710341A3411198D7C28C87431D31185E705D60F4512AA1B16577A33AFF026430677F91DB4B4EF67EF0DA65EBD4C8238D4A4810CFAF8E5FED3EC8B8128A93089A24A4847C4A52978D94588C2B887B321755B2D5BCA56CAF664F11936260DBA35BBCF797D753F5DE4924EE621970CDB936C0EA1B68BDD2E5B2651BE6A04D65F0FB379C12EB29A62328A2BB1261747BBE8CBE3D99FD91A5AD291DAB8AF13BC2CB4F82C8AF30942CF267CD70CBA5DA3811BF51DD4752427DE05118F45F39B8F47D0F9724D4A86B2691530E45226C58873ABDF72B8AB4F8AEE5A31CA678C67F3669DAC1860265B1BA32B2EE38B92CD47EFEED2A526E90835DBE4EE42D9F0464B6BDBA2D5CC57458705CBB22849BF7977973E493017BD01729FD1BC411ACF4F05D0BF514E09B5D7C29E05ECEA9BE91B5D8FCB8CD094D08057F003340046BC09206320223AAF44087428B882676E0F1FDDB081755D30DDA3CE0C042178090D4204274A8310C41503B20622A273E9D8B3A6F6B598B145911BEF90E8E9297AD27C3C1A56084F37CF79B78CCC0C657EBC53A003A7E89290A2668CE472AAB982BB921C4C24EA2533E0079E59D9114884B09F8F8B0D0A9302C8D58AE0B46398B74C50F418CED8922468BDDB8244D10C3598B53D45D98D0814DFC99BF3BE5B9911EA0278B760376FD12B3149CD1CC9355D730677397B9A514A7E20395BC145275DE79E3D532DA8E08C780700A77BD17EEE7B6FCB2AF61DA2B9665985E6552E9F856D807A014D3FEB96D0C0CA2AECB28AEB9662E0C17C6D75BDDD51A751C3E6550CA17976D82E63D07F806455F810F88D8CD283507F5374197429B3A5EB94F0DD5F44DBA7786FD4FD2AAB42E2CBED871BDE53E7B9E830733A3090CA8332AA549DB40B54E939E6BB9E0526B8715D1A9732C3C887A4CC1F5464F5EB4FA25D34F225C1B9DB6387931F2A80EF58A904A19CAD7990BB507F5C871410C0B2B6D6F91E46BED8D8D5773DCFD65AB7997DE7A6CBC5C7E0DD55F8C0B0ACAD75DBD69BE8D07D76678DD9EB52D83F9A128177F7500A206BE10CAD3109B7923425DADE3CED9239CD2174D56E2A90AB0D2648473DCAA2CDD7001E0162FDE56712081B77FB6D94A4FB870FDB8C7AFE1E16D94379D601F21118960DEF3560CF6B9485A0F3183E2B87FC7F6FD42B068DBDECBA4E6AAB6F6C6838BC7B522E35B085C35A35B4E9E73EC6907DB050034FFE800DB4BBEE482B3CE4A1C34425A6548784DC1C65E5136F73B6F7205890BC1A6F197B9E93BACAA0B39ABDF49F7DCC4ACF0134B77ADA08274EEB69433F77C887B7939206BD6744D3DE4ECA3369D507F2739F6DA3A738BFD2B4DE155FDF4EFE3C90D29BB8FC358B77C95343E22DA199C6FCBD269AE753FA3DFBBCCD9EE36DD17EB64575963AB9BE8416EFA3C7681F5D6CF7C9F768B927C9CB78B74B7245F8355A1F4896F79B6FF1E3A7F4FEB07F3EEC4997E3CDB7F50BCB8CB71375FD6F27529BDFDE3FE7BF7621BA409A99E49713EFD3FC22DB236DF787F282DAC480447EFFEB634CBE97634984D13E7E7AA194EEB2D49050C5BE59FC1CA78F71BA5FC49BE73521B6BB4FE7D15FB14BDBBEECE29BF8295ABE90EF7F258FF11627A21F089EED6F6749F4B48D36BB8A46539EFC24187EDCFCF8D7FF0F84B00B679CE40300, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201506250222595_delete_constraint', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7DDB8E1C3993DEBD01BF43A3AFECC5AC4A9AF97FAC6720EDA2BB4AA316FAA49D2A357E5F3552D5A9AEC45665B6EB309E86E127F3851FC9AF60E689C94304CF9959594A0CA0E94A924132F83122182483FFEFFFFCDFF7FFF6D7667DF667BCDD2559FAE1FCDD9BB7E76771BACC9E92F4F9C3F961FFFD9FFFDBF9BFFDEB7FFE4FEF3F3E6DFE3A7BA8F3FD92E72325D3DD87F3D57EFFF2DB64B25BAEE24DB47BB34996DB6C977DDFBF59669B49F4944D7E7EFBF6D7C9BB779398903827B4CECEDEFF7148F7C9262E7E909FD32C5DC62FFB43B4BECD9EE2F5AEFA4E52E605D5B3BB6813EF5EA265FCE1FCDF0F517AF37AB78AE6D172F566B6B83F3FBB58271169C83C5E7F3F3F8BD234DB477BD2CCDFBEEEE2F97E9BA5CFF317F2215A2F5E5F6292EF7BB4DEC555F37F6BB29BF6E4EDCF794F264DC19AD4F2B0DB671B4B82EF7EA95833118B3B31F89CB28E30EF2361F2FE35EF75C1C00FE79751FA3C5D451BC2EFE7F333B1C2DFA6EB6D9E19E0F11BB6E44F675CFA4F1416043DF97F3F9D4D0FEBFD611B7F48E3C37E1BAD7F3AFB72F8B64E96D7F1EB22FB8F38FD901ED66BB6A5A4AD248DFB403E7DD9662FF176FFFA47FCBD6AFF6D74399D9E9F4DF8A213B12C2DC9172BFB461091E4BDBF8DFEBA89D3E7FDEAC3F9CF04CCBF277FC54FF5870A215FD384CC8498FEBE23CD8EBEAD9B0F134DB5D3E826DA3C24F1B2FBCAEF9EA3D766A8CBDA67D13E5E9069A72F7BC812B1708B4DBF8BFE4C9E0B080A0D61F8F747BC2E72EC56C94B39D5DFD0D4C7D9BCC02719E3DFB7D9E68F6CCD96A5A98F8B68FB1CEF49873234CB3C3B6C97162D9CCDC92C48098D146C223B6D1ED9BC4D3B912CB4257563B17C75A74C5B5C17CCB905B498D2BDBCB8FB34BDBAB89DDEDF7DDAB10D867348CC45B2410C7E3F692495527E3178B0115EB4589F928B69BBBDFCEA51902C5659F22989D2CB595DB78908A94B5D2F6C4ADD1C08B8A7370F5460C5CB6413ADCFCFBE6CC95F9589F2EBF9D97C19E5EDFF9BCD3CAD2544084122CE4D85AC71C27923276C605E97EA13E54DCBED41DE94ED4153AF0ECB87430FB32B4E0DBAFD775DE5FBED415BD52C21BD4C14B5BC7B1BA69A3825B33F52D564CA4C036921722F9CC8101460485D29CA0F8D4A353697AEBE4E1FBEC222AEC03762824889B2A524E5B037941402D8C34C125BAA33A7CCDBFB6595C48762C6A8869ECD078C7B938C0F3A93C776C4ABA2C4B0BF3D44460DADB3E26D2D73689B5B65736C31A1F672BDCA8C9A4CF3E26DAEB2681B5DE7736CF56275306A71910F6F2D49D6B634CFE3D8CA7F1CA2BD296F695EBCB555166D8BEB7C5E964FAD87ADCCFBA24CAFB67DD56A07C3BE3FBB435B7510AB63B125837147F0B1095E93EBA2DC52174AC63EAA2D9D10DFA80F1BCCD7A5FA447DD3727BDC3765BBB7F5A907A48FEA4BBF5CE2E492CB1BDEF67C9D670B1F6B5A34D15F675977F35E39EB1D2C36D4A5055875EE73BFB6C8ACA77F59B0770950B7DF5108D4C5FB98887CDDA673B15F4F05A97B7A206B9CE8A507AB21DF4BCB8A75775DF9E774FFCBCFDA7249BA22864053EA3223132A92BD440A953E5D3CEAD63AECBA442ED0CC75553E49DD2B33B7B0FAE1EBC31640782E4D07BC96412CF660115B252B579B601E48D8C2196D57F2565AC17879ACD30D8AC69A2F8604045B2D8AB8B247AA249012F328FDB28A368353294CCBBBAE7A96A59F9246936564F00C4C3D4E929B15F217E59D4871717A1A897CD31ED051065A5FA5295B8EE5915A8D66F4122BB4F936F2A42AD4A720F1100BBDCDCBDBE8268B921EABEFD35CBC8D660F8B5E7C5B7A8687D952E3A5AEE762D9C8B2C64DCB8CD81FB97406C5124D25B28432A7914840B2248CA03CF6BB2A0666BC970815AD5FADACB56FBACA7A97AB038C77349341EBDD77306A0AAAED0121CF230015248BBC6588E473828C4AE336C948738554A8A56216A7462EAE2FA3F4AA308D74C860B222B0A039D49868B2D90282D34B407B99745866801924E6C2B91CD670C60B4FA0A950BA7AC1A96AA8B1A1C588641B538B16EBD3D82A34B7BDA1D597C257D71B7C7F4935711C54AD38C555EAD8CB934095918B2BA12ADCBB2F216F47479E84B2AA1FD78FD0AB456BE62AAD0D22A5C5A5CE097B0BF0ECEDFA0BAC0C46BDC740D568BB8D2A27E171F492E3C86541BE4DC5D63C8C4DAA5EDDB0C6BB549E6BBD60E207DCB1D14BAB5636402C0EDBE9B6405CC5A59D83D861874CED1C0E2735A515B78BD55515EE5D76E6EDE8C8EA2AABFA81ACAEDB880CEEEB15B3ABD2DAA1F9002699CA81C4B97C009F93303FD19CF01CC5B38734C93C9C60D259418DB3CCDD18739229472F508E5C44E4C6185BF3108CB190D65027331FB486F482A2156BC8E278BCCE1A52492A1B8BC269F7B629D7EB31F9858765C014769F42A59F6F6886410F4223CC81BDAB996A4784D977117383FB377C2648D722396D4544638C01ADAE131FF98DA9A6C56006493CC0B9029B3176FB620A8686724233436C29BE68C93E05D85516CD326912B421EDEA9A7AB809DD9D9CC52FB21AEFF8BA080EC5FE2F22624CDB5D8E9A4AE6713914AD57E5933AA0CCEC656F081DB299B35CD1E39BB4C73C09F365C66573D56710AB8C38BD5E9191D5F830C25C29244B9905E9E9CAEBA6928FE51264168BEAD668CA3BCDE2C69EB199C075A93EE76E69FDDACFDC9EACE638D5541C04FF0FC962DB42740DF713588E26B13801D486B3ABC9C91CB5B2343969C9FE66402EE69E8DECCD3BD9CE0CED9DAF1AC3F990A419C27077BECFB6F1A7388DB744813D7D89F6FB784BA4F25D96EA3560637EB65B518F6B7BA2C666D141ED93839DF7EC7EB0E1FDBB22CCD08BB3B284DBC1BA42CDDA91A5D34396B8F499B1878CBBCCDA50C1CC03E3C31C36673C95C738E4A3A0A66D5DAC08E7AE639529C36751B45C9951EA803AB7D79A44EC948D54E7CB0E54AEFF9892BAB0FAED4526B3FD612F36F32A038B4EA63D2EE2F3D9458432755A8BD18A05AD88528353F381C493686A9A093327F1C49DABB7914D4CC13E975C5CFBED575EBD5E77230B30B3FA3B3D10EE789342C4ACFABE851356D96B15969146AB723DC71AA5ADB7076AAF71340A9DA2AF7E48713FE7598B913FFD0220BA07A50062DEA9A3578491184EF799946D0D222E66D98C10BCCA960B5B81C1960C2432CE2EA35D5CE18C597B9D1BE8A7D9ECAA875B4A85C821ADECE9E852B411EAB63C05D4300E51717922411A0F125EC90159C00B83503E872B83B4C3F014AB92156D463341A77D909C5E6BDD86E9B696645EAA6F33B26CB99B0DD9CF1CAD0C484DE5C1AD471E7F61E7176446AAE6A1AB2149279BA5215995EBD990A4AD7732247B93EAA521A9AFBE7BC47ACA57C098D1486227DCE650B38D83B30C752FDBD182994587B2D9BD1830F9105C2AC390B667C00875DB1E63AEF906DDD92ED30A4339CFC25CD7E652E4A0287CB28391423B054FA22A19689994081925420EBF70063503AD2CFFB250AFA10CEA763B8433E86FAE2D56F14D98B5B44334056DB75B70A0F94E4D2988023C73CD9BB48896C55D7865A3EA4C50B3CA3445C3AA0CB64DABA081B28C49CFB5653D98ACB31CC800ECE141B9FCF6EE2A6E59EDD91565FA142075ABEDE5475DB28739ACAD3ABC4D68A4600D260CAE648519E5B87FCCCC1EBBCD635AB05734B2ED7780245BBC0F5C1AD5DF29381DE5A5BCA9A892AAAEEB6A6A1F5AAEABAB723DAFAB69EB9DD6D5BD2D36CA75B5BEFAEECC20CBA500B07E46160BEE57908B578EACAF1F9352BD5F3D2E5AEE78F3B828DBCBD2BB38DADF4BF5F98504A662D30B093FCC5B2206EF7DE9AE07B36F82394DC9CB6C165B9E38298AF43719F9D7C80DCEC2A14FE8C2B9C147B9C0AC888700CEDB047534C82D5CA03228816D9CA09991C33AF06942F4C804961D7CCD15CB8C78D1B1EC887100666FDEEC31CD6CF1E4001F43C8B400A045F0CC3492804181E6BE8E41669BE18717B270569F55063FB3BB381D2A3D90DD7275DCDB79EDD62538E35AAEAC916E5D542788C72EAA14F777DBAF4D388ED8F2796CE95C59EBF571574E5BAF0D3EC5D25E7DF0A6534BF5355AAEB3DAF8288D1D5448F56C6735324B970E6AA39ABE8B1AC5B871EDD6D6A924E31DD82DD7253B255B3620987BB2E1EB33F72FE6CF8AE687292CDD8B75B11E6F50450999642E9EC5A664F75E1C22182295FF264740ABEEA30E3AEDE852A921F5D864633C2A52AAECE194B3D8B8382F76BB6C9914AD1297148FB379B1A0990A38FD983E9D551164A4AC4DF39AF33DCC1AE596CC8AE485CC03D2920FE7EF241E2A49535752439A5F70F1D4FF49A24E6651BC8D091BA23529B023F33249F7F2944BD265F212ADB57D144A228E5795F366422B135366F14B9C3E91B66AD911A015B43241A2E8F8F57EC2A0470D2A8ACDCB8BBB4FD3AB8BDBE9FDDDA71D0A2C383B04AE66D698630BA1DE0FBED45D351B5D85BFCA1C626AAE9834A410450ACF661740931FB947250CFEE23D23BB2A878785E092C802B8C2501B4A66615D3314169807D9425E615CF06D4197B28A79315D2B4A80A7D1434929E865F68674B3746E573CC91DEC4336C9BCB06B05EC49EF0255D0F348D8D02BDF4A6A869E715A9AC34AF9E4A17C28BB1D54293A68369EC0335D56805270C1AB011D00097D26121B71FD9B91DA6157014AFBD224AB4E85872D5B0197AEBF66038CEF2F99A34CC71AEF96740037CD6B2F182A4C9F7E11141975929AE3CFF48D2B19854865816068C6013308A8DE7F3387A319A702B4A81729A843A4FE89B0D072B077086ABBDCA7287482DD11C842FCAD07A5843278F84190857443C552161A3C2E230311A92CA42CD472C042F220C76D2C65A19653015AD485CF0379B8077551E85EF1F18087BE16F3C5C63B91FFEFEFD359BC8EF7F1D9C5725F1CA49C46BB65F4243BE327A41D211C29EA3E74273E35433604E1A90C1E8D81C82C92748324E1608DB9E4340B3CCF4D0C26F4752B42D3A4EF66038FBEDF600E4013FEF836A61B51893CA1A01063BA8758385438588E064F36740A3C6D970D9DB8D84320B6924FCD9C008DE9007870AC700C119AC0E10D1A9A7330E670D33CD46382E640405376D36C5CA148F956F85272C3AF0DDDCA3303AB0F7DF9C86DCC95B40766E621CDEFD4C243866708C69D3A5E2D061BC3E0B50D82C418D8E642CF308C3737119880BBAD883FA3EE9B8C3E12561BCC7BE78953234676D4E8AEFD8C7A446B02D807F430F60D5E754F7B722C3A01B16FD909C749C640A0099ADC6080BB82610E3275B8E5CE768895DD341B55F525417384293912A429DD1C6A81C3016338D0C706E68EB7D0CB3756075CD44185458778ABBBC6BAFE9A0DB4F2A2A9D57917256B4234A66BD0E9049B3AB87350B0F526D5547DEC0F604E22AD777061B161558A4D192896579DE55DC91657AAFA9601F0E4238AB6A679157C325778C86D7E3BC5ABE08B7F4BBA1181483C5885A4D20587E58421BD18DA09560D4283778A562DB78CA5191EC4C14AACAAB913A2355D1C56E5834F6260C022513208A82FF177024E2C682DABDEE5C6843AD30A32C36CC0F1402C16475AC1CE7BD7DF29DAAABBAFFAF115438C6A11A7F25EE3811819CF63752B5749D5CA610AC5DEC3BD97CA407CAC8394B9D06BE31D55064675E0AEA34354D14D33242BE2B758BA39151CB16A4A7F868710384FA1D2B1287A9CA14123427465686061BE3B11E728578C55381EE6C9CAA080B910A2155D9D98AC7C17C617165485D0D392B073487B5812ABA6AFCB0B267D371B7B753030CB93921A36056951E77034BFC80016690D8ABAC3E35D5D5E50F6BA4F107A5E5BE81582E25546BD1B1EC8DED61DD39E1DF08A9E1AEBBBF0974D1D5DEF68437A00994EC821F9DB8259BFB24DD3D91E91E624D28E0C6A79D031531CB0C17F03438C8B3D2CC0AB888BD609B4980EF6082B861776AD8023BDF6812ADD152B247F5BE8525CA8EAE03695A6B33D22CDE9FA54CF028C8DF1F368103706C90F41CD2E7C90BE0AF7483236534F8E48864E0B457832A6894DB03D731628C29A19CDE5803E29B7398AB6BFCBE9898ECF11CECC323E1D29B32725E26D7D6FE2E66E9E7F8BFF829E58FDBA8BAB708DBBEAA103114F39CD79BCAF771ABEF153B2898907CE58099D223526AC9A440A0DB906D069182D91C1C6006A4D1535496E0A184E09A0D0041392686081E8312AF55A1126042FC1A13E094E37B96F42062D457AC24722859CD00368309177242AE843098ADED1050FDA3D9AC38CFB38414B6AD20560B48548A47FAC8538414B6AEC8D15A871E6A3CA5FAD836831C95A6AC25554899CF2890C805E73D54B22853D9C00F79139190EF59149D65213EF6348F4C40C5A8ADC4959899CE21C2D2C55E9113548AE22E7D79056958788C026810FBE83EDA1C73AA0F6608F7103F2A7DE8695A50FF2E82B3076D58EB63C66F0B38FD0E8337BADC0D0E32F6980BCA13B55106FB007D510E952AC5C61C9023D8205D809E5B342B281507ED7F7A7317AE5EE3469021DC6346A88010179CF988CA2B9F10887EDE5AC6B45E05EDA15C1BE912C4025B5DA56E7A8298DAB09DF7703BE509B968F290BF006C989F7082E00F34861246B0976C12639222A841E75D8547EB8D1C0A93C76B0189E2A4A20435013D803334C6C4F1560B010A04AEF101B04D4032A40DC4F8E1A6A91DBB3050A4E09B0451BC392EB882A8A25D711D5D36266812B3972988160CF1634D422C01BB3B08C5C8FB481194DBA654611649466E964CF2F4DAC40806B36D105B99E1AC61794270CB2F4B121AE6426B6B40A813E05230DE3E169D0A2649F1B003B669A26441B0641C3A06E324AF461DD6408E26FE259477203B989AD9D1D6C0724B2186441980421E3B5BF260C994DDF8C08B7AC2D9401AE008E9907C4E27A6714128BEBA2EE314ECB2858E2B8E04E1127C021F19960C899047312B1A109E72476CF44ECE92338B5C93438B610C0308320445CB7D46188B82E29DEEE348D3C64C8783F54A9259832960E36E23AB96509A08EA4953A620BC01E8B102F5CD7CC82BC70BD547B0D2DA863D0C27D9C9E669A928326B144706B4AC3336BEBAC5B2EC1412E00261944C3E0FAA48E87C175491D85C13404464BF311BBF28FB8270C8239885E05753807D151815FEEB688E020DBBEC1D69A606C011DAFF470524621F0E6514758C2AEC623D34D7B8B5E9A1DAA7BF4D294436E5F9BDF7F6F6FC62157B3611899DCE316875E73935B04147EEBD7E606764BFC122E0543FE41C5B561DE97075F1CE6BD82E89D54ED85DFD619506F91A95800DD65451A2FDC66F56083708195B7AAE07D3D17D311BABB0A9A8CDA4BAE8231A7BAE62A9888AA7B9EA6375B4D38ED265984BB97B044515DD014E73C7245539420F8753F93AB952D4D1CE52D40CC2567746B50F699E9EE0D9A9A24E6943BF4ADC357D7B41CB4F1A9ABAFBA05E09EDE2B1CD8258CDCB832D8F633B1AA55B7B3FC37FF3AB5A7C12B43066CD2234B77BFC89F517D02AA3851A26793743346D921F66E8C3F7BD8EB30326BA02331FE6C51ECB9185DEF507648B9CBE2C422E5D64AE07D15ECCE01C02AA3EB095CC77417148C0F9B18516DFDC406F0403A0028CDA5057EE4F16B0B7C2FB0735A3A6AA178523FDA4E0FC5D3B4F793F972156FA2EAC3FB09C9B28C5FF687687D9B3DC5EB5D9D701BBDBC24E9F3AE29597D399BBF44CBDCF3FCCFF3F3B3BF36EB74F7E17CB5DFBFFC3699EC0AD2BB379B64B9CD76D9F7FD9B65B699444FD9E4E7B76F7F9DBC7B37D99434264BEE109578849FD6B4CFB6D1732CA492AA494B7F4FB6BB3D5162D1B76847F83F7DDA48D9D82B003CE7287FEB9AC053FEF2D0D5E7F1EA62F9DF742B25BD792D96D8CBD59BD9E2FE8D8A54C3CDDF49073771BA2FFA1A33E3AE2E4E08CC97D13ADAD6B72FE8D58BCBFC94DF345B1F3629F74904A28A06737A8FA7A438D687D3BB7B8E5E1B49C112E4536C2872EF85F324954F89E78817382F8EF2441AE67671903D25DF936531897F3FA4C52523B8DE22FBE774471851673CABFFA8B6ABC47951CE755E15941420486940F525DA929FFB78CB7D7D88B7BBF25ED4619B5FDF81C7D1086B52054C9A5F353CD0847AF844DF8A38F8493571A96655BD9FF0630E65F9FAF214ED631F54941446540C0715FC984359CA8B8B3EA828298447C5FD36794ED2688DF58D6F3924C38DA5A64E9ED7E98D3160682A3430F4D30F281D03234151B62BEDBE5865C9A7244A2F673C39F6BB3DB5EB054CED1AD810C2A9DD1C0888A7370F3CADE6EB115807CAD1EFC03468AE60B8D8059D88691649422D6C52984A72802195E4497E9534C813AA68127AB6091A38B81804231CFA82434BC6007341CBC112B085C32958050A2F928D5AC0C818D80478517CA41A17136F11E0FE50E5B85717B804EB02B9D685535AC429DC302EC19CDE2C898A5B4F2CA9FA9B0D953CBE51119F9727443F5B1A28701F85A42330555498ECC052A14E521743A561A424899A24EF456B857059D855099E3A8945BDA894D834BF6AEA1921D4507FF6254E6789449FA604D0AA28A384D49ECD2D8A69176B6BC4F488691F4CB7643336DBA30E26A31DA64FC160ACE691A717012462E240420A7662DC41A498CF16B4B6841177AB240FB0C11163BE1F8101858F52178E9E3264829397A7751D80D4C0A47856C10041AC8349EADBF9520E9193E7651C227E88DA72885481475CBC21C643740A6A4D11FDC4466462640C541B5E141FA326320AAFDEB088296A6AB5C50210E4926C8F5224D0290A4B3A872CC9DB001C9E283F9BD39A670BC979517FB3F084BCCE32C101527C3902B5ADC260078A9BC6F27151DD0D7025B1D324F9AE113930A3767B80AA28D2C1BDFA00E429FCA12DFA32C5AF8A7A6208F4EBCF9EABC462C6888BC3E263CF960DC5B08B6D336278C4B00D865B32FD28865D8C3F3B0C9F8C0188DE83B1D6BF30255333102BAD19B0FA8E0C600C62B797709AF9048708B2DF5DACCB307B76ECA574891E7A5D1DA7B8C8D2E779567826059F0C9B60412F4957641D28516B3E1F8BA58823B52B63B1BAFBE56C2FD6688445559DEAAF06917AD8A4506ABDD53D12768640D5D0444F0F093B734417099BE6594D33A5C44A9A9463B0272B983B9B9423CC47980782799B26677DFFD9D5EAB484F929D89EDA8BFF56BB364A62267B6C1A025D1AA1B7110DCEC0D343C35BE1B466595A8405E14E4155DF6CDC87809178AA06A21E4B5DEC04F251288EDA4C6480295543533C8F6F549015CF6E549F7D7D25B0223B4625D6D6AE260FB7A336D746B87507B7B6766879B81D87D914066FA7609AE18114713DFA7997FF7DFFFDBFC80AB522F75F1DCC32A4254683E56D3BDD465C4C519E9E32DCA88A666827DE6D347B5888A48A4F56E7BCC06EB2DF8FDDE6ECDC4E54C5893480F6EC7EF6F5EED3D5FD7471F1A54F7C97013C6570C3813D55D4D8109712B2D1E0973845F22F488FFD7E043880A2FB9988B68BE9555FE34E83210A52038B46A919751A96501A753460A172D4417AECF7A31875443375B23CAC430DBBAC0B5BB79E05E52855C3A50EC4E159A954A986E2ABF7B94D8C576CD2E9AF685A5BDDD6B3C565593BCE9671B61CE96C6969714E1F477058950F74A51CDCF6EFC004E082C38F76C028D98C2A1982643359AF82602A930220892E2F2124D144CF5307CC2A563C75C024F56C3A715266B49F46296354C928654C90344029D392C9C94999D1EEB4F73576E2725AAE463B73D40066950C5B035047B8CCFF3A25008EA83B1BC2114DF496FF58356C52EF0E3A225B46EB72942D46958CB2458FA301CA96D6DC99F9E3703F8E4DE97CEA87CC9F87243F23E679161BA5637228022FDBF2F9178948FDED08F69A951CEDC4D55CD5EF64FFB7A96C20DAF5E7DE3D6735D35C0C9B63675A6B8E809A692E12DB8469A720A9EBE3B3F8D37C2EF71D106A06525B4B011F325A0EBC3B5326FC4837677ABBEDA218FD0EAFBB54AD70BFEF5222063E0F5EA68D970F8EF9A88E0804E79B2823103A0242CB57446A2038DF11B100C2783FC4CCFE08687C785A1EC76176E451026462CD57CBE3D40123C684BF9CEC1A33A69F382FFD5A35C330691A9C02C12FC2A8CA4E425F7476013570F08B7603B01CBD2135C2AF6FF8B51918E578CCB7619856B5D95BBF461F66718F50B370EDA01434C307DD066412FA71EDDC468455AF57521C12F6FB09BA781428E8D0C553B5C2DD1E42CECC316947BFB2678126D5D1241DC90ABF65574F0D08670B650444C78068D9E55303C2D966B000C4E8F2B170F984314A3C2D92E33047F2C5091099807EEDCBE5332CF74CBF16C930CC910653C0FA388C7AEB607D3C289FC9D15B2423263A77641C8F51320C838118732E61C4C0D5AB22D68ADE7DE110426CBA407C0D4C429F9E0BC86B6165240C240C6BBF31769A06B83DC8B8C0D7084CDA4096A6C8B2F4A88255B6E7A7F0092033E2A06B1CB4E79EF0098D628B83133102AE6697515A78AFBCD5014ACACC105014C747ED2A8B6699B432AFBFDA286E37A3A20FB5ABE473378A9736C149F5D6C323CDB33AC157120695E96D2AAE868F2EAA6B687C6C4FF0377C7411FDE67C747547FF88CAA5645E18EDA2A465A05E34E5DBD72FB9E3470E995A7FECCD1B1DA7D72BC26379AB9D4FB1F36F2F484B56F27BC642D211E8522DAA3A50A65C1B8E519B529002AECC009794BBF164726896AFD63189FE2E5306E380D39449EDD9FCE0917784F6C788BCBE91D792C1C623AF4F8B6D1896143D60E2A7EE303206F6135EB4654F789CCA64E847733A0FC9629BF054AA4F476086A8C6A5030BA4AEDEC9F868D3E7580FB32C354390AFC65F205E7DED5935D32171D1CA3FF890B4A4B3E890B8A82BB321390555355D3C2EAE8379945152661E65457114E12B7929BCB25C03DF893EE4BBFE36A489E1378B0ED242BCF8667D845EBE43C925D86C70C7A94CACF96ADD32F9A81F9760C5AFE9214B2486951FADDB25B97CD8EF76FC9248D18F4760C2E8E66A37BB12B4090EA64C35CB45C5B60AB034BB03DCBE7783D853AE2585BC9A2C3E0739EE0E5E20E3D27CB7AE6BA922ED5CD70941FA019E1FE3D2BCC7A21442F26094DF83F402F2B7B049FE6301D540BFF7BF23D7C8107BDB7B9421A30C1965C85064487BBBD18D0CB15F2C9AC910B77D68BD1019AF5B992D73172B02E6EB38CC42574DCC60A9AB2370CC8BDD6267025EA43EDB2F54996B09C0FA524CB46C25BC68E5529C5A2A2F5EA5446B7E828BD86787852CD31479052AA4D9F31324794C0B5BFDDCEC6069CB37E28758DCB2D31FDACB0C623D4A0201BFE414C48AE44405D4AB40D6A4243EF07E05B22A9F1596E57320EB52943678A7425899AC1C4286EA1856AC8268F811D6ACA3681845C34989869616A2826838ADA5E8309689ECEB437E76A88292C10251591A5FD5738F27F15B915C92D5791E94A8987604D6BF86EB1D98FE4C0B9CCEE774F63A96387AF2091187CA5A339B58B6BA9CB1193A5B5B52392C5B5DCEC9B8B0F514F404F3769C9FC0C20919680955617CCCD877EFA41B2934C54A4560248524739AB3249AAE047F58FDCDE64CC78C9876C4AC8A12F150079370046A4B8D820EB456D30027A5D5D13B8B029C64D11AAEAA1A6CE25311D567DF6D37067ED2BE1B93D6B3D26550E1A2734754F48B8A966C0606152E26833D2A4EC160A0EFDCFBAF6F2032864B4AB8A8DABC2BCA008BC9F2BBF54A5226C7251C813256F1B8A305645EBDF3EAB16424688C9749411638602D5CDA11AC180B3EBA2E1787C6C7169788051F5DD787E67C3C05415F4892B470C57BAF091042662B43B4B05235D7A5E495214DB15D19822485A42310FB6A7E77B306AB1AE0BA06A3EC84EC2A9A18C2DAC66A1252FB5FBFD41C755CBF0C96A3EDD9FE35471D6D7F4B8E9E824A9845875CCAF8BE020F5331500668497CA0EA22E22BF0F5679BBB718B557C2379E098CF56FA046C18FBFD08348962A4BA785BBEACDDED65F99A8BD2E4A429BED717E8B04B55D0146F718A75834DEA5935D5A3E4F494FD384AE228B5A4EEEA5172D17536A3740A5A6E112DF35794FD44274CC440C7610515102F4B885AA9FA6AA5942052CCE7235049385FBB380D5D54EEA4906A16CA62A84AF09642480D4C4ADF07464BEEB9288A2171AFAD337525F75C04B839F74E427C977A3DC0424541C94490AB4A6B0D1668D1C225D9C9758CA898760C125ECDF54E2EBDD016B8C97A96A398DD19C2BC15470F105EF695B57861A061AB931218385B5B3B6CDDB0D5493B38B0F514F4049139B98B2E3F2FEFED6F470899ED6FA08595EEC7BA94BCBF41536CF737409242D211280835BFBBD9DFA81AE0BABF41D909F98E6962086F3C569390DAFFFE46CD51C7FD8DC172B4BDFD8D9AA38EFB1B961C3D059550BCB8B7581D423C630B9031500778517CAC6819E8F5DAE2BBCD26471D7E1A20C82559C469788E5E256AF4A3CD216839B27FFDCD9CCACDEB2CE369945F8E40B1A970D3D5A3B7A47AF7076F8B0185DFB12C9242454D87EBE152FDE3BF4395D0EFBE0764C150E9F5673FE2259C05D2E5C79EB53C0598F3EBB923C04E03606D3EC79B03CCF9295E63809D82B97399CD62DFDBC1200D03430729870D0FB1359FA7AB6833955EAFE753CCED806974136DC86C5EF2E498CF16B45687E58360E0D4DF2CAE8A4127421C0EAACC3222A5F2C731054ACD67735AFC3B451C3D21C9C202030FCFBB9CC4472F743BDE11C76EFFB95DFD839FCB72792C0B3B7BEA769815F3F4B8B98E0AD9285D716CBE5A522212FDF61001C4EA044B7A79E492EB550610A4299614A5A58CCB3A8B7D381EA04653CC29D2A73C386ACD578B751634A35C222E408709EC4F25A05B576EBB61CCE3E1BCBC66BE1FC15A10D5AB1D2C048BBA1D5681BC2A16AC283ED1CF026594B4500B93E25945A5BE45FAD567CFDB97C889AA40A7DE184D2F56D0A4F85521287FA11A21D573B981DDBC09757F4915FA21603C0DC575D170F77A1BEB42AE22C8AB728A83EFE12E1228BCCFE1BCF98D892254D12404A8A0365BA03AEAB400D5506306AA872606A8085A2087F2BFF0A60F54094DF4ABA8B18A844A9A044FFF0B224E4285E6410EAB85390CA73AFA10EE90056B6F894A9649EAD965599A42F6FECAD11432243E9A42A329349A42CA4A4653C8AA9AD1141A4DA11FDA146A6973AD3485EC77D65C4C21B7C8BE76B690631D86C6901B75736BC891BE9539E456879B3DE456978D41E45E839D45E41895DAD22472AEC5D82672AEC1CA2872AEC5CA2A72ABC5C62CF2A8C1CA2EF2A8C7D230F2A8C9D032F2A8C1D23472ABC9C63672ABC1DC3872A36F6A1D3952B7368F4EE1D4CCDDF3214B6607EFB7D7503A06A7671465712824644E48B73BE8579B33C26476898FA6D18F2E678DB183C647B113AB1CA72E6E9BD4F5BBBCBE45875792007582EF91C96AD8A53373D5F750273215C7317B77123723E4F008D23842EC08B5751B868E90C35B3416233420FD76B1DB65CBA4A848567275B498796D2918448962722371BBD0C02A4FF03298527C9C6787ED1218350C93B651BF7266D14638B46F116D9F6328DC2276E7D62A640BDEBAF7137018CD479AF5BF90EE3413567936092B241DF26532D25C7AF622F4AD5170399D8A2C2E3E798E3ED63C5B10D85B3F3E40A8E50169F53E4AD2782B66A18655F585FEDED51FF2E18D9E6322A3E2F5AE2957CAD8A25BBB9768898B612241B7D99FC953BC252B9CD7DD3EDEBCC933BC99FF8FF5749D145AA1CE701BA5C9F778B75F64FF1113B9FAF3DB773F9F9F5DAC9368478AC6EBEFE7677F6DD6E9EEB7E561B7CF36519A66FBA2EB1FCE57FBFDCB6F93C9AEA871F766932CB7D92EFBBE7FB3CC3693E8299B105ABF4CDEBD9BC44F9B8958BC226B44E5EDAF3595DDEE69CD0E3B6360423E507EE0AE630972F508FF117F3F5300F7FD442CFB1E9E0279433E9CFF196D97AB687B7E761BFD7513A7CFFB55CED7F3B3BBC37A1D7D5B931CDFA3F52E966A916832CE5481B2C8CEDF3EA74FF15F1FCEFF5751F6B7B3CFFF78648AFF7476BF2543FDDBD9DBB3FFEDDBAAFCDE4CE3472E9B5598620CA1FDF6604087180A22219BFE7104DC7BC86A7725B29AC17082157ADDC1045C3810FC0673B1CA12A208D3CB594D789F6CE25C38C4CBA434B4FEC576606B9AD78B70348B671DA7370F147084D42637FE18A2EF7E256A91C87F92FC37357DE3218735A9E98863DAC564C079F320A448A9B64F9CE4495136A430296FF2733D4DA1AEFEFDAD2D62EAF7551444DFBD75A04A5F54311D1763788B8CD86469FC1A08C8D5A8BB092EF07A9591D482B1E60D199E6E20C02CB6C4E8BE5B25F1C68BB0F190D09D0DA741C16EFD980C4B5336B06CA9110CD13612300C81F0264BE26DADE4CD0B8CBAFA9EB0F194078447711FB833C856FB64EEA885AF971903B72E1E14BB394278C22E2051A86D2BF887C43EFF3E9663ABAAF241357FF35C77DDAC245F965A0AED245D11C1DDD0F896686898ABCCC5639B78474A2017E37C6787D1403304C2229076CAA55555E1902D9A652975B59222EB2CB2069E005D271A2D82177CCFDA14B51E18C446DA1741DCF91F171431047E04E97A1BCD1E166E0D220503AFF084810BB5C0E326B193E564AB7F8CA75F73C4CF69021663673FF9A021F71E3C8668BBC665AD6FEBE351EE0A37A7D091BA2DAB7256B679F11F49D51ED72C6D116E7E00F25FCBB0644F672573AC16AECB5AC65A2ED6472DDD810A47AF69452E9655390F515EFCB4E5E26DD49C6C0DE9496E5758B683413F54F90B4B96ECA908CBB64592D70273BAF0902F4C6185597A4242C2AD3979C9A0806AD5D37635ABEF293901AABCEA64A8DBBCD057D7E4322465D9B00051CC06B32DDD85376E8DC799BF901670A03D06CE5F7B5C367B42819587F7DAFD7A152D57AC8D116AAB9468950569F5CA72EFCA1829D4367202492934ED21020A5BEF4160A906E2FF43B2D87A9D40B011CD8B6B8F199BA304888808E4BC83A201865D9B548D61AC21031159147ABC1305A4ADA06804B47BC5EF1C2A3E3EA386088F597430364AD1250EEBE270DA392C8E1EBD58882FB429EC02C2A529593A3D64893F4B1855E4C81186424879BE5891D65DC77D091217D1E039C11D966BDE138359F3F94E8EBC39212608D324FF49F2EC3F5198F6784E968A432D4D1876BFD3C9065284E536318554FBADDE161140BCDDAD25668FD68999785072C3A3BCD80E7188C3B302EDA33E3E3BCF821CA0B59A46456C12E73904C5C9379D4065D936660F4BB9F5A9534712719D3A48DC7CC3A9434BB7307504DAED72B2BE11E9C446E43AA5D1A980BA68E0233955D809B775455538F04113A1ABED8E2774C5D67438E1EBA726A3C9DE120E391B78BA2D730E7B76DA987DF87B04463C648B0767A44CBC75090DBED16A21A191B7480C25342DDD828416687770BC5D7A14D06A7B13789BC47877B3281B584873EFA8F9EC4D1202A16F64306D72719C0FEAE604F0C68819AED46F6E010514AF6A41B991A7B380AC784407202FFE0016905BF3BC1550027FC10AC98CBE37033990144F50C1D9B118026066F41929383BFA4E14901D7F0A0ACB6C713741FD921356007CAC09CB8CBEC50414C09F5B0232DB0C3F1A1A04724A7AD821FCCC76771D4A57C39D8870372A5D2808B6B71389466AB8131184893B21719DED4A43F074393997252F8F23156E9FD99186B06876A42218762E54C46BACCE34F813A5CE64A86CF4A4C3D845CE34A82475A7239E4F74A11100FBFCC2D48982BC227312914C7C70532AE68B3838F2A1E1DE181259D260DB8B960CBCEEA802DEE1547FF9D96335D3D7314B5B5F9F8F8BC8C6DCF6712861EE41B3BB6265E1B047DA101797995FB128DBC108EBE3AD79849BC23D35CEF164A0E854461C2505835F981CC6249E5F4CAF8EE6026D7F47908F4F40287C8EA618AACA077569451BB551EBB377743FFB7AF7E9EA7EBAB8F8324212DF5C35BE0A9E970E0E4A6CABD2149455F9C0A054AFD7CC41C944BD143D0F8FB379A10FA702363FA64F677F646BC8499147967CC37CBD3DACF7C9CB3A59929A3F9CBF93FAD59082FC2605353E8127F84F12413239E23C3C7212AD4981DD7E1B257280F32FDB245D262FD15AEA86901399752A67EC8412175366F14B4C1092EEA11E07A898D21744818E255CE453353468A4D6CB8BBB4FD3AB8BDBE9FDDDA71D0A0FD12628C6B3F9380C706061772DADB976A12144DDEC051CA5B3910D678C8A0DCE2D59CA8CEA933926ACC0154A5000F1F65024A09B30E638B0C41E5E6397B261364762E0B5201844676141A8F978320201E6A8B64E78D3A80B3450A73F81037CE2B519446983A01845E6AB391E04A3B62044BFB5820624260C3A344010182B2480CCB4ADAD030054ED24C3AF8CB8E634742A0408B5713A46486A050F76E383EF609A2342C55F978A3B0007BBB1C220040EDA22487B613FA691F834C11E2C104D29AD15B8E0FD46874E150CC91E3501EBEE45AAE8301358ACF48794FE048B1D448E40B254DBA40C4AE0082782641176571BC94213ECF102D194D2DA932C60BFD1A1538513B2874DC0BABB58BDF2AD4622A138CA15B143F769F98ED5D9C5B27C73651AED96D193ECF7CB9FAB395E88F52792ECB0D5AF48E28E2E9532098B8BD20C2E78DEA9185A21C54A2435F50A6061125A418A2246083A6A68F4172BB820AC76A8B51B21C459387A9CC8C757EA217533727A4308167C0A1D2834DE4FDB085156DC0148EA135C2544747A4A3CEF558C67F3D10A1C76480B040C38680C3A3A5094185B44D80111ABB15B7931087BA51700F562A504ABB40314F1613C4AB18285076A865308FEC10EA9986425649A9A05943009ADE04415CD041939247C0998F7CE1F54C8A0B4D7B8AE3D3A7AD48573E7F486B35EE4911D74FA9648CC050B83FD23E03A463196DCF763DE4342C3C2A0C3A3BEFCD6D66E92A6D66E3699AB2B33F536B3665749BE6353EF35D3CF96BBCDC0C652FBBB4A58A81B74A894B71D2DF79DAD3696D415770D119DE8080A8FEE05475FB0B0131BBD43427A6D1E7A079D3D90C09F8D2E8F23D4DF3A592BF1374D8076D429ED9C698062DAA0C38B5F69310794E2668D4BBD7D600A7ABC9E5D2EC943098FE14922CA6A60D1ABDAEDE209AFB6933538BDCD482005079562D7DED2DDC76AE1CD7C37575C16F22ED85A1B8915848F0E7E29DF051976B5F6B9995D5A5FE6E7A81C8CD4633E4F656F81AA2360B47CAE4A5379E7A0313F57150E324EC7B4060F17D7D354BD82453CB4AD5F4D073CB7DDD74ABA9FD3DBB6AB68B4DA1E60A113206171D193E8E80D197642E3C8A02107D66B0B164C00950612C5C7D38283C4516D9D7034AE3ED0A03B67191611B60736878E0CBB536F3D0B0AF60E23732950E77B73BAEAD992CF048C0682B5A9E5AB870EB785E110246EB7502D318F54DD23EC34EE394BC174F270EBFBD673C0FABB5083759CAF47EDDDE763005A13968C6B44F3F564208504603B561C15EEDF7C481A428FBF6F337ABAEF71913D02F18B821F8F29EAE068141F78026FDFBC91690CE4448CCC4497EA3ADD66526E08F4BF63690499C1EE4F5AE0A5DF6DC92608960E3272B8AD5A15D1CF27071CEC510574309591BA5B818FBAC64E2237E4FAF22A5B2EA2179D2E9AE101CC82EB24AE2E4ECE7109A7A3A370E6BA54DBD1A9CD3C025BBE81CD8048796E938DF7460F6D961FBB3916E182AA80C73EE567CCD0C155BC8ED02AA854F576A3D1AA5877A6B89263F6D59A8D7E3E796CDD210FBCA1A3AC7CC2A2557CA96B0E8EB0DF0FE912F3177D4E77A475E76717CFCFDBF839DAC7341EE3E52159EF3FA7F4F75DB28E9E92654D8C7EFFBC9B669B976CC70573FC126D495DFB789B63601E6F22D2ECE5EEC3F9C57A9DFDCFCF9B72EC4903FE8CB7BB24BF7C3A5FAE48AE0FE74FDF44573A25C5BBDAC488DCD913F9F93995E24C4E74D4A4888EDE34F3378144876EF9305043514B828B6EE7D2B0F7937AA84CB1F0F5A56CE58885110BA532F841B060C49E2648EC10656678642F5659F22989D2CB594D729F6C385C7FD9C6CB6457F4FB5F8CC95D2F82902B5EC69EDE3CD03947CA6EA23542EFDDAF3937A37C30FEE6058D218AD0111A9D40638812D5131A461CA2FB954314ABE81B101E3608172AD87F2E16CF8F728D4CD544FFAE278A3EAA0ED12B9E57D712445F5377EC7731CBC59E578F6BC2A6971D5A8728E947B4FEA8681DA2F2F143AB99762E03B80F51F3849F783C45FF69B7D846CBD5DD2A89378E346D867088E2781C426E088728A37C86D088377518FC41CA28F1AD8200F60617E73FA88F8ED27371CFE5CD0A37EDC017E18D1B843C061F6CBA52480E51E68E903C69480E5187F841D29C3FD50DD9C12A12FEF2649029C693B49C65ADACA7E5F03CFE7621595ACEB3628559D32CDECE33EE68FED60BB1049BE2DF12B4B8351C07AB4446389E221C07AB407CE068B64AE382438C6A443E821888E22C4B998045DFD75964333B84A9655B3CF8E41260338AFB11360EB0F921C57278D818B1BE3EED3E44091F7A520911608FD9AEAA9E3E0CE74C167A1D601F8E9350B63E04739BD10AE543544823CA4794DBA17C88FAB37D4DD73CD93B445D17782230E4DA70D136BC1EA2C41D2AAF8738EF9D796DB5B0A8DFE21DE2CC67DEA43D8E75C5B1AB4171D0872882C641F71CF421CAC2A31B747387FA2860C5ED1D96E0316CEEB4E1A0B2DBDDB147D328B947348543D30FA812AC5467FD34F86065381B12A16FD50952141FABF526D99211552361B0F277444260240C56761E1312CC55D6288A45038825D8BF01D496A9320ADE1F7BDC7F40316BAA8E867C5061BAB0DB78ECD1280937555A382434E46DFC11036131304451E98B01531E5DCDAAD7D007292DAFB2689685745675CFF6210AA81360FB1065C230D95EB67A9432DC5A8589357E044B9538BD5E45CB15EB650A102380AC7C16A4A92BE30BA20E701AA5E708A78070FAD1B482118B6A07F4206577D8454A9CB2F4FC41FD902CB66DDEEFA643374439390EDD606592FBD0995AF28BEBE15A94B91A73BCE37CD7D8EA7605C33B8088429E4507B7D6548E71F6B482ED5DEF2220E08B9121803780F5455B36204BA7872CF1EA3E63B5D9F79E29EC6F0571136A78BA629C50E3843AE209353C0D3EC00965342C8B1541C9753C9A0E9633F3D94736313BE11EF2296F84A78C621AE225A79EBD6415D30A7779557123A8CC1226C768068C93639C1CC8E41855BA1B1B99780203D4BEEDC44358C42940B68DFBBF2CF78727DE4F89FBC3931F01B86FFA3441151B649002A28DC088856217A81EE1EB17F3CCF3FD0B5B7C0C51848DF8E80E1F4314B2BEF8308C03C23C6C3E44293B06BA0A273B061BE80A1D47F625F53083283CA2ED7F6627DA08247D1756DC941EA2621CA7F438A5C7298D4EE921DA32ED2F166B680CD288098EEBCA95C1D26CCB8F51307D886A66F04C1FA220F063BAE9B2AF12BF8394052D28A4D22D20506D039A0CEB8728114E84F543940BBEAC370C75BC1C661CDF714534AE8810E644871CD561C7309F86CC967988059140D23F68F9729851A2C7993CCEE471268B337988164B076F0F948818A4C5121ECD8B557CE3BC5F080B10A191ADC4D9AFC67088BA6A1C437E0C8728A5BCC6D0EC3864B4244A739042AA6C7A4834F214DB0063C5EE21CA9301B37B8853DF87DD8607A1E372F131501B85697F5050CA645B4126C3FD414A8393E1FE2085832FF74D9DD2D572719002A2850574B91F20506D693FA066FD10A5C389B07E88A2C197F5E6018C17ABC320E542DDF8B0BEBA22F45648AA793830869E6538B079661C5E0B287DF33ACBDA9C63143F43146E237E8E073F4394D07EF831E2CF65368B87782F9368ADE7E92ADA4C9D7762A6D14DB4215369E9587C75583E38DE00179C759685EB175DDD8A73D10FDD488867BBEC4B0B7B2A967793A52D4BEBF25CF44BEBD2E6877EE1F2E63B6B40F9422630B7B41C4AF32FB33910A8DE4CF3A0C0083587D2D583186E14C4C7952CC30EF92097F7D459969517F296028B46C70FB5A55BEA8EE11966A3EE1875C7A83B46DD31EA8EBE75C7F01665A3EE1875C7A83B46DD31EA0E77D97FF77CC892FCA2EB00FD4E8B28210808B85B759B432A3274F1FDF2B3858BB8CDFD5E3A82C35BFD8D23C88FE0F06C30BF1184D9F391346FFF4ADAB38F92B431B608C1DF93ED6E4F5457F42D22FDE25B56969AC77BD03A2C53CB36CEE3F5F7377C32DBE1B345C9BCCB8BBB4FD3AB8BDBE9FDDD270928626D8C252955C5A441F54C2F6E2E6E1F3E7F9C6A2B69B028D5D1244155DC5D5DDC911AEEF4DDA82C5AB90F5502D881ABAFD387AF5ADA8DD522516F9220FA5FAE3E7FFC3ABDFA6C56436DD9C095D4A9683DB38BC5EDD70B3DA3AA67D7D1DAC40C20E3843C9A3AA9DD21554653A05AE617775F088CB5E4994585540193065531BB27F05A7CBEBB32E61B351F51C6D11C2ACED14C26C8C0EBD4575860834CA32FD757F7C69DA4362ADA499A43D5499AC9A493789DFA0A8B4EFEE3EBC5C2B0933820D944A46BA6B064DF8D846B629291BA981C9ADA84A5B1549D900ED577757F41E603D11E44E8EA1547B31491EA6A92A06AFEFDEBC57F37AA817D0C016620938C3090C9A1A98D8FD40CD42766806A5C5C119D7BFDD194879C3B41AA904B856ABBB9BFF86C8A46D6F10029619A88A8E1E95762545C7C31EA52E95F01FB5326619D2953F53DA14E0CA8273411E909E1582E2AF46AA57674C94AA54E0155CAC5D7F9C554AF50EAF5B48CB32A01C4D7C5F4D367BD92E7D6DB0090995418C51F4B68197483750941A3411391D1C887824C17331D51785E60FD5024A1BA6171A537F30A6F32647097DF414BFB7EF6D160EAD5CB2488434D1AC8A04F5FEF3FCFBE1A88920A9328AA8474445C9A82975D84288C7B381B52B7D5B2A56CA56C4F169F6163D2A05BB3FB9CD757F7D3452EE9641E72C9B03DC9E6106ABBD8EDB26512E5AB4660FDF5389B17EC22AB2926A3B8126B7271B48BBE3C9DFD91ADA1251DA98DFB3AC1CB428BCFA2389F20F46CC277CDA0DB351AB851DF415D4772E25D10F15834BFF978049D2FD7A464289B5601432E65528C38B7FA2D87BBFAA4E8AE15A37CC678366FD6C98A0166B2B531BAE232BE28D97CF4EE2E5D6A928E50B34DEE2E940D6FB4B4B62D5ACD7C557458B02C8B92F49B7777E9930473D11B20F719CD1BA4F1FC5400FD1BE594507B2DEC59C0AEBE99BED1F5B8CC084D090D78053F400360C49B00320622A2F34A844087822B78E6F6F0D10D1B58D705D33DEACC40108297D0204470A23408415C31206B20223A978E8312E4293E2A442696B53D7474C302E111F939EFF091F9A0CC8F770A740D155D1252D48C919C593557702795132A3869A0E4079E59D911081CECE7236043F38AF79C6D99CC023823DE01D16B5734BEF9A8EEBA1DE3FC465F2D0EC45CAD4882D6BB2B3E0E37E71D9672CFD505F0CEC0BECDA24362929A25923FB6660AEE67F5B41D94FC4072B682864EBACEBDF5A55A45C019F10E009EE6A2FDDCF7DED612ECE33B73CD5A02CDAB5C330ABEEF7AD5483FEBD68DC07222EC5A82EB9662E0C17C6D75BDDD51A7A1B2E655E09C7976D82E6370D18C64552C9C79EF7DB96CAEBF29BA0CFA51D9D2754AF8EE2FA2ED73BC37EA7E955521F1E5F6C30DEFA9F35C4894391D1848E5411955AA4EDAFAA8F41CF35DCF0213DCB8AE074B9961E43851E60F2AB2FA75A2D02E1A3950E0DCEDB1C3C9F912C061AA548250CED6DCA65DA83FAE430A0860595BEB7C0F235FEC66EABB9E676BADDBCC666BD3E5E263F0EE2AFC6158D6D6BA6DEB4273E83EBB9DC46CF028EC1F4D89C05B5A280590B57086D698845B499A126DEF1876C99CE6E4B56A0B11C8D50613A4F30D65D1E66B008F00B1FEF28D78C2C6DD7E1B25E9FEF1F76D46FD3F8F8BECB1DCE0877C048665C37B0DD8430A6521E81082CFCA21FFDF3BF58A41632FBBAE93DAEA1B1B0F0DEF9E944B0D6CE184520D6DFAB98F31645FE9D3C0933F55026D293BD20A0F79E8044D8929D5C918374759F9AED99CED3D081624AFC65BC61E62A4AE32E880622FFD675F70D27300CDAD9E36C231CB7ADAD0CF1DF2E1FDA4A4412FD7D0B4F793F22056F581FCDC67DBE839CEEFF1AC77C5D7F7933F0EA4F4262E7FCDE25DF2DC90784F68A6317F9987E6F99C7ECFBE6CB397785BB49F6D519DA54EAE6F5EC5FBE829DA4717DB7DF23D5AEE49F232DEED925C113E44EB03C9F271F32D7EFA9CDE1FF62F873DE972BCF9B67E6599F17EA2AEFFFD446AF3FBFB97FCD72E4417483393FC46DE7D9ADFDE7AA2EDFEBDBC95353120915F7AFA1493EFE5581261B48F9F5F29A5BB2C352454B16F16BFC4E9539CEE17F1E6654D88EDEED379F467ECD2B6AFBBF8267E8E96AFE4FB9FC953BCC589E8078267FBFB59123D6FA3CDAEA2D194273F09869F367FFDEBFF076040779503D60300, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201506250226483_add_constraint', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7DDB8E1C3993DEBD01BF43A3AFECC5AC4A9AF97FAC6720EDA2BB4A520B7DD24E9584DF578D5475AA2BB15599ED3A8CD530FC64BEF023F915CC3C317988E039332B4B8901345D493248063F46048364F0FFFD9FFFFBF6DF7E6CD6677FC5DB5D92A5EFCEDFBC7A7D7E16A7CBEC31499FDE9D1FF6DFFFF9BF9DFFDBBFFEE7FFF4F6FDE3E6C7D9D73ADF6F793E5232DDBD3B5FEDF7CF7F4C26BBE52ADE44BB579B64B9CD76D9F7FDAB65B699448FD9E4D7D7AF7F9FBC79338909897342EBECECED9F87749F6CE2E207F939CDD265FCBC3F44EBDBEC315EEFAAEF24655E503DBB8B36F1EE395AC6EFCEFFFD10A5372F77AB681E2D57AF668BFBF3B38B75129186CCE3F5F7F3B3284DB37DB427CDFCE3CB2E9EEFB759FA347F261FA2F5E2E53926F9BE47EB5D5C35FF8F26BB694F5EFF9AF764D214AC492D0FBB7DB6B124F8E6B78A3513B1B81383CF29EB08F3DE1326EF5FF25E170C7C777E19A54FD355B421FC7E3A3F132BFC63BADEE699011EBF624BFE72C6A5FF426141D093FFF7CBD9F4B0DE1FB6F1BB343EECB7D1FA97B3CF876FEB64791DBF2CB2FF88D377E961BD665B4ADA4AD2B80FE4D3E76DF61C6FF72F7FC6DFABF6DF4697D3E9F9D9842F3A11CBD2927CB1B26F041149DEFBDBE8C74D9C3EED57EFCE7F2560FE90FC881FEB0F1542BEA409990931FD7D479A1D7D5B371F269A6AA7D14DB4F99AC4CBEE2BBF7B8A5E9AA12E6B9F45FB7841A69DBEEC214BC4C22D36FD2EFA2B792A20283484E1DF9FF1BAC8B15B25CFE5547F45531F66F3029F648C3F6CB3CD9FD99A2D4B531F16D1F629DE930E6568967976D82E2D5A389B935990121A29D84476DA3CB0799B762259684BEAC662F9EA4E99B6B82E98730B6831A57B7971F7717A75713BBDBFFBB8631B0CE790988B648318FC76D2482AA5FC62F06023BC68B13E2517D3767BF9D5A32059ACB2E46312A597B3BA6E13115297BA5ED894BA3910704F6FBE5281152F934DB43E3FFBBC257F5526CAEFE767F36594B7FF6F36F3B49610210489383715B2C609E78D9CB081795DAA4F94372DB7077953B6074DBD3A2CBF1E7A985D716AD0EDBFEB2ADF6F0FDAAA6609E965A2A8E5CDEB30D5C42999FD91AA2653661A480B917BE14486A00043EA4A517E6854AAB1B974F565FAF50B2CE20A7C23268894285B4A520E7B434921803DCC24B1A53A73CABCBD9F57497C28668C6AE8D97CC0B837C9F8A033796C47BC2A4A0CFBDB4364D4D03A2BDED63287B6B95536C716136ACFD7ABCCA8C9342FDEE62A8BB6D1753EC7562F5607A31617F9F0D692646D4BF33C8EADFCC721DA9BF296E6C55B5B65D1B6B8CEE765F9D47AD8CABC2FCAF46ADB57AD7630ECFBB33BB45507B13A165B321877041F9BE035B92ECA2D75A164ECA3DAD209F18DFAB0C17C5DAA4FD4372DB7C77D53B67B5B9F7A40FAA8BEF4CB254E2EB9BCE16DCFD779B6F0B1A64513FD65967537EF95B3DEC162435D5A8055E73EF76B8BCC7AFA97057B970075FB1D85405DBC8F89C8D76D3A17FBF55490BAA707B2C6899E7BB01AF2BDB4AC5877D7957F4AF7BFFDAA2D97A42B620834A52E3332A122D94BA450E9D3C5836EADC3AE4BE402CD5C57E593D4BD32730BAB1FBE3E6C0184E7D274C06B19C4620F16B155B272B509E681842D9CD176256FA5158C97C73ADDA068ACF9624840B0D5A2882B7BA44A0229318FD2CFAB68333895C2B4BCEBAA6759FA316934594606CFC0D4E324B959217F51DE891417A7A791C837ED011D65A0F5559AB2E5581EA9D568462FB1429B6F234FAA427D0A120FB1D0DBBCBC8D6EB228E9B1FA3ECDC5DB68F675D18B6F4BCFF0305B6ABCD4F55C2C1B59D6B8699911FB2397CEA058A2A9449650E63412094896841194C77E57C5C08CF712A1A2F5AB95B5F64D5759EF727580F18E663268BDFB0E464D41B53D20E47900A0826491B70C917C4E905169DC261969AE900AB554CCE2D4C8C5F565945E15A6910E194C56041634871A134D365B40707A09682F930ECB0C3083C45C3897C31ACE78E10934154A572F38550D3536B418916C636AD1627D1A5B85E6B637B4FA52F8EA7A83EF2FA9268E83AA15A7B84A1D7B7912A83272712554857BF725E4EDE8C8935056F5F3FA117AB568CD5CA5B541A4B4B8D439616F019EBD5D7F8195C1A8F718A81A6DB751E5243C8E5E721CB92CC8B7A9D89A87B149D5AB1BD67897CA73AD174CFC803B367A69D5CA0688C5613BDD1688ABB8B473103BEC90A99DC3E1A4A6B4E276B1BAAAC2BDCBCEBC1D1D595D65553F91D5751B91C17DB96276555A3B341FC02453399038970FE07312E6279A139EA378765B19D3F01BE8449DA8EE009E4B6ABC226B485BD2C37B271D72D478F9DCAD48276178F492F0C8655B6E45B2350FC18A0C69C67522B240334E2FE15A31E32CCEF5EBCC3895A4329EFA8DBCB599F675A93EA77CDE0697D95E96EBC115AAA938C8C6E7D764B16DE1829FE74CF6D6DBE20C3650F1C1B6B1F8BA00D50D66D0343994F3D8E9C84853AED7BB390B8FE50853D81DEBE5841ADA6AA407D915E694F0D54CB50DCB4C0A3137B869CC6782EC6424A7AD80B05891180B07F53AC4753336E866BC82A1A1841733C496E28B96EC53805D65D12C9326411BD2AEAEA987F00BDDC959FCF6BCF1311317C1A13874828818D37697A3A692795C0E45EB55F9A40E28337BAD15840ED9CC59AEE8F14DDA639E84B98BE0B2B95F38080F419C5EAFC8C86A1CA761EE3167E9D382F474E5753DD2C77209328B45756B34E55D152F73CACD52F1D292FDCDE17CB09F8CB4EE9DAC6D436F8C548DE1BC60D26461B83BDF67DBF8639CC65B328D1F3F47FB7DBC25D8BCCB52BD1C689470BB15F5B8C2219379161DD45E4578DF84DD8A37BCFA5844787A761619703B5867AE593BB2747AC812973E335AC1B8CBAC260926248DCFD1D81CAF559EA0914FE19AB675B1229CBB8E55029DCFA268B932A3D401756E2FCB4CEC948D54E7CB0E54AEFF9C92BAB07DEC4526B381632F36F32A038B4EA63D2EE2F3C9458432755A8BD18A05AD8852830B0B81C49368719A093327F1C45D69B0914D4CC13E178D5CFBED578EBDDE34246B31B3FA3B3D8BEF788945C4ACFAAA8B1356D91B2D96415EAB723D8779A5ADB7076AAF214C0A9DA2AF7E482157E7598B4157FD624FBAC70301C20DAA03878491184E57C9946D0D222E66D98C10BCCA960B5B81C1960C2432CE2EA35D5CE18C597B9D1BE8A7D9ECAA870B6285C821ADECE9F055B411EAB63CC7D4300E51717922411A0F125EC90159C0BB9A503E87DB9AB4C3F014AB92156D463341E795909C5E6BDD86E9B696645EAA6F33B26CB99B0DD9CF1CAD0C484DE5C1AD471E7F61E7176446AAE6A1AB2149279BA5215995EBD990A4AD7732247B93EAA521A9AFBE7BC47ACA57C098D1486227DCE650B30D41B40C7525DED182994587B2D9BD1830F9105C2A23C0B667C00875DB1EC4AEF9065D972FD30A4339CFC2DC94E752E478347CB28391423B054FA22A19689994081925420EBF48123503AD2CFFB250AF5124EA763B4492E86FAE2D56F14D98B5B443200B6DB75B70A0F94E4D297E053C73CD9BB4889645180265A3EA4C50B3CA3445C3AA0CB64DABA081B28C49CFB5653D98ACB31CC800ECE141B9FCF6EE2A6E59EDD91565FA142075ABEDE5475DB28739ACAD3ABC4D68A4600D260CAE648519E5B87FCCCC1EBBCD635AB05734B2ED7780245BBC0F5C1AD5DF29381DE5A5BCA9A892AAAEEB6A6A1F5AAEABAB723DAFAB69EB9DD6D5BD2D36CA75B5BEFAEECC20CBA500B07E46160BEE97A88B07A6AC2F509352BD5F9E2E5AEE7877BA28DBCBD2BB38E0DC4BF5F9B16CA662D363D93FCD332E064FADE92E38B3CFB1394DC9CB6C165B9E38298AF43719F987E00DCEC2A1AF17C3B9C1F7D0C0AC888700CEDBC4D334C82D5C233128816D9CA09991C33AF06942F4C804961D7C4817CB8C78D1B1EC887100662F2609F0CE179ED9E2B5073E7C936901408BE099E91D708302CD2D4C83CC36C30F2F64E1AC3EAB0C7E6677713A547A9BBCE5EAB8670BDBAD4B70C6B55C5923DDBAA84E108F5D5429EEEFB65F9B701CB1E5F3D8D2B9B2D6EBE32EDEB55E1B7C8AA5BDFAE04DA796EA6BB45C67B5F101323BA890EAD9CE6A64962E1DD446357D17358A21FBDAADAD5349C63BB05BAE4B764AB66C4030F7FCC3D767EE5FCC5F74CD0F5358BA17EB623DDEA08A1232C95C3C8B4DC9EEBD384430442AFF4D8E8056DD471D74DAD1A55243EAA1C9C67854A454D9C32967B171715EEC76D932295A252E291E66F36241331570FA3E7D3CABE26848599BE635E77B9835CA2D9915C9339907A425EFCEDF483C5492A6AEA48634BFE0E2A9FF93449DCCA2781B1336446B526047E66592EEE52997A4CBE4395A6BFB2894441CAF2AE7CD845626A6CCE2E7387D246DD5B223402B68658244D1F1EBED84418F1A54149B9717771FA75717B7D3FBBB8F3B14587076085CCDAC31C71642BD1F7CA9BB6A36BA0A7F9539C4D45C316948218A149ECD2E80567A28C82CA13C41258C9813945D95C3C342704964015C61A80D25B3B0AE190A0BCC836C21AF302EF8B6A04B59C53C56AF1525C0ABF4A1A414431A8052B3746E573CC91DEC4336C9BCB06B05EC49EF0255D0CB54D8D02B9FA96A869E715A9AC34AF9DAA47C28BB1D54293A68369EC00B6956805270C1AB011D00097DA1131B71FD739DDA6157014AFBC827AB4E8537455B0197AEBF66038CEF2F99A34CC71AEF96740037CD433B182A4C5FDD11141975929AE3CFF4793119854865816068C6013308A89EDE3387A319A702B4A81729A843A4FE75B6D072B077086ABBDCA7287482DD11C842FCB50AA5843278BA4290857443C552161ABCEB230311A92CA42CD472C042F220C76D2C65A19653015AD4012C154F2F6040317987A10149B3DB660E4593179A5C6168C11B65E056ACED66515C9BD60BC739CC996416F49963131376B695A96AD277B36981C64E379FA526FCF16D4C174E49347C39EA45D43F82C0A1C2C15E310897DE29F0B45D36741D6241F8EDFC973AE604684CB7C0D3F99C54CF4398404D468192B6B9CBE98DC8EBB7F7E92C5EC7FBF8EC62B92F8ED34FA3DD327A94B76427A4096191E9E42B0A0C48278759BF38849F5031331D1468F4B74B1470B481BA13AC94DD341B55E87D342B5829B9E1D7866EC41BF8E6A6420EA91FE0F45817E96B1998C853F5A153B9A71AB221083F752C5F0C4586817D1B2C89F1C1CD45A26188736E7230C1885B118E46DD37197D24E43898F7CE13AC468CECA8D15DFB60F588D604F70FE87DED1BBCEA9EF6E474750262DFB2138E218D81401350BAC100773DC51C64EA50D49DED9E2BBB6936AAEA0B94E6085372244853BA39F003874AC670A08F9BCC1DFDA11793AC0EFFA8032E8B9B05ADEEA8EBFA6B36D0CA4BB856678194AC09D198AE41A7136CEAC0D741C1D69B5453F5B13F803989B4DEC185C5CD55293665105D5E7596F7485B5CB3EA5B06C0938FB6DA9AE655F0C95CE121910EEC14AF822FFE2DE9460422B17215924A1738971386F4D26C275835089BDE295AB5DC32966678800B2BB1AAE64E88D6747190970FCC8981018BD2C920A00E70D00938B180BEAC7A971B13EABC2FC80CB301C783D4581CF7053BEF5D7FA768ABEE05EBC7570CBFAA459CCA998D07A9643C8FD58DE5506736E0B884B8F75219A490759032979D6DBCA3CAA0B10EDC7574882ABA698664456C1B4B37A78223564DE9CFF010820A2A543A166190333468B48CAE0C0D2C047A27E21CE58AB10AC74360591914301742B4A2ABD3A495EFC2F83287AA107A9214760E690F9262D5F475B1C3A4EF6663AF0E9466798A54C3A6202DEA1C8EE6973CC022AD415177B0BEAB8B1DCA5EF70942CF2B1DBD4250BCE6A977C303D9DBBA7FDBB3035ED153637D17FE22AEA3EB1D6D480F20D30939247F5B30EB57B6693ADB23D29C44DA91412D0FC8668A03363072608871719905781531E33A8116D3C11E61C5F0C2AE157014DC3E50A5BBEB83E46F0B5D8A5B3E1DDC34D374B647A4395D2DEB5980B1F18F1E0C62EA20F921A8D98556D257E11E65C766EAC9D1DAD069A108DDC634B1094468CE0245C837A3B91CD027E53647D1F677393DD1F139C29959C6EE2365F6A444BCAD6F55DCDCCDF36FF10FE8F9D92FBBB80A65B9AB1E8110F194D39CC7FB7AA7E11B3F259B7881E08C95D029526342CE49A4D07074009D86D112196C0CA0D65411A5E4A680A1A6000A4DA025890616A41FA352AF156142F0121CEA93E07493FB2664D052A4277C2452C8093D8006139548A2823E22A1E81D5DF0A0DDA339CCB88F13B4A426DD11415B88BC8280B510276849ADB9202551C21E5B80FB8903834D34A1C45C23856831C95A6AC2B56B899CF21112B875CCC970A8754CB2969A781F43A22766D052E44ECA4AE414E76861A94A8FA841721539BF86B4AA3C440436093A5F04B7871EEB80DA833D540EC89F7A1B56963EC883B8C0D8553BDAF298C14F6242A3CFECB502438FBF3202F286EE5441BCC11E9B43A44BB17285250BF440186027944F2EC90642F95DDF9FC6E895BBD3A4097418D3A82106042B3E63328AE6C6031CD298B3AE15418D695704FB46B20095D46A5B9DA3A634AE267CDF0DF8426D5A3EDE2EC01B2427DE23B800CC238591AC25D8059BE468B1107AD42165F9E14683CAF2D8C1E29BAA28810C414D600FCC30714F5580C1C2A32ABD436C80540FA8003151396AA8456ECF16287027C0166D7C4FAE23AA089F5C4754CFAEA9C9817CC10C047BB6A0612801DE9885ACE47AA40D5A69D22D338A20A3344B277B7E69E228025CD394C07B6A1679109830C8D2C786B89299D8D22A04FA148C348C15A8418B927D6E00EC98699AF07518040D03DEC928D187BC932188BF17681DE50EE426B676B6E7A622EA1AC049D3186D5C470DA2B4719D543CA0681598AD65CE2963B201BC338FE1C675D4288A1BD755DDABA59681DB4436E2BE0D07CB150D290659B066F1C778FB531B814CEC9E890CD4071DEB88690A4B4E17340BEB90D28EB3E74F47761C1C9A492BC1F49C514771F2955B4AEE287C924EA001830CC1C8D1C72312C75B1991C846121B116E194DEA583700CB2C82E370FD330B8FC3F552ED6FB5A08E610EF70E7B1AB84A0E9A4461C1ED500DCFACEDDA6EB9048707019864104784EB933A9208D72575FC0AD3E0212DCD472C5802E2D831088321FA63D4813044170F7E2DDE22F685BC6A08B64A07A332E878A58793327E83378F3AC212165400996EDAF803D2EC50452090A61C726FDD3C72407B330EB9D40EC3C8E406BC38F49A3BF022A0F0FBD23677D75BE297709D1AF2AC2A2E5CF35E50F8CA35EF4F456FF36AAF4AB7CE807A7351C502E81630D278E11EB0071B84ABBFBC5505EF88BA988ED0AD5FD064D45E0F168C39D50561C14454DD9035BD136CC26937C922DC5A85258AEA6AAB38E791CBADA204C12F4A9A5C4A6D69E228EF4F62CE4CA3FB96B2B75177E3D2D42431A7DCE1AE047CE94FCB419BDD08F525C100DCD3FBD3033BD391BB6A061BA62656B5EA5E9BFFB669A7F63478D9CA804D7A64E96E66F933AA4F40156771F46C92EE14293BC4DE2AF2670F7B9148660D7498C89F2D8A3D16A38B31CA0E2977579C58A4DC5A09BCAF82DDD600586574B183EB98EE6A87F1311D23AAAD9F75912F724080D25CF7E0471EBFF0C1F7023BE1A6A3168A27F9358E9C02BD4E40D3DE4EE6CB55BC89AA0F6F2724CB327EDE1FA2F56DF618AF7775C26DF4FC9CA44FBBA664F5E56CFE1C2D73F7F33FCFCFCF7E6CD6E9EEDDF96ABF7FFE6332D915A477AF36C9729BEDB2EFFB57CB6C33891EB3C9AFAF5FFF3E79F366B229694C96DCF133F1F203AD699F6DA3A75848255593967E48B6BB3D5162D1B76847F83F7DDC48D9D8CB133CE7287FEB9AC0FB11F2D0D52719EB62F9DF748F25BD792996D8CBD5ABD9E2FE958A54C3CD0FA4839B38DD177D8D997157172704E6CB681D6DEB7B2BF4D2CA657E3E729AAD0F9B94FB240251458339F7C853521C88C4E9DD3D452F8DA46009F2293614B957E87992CA07EA73C40B9C174779220D73BB38C81E93EFC9B298C41F0E69713D0BAEB7C8FE29DD1146D419CFEA3FAA7D2C715E94739D5705250508521A507D8EB6E4E73EDE725FBFC6DB5D79A3ECB0CD2F3EC1E3688435A90226CDAF1A1E68423D7CA26F451CFCA49AB854B3AADE4EF83187B27C797E8CF6B10F2A4A0A232A86830A7ECCA12CE5954F1F549414C2A3E27E9B3C2569B4C6FAC6B71C92E1C6525327CFEBF4C6183034151A18FAE907948E8191A028DB95765FACB2E46312A597339E1CFBDD9EDAF502A6760D6C08E1D46E0E04C4D39BAF3CADE6EB115807CAD1EFC034682EAFB8D8059D88691649422D6C52984A72802195E4497E9534C813AA68127AB6091A38B81804231CFA82434BC60073B5CDC112B085C32958050A2F928D5AC0C818D80478517CA41A17136F11E0FE50E5B85757DF04EB02B91087535AC429DC302EC19CDE2C898AFB622CA9FA9B0D953C325411D99827443F5B1A28701F85A42330555498ECC052A14E521743A561A424899A24EF456B857059D855099E3A8945BDA894D834BF6AEA1921D4507FF6254E6789449FA604D0AA28A384D49ECD2D8A69176B6BC4F488691F4CB7643336DBA30E26A31DA64FC160ACE691A717012462E240420A7662DC41A498CF16B4B6841177AB240F4DC21163BE1F8101858F52178E9E32D8849397A7751D80D4C0A47856C10041AC8349EADBF9520E9193E7651C227E88DA728854215B5CBC21C643740A6A4D1137C6466462640C541B5E141FA326A60CAFDEB058336A6AB5C50210E4926C8F5224D0290A4B3A872CC9DB001C9E283F9BD39A670BC979517FB3F084BCCC32C101527C3902B5ADC260078A9B46417251DD0D7025B1D324F9AE113930A3767B80AA28D2C1BDFA00E429FCA12DFA32C5AF8A7A6208F4EBCF9EABC462C6888BC3E263CF960DC5B08B6D336278C4B00D865B32FD28865D8C3F3B0C9F8C0188DE83B1D6BF30255333102BAD19B0FA8E0C600C62B797709AF9048708B2DF5DACCB307B76ECA574891E7A5D1DA7B8C8D2A779567826059F0C9B60412F4957641D28516B3E1F8BA58823B52B63B1BAFBE56C2FD6688445559DEAAF06917AD8A4506ABDD53D12768640D5D0444F0F093B734417099BE6594D33A5C44A9A9463B0272B983B9B9423CC47980782799B26677DFFD9D5EAB484F929D89EDA8BFF56BB364A62267B6C1A025D1AA1B7110DCEC0D343C35BE1B466595A8405E14E4155DF6CDC87809178AA06A21E4B5DEC04F251288EDA4C6480295543533C8F6F549015CF6E549F7D7D25B0223B4625D6D6AE260FB7A336D746B87507B7B6766879B81D87D914066FA7609AE18114713DFA6997FF7DFFFDBFC80AB522F75F1DCC32A4254683E56D3BDD465C4C519E9E32DCA88A666827DE6D34FBBA1049159FACCE7981DD64BF1FBBCDD9B99DA88A136900EDD9FDECCBDDC7ABFBE9E2E2739FF82E0378CAE086037BAAA8B1212E2564A3C12F718AE45F901EFBFD08700045F733116D17D3ABBEC69D064314A406168D5233EA342CA134EA68C042E5A883F4D8EF4731EA8866EA647958871A765917B66E3D0BCA51AA864B1D88C3B352A9520DC557EF739B18AFD8A4D35FD1B4B6BAAD678BCBB2769C2DE36C39D2D9D2D2E29C3E8EE0B02A1FE84A39B8EDDF8109C005871FED8051B219553204C966B25E05C154260540125D5E4248A2899EA70E9855AC78EA8049EAD974E2A4CC683F8D52C6A89251CA9820698052A62593939332A3DD69EF6BECC4E5B45C8D76E6A801CC2A19B606A08E7099FF754A001C51773684239AE82DFFB16AD8A4DE1D7444B68CD6E5285B8C2A19658B1E4703942DADB933F3C7E17E1E9BD2F9D40F993F5F93FC8C98E7596C948EC9A108BC6CCBE75F2422F5B723D86B5672B413577355BF93FDDFA6B28168D79F7BF79CD54C73316C8E9D69AD39026AA6B9486C13A69D82A4AE8FCFE24FF3B9DC7740A819486D2D057CC86839F0EE4C99F033DD9CE9EDB68B62F43BBCEE52B5C2FDBE4B8918F83C7899365E3E38E6A33A22109C6FA28C40E808082D5F11A981E07C47C40208E3FD1033FB23A0F1E169791C87D99147099089355F2D8F53078C1813FE72B26BCC987EE2BCF46BD50CC3A469700A04BF08A32A3B097DD1D905D4C0C12FDA0DC072F486D408BFBEE1D7666094E331DF86615AD5666FFD1A7D98C53D42CDC2B58352D00C1F741B9049E8C7B5731B1156BD5C497148D8EF27E8E251A0A043174FD50A777B083933C7A41DFDCA9E059A54479374142B7C42FE62B7CB9649818EF7E9E319F3B3901175831F6673116A671FB6D94695E361116D9F6252F52253669B6787ED12D11F6A2E4BFDA7B5D4E9C67C98F08CE8C32F56F3C3D99C1B678F5925E3ECE963F6B4EC4CACF9E16C8D5ACC9EFE9D893F11F6B48C3001DF10D6070117079E2B83E35816E44E02204208FDDA97EB75586ED27E5706C35816349802FC54612CA70EFC5483F25D1EBDB13B62A27387E2F19870C33018E87AC84F4D60640C0C05BCA8CEFC937D7396877A6532F4A3399DAFC9622BBCE6567D3A02F5AD1A970E5437B5C85DD43668E35B2F2BD5632F1F730D41BE1A7F8178F5B567CD4987C4456BFEE443D292E26A56C70E4ACB6C484E41554D170F2E9167C10D0F45783EFD8E9743D4D9E902D99E6212FADCECF256A60389DCDF6F58C6A6016E6F782F70E71F933610077D5B7A6418E1F47D620E8E38E81A07EDED3BF844D3B3C5C189180157B3CB280DB066559132330414C5F151BBCAA259263991EBAF368ADBCDA8E843ED2AF9DC8DE2A54D7052BDF5F048F3AC4EF0958441657A9B8AABE1A38BEA1A1A1FDB13FC0D1F5D44BF391F5DF7997F46E552322F8C7651D232502F9AF2EDEB977C8F428EB25F7FEC6DE3344EAF5784C7F2E94C3EC56E2B76415AB25A484D14928E40976A51D58132E5DA708CDA948214D8750B10D7A69B4D370ECDB24F9449F4DFDD63300EECEF31A93D9B1F3CF28ED0FE1891D737F25A32D878E4F569B10DC3922206EEE23AD8321D2565B64C571447B1B992ED8B95A56171272ECCEFFAF3F293D9348B0E9275537CB3BECA22DF65E6126C760DE25426D67CB56E997CD48F4BB0E2D7F4902512C3CA8FD6ED92EC68F6BB1DBF2452F4E31198A7BAB9DA8DAB8736C1C138AD66B9A88C5601F4DD1DB096BE1B84A3BE9614B28A2E3E07B949015EE4E4D27CF7036AA9226D07D40941FA019E1FE3D2BCC7A21442F26094DF83F4023262D924FFB1806AA0DFFB77733632C47E9931CA9051868C32642832A43D177F2343EC178C6632C4CDB9AF1722FD5F4E1BC63277B12260BE8EC32C74D5C40C96BA3A02C7BCD82DDC3DF022F5C97EA1CA5C4B00D69762A2652BE1452B97E2D45279F12A255AF3135CC43E392C6499A6C82B5021CD9E9F20C9635AD8EAE766074B5BBE113FC5E2969DFE90833888F5280904FC9253102B92131550AF02599392F8C0FB15C8AA7C5258964F81AC4B51DAE09D0A6165B2720819AA6358B10AA2E16758B38EA261140D27251A5A5A880AA2E1B496A2C35826B2AF80F9D9A10A4A060B4465697C55CF3D62C66F45724956A7B850A262DA1158FF1AAE7760FA332D703A71D5D92B75E2E8C9E7471C2A6BCD6C62D9EA729C68E86C6D49E5B06C75392BE3C2D653D013CC1B8E7E020B2764A0255485F13163DF9F948EF9D2142B1581911492CC69CE9268BA12FC61F5379B331D3362DA11B32A4AC4431D4CC211A82D350A3AD05A4D039C945647EF9D0A7092456BB8AA6AB0894FB6549F7DB7DD18F849FB6E4C5ACF4A9741858BCE1D51D12F2A5AB2191854B8980CF6A838058321378566B3AB4580552544C670490917559B7745196031597EB75E49CAE4B8842350C62A1E77B480CCAB775E3D968C048DF13229C80207AC854B3B821563C147D7E5E2D0F8D8E212B1E0A3EBFAD09C8FA720E80B499216AE78EF350142C86C65881656AAE6BA94BC32A429B62B4390A4907404625FCDEF6ED66055035CD760949D905D45134358DB584D426AFFEB979AA38EEB97C172B43DDBBFE6A8A3ED6FC9D1535009B3E8904B194F7D805031500668497CA0EA22821AA09F6DEEC62D56F18DE481633E5BE913B061ECF723D0248A91EA408D54B53BE910CA456972D214DFEB0B74D8A52A688AB738C5BAC126F5AC9AEA5172D14BE32849A3D492BAAB47C945D7D98CD22968B945B4CC5F33F7139D3011031D87155440BC2C216AA5EAAB95528248319F8F4025E17CEDE2347451B99342AA59288BA12AC15B0A213530297D1F182DB9E7A22886C4BDB6CED495DC7311E0E6DC3B09F15DEAF5000B1505251341AE2AAD3558A0450B976427D731A262DA31487835D73BB9F4425BE026EB598E62766708F3561C3D4078D957D6E2858186AD4E4A60E06C6DEDB075C35627EDE0C0D653D01344E6E42EBAFCBCBCB7BF1D2164B6BF811656BA1FEB52F2FE064DB1DDDF00490A4947A020D4FCEE667FA36A80EBFE066527E43BA68921BCF1584D426AFFFB1B35471DF73706CBD1F6F6376A8E3AEE6F5872F4145442F1E2DE627508F18C2D40C6401DE045F1B1A265A0D76B8BEF369B1C754C4F8020976411A7E1297A91A8D18F3687A0E570C9F537732A372FB38CA7517E3902C5A6C24D578FDE92EADD1FBC2D06147EC7B2480A158A16AE874BF50FAA0B5542BFFB1E9005E3CFD69FFD8897701648971F7BD6F21460CEAFE78E003B0D80B5F91C6F0E30E7A7788D01760AE6CE65368B7D6F0783340C0C1DA41C363CC4D67C9AAEA2CD547ABD9E4F31B703A6D14DB421B379C993633E5BD05A1D965F0503A7FE6671550C3A11E270506596112995BF3826506A3E9BD3E21F7FE0E809491616187878DEE5243E7AA1DBF18E3876FBCFEDEA1FFC0689CB0B24D8D953B7C3AC98A7C7CD7554C846E98A63F3D5921291E8B7870820562758D2CB23975CAF3280204DB1A4282D655CD659ECC3F100359A624E913EBBCD516BBE5AACB3A019E51271013A4C607F2A01DDBA72DB0D635E64E5E535F3FD08D682A85EED602158D4EDB00AE455B16045F1897E1628A3A4855A9814CF2A2AF52DD2AF3E7BDEBE444E54053AF5C6687AB18226C5AF0A41F90BD508A99ECB0DECE64DA8FB4BAAD00F01E36928AE8B86BBD7DB58177215419EEA511C7C0F779140E17D0EE7CD6F4C14A18A26214005B5D902D551A705A8861A33503D34314045D0023994FF85377DA04A68A25F458D552454D22478FA5F1071122A340F72582DCC6138D5D18770872C587B4B54B24C52CF2ECBD214B2F7578EA69021F1D1141A4DA1D1145256329A4256D58CA6D0680AFDD4A6504B9B6BA52964BFB3E6620AB945F6B5B3851CEB303486DCA89B5B438EF4ADCC21B73ADCEC21B7BA6C0C22F71AEC2C22C7A8D4962691732DC63691730D564691732D5656915B2D366691470D567691473D968691474D869691470D96A6915B4D36B6915B0DE6C6911B7D53EBC891BAB579740AA766EE9E0E59323B78BFBD86D231383DA3288B4321217342BADD41BFDA9C1126B34B7C348D7E74396B8C1D343E8A9D58E5387571DBA4AEDFE5F52D3ABC9204A8137C8F4C56C32E9D99ABBE873A91A9388ED9BB93B81921874790C6116247A8ADDB3074841CDEA2B118A101E9B78BDD2E5B2645459292ABED9B87D97CBA78E06D2A95A85495135598984116D28F883926537F986787ED1218550CB33929F8A0D4439D280E60CE4FDA22AFC62EA2ED530CC566541D4C8662593209809E44A821AFEAA0679FF07EBF9D80183287190D4A34AF0D528360644C6E243C1C1ABF471C2391A2358C6C83CB5962486A9F2D72EC2203B538D2AC9B8F74A7D10BCA23705821E92C399391E6D2B317A16F8D82CBE9546471F1C973F4B1E6D982C0DEC8F60142AD7648ABF75192C65B310BB5DFAB2FF4F7AEFE900F6FF414135518AF774DB9529517DDDA3D474B5CDB1345BDCDFE4A1EE32D5948BFECF6F1E6559EE1D5FC7FACA7EBA4303EEA0CB7519A7C8F77FB45F61F3151DFBFBE7EF3EBF9D9C53A8976A468BCFE7E7EF663B34E777F2C0FBB7DB689D234DB175D7F77BEDAEF9FFF984C76458DBB579B64B9CD76D9F7FDAB65B699448FD984D0FA6DF2E6CD247EDC4CC4E21559232AAF7FAFA9EC768F6B76D899750CE46AE707EE3A9620578FF09FF1F7330570DF4EC4B26FE1299037E4DDF95FD176B98AB6E767B7D18F9B387DDAAF72BE9E9FDD1DD6EBE8DB9AE4F81EAD77B1548B4493F1D90B944576FEF1297D8C7FBC3BFF5F45D93FCE3EFDE38129FECBD9FD960CF51F67AFCFFEB76FABF2EB59CD7645D9ACC2E26708EDB707033AC41E1509D9F48F23E0DE43D6885422AB190C2758A1B76A4CC08503C16F3017AB2C218A30BD9CD584F7C926CE8543BC4C4A7BFE5F6C07B6A679BD0847B3783D747AF395028E90DAE46B0C86E89BDF895A24F29F24FF4D4DDF78C8614D6A3AE29876311970DE3C082952AA5D3A277952940D294CCA80115C4F53A8AB7F7F6D8B98FA191F05D137AF1DA8D2877B4CC7C518DE222336591ABF04027235EA6E820BBCC56724B560AC794386A71B08308B2D31BAEFC87272E345D87848E8069AD3A06097CB4C86A5291B58B6D40886681B09188640789325F1B656F2E605465D7D1DDD78CA03C2A3B876DE1964ABED5877D4C2B7188D815B170F8ADD1C213C61179028D4B615FC43629F7F86CDB15555F9A09ABF7915BE6E56922F4B2D857692AE88E06E687C4B3434CC5566E5B26C09EF4809C407E93B3B8C069A21101681B4532EADAA0A876CD12C4BA9AB951459679135F004E83AD16811BCE0B3E9A6A8F5C02036D2BE08E28E99B9A08821F03348D7DB68F675E1D6205230F00A4F18B8500B3C6E123B594EB6FAC778FA3527499D26603176F6930F1A72EFC16388B66B5CD6FAB63E85E7AE70730A1DA9DBB22A67659B17FF9954ED71CDD216E1E60720FFB50C4BF6745632C76AE1BAAC65ACE5227848C40AA8F0318956E4625995F310E5C54F5B2E96476CAE2260EBCBCB93ECBFA4964E01D9734C20D1C1DE5C8B33C40FF3FEA29C257B2AA2BC5581492796130EA0936F261000E78AB7F5CD520DB46E220B93ADD7F6958DE6F2F2434C171E6A8829AC60DF09E912B7E6F8C9E7AE1DB257B3FAD6A413A0CA8B9786269017FAEA9A5C86A42C1B16208AD960B6F3BFF0C6ADF138F3D763030EB4C7C0F9ABF1CB66EB30B016F75632D7AB68B9624DD1503BEA44BD2F48AB57965B9C36126171ED0194BC7140585020E71D782C3CE8CAA96A0C630D19CCCCA2D0C39D382F6DF1D9C805F78ADF38547C7CBA946076161D3C964F9559CB3A609CF6358B8351CF16B3066D0ABB8070694A964E0F59E2CF1246023A7284A110528C2C56A475D7715F82C44534784E7087E59AF7C460D67CBE93236F4E8809C234C97F923CF94F14A63D9E93A5E2504B1386DD8D75B2CF14B1E94D8C34D56EB0B73504106F77E38BD9417662261E99DFF0A031B67F1DE268AF40FBA80FF7CEB320C77BADA65111A0C7790E418F45984EA0B26C1BB387A5DCFAD4A9C3E9B84E1DE4F108C3A9434BB7307504DAED72B2BEAFE9C446E4B2A7D19985BA68E0034355EC15B775455538F03118A1ABED8E277401D87438E1CBB126A3C9DE610E391B78BA2D730E7B7BDD987DF8A31C463C648B0767A44CBC75090D3E546C21A19107790C25342DDD828416687770F85E7A19D36A7B1378A0C77877B3281B5848738F09FAEC4D1202A1EF8B306D72F1D70EEA5E07F0D08E19AED40FCF0105144FCB41B991F7E380AC78BC09202FFE0A1C905BF3C61B50027FC60DC98C071E011C488A77D8E0EC5884033033FA961A9C1D7D2C0DC88EBF878665B6B839A17ECE0C2B00BE588665461F24030AE06F8E01996D861F0D5C0239253DEC107E66BBBB0EA58BEB4E44B8FB9E2E1404DBDB89442335DC8908C2C49D90B8CE76A52178BA9C9CCB9297C7910AB7BDE9484358343B52110C3B172AE2255B671AFC7957673254367AD261EC22671A5C2035373AE2E949171A01B0CF2F4C9D28C82B322711C904C937A562BE8883C37F1AEE8D21E1550DB6BD68C9C0EB8E2AEA234EF5B75F3D56337D1DB3B4F5F5F9B8886CCC6D1F8712E61E34BBC956160E7B920A717199F9158BB21D8CB03E1A9C47302CDC53E31CED068A9D65C4515230F875CE614CE2F9C5F4EA68AEF7F677F2F5F80484C2E7688AA1AA7C509756B4511BB53E7B47F7B32F771FAFEEA78B8BCF2324F1CD55E38BEA79E9E0A0C4B62A4D4159950F0C4AF57ACD1C944C4C4ED1F3F0309B17FA702A60F37DFA78F667B6869C1479DCCB57CCD7DBC37A9F3CAF9325A9F9DDF91BA95F0D29C86F5250E3137882FF2411249323CE638427D19A14D8EDB7512247F9FFBC4DD265F21CADA56E08399159A772C64E28713165163FC70421E91EEA71808A297D4114E858C2C565554383C691BDBCB8FB38BDBAB89DDEDF7DDCA1F0106D82623C9B8FC300071614D8D29A6B171A424CD05EC0513A1BD960CBA8D8E0DC92A5CCA83E9963C20A5CA10405100D104502BA09638E034BECE13576291B667324425F0B8241741616849A8F272310608E6AEB84378DBA400375FA1338C0275E9B419436088A5164BE9AE341306A0B42F45B2B684022D6A0430384A8B14202C84CDBDA3A0040D54EE6090B301E9CD3D0A91020D4C6E91821A9153CD88D8FE2E50C6344A8F8EB527107E06037561884C0216504692FECC734129F26D88305A229A5B50217BCDFE8D0A94235D9A32660DDBD48151D66028B95FE90D29F60B183C8114896FAB124F92529A5641176571BC94213ECF102D194D2DA932CC80359AAD98D9C62B2874DC0BA3B008EE2F9316C8CC5ADF462709B8F43020B1CFA051D2CEC95B3563162F0CA5A0738E10E229560C1826B34030C9E5E2A865748B1C24C53AF001826A115B428024DA09041438858810661B543AD5D38C4E8D112539CC88751EA217533597A430816C1081D2834684CDB085156DC2D48747E122B5356ECCB7D5ABE1F7A76B12C1F219B46BB65F4286F35E5EFB705C3E7906DDF6095766EBDE88014D270E9050F3D982B7668E8D140919EB71D8254E9D9FCED6F6D6DB748EA57C8F0E15E4A518385916A46570812C30EAE986425789A9A05BC3009AD804515F506193924CC0D98F7CE1F59C8A0B4D7B8AE3D7F7AD48573FBF586B35E84921D74FA9648CC451C837D46E0DA4E3196DCF763DE6B44C307A1C3A3BE24D9D6AEA3A6D66E0E235457ABEAE3089ADD47F92E567D26817EB63C95006C40B6BFFB88854442874A792BD6F27C82D506A4BAE2AE21A2131D41E1D1BDE0E80B167662A3774854C7DA091ECA0B270FF3ECB05DC6F8C115FE0C7D796CA5FED6C9D289BF9104B4A34E69E7EC0B14FB081D5EFCEA9339A01437B05CEAED03538B68FB148B61B798E5923C94F0189E24A2AC0616BDD2DF2E9EF06A3B5983D35BAF045270F03176ED2DDD91AD16DECC7773C56521EF82ADB5919852F8E8E0C11B5C9061576B9F871E4AEBCBFCBC9D83917ACCE7EEEC2D5075A49496CFDF692AEF1C34E6E7EFC241C6E938DFE0E1E27AEAAE57B08887FBF5ABE980E7FBFB5A49F773CADF76158D56DB032C7402242C2E7A121DBD21C34E681C1934E4008C6DC18209B4D340A2F8785A709038AAAD138EDAD6071A74472BC322C2F660EFD09161B7A9DCB3A060EFBA32974775BE37A72BC12DF94CC0A831589B5ABEA2EA70AB1C0E55E3765BD912F348D53DC24EE39EB3144C270FB7BE6FC707ACBF0B3558C7837BD0DE913F06A035E1EBB846345F4F065248A0BE63C551E1FECD87A421F4F0619BD123C40F8BEC01887315FC784C510747A3F8C01378FDEA954C632027626426BA54D7E936937243A0FF1D4B23C80C767FD2022FFD6E4B36C1D2749091C3B2D5AA887E3E39E0608F6FA083A98CE8DE0A7CD4357612E123D79757D972113DEB74D10C0F74175C27717571728E4B381D1D8533D7A5DA8E4E6DE691FAF20D6C0644CA739B6C5C407A68B3FCD8CDB1081754053CF6293F77870EAEE2158D5641A5AAB71B8D56C54434C5951CDBB1D66CF4F3C963EB0E7908101D65E55327ADE24B5D7370847D38A44BCC5FF429DD91D69D9F5D3C3D6DE3A7681FD3B89D978764BDFF94D2DF77C93A7A4C963531FAFDD36E9A6D9EB31D17F4F373B42575EDE36D8E8179BC8948B397BB77E717EB75F63F3F6DCAB1270DF82BDEEE92FC5AF37CB922B9DE9D3F7E135DE99414EF6A1323B7678FE4E7A7548A473AD15193227F7AD3CCDF8E121DBAE503520D452D092E0AA24BC3DE4EEAA132C5C297E7B2952316462C94CAE027C182117B9A60C2439499E191BD5865C9C7244A2F6735C97DB2E170FD791B2F935DD1EF7F312677BD0842AE78417D7AF395CE39527613AD117A6F7ECFB919E583F1372F680C51848ED0E8041A4394A89ED030E210DDAF1CA25845DF0AF1B041B890D2FE73B178A6966B64AA26FA773DD1591231A18A35F4DEBC3621989FE9815EEB76ED7731CBC59E578FB0C2A6971D5A8728E947B4FEAC681DA2F2F143AB99762E03FD0F51F3849F783C45FF69B7D846CBD5DD2A89378E346D867088E2781C426E088728A37C86D08837F57309839451E29B1601EC0DEE3D88A03E3A4ACFC53D97372BDCB49B670B533300B2255E66599BD395427288327784E4494372883AC40F92E6FCA96EC80E5691F09727834C319EA4E52C6B653D2D87E7F1B70BC9D2729E152BCC9A66F1C6A27147F337818825D814FF96A0C5ADE138582532C2F114E1385805E20347B3551A171C625423F211C440146759CA042CFABECE229BD9214C2DDBE2C12797009B51DC8FB07180CD4F2996C3C3C688F5F569F7214AF8D0934A88007BCC7655F544663867B2D0EB00FB709C84B2F52198DB8C56281FA2421A513EA2DC0EE543D49FED6BBAE669E721EABAC0138121D7868BB6E1F51025EE50793DC479EFCC6BAB8545FD66F310673EF376F171AC2B8E5D0D8A833E4411340EBAE7A00F51161EDDA09B3BD447012B6EEFB0048F6173A70D0795DDEE8E3D9A46C93DA2291C9A7E429560A53AEB9737072BC3D990087DAB4E90A2F880AD3749AFAD75E961FACE103658B93E226C20081BACAC3F72847537A2A34A020D419660FF86605B26DBA8287EEE71FF09C5B71193A8F81DA240745718F0BE0A4BCF7F27F76BB2D8B6792A9F0EDD1065DA3874C5D00D512CB56F780FF908D974617724A4C7655DB8F9D7C2F1CD211FB01A31101603439492BE1830E5D1D5EC324A076BC15D65D12C0BB98DD03DDB8728A04E80ED439409C3647BD9EA51CA70DE13E6158823709EC4E9F52A5AAE583F7D80E82D59FAB4204D5D195FDD7780D3283D47380584D3CFA6154CF5E6E27AB8F23B078DE376E15DA319ED0A865F6E11F8CFA2835B6B2AC7387B6AC3F6CE7B1118F1D968DAE10D607DD1960DC8D2E9214BBCBACFC848FBDE3385FD650E37A186A7C1C609354EA8239E50C3D3E1039C5046C3B25811945CC7A3E96039339F7C6413B313EE219FF24678CA28A6215E72EAC94B5631AD709757153782CA2C61728C66C03839C6C9814C8E51A5BBB19189AB3040EDDB4E5C88459C0264DBB807CD727F78E2FD94B83F3CF91180FBA64F34543152062920DA081059287681EA11BE0232CF3CDF01B1C5C71045D8888FEEF0314421EB8B0FC37828CC03EF4394B263C0AF70B263B001BFD071645F940F3388C263E2FE3BE4D14620E9BBB0E2A6F41015E338A5C7293D4E69744A0FD196697FB158436390464C705C57AE0C96665B7E8C82E94354338367FA1005811FD34D977D95F81DA42C684121956E01816A1BD064583F44897022AC1FA25CF065BD61C8E7E530E3198F2BA271458430273AE4A80E3B86F93464B6CC432C880492FEC1DB97C38C963DCEE471268F33599CC943B4583A7883A144C4202D96F0685EACE21BE7FD425880088D6CE5BD816A0C87A8ABC631E4C7708852CA6B0CCD8E43464BA2340729A4CAA68744234FB10D3056EC1EA23C1930BB8738F57DD86D78103A2E171F03B55198F60705A54CB6156432DC1FA4343819EE0F5238F872DFD4295D2D170729205A584097FB0102D596F6036AD60F513A9C08EB87281A7C596F1EC078B13A0C522ED48D0FEBAB2B02DD84A49A07DF61E85906DF9967C6C16C80D2372FB3ACCD3946F13344E136E2E778F0334409ED871F23FE5C66B37888F73289D67A9AAEA2CDD47927661ADD441B3295968EC55787E557C71BE082B3CEB270FDB2AD5B712ED6981B09F16C977D69614FC5F26EB2B465695D9E8B35675DDAFCD02F5CDE7C670D285FC804E696964369FE853A0702D5DB711E1418A1E650BA7A10C38D82F8189465D8211FE4F29E3ACBB2F242DE5260D158D4A1B6744BDD313CC36CD41DA3EE1875C7A83B46DDD1B7EE18DEA26CD41DA3EE1875C7A83B46DDE12EFBEF9E0E59925F741DA0DF69112504010177AB6E734845862EBEDF7EB57011B7B9DF4B477078ABBF7104F9111C9E0DE63782307BDE93E6ED5F487BF6519236C61621F821D9EEF6447545DF22D22FBE6565A979BC07ADC332B56CE33C5E7F7FC527B31D3E5B94CCBBBCB8FB38BDBAB89DDEDF7D948022D6C6589252554C1A54CFF4E2E6E2F6EBA7F7536D250D16A53A9A24A88ABBAB8B3B52C39DBE1B95452BF7A14A003B70F565FAF58B967663B548D49B2488FEE7AB4FEFBF4CAF3E99D5505B367025752A5ACFEC6271FBE542CFA8EA3977B4363103C838218FA64E6A774895D114A896F9C5DD6702632D7966512155C0A44155CCEE09BC169FEEAE8CF946CD47947134878A7334930932F03AF51516D820D3E8F3F5D5BD7127A98D8A7692E65075926632E9245EA7BEC2A293FFF872B130E96463434B353549502DFFFEE5E2BF1379642053194F07C44125EAF37443E0B3EFC0C13531C9485D4C0E4D6DC2E25BAA4E4887EABBBABF20338EE8275336D2C710E0EE31C948F7981C9ADAF848CD407D6206A8C6C515D1B9D7EF4D7BC8B913A40AB954A8B69BFB8B4FA658611D0F9012A689881A9E7E2146C5C567A32E95FE15B03F6512D6993255DF13EAC4807A4213919E108EE5A242AF566A4797AC54EA1450A55C7C995F4CF50AA55E4FCB38AB12407C5D4C3F7ED22B796EBD0D0099498551FCBE84964137589710341A3411198D7C28C87431D31185E705D60F4512AA1B16577A33AFF026430677F91DB4B4EF67EF0DA65EBD4C8238D4A4810CFAF8E5FED3EC8B8128A93089A24A4847C4A52978D94588C2B887B321755B2D5BCA56CAF664F11936260DBA35BBCF797D753F5DE4924EE621970CDB936C0EA1B68BDD2E5B2651BE6A04D65F0FB379C12EB29A62328A2BB1261747BBE8CBE3D99FD91A5AD291DAB8AF13BC2CB4F82C8AF30942CF267CD70CBA5DA3811BF51DD4752427DE05118F45F39B8F47D0F9724D4A86B2691530E45226C58873ABDF72B8AB4F8AEE5A31CA678C67F3669DAC1860265B1BA32B2EE38B92CD47EFEED2A526E90835DBE4EE42D9F0464B6BDBA2D5CC57458705CBB22849BF7977973E493017BD01729FD1BC411ACF4F05D0BF514E09B5D7C29E05ECEA9BE91B5D8FCB8CD094D08057F003340046BC09206320223AAF44087428B882676E0F1FDDB081755D30DDA3CE0C042178090D4204274A8310C41503B20622A273E9D8B3A6F6B598B145911BEF90E8E9297AD27C3C1A56084F37CF79B78CCC0C657EBC53A003A7E89290A2668CE472AAB982BB921C4C24EA2533E0079E59D9114884B09F8F8B0D0A9302C8D58AE0B46398B74C50F418CED8922468BDDB8244D10C3598B53D45D98D0814DFC99BF3BE5B9911EA0278B760376FD12B3149CD1CC9355D730677397B9A514A7E20395BC145275DE79E3D532DA8E08C780700A77BD17EEE7B6FCB2AF61DA2B9665985E6552E9F856D807A014D3FEB96D0C0CA2AECB28AEB9662E0C17C6D75BDDD51A751C3E6550CA17976D82E63D07F806455F810F88D8CD283507F5374197429B3A5EB94F0DD5F44DBA7786FD4FD2AAB42E2CBED871BDE53E7B9E830733A3090CA8332AA549DB40B54E939E6BB9E0526B8715D1A9732C3C887A4CC1F5464F5EB4FA25D34F225C1B9DB6387931F2A80EF58A904A19CAD7990BB507F5C871410C0B2B6D6F91E46BED8D8D5773DCFD65AB7997DE7A6CBC5C7E0DD55F8C0B0ACAD75DBD69BE8D07D76678DD9EB52D83F9A128177F7500A206BE10CAD3109B7923425DADE3CED9239CD2174D56E2A90AB0D2648473DCAA2CDD7001E0162FDE56712081B77FB6D94A4FB870FDB8C7AFE1E16D94379D601F21118960DEF3560CF6B9485A0F3183E2B87FC7F6FD42B068DBDECBA4E6AAB6F6C6838BC7B522E35B085C35A35B4E9E73EC6907DB050034FFE800DB4BBEE482B3CE4A1C34425A6548784DC1C65E5136F73B6F7205890BC1A6F197B9E93BACAA0B39ABDF49F7DCC4ACF0134B77ADA08274EEB69433F77C887B7939206BD6744D3DE4ECA3369D507F2739F6DA3A738BFD2B4DE155FDF4EFE3C90D29BB8FC358B77C95343E22DA199C6FCBD269AE753FA3DFBBCCD9EE36DD17EB64575963AB9BE8416EFA3C7681F5D6CF7C9F768B927C9CB78B74B7245F8355A1F4896F79B6FF1E3A7F4FEB07F3EEC4997E3CDB7F50BCB8CB71375FD6F27529BDFDE3FE7BF7621BA409A99E49713EFD3FC22DB236DF787F282DAC480447EFFEB634CBE97634984D13E7E7AA194EEB2D49050C5BE59FC1CA78F71BA5FC49BE73521B6BB4FE7D15FB14BDBBEECE29BF8295ABE90EF7F258FF11627A21F089EED6F6749F4B48D36BB8A46539EFC24187EDCFCF8D7FF0F84B00B679CE40300, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201506250255427_delete_constraint2', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7DDB8E1C3993DEBD01BF43A3AFECC5AC4A9AF97FAC6720EDA2BB4AA316FAA49D2A357E5F3552D5A9AEC45665B6EB309E86E127F3851FC9AF60E689C94304CF9959594A0CA0E94A924132F83122182483FFEFFFFCDFF7FFF6D7667DF667BCDD2559FAE1FCDD9BB7E76771BACC9E92F4F9C3F961FFFD9FFFDBF9BFFDEB7FFE4FEF3F3E6DFE3A7BA8F3FD92E72325D3DD87F3D57EFFF2DB64B25BAEE24DB47BB34996DB6C977DDFBF59669B49F4944D7E7EFBF6D7C9BB779398903827B4CECEDEFF7148F7C9262E7E909FD32C5DC62FFB43B4BECD9EE2F5AEFA4E52E605D5B3BB6813EF5EA265FCE1FCDF0F517AF37AB78AE6D172F566B6B83F3FBB58271169C83C5E7F3F3F8BD234DB477BD2CCDFBEEEE2F97E9BA5CFF317F2215A2F5E5F6292EF7BB4DEC555F37F6BB29BF6E4EDCF794F264DC19AD4F2B0DB671B4B82EF7EA95833118B3B31F89CB28E30EF2361F2FE35EF75C1C00FE79751FA3C5D451BC2EFE7F333B1C2DFA6EB6D9E19E0F11BB6E44F675CFA4F1416043DF97F3F9D4D0FEBFD611B7F48E3C37E1BAD7F3AFB72F8B64E96D7F1EB22FB8F38FD901ED66BB6A5A4AD248DFB403E7DD9662FF176FFFA47FCBD6AFF6D74399D9E9F4DF8A213B12C2DC9172BFB461091E4BDBF8DFEBA89D3E7FDEAC3F9CF04CCBF277FC54FF5870A215FD384CC8498FEBE23CD8EBEAD9B0F134DB5D3E826DA3C24F1B2FBCAEF9EA3D766A8CBDA67D13E5E9069A72F7BC812B1708B4DBF8BFE4C9E0B080A0D61F8F747BC2E72EC56C94B39D5DFD0D4C7D9BCC02719E3DFB7D9E68F6CCD96A5A98F8B68FB1CEF49873234CB3C3B6C97162D9CCDC92C48098D146C223B6D1ED9BC4D3B912CB4257563B17C75A74C5B5C17CCB905B498D2BDBCB8FB34BDBAB89DDEDF7DDAB10D867348CC45B2410C7E3F692495527E3178B0115EB4589F928B69BBBDFCEA51902C5659F22989D2CB595DB78908A94B5D2F6C4ADD1C08B8A7370F5460C5CB6413ADCFCFBE6CC95F9589F2EBF9D97C19E5EDFF9BCD3CAD2544084122CE4D85AC71C27923276C605E97EA13E54DCBED41DE94ED4153AF0ECB87430FB32B4E0DBAFD775DE5FBED415BD52C21BD4C14B5BC7B1BA69A3825B33F52D564CA4C036921722F9CC8101460485D29CA0F8D4A353697AEBE4E1FBEC222AEC03762824889B2A524E5B037941402D8C34C125BAA33A7CCDBFB6595C48762C6A8869ECD078C7B938C0F3A93C776C4ABA2C4B0BF3D44460DADB3E26D2D73689B5B65736C31A1F672BDCA8C9A4CF3E26DAEB2681B5DE7736CF56275306A71910F6F2D49D6B634CFE3D8CA7F1CA2BD296F695EBCB555166D8BEB7C5E964FAD87ADCCFBA24CAFB67DD56A07C3BE3FBB435B7510AB63B125837147F0B1095E93EBA2DC52174AC63EAA2D9D10DFA80F1BCCD7A5FA447DD3727BDC3765BBB7F5A907A48FEA4BBF5CE2E492CB1BDEF67C9D670B1F6B5A34D15F675977F35E39EB1D2C36D4A5055875EE73BFB6C8ACA77F59B0770950B7DF5108D4C5FB98887CDDA673B15F4F05A97B7A206B9CE8A507AB21DF4BCB8A75775DF9E774FFCBCFDA7249BA22864053EA3223132A92BD440A953E5D3CEAD63AECBA442ED0CC75553E49DD2B33B7B0FAE1EBC31640782E4D07BC96412CF660115B252B579B601E48D8C2196D57F2565AC17879ACD30D8AC69A2F8604045B2D8AB8B247AA249012F328FDB28A368353294CCBBBAE7A96A59F9246936564F00C4C3D4E929B15F217E59D4871717A1A897CD31ED051065A5FA5295B8EE5915A8D66F4122BB4F936F2A42AD4A720F1100BBDCDCBDBE8268B921EABEFD35CBC8D660F8B5E7C5B7A8687D952E3A5AEE762D9C8B2C64DCB8CD81FB97406C5124D25B28432A7914840B2248CA03CF6BB2A0666BC970815AD5FADACB56FBACA7A97AB038C77349341EBDD77306A0AAAED0121CF230015248BBC6588E473828C4AE336C948738554A8A56216A7462EAE2FA3F4AA308D74C860B222B0A039D49868B2D90282D34B407B99745866801924E6C2B91CD670C60B4FA0A950BA7AC1A96AA8B1A1C588641B538B16EBD3D82A34B7BDA1D597C257D71B7C7F4935711C54AD38C555EAD8CB934095918B2BA12ADCBB2F216F47479E84B2AA1FD78FD0AB456BE62AAD0D22A5C5A5CE097B0BF0ECEDFA0BAC0C46BDC740D568BB8D2A27E171F492E3C86541BE4DC5D63C8C4DAA5EDDB0C6BB549E6BBD60E207DCB1D14BAB5636402C0EDBE9B6405CC5A59D83D861874CED1C0E2735A515B78BD55515EE5D76E6EDE8C8EA2AABFA81ACAEDB880CEEEB15B3ABD2DAA1F9002699CA81C4B97C009F93303FD19CF01CC5B38734C93C9C60D259418DB3CCDD18739229472F508E5C44E4C6185BF3108CB190D65027331FB486F482A2156BC8E278BCCE1A52492A1B8BC269F7B629D7EB31F9858765C014769F42A59F6F6886410F4223CC81BDAB996A4784D977117383FB377C2648D722396D4544638C01ADAE131FF98DA9A6C56006493CC0B9029B3176FB620A8686724233436C29BE68C93E05D85516CD326912B421EDEA9A7AB809DD9D9CC52FB21AEFF8BA080EC5FE2F22624CDB5D8E9A4AE6713914AD57E5933AA0CCEC656F081DB299B35CD1E39BB4C73C09F365C66573D56710AB8C38BD5E9191D5F830C25C29244B9905E9E9CAEBA6928FE51264168BEAD668CA3BCDE2C69EB199C075A93EE76E69FDDACFDC9EACE638D5541C04FF0FC962DB42740DF713588E26B13801D486B3ABC9C91CB5B2343969C9FE66402EE69E8DECCD3BD9CE0CED9DAF1AC3F990A419C27077BECFB6F1A7388DB744813D7D89F6FB784BA4F25D96EA3560637EB65B518F6B7BA2C666D141ED93839DF7EC7EB0E1FDBB22CCD08BB3B284DBC1BA42CDDA91A5D34396B8F499B1878CBBCCDA50C1CC03E3C31C36673C95C738E4A3A0A66D5DAC08E7AE639529C36751B45C9951EA803AB7D79A44EC948D54E7CB0E54AEFF9892BAB0FAED4526B3FD612F36F32A038B4EA63D2EE2F3D9458432755A8BD18A05AD88528353F381C493686A9A093327F1C49DABB7914D4CC13E975C5CFBED575EBD5E77230B30B3FA3B3D10EE789342C4ACFABE851356D96B15969146AB723DC71AA5ADB7076AAF71340A9DA2AF7E48713FE7598B913FFD0220BA07A50062DEA9A3578491184EF799946D0D222E66D98C10BCCA960B5B81C1960C2432CE2EA35D5CE18C597B9D1BE8A7D9ECAA875B4A85C821ADECE9E852B411EAB63C05D4300E51717922411A0F125EC90159C00B83503E872B83B4C3F014AB92156D463341A77D909C5E6BDD86E9B696645EAA6F33B26CB99B0DD9CF1CAD0C484DE5C1AD471E7F61E7176446AAE6A1AB2149279BA5215995EBD990A4AD7732247B93EAA521A9AFBE7BC47ACA57C098D1486227DCE650B38D83B30C752FDBD182994587B2D9BD1830F9105C2AC390B667C00875DB1E63AEF906DDD92ED30A4339CFC25CD7E652E4A0287CB28391423B054FA22A19689994081925420EBF70063503AD2CFFB250AFA10CEA763B8433E86FAE2D56F14D98B5B44334056DB75B70A0F94E4D2988023C73CD9BB48896C55D7865A3EA4C50B3CA3445C3AA0CB64DABA081B28C49CFB5653D98ACB31CC800ECE141B9FCF6EE2A6E59EDD91565FA142075ABEDE5475DB28739ACAD3ABC4D68A4600D260CAE648519E5B87FCCCC1EBBCD635AB05734B2ED7780245BBC0F5C1AD5DF29381DE5A5BCA9A892AAAEEB6A6A1F5AAEABAB723DAFAB69EB9DD6D5BD2D36CA75B5BEFAEECC20CBA500B07E46160BEE57908B578EACAF1F9352BD5F3D2E5AEE78F3B828DBCBD2BB38DADF4BF5F98504A662D30B093FCC5B2206EF7DE9AE07B36F82394DC9CB6C165B9E38298AF43719F9D7C80DCEC2A14FE8C2B9C147B9C0AC888700CEDB047534C82D5CA03228816D9CA09991C33AF06942F4C804961D7CCD15CB8C78D1B1EC887100666FDEEC31CD6CF1E4001F43C8B400A045F0CC3492804181E6BE8E41669BE18717B270569F55063FB3BB381D2A3D90DD7275DCDB79EDD62538E35AAEAC916E5D542788C72EAA14F777DBAF4D388ED8F2796CE95C59EBF571574E5BAF0D3EC5D25E7DF0A6534BF5355AAEB3DAF8288D1D5448F56C6735324B970E6AA39ABE8B1AC5B871EDD6D6A924E31DD82DD7253B255B3620987BB2E1EB33F72FE6CF8AE687292CDD8B75B11E6F50450999642E9EC5A664F75E1C22182295FF264740ABEEA30E3AEDE852A921F5D864633C2A52AAECE194B3D8B8382F76BB6C9914AD1297148FB379B1A0990A38FD983E9D551164A4AC4DF39AF33DCC1AE596CC8AE485CC03D2920FE7EF241E2A49535752439A5F70F1D4FF49A24E6651BC8D091BA23529B023F33249F7F2944BD265F212ADB57D144A228E5795F366422B135366F14B9C3E91B66AD911A015B43241A2E8F8F57EC2A0470D2A8ACDCB8BBB4FD3AB8BDBE9FDDDA71D0A2C383B04AE66D698630BA1DE0FBED45D351B5D85BFCA1C626AAE9834A410450ACF661740931FB947250CFEE23D23BB2A878785E092C802B8C2501B4A66615D3314169807D9425E615CF06D4197B28A79315D2B4A80A7D1434929E865F68674B3746E573CC91DEC4336C9BCB06B05EC49EF0255D0F348D8D02BDF4A6A869E715A9AC34AF9E4A17C28BB1D54293A68369EC0335D56805270C1AB011D00097D26121B71FD9B91DA6157014AFBD224AB4E85872D5B0197AEBF66038CEF2F99A34CC71AEF96740037CD6B2F182A4C9F7E11141975929AE3CFF48D2B19854865816068C6013308A8DE7F3387A319A702B4A81729A843A4FE89B0D072B077086ABBDCA7287482DD11C842FCAD07A5843278F84190857443C552161A3C2E230311A92CA42CD472C042F220C76D2C65A19653015AD485CF0379B8077551E85EF1F18087BE16F3C5C63B91FFEFEFD359BC8EF7F1D9C5725F1CA49C46BB65F4243BE327A41D211C29EA3E74273E35433604E1A90C1E8D81C82C92748324E1608DB9E4340B3CCF4D0C26F4752B42D3A4EF66038FBEDF600E4013FEF836A61B51893CA1A01063BA8758385438588E064F36740A3C6D970D9DB8D84320B6924FCD9C008DE9007870AC700C119AC0E10D1A9A7330E670D33CD46382E640405376D36C5CA148F956F85272C3AF0DDDCA3303AB0F7DF9C86DCC95B40766E621CDEFD4C243866708C69D3A5E2D061BC3E0B50D82C418D8E642CF308C3737119880BBAD883FA3EE9B8C3E12561BCC7BE78953234676D4E8AEFD8C7A446B02D807F430F60D5E754F7B722C3A01B16FD909C749C640A0099ADC6080BB82610E3275B8E5CE768895DD341B55F525417384293912A429DD1C6A81C3016338D0C706E68EB7D0CB3756075CD44185458778ABBBC6BAFE9A0DB4F2A2A9D57917256B4234A66BD0E9049B3AB87350B0F526D5547DEC0F604E22AD777061B161558A4D192896579DE55DC91657AAFA9601F0E4238AB6A679157C325778C86D7E3BC5ABE08B7F4BBA1181483C5885A4D20587E58421BD18DA09560D4283778A562DB78CA5191EC4C14AACAAB913A2355D1C56E5834F6260C022513208A82FF177024E2C682DABDEE5C6843AD30A32C36CC0F1402C16475AC1CE7BD7DF29DAAABBAFFAF115438C6A11A7F25EE3811819CF63752B5749D5CA610AC5DEC3BD97CA407CAC8394B9D06BE31D55064675E0AEA34354D14D33242BE2B758BA39151CB16A4A7F868710384FA1D2B1287A9CA14123427465686061BE3B11E728578C55381EE6C9CAA080B910A2155D9D98AC7C17C617165485D0D392B073487B5812ABA6AFCB0B267D371B7B753030CB93921A36056951E77034BFC80016690D8ABAC3E35D5D5E50F6BA4F107A5E5BE81582E25546BD1B1EC8DED61DD39E1DF08A9E1AEBBBF0974D1D5DEF68437A00994EC821F9DB8259BFB24DD3D91E91E624D28E0C6A79D031531CB0C17F03438C8B3D2CC0AB888BD609B4980EF6082B861776AD8023BDF6812ADD152B247F5BE8525CA8EAE03695A6B33D22CDE9FA54CF028C8DF1F368103706C90F41CD2E7C90BE0AF7483236534F8E48864E0B457832A6894DB03D731628C29A19CDE5803E29B7398AB6BFCBE9898ECF11CECC323E1D29B32725E26D7D6FE2E66E9E7F8BFF829E58FDBA8BAB708DBBEAA103114F39CD79BCAF771ABEF153B2898907CE58099D223526AC9A440A0DB906D069182D91C1C6006A4D1535496E0A184E09A0D0041392686081E8312AF55A1126042FC1A13E094E37B96F42062D457AC24722859CD00368309177242AE843098ADED1050FDA3D9AC38CFB38414B6AD20560B48548A47FAC8538414B6AEC8D15A871E6A3CA5FAD836831C95A6AC25554899CF2890C805E73D54B22853D9C00F79139190EF59149D65213EF6348F4C40C5A8ADC4959899CE21C2D2C55E9113548AE22E7D79056958788C026810FBE83EDA1C73AA0F6608F7103F2A7DE8695A50FF2E82B3076D58EB63C66F0B38FD0E8337BADC0D0E32F6980BCA13B55106FB007D510E952AC5C61C9023D8205D809E5B342B281507ED7F7A7317AE5EE3469021DC6346A88010179CF988CA2B9F10887EDE5AC6B45E05EDA15C1BE912C4025B5DA56E7A8298DAB09DF7703BE509B968F290BF006C989F7082E00F34861246B0976C12639222A841E75D8547EB8D1C0A93C76B0189E2A4A20435013D803334C6C4F1560B010A04AEF101B04D4032A40DC4F8E1A6A91DBB3050A4E09B0451BC392EB882A8A25D711D5D36266812B3972988160CF1634D422C01BB3B08C5C8FB481194DBA654611649466E964CF2F4DAC40806B36D105B99E1AC61794270CB2F4B121AE6426B6B40A813E05230DE3E169D0A2649F1B003B669A26441B0641C3A06E324AF461DD6408E26FE259477203B989AD9D1D6C0724B2186441980421E3B5BF260C994DDF8C08B7AC2D9401AE008E9907C4E27A6714128BEBA2EE314ECB2858E2B8E04E1127C021F19960C899047312B1A109E72476CF44ECE92338B5C93438B610C0308320445CB7D46188B82E29DEEE348D3C64C8783F54A9259832960E36E23AB96509A08EA4953A620BC01E8B102F5CD7CC82BC70BD547B0D2DA863D0C27D9C9E669A928326B144706B4AC3336BEBAC5B2EC1412E00261944C3E0FAA48E87C175491D85C13404464BF311BBF28FB8270C8239885E05753807D151815FEEB688E020DBBEC1D69A606C011DAFF470524621F0E6514758C2AEC623D34D7B8B5E9A1DAA7BF4D294436E5F9BDF7F6F6FC62157B3611899DCE316875E73935B04147EEBD7E606764BFC122E0543FE41C5B561DE97075F1CE6BD82E89D54ED85DFD619506F91A95800DD65451A2FDC66F56083708195B7AAE07D3D17D311BABB0A9A8CDA4BAE8231A7BAE62A9888AA7B9EA6375B4D38ED265984BB97B044515DD014E73C7245539420F8753F93AB952D4D1CE52D40CC2567746B50F699E9EE0D9A9A24E6943BF4ADC357D7B41CB4F1A9ABAFBA05E09EDE2B1CD8258CDCB832D8F633B1AA55B7B3FC37FF3AB5A7C12B43066CD2234B77BFC89F517D02AA3851A26793743346D921F66E8C3F7BD8EB30326BA02331FE6C51ECB9185DEF507648B9CBE2C422E5D64AE07D15ECCE01C02AA3EB095CC77417148C0F9B18516DFDC406F0403A0028CDA5057EE4F16B0B7C2FB0735A3A6AA178523FDA4E0FC5D3B4F793F972156FA2EAC3FB09C9B28C5FF687687D9B3DC5EB5D9D701BBDBC24E9F3AE29597D399BBF44CBDCF3FCCFF3F3B3BF36EB74F7E17CB5DFBFFC3699EC0AD2BB379B64B9CD76D9F7FD9B65B699444FD9E4E7B76F7F9DBC7B37D99434264BEE109578849FD6B4CFB6D1732CA492AA494B7F4FB6BB3D5162D1B76847F83F7DDA48D9D82B003CE7287FEB9AC053FEF2D0D5E7F1EA62F9DF742B25BD792D96D8CBD59BD9E2FE8D8A54C3CDDF49073771BA2FFA1A33E3AE2E4E08CC97D13ADAD6B72FE8D58BCBFC94DF345B1F3629F74904A28A06737A8FA7A438D687D3BB7B8E5E1B49C112E4536C2872EF85F324954F89E78817382F8EF2441AE67671903D25DF936531897F3FA4C52523B8DE22FBE774471851673CABFFA8B6ABC47951CE755E15941420486940F525DA929FFB78CB7D7D88B7BBF25ED4619B5FDF81C7D1086B52054C9A5F353CD0847AF844DF8A38F8493571A96655BD9FF0630E65F9FAF214ED631F54941446540C0715FC984359CA8B8B3EA828298447C5FD36794ED2688DF58D6F3924C38DA5A64E9ED7E98D3160682A3430F4D30F281D03234151B62BEDBE5865C9A7244A2F673C39F6BB3DB5EB054CED1AD810C2A9DD1C0888A7370F3CADE6EB115807CAD1EFC03468AE60B8D8059D88691649422D6C52984A72802195E4497E9534C813AA68127AB6091A38B81804231CFA82434BC6007341CBC112B085C32958050A2F928D5AC0C818D80478517CA41A17136F11E0FE50E5B85717B804EB02B9D685535AC429DC302EC19CDE2C898A5B4F2CA9FA9B0D953CBE51119F9727443F5B1A28701F85A42330555498ECC052A14E521743A561A424899A24EF456B857059D855099E3A8945BDA894D834BF6AEA1921D4507FF6254E6789449FA604D0AA28A384D49ECD2D8A69176B6BC4F488691F4CB7643336DBA30E26A31DA64FC160ACE691A717012462E240420A7662DC41A498CF16B4B6841177AB240FB0C11163BE1F8101858F52178E9E3264829397A7751D80D4C0A47856C10041AC8349EADBF9520E9193E7651C227E88DA72885481475CBC21C643740A6A4D11FDC4466462640C541B5E141FA326320AAFDEB088296A6AB5C50210E4926C8F5224D0290A4B3A872CC9DB001C9E283F9BD39A670BC979517FB3F084BCCE32C101527C3902B5ADC260078A9BC6F27151DD0D7025B1D324F9AE113930A3767B80AA28D2C1BDFA00E429FCA12DFA32C5AF8A7A6208F4EBCF9EABC462C6888BC3E263CF960DC5B08B6D336278C4B00D865B32FD28865D8C3F3B0C9F8C0188DE83B1D6BF30255333102BAD19B0FA8E0C600C62B797709AF9048708B2DF5DACCB307B76ECA574891E7A5D1DA7B8C8D2E779567826059F0C9B60412F4957641D28516B3E1F8BA58823B52B63B1BAFBE56C2FD6688445559DEAAF06917AD8A4506ABDD53D12768640D5D0444F0F093B734417099BE6594D33A5C44A9A9463B0272B983B9B9423CC47980782799B26677DFFD9D5EAB484F929D89EDA8BFF56BB364A62267B6C1A025D1AA1B7110DCEC0D343C35BE1B466595A8405E14E4155DF6CDC87809178AA06A21E4B5DEC04F251288EDA4C6480295543533C8F6F549015CF6E549F7D7D25B0223B4625D6D6AE260FB7A336D746B87507B7B6766879B81D87D914066FA7609AE18114713DFA7997FF7DFFFDBFC80AB522F75F1DCC32A4254683E56D3BDD465C4C519E9E32DCA88A666827DE6D347B5888A48A4F56E7BCC06EB2DF8FDDE6ECDC4E54C5893480F6EC7EF6F5EED3D5FD7471F1A54F7C97013C6570C3813D55D4D8109712B2D1E0973845F22F488FFD7E043880A2FB9988B68BE9555FE34E83210A52038B46A919751A96501A753460A172D4417AECF7A31875443375B23CAC430DBBAC0B5BB79E05E52855C3A50EC4E159A954A986E2ABF7B94D8C576CD2E9AF685A5BDDD6B3C565593BCE9671B61CE96C6969714E1F477058950F74A51CDCF6EFC004E082C38F76C028D98C2A1982643359AF82602A930220892E2F2124D144CF5307CC2A563C75C024F56C3A715266B49F46296354C928654C90344029D392C9C94999D1EEB4F73576E2725AAE463B73D40066950C5B035047B8CCFF3A25008EA83B1BC2114DF496FF58356C52EF0E3A225B46EB72942D46958CB2458FA301CA96D6DC99F9E3703F8E4DE97CEA87CC9F87243F23E679161BA5637228022FDBF2F9178948FDED08F69A951CEDC4D55CD5EF64FFB7A96C20DAF5E7DE3D6735D35C0C9B63675A6B8E809A692E12DB8469A720A9EBE3B3F8D37C2EF71D106A06525B4B011F325A0EBC3B5326FC4837677ABBEDA218FD0EAFBB54AD70BFEF5222063E0F5EA68D970F8EF9A88E0804E79B2823103A0242CB57446A2038DF11B100C2783FC4CCFE08687C785A1EC76176E451026462CD57CBE3D40123C684BF9CEC1A33A69F382FFD5A35C330691A9C02C12FC2A8CA4E425F7476013570F08B7603B01CBD2135C2AF6FF8B51918E578CCB7619856B5D95BBF461F66718F50B370EDA01434C307DD066412FA71EDDC468455AF57521C12F6FB09BA781428E8D0C553B5C2DD1E42CECC316947BFB2678126D5D1241DC90ABF65574F0D08670B650444C78068D9E55303C2D966B000C4E8F2B170F984314A3C2D92E33047F2C5091099807EEDCBE5332CF74CBF16C930CC910653C0FA388C7AEB607D3C289FC9D15B2423263A77641C8F51320C838118732E61C4C0D5AB22D68ADE7DE110426CBA407C0D4C429F9E0BC86B6165240C240C6BBF31769A06B83DC8B8C0D7084CDA4096A6C8B2F4A88255B6E7A7F0092033E2A06B1CB4E79EF0098D628B83133102AE6697515A78AFBCD5014ACACC105014C747ED2A8B6699B432AFBFDA286E37A3A20FB5ABE473378A9736C149F5D6C323CDB33AC157120695E96D2AAE868F2EAA6B687C6C4FF0377C7411FDE67C747547FF88CAA5645E18EDA2A465A05E34E5DBD72FB9E3470E995A7FECCD1B1DA7D72BC26379AB9D4FB1F36F2F484B56F27BC642D211E8522DAA3A50A65C1B8E519B529002AECC009794BBF164726896AFD63189FE2E5306E380D39449EDD9FCE0917784F6C788BCBE91D792C1C623AF4F8B6D1896143D60E2A7EE303206F6135EB4654F789CCA64E847733A0FC9629BF054AA4F476086A8C6A5030BA4AEDEC9F868D3E7580FB32C354390AFC65F205E7DED5935D32171D1CA3FF890B4A4B3E890B8A82BB321390555355D3C2EAE8379945152661E65457114E12B7929BCB25C03DF893EE4BBFE36A489E1378B0ED242BCF8667D845EBE43C925D86C70C7A94CACF96ADD32F9A81F9760C5AFE9214B2486951FADDB25B97CD8EF76FC9248D18F4760C2E8E66A37BB12B4090EA64C35CB45C5B60AB034BB03DCBE7783D853AE2585BC9A2C3E0739EE0E5E20E3D27CB7AE6BA922ED5CD70941FA019E1FE3D2BCC7A21442F26094DF83F402F2B7B049FE6301D540BFF7BF23D7C8107BDB7B9421A30C1965C85064487BBBD18D0CB15F2C9AC910B77D68BD1019AF5B992D73172B02E6EB38CC42574DCC60A9AB2370CC8BDD6267025EA43EDB2F54996B09C0FA524CB46C25BC68E5529C5A2A2F5EA5446B7E828BD86787852CD31479052AA4D9F31324794C0B5BFDDCEC6069CB37E28758DCB2D31FDACB0C623D4A0201BFE414C48AE44405D4AB40D6A4243EF07E05B22A9F1596E57320EB52943678A7425899AC1C4286EA1856AC8268F811D6ACA3681845C34989869616A2826838ADA5E8309689ECEB437E76A88292C10251591A5FD5738F27F15B915C92D5791E94A8987604D6BF86EB1D98FE4C0B9CCEE774F63A96387AF2091187CA5A339B58B6BA9CB1193A5B5B52392C5B5DCEC9B8B0F514F404F3769C9FC0C20919680955617CCCD877EFA41B2934C54A4560248524739AB3249AAE047F58FDCDE64CC78C9876C4AC8A12F150079370046A4B8D820EB456D30027A5D5D13B8B029C64D11AAEAA1A6CE25311D567DF6D37067ED2BE1B93D6B3D26550E1A2734754F48B8A966C0606152E26833D2A4EC160A0EFDCFBAF6F2032864B4AB8A8DABC2BCA008BC9F2BBF54A5226C7251C813256F1B8A305645EBDF3EAB16424688C9749411638602D5CDA11AC180B3EBA2E1787C6C7169788051F5DD787E67C3C05415F4892B470C57BAF091042662B43B4B05235D7A5E495214DB15D19822485A42310FB6A7E77B306AB1AE0BA06A3EC84EC2A9A18C2DAC66A1252FB5FBFD41C755CBF0C96A3EDD9FE35471D6D7F4B8E9E824A9845875CCAF8BE020F5331500668497CA0EA22E22BF0F5679BBB718B557C2379E098CF56FA046C18FBFD08348962A4BA785BBEACDDED65F99A8BD2E4A429BED717E8B04B55D0146F718A75834DEA5935D5A3E4F494FD384AE228B5A4EEEA5172D17536A3740A5A6E112DF35794FD44274CC440C7610515102F4B885AA9FA6AA5942052CCE7235049385FBB380D5D54EEA4906A16CA62A84AF09642480D4C4ADF07464BEEB9288A2171AFAD337525F75C04B839F74E427C977A3DC0424541C94490AB4A6B0D1668D1C225D9C9758CA898760C125ECDF54E2EBDD016B8C97A96A398DD19C2BC15470F105EF695B57861A061AB931218385B5B3B6CDDB0D5493B38B0F514F4049139B98B2E3F2FEFED6F470899ED6FA08595EEC7BA94BCBF41536CF737409242D211280835BFBBD9DFA81AE0BABF41D909F98E6962086F3C569390DAFFFE46CD51C7FD8DC172B4BDFD8D9AA38EFB1B961C3D059550BCB8B7581D423C630B9031500778517CAC6819E8F5DAE2BBCD26471D7E1A20C82559C469788E5E256AF4A3CD216839B27FFDCD9CCACDEB2CE369945F8E40B1A970D3D5A3B7A47AF7076F8B0185DFB12C9242454D87EBE152FDE3BF4395D0EFBE0764C150E9F5673FE2259C05D2E5C79EB53C0598F3EBB923C04E03606D3EC79B03CCF9295E63809D82B97399CD62DFDBC1200D03430729870D0FB1359FA7AB6833955EAFE753CCED806974136DC86C5EF2E498CF16B45687E58360E0D4DF2CAE8A4127421C0EAACC3222A5F2C731054ACD67735AFC3B451C3D21C9C202030FCFBB9CC4472F743BDE11C76EFFB95DFD839FCB72792C0B3B7BEA769815F3F4B8B98E0AD9285D716CBE5A522212FDF61001C4EA044B7A79E492EB550610A4299614A5A58CCB3A8B7D381EA04653CC29D2A73C386ACD578B751634A35C222E408709EC4F25A05B576EBB61CCE3E1BCBC66BE1FC15A10D5AB1D2C048BBA1D5681BC2A16AC283ED1CF026594B4500B93E25945A5BE45FAD567CFDB97C889AA40A7DE184D2F56D0A4F85521287FA11A21D573B981DDBC09757F4915FA21603C0DC575D170F77A1BEB42AE22C8AB728A83EFE12E1228BCCFE1BCF98D892254D12404A8A0365BA03AEAB400D5506306AA872606A8085A2087F2BFF0A60F54094DF4ABA8B18A844A9A044FFF0B224E4285E6410EAB85390CA73AFA10EE90056B6F894A9649EAD965599A42F6FECAD11432243E9A42A329349A42CA4A4653C8AA9AD1141A4DA11FDA146A6973AD3485EC77D65C4C21B7C8BE76B690631D86C6901B75736BC891BE9539E456879B3DE456978D41E45E839D45E41895DAD22472AEC5D82672AEC1CA2872AEC5CA2A72ABC5C62CF2A8C1CA2EF2A8C7D230F2A8C9D032F2A8C1D23472ABC9C63672ABC1DC3872A36F6A1D3952B7368F4EE1D4CCDDF3214B6607EFB7D7503A06A7671465712824644E48B73BE8579B33C26476898FA6D18F2E678DB183C647B113AB1CA72E6E9BD4F5BBBCBE45875792007582EF91C96AD8A53373D5F750273215C7317B77123723E4F008D23842EC08B5751B868E90C35B3416233420FD76B1DB65CBA4A848567275B498796D2918448962722371BBD0C02A4FF03298527C9C6787ED1218350C93B651BF7266D14638B46F116D9F6328DC2276E7D62A640BDEBAF7137018CD479AF5BF90EE3413567936092B241DF26532D25C7AF622F4AD5170399D8A2C2E3E798E3ED63C5B10D85B3F3E40A8E50169F53E4AD2782B66A18655F585FEDED51FF2E18D9E6322A3E2F5AE2957CAD8A25BBB9768898B612241B7D99FC953BC252B9CD7DD3EDEBCC933BC99FF8FF5749D145AA1CE701BA5C9F778B75F64FF1113B9FAF3DB773F9F9F5DAC9368478AC6EBEFE7677F6DD6E9EEB7E561B7CF36519A66FBA2EB1FCE57FBFDCB6F93C9AEA871F766932CB7D92EFBBE7FB3CC3693E8299B105ABF4CDEBD9BC44F9B8958BC226B44E5EDAF3595DDEE69CD0E3B6360423E507EE0AE630972F508FF117F3F5300F7FD442CFB1E9E0279433E9CFF196D97AB687B7E761BFD7513A7CFFB55CED7F3B3BBC37A1D7D5B931CDFA3F52E966A916832CE5481B2C8CEDF3EA74FF15F1FCEFF5751F6B7B3CFFF78648AFF7476BF2543FDDBD9DBB3FFEDDBAAFCDE4CE3472E9B5598620CA1FDF6604087180A22219BFE7104DC7BC86A7725B29AC17082157ADDC1045C3810FC0673B1CA12A208D3CB594D789F6CE25C38C4CBA434B4FEC576606B9AD78B70348B671DA7370F147084D42637FE18A2EF7E256A91C87F92FC37357DE3218735A9E98863DAC564C079F320A448A9B64F9CE4495136A430296FF2733D4DA1AEFEFDAD2D62EAF7551444DFBD75A04A5F54311D1763788B8CD86469FC1A08C8D5A8BB092EF07A9591D482B1E60D199E6E20C02CB6C4E8BE5B25F1C68BB0F190D09D0DA741C16EFD980C4B5336B06CA9110CD13612300C81F0264BE26DADE4CD0B8CBAFA9EB0F194078447711FB833C856FB64EEA885AF971903B72E1E14BB394278C22E2051A86D2BF887C43EFF3E9663ABAAF241357FF35C77DDAC245F965A0AED245D11C1DDD0F896686898ABCCC5639B78474A2017E37C6787D1403304C2229076CAA55555E1902D9A652975B59222EB2CB2069E005D271A2D82177CCFDA14B51E18C446DA1741DCF91F171431047E04E97A1BCD1E166E0D220503AFF084810BB5C0E326B193E564AB7F8CA75F73C4CF69021663673FF9A021F71E3C8668BBC665AD6FEBE351EE0A37A7D091BA2DAB7256B679F11F49D51ED72C6D116E7E00F25FCBB0644F672573AC16AECB5AC65A2ED6472DDD810A47AF69452E9655390F515EFCB4E5E26DD49C6C0DE9496E5758B683413F54F90B4B96ECA908CBB64592D70273BAF0902F4C6185597A4242C2AD3979C9A0806AD5D37635ABEF293901AABCEA64A8DBBCD057D7E4322465D9B00051CC06B32DDD85376E8DC799BF901670A03D06CE5F7B5C367B42819587F7DAFD7A152D57AC8D116AAB9468950569F5CA72EFCA1829D4367202492934ED21020A5BEF4160A906E2FF43B2D87A9D40B011CD8B6B8F199BA304888808E4BC83A201865D9B548D61AC21031159147ABC1305A4ADA06804B47BC5EF1C2A3E3EA386088F597430364AD1250EEBE270DA392C8E1EBD58882FB429EC02C2A529593A3D64893F4B1855E4C81186424879BE5891D65DC77D091217D1E039C11D966BDE138359F3F94E8EBC39212608D324FF49F2EC3F5198F6784E968A432D4D1876BFD3C9065284E536318554FBADDE161140BCDDAD25668FD68999785072C3A3BCD80E7188C3B302EDA33E3E3BCF821CA0B59A46456C12E73904C5C9379D4065D936660F4BB9F5A9534712719D3A48DC7CC3A9434BB7307504DAED72B2BE11E9C446E43AA5D1A980BA68E0233955D809B775455538F04113A1ABED8E2774C5D67438E1EBA726A3C9DE120E391B78BA2D730E7B76DA987DF87B04463C648B0767A44CBC75090DBED16A21A191B7480C25342DDD828416687770BC5D7A14D06A7B13789BC47877B3281B584873EFA8F9EC4D1202A16F64306D72719C0FEAE604F0C68819AED46F6E010514AF6A41B991A7B380AC784407202FFE0016905BF3BC1550027FC10AC98CBE37033990144F50C1D9B118026066F41929383BFA4E14901D7F0A0ACB6C713741FD921356007CAC09CB8CBEC50414C09F5B0232DB0C3F1A1A04724A7AD821FCCC76771D4A57C39D8870372A5D2808B6B71389466AB8131184893B21719DED4A43F074393997252F8F23156E9FD99186B06876A42218762E54C46BACCE34F813A5CE64A86CF4A4C3D845CE34A82475A7239E4F74A11100FBFCC2D48982BC227312914C7C70532AE68B3838F2A1E1DE181259D260DB8B960CBCEEA802DEE1547FF9D96335D3D7314B5B5F9F8F8BC8C6DCF6712861EE41B3BB6265E1B047DA101797995FB128DBC108EBE3AD79849BC23D35CEF164A0E854461C2505835F981CC6249E5F4CAF8EE6026D7F47908F4F40287C8EA618AACA077569451BB551EBB377743FFB7AF7E9EA7EBAB8F8324212DF5C35BE0A9E970E0E4A6CABD2149455F9C0A054AFD7CC41C944BD143D0F8FB379A10FA702363FA64F677F646BC8499147967CC37CBD3DACF7C9CB3A59929A3F9CBF93FAD59082FC2605353E8127F84F12413239E23C3C7212AD4981DD7E1B257280F32FDB245D262FD15AEA86901399752A67EC8412175366F14B4C1092EEA11E07A898D21744818E255CE453353468A4D6CB8BBB4FD3AB8BDBE9FDDDA71D0A0FD12628C6B3F9380C706061772DADB976A12144DDEC051CA5B3910D678C8A0DCE2D59CA8CEA933926ACC0154A5000F1F65024A09B30E638B0C41E5E6397B261364762E0B5201844676141A8F978320201E6A8B64E78D3A80B3450A73F81037CE2B519446983A01845E6AB391E04A3B62044BFB5820624260C3A344010182B2480CCB4ADAD030054ED24C3AF8CB8E634742A0408B5713A46486A050F76E383EF609A2342C55F978A3B0007BBB1C220040EDA22487B613FA691F834C11E2C104D29AD15B8E0FD46874E150CC91E3501EBEE45AAE8301358ACF48794FE048B1D448E40B254DBA40C4AE0082782641176571BC94213ECF102D194D2DA932C60BFD1A1538513B2874DC0BABB58BDF2AD4622A138CA15B143F769F98ED5D9C5B27C73651AED96D193ECF7CB9FAB395E88F52792ECB0D5AF48E28E2E9532098B8BD20C2E78DEA9185A21C54A2435F50A6061125A418A2246083A6A68F4172BB820AC76A8B51B21C459387A9CC8C757EA217533727A4308167C0A1D2834DE4FDB085156DC0148EA135C2544747A4A3CEF558C67F3D10A1C76480B040C38680C3A3A5094185B44D80111ABB15B7931087BA51700F562A504ABB40314F1613C4AB18285076A865308FEC10EA9986425649A9A05943009ADE04415CD041939247C0998F7CE1F54C8A0B4D7B8AE3D3A7AD48573E7F486B35EE4911D74FA9648CC050B83FD23E03A463196DCF763DE4342C3C2A0C3A3BEFCD6D66E92A6D66E3699AB2B33F536B3665749BE6353EF35D3CF96BBCDC0C652FBBB4A58A81B74A894B71D2DF79DAD3696D415770D119DE8080A8FEE05475FB0B0131BBD43427A6D1E7A079D3D90C09F8D2E8F23D4DF3A592BF1374D8076D429ED9C698062DAA0C38B5F69310794E2668D4BBD7D600A7ABC9E5D2EC943098FE14922CA6A60D1ABDAEDE209AFB6933538BDCD482005079562D7DED2DDC76AE1CD7C37575C16F22ED85A1B8915848F0E7E29DF051976B5F6B9995D5A5FE6E7A81C8CD4633E4F656F81AA2360B47CAE4A5379E7A0313F57150E324EC7B4060F17D7D354BD82453CB4AD5F4D073CB7DDD74ABA9FD3DBB6AB68B4DA1E60A113206171D193E8E80D197642E3C8A02107D66B0B164C00950612C5C7D38283C4516D9D7034AE3ED0A03B67191611B60736878E0CBB536F3D0B0AF60E23732950E77B73BAEAD992CF048C0682B5A9E5AB870EB785E110246EB7502D318F54DD23EC34EE394BC174F270EBFBD673C0FABB5083759CAF47EDDDE763005A13968C6B44F3F564208504603B561C15EEDF7C481A428FBF6F337ABAEF71913D02F18B821F8F29EAE068141F78026FDFBC91690CE4448CCC4497EA3ADD66526E08F4BF63690499C1EE4F5AE0A5DF6DC92608960E3272B8AD5A15D1CF27071CEC510574309591BA5B818FBAC64E2237E4FAF22A5B2EA2179D2E9AE101CC82EB24AE2E4ECE7109A7A3A370E6BA54DBD1A9CD3C025BBE81CD8048796E938DF7460F6D961FBB3916E182AA80C73EE567CCD0C155BC8ED02AA854F576A3D1AA5877A6B89263F6D59A8D7E3E796CDD210FBCA1A3AC7CC2A2557CA96B0E8EB0DF0FE912F3177D4E77A475E76717CFCFDBF839DAC7341EE3E52159EF3FA7F4F75DB28E9E92654D8C7EFFBC9B669B976CC70573FC126D495DFB789B63601E6F22D2ECE5EEC3F9C57A9DFDCFCF9B72EC4903FE8CB7BB24BF7C3A5FAE48AE0FE74FDF44573A25C5BBDAC488DCD913F9F93995E24C4E74D4A4888EDE34F3378144876EF9305043514B828B6EE7D2B0F7937AA84CB1F0F5A56CE58885110BA532F841B060C49E2648EC10656678642F5659F22989D2CB594D729F6C385C7FD9C6CB6457F4FB5F8CC95D2F82902B5EC69EDE3CD03947CA6EA23542EFDDAF3937A37C30FEE6058D218AD0111A9D40638812D5131A461CA2FB954314ABE81B101E3608172AD87F2E16CF8F728D4CD544FFAE278A3EAA0ED12B9E57D712445F5377EC7731CBC59E578F6BC2A6971D5A8728E947B4FEA8681DA2F2F143AB99762E03B80F51F3849F783C45FF69B7D846CBD5DD2A89378E346D867088E2781C426E088728A37C86D088377518FC41CA28F1AD8200F60617E73FA88F8ED27371CFE5CD0A37EDC017E18D1B843C061F6CBA52480E51E68E903C69480E5187F841D29C3FD50DD9C12A12FEF2649029C693B49C65ADACA7E5F03CFE7621595ACEB3628559D32CDECE33EE68FED60BB1049BE2DF12B4B8351C07AB4446389E221C07AB407CE068B64AE382438C6A443E821888E22C4B998045DFD75964333B84A9655B3CF8E41260338AFB11360EB0F921C57278D818B1BE3EED3E44091F7A520911608FD9AEAA9E3E0CE74C167A1D601F8E9350B63E04739BD10AE543544823CA4794DBA17C88FAB37D4DD73CD93B445D17782230E4DA70D136BC1EA2C41D2AAF8738EF9D796DB5B0A8DFE21DE2CC67DEA43D8E75C5B1AB4171D0872882C641F71CF421CAC2A31B747387FA2860C5ED1D96E0316CEEB4E1A0B2DBDDB147D328B947348543D30FA812AC5467FD34F86065381B12A16FD50952141FABF526D99211552361B0F277444260240C56761E1312CC55D6288A45038825D8BF01D496A9320ADE1F7BDC7F40316BAA8E867C5061BAB0DB78ECD1280937555A382434E46DFC11036131304451E98B01531E5DCDAAD7D007292DAFB2689685745675CFF6210AA81360FB1065C230D95EB67A9432DC5A8589357E044B9538BD5E45CB15EB650A102380AC7C16A4A92BE30BA20E701AA5E708A78070FAD1B482118B6A07F4206577D8454A9CB2F4FC41FD902CB66DDEEFA643374439390EDD606592FBD0995AF28BEBE15A94B91A73BCE37CD7D8EA7605C33B8088429E4507B7D6548E71F6B482ED5DEF2220E08B9121803780F5455B36204BA7872CF1EA3E63B5D9F79E29EC6F0571136A78BA629C50E3843AE209353C0D3EC00965342C8B1541C9753C9A0E9633F3D94736313BE11EF2296F84A78C621AE225A79EBD6415D30A7779557123A8CC1226C768068C93639C1CC8E41855BA1B1B99780203D4BEEDC44358C42940B68DFBBF2CF78727DE4F89FBC3931F01B86FFA3441151B649002A28DC088856217A81EE1EB17F3CCF3FD0B5B7C0C51848DF8E80E1F4314B2BEF8308C03C23C6C3E44293B06BA0A273B061BE80A1D47F625F53083283CA2ED7F6627DA08247D1756DC941EA2621CA7F438A5C7298D4EE921DA32ED2F166B680CD288098EEBCA95C1D26CCB8F51307D886A66F04C1FA220F063BAE9B2AF12BF8394052D28A4D22D20506D039A0CEB8728114E84F543940BBEAC370C75BC1C661CDF714534AE8810E644871CD561C7309F86CC967988059140D23F68F9729851A2C7993CCEE471268B337988164B076F0F948818A4C5121ECD8B557CE3BC5F080B10A191ADC4D9AFC67088BA6A1C437E0C8728A5BCC6D0EC3864B4244A739042AA6C7A4834F214DB0063C5EE21CA9301B37B8853DF87DD8607A1E372F131501B85697F5050CA645B4126C3FD414A8393E1FE2085832FF74D9DD2D572719002A2850574B91F20506D693FA066FD10A5C389B07E88A2C197F5E6018C17ABC320E542DDF8B0BEBA22F45648AA793830869E6538B079661C5E0B287DF33ACBDA9C63143F43146E237E8E073F4394D07EF831E2CF65368B87782F9368ADE7E92ADA4C9D7762A6D14DB4215369E9587C75583E38DE00179C759685EB175DDD8A73D10FDD488867BBEC4B0B7B2A967793A52D4BEBF25CF44BEBD2E6877EE1F2E63B6B40F9422630B7B41C4AF32FB33910A8DE4CF3A0C0083587D2D583186E14C4C7952CC30EF92097F7D459969517F296028B46C70FB5A55BEA8EE11966A3EE1875C7A83B46DD31EA8EBE75C7F01665A3EE1875C7A83B46DD31EA0E77D97FF77CC892FCA2EB00FD4E8B28210808B85B759B432A3274F1FDF2B3858BB8CDFD5E3A82C35BFD8D23C88FE0F06C30BF1184D9F391346FFF4ADAB38F92B431B608C1DF93ED6E4F5457F42D22FDE25B56969AC77BD03A2C53CB36CEE3F5F7377C32DBE1B345C9BCCB8BBB4FD3AB8BDBE9FDDD270928626D8C252955C5A441F54C2F6E2E6E1F3E7F9C6A2B69B028D5D1244155DC5D5DDC911AEEF4DDA82C5AB90F5502D881ABAFD387AF5ADA8DD522516F9220FA5FAE3E7FFC3ABDFA6C56436DD9C095D4A9683DB38BC5EDD70B3DA3AA67D7D1DAC40C20E3843C9A3AA9DD21554653A05AE617775F088CB5E4994585540193065531BB27F05A7CBEBB32E61B351F51C6D11C2ACED14C26C8C0EBD4575860834CA32FD757F7C69DA4362ADA499A43D5499AC9A493789DFA0A8B4EFEE3EBC5C2B0933820D944A46BA6B064DF8D846B629291BA981C9ADA84A5B1549D900ED577757F41E603D11E44E8EA1547B31491EA6A92A06AFEFDEBC57F37AA817D0C016620938C3090C9A1A98D8FD40CD42766806A5C5C119D7BFDD194879C3B41AA904B856ABBB9BFF86C8A46D6F10029619A88A8E1E95762545C7C31EA52E95F01FB5326619D2953F53DA14E0CA8273411E909E1582E2AF46AA57674C94AA54E0155CAC5D7F9C554AF50EAF5B48CB32A01C4D7C5F4D367BD92E7D6DB0090995418C51F4B68197483750941A3411391D1C887824C17331D51785E60FD5024A1BA6171A537F30A6F32647097DF414BFB7EF6D160EAD5CB2488434D1AC8A04F5FEF3FCFBE1A88920A9328AA8474445C9A82975D84288C7B381B52B7D5B2A56CA56C4F169F6163D2A05BB3FB9CD757F7D3452EE9641E72C9B03DC9E6106ABBD8EDB26512E5AB4660FDF5389B17EC22AB2926A3B8126B7271B48BBE3C9DFD91ADA1251DA98DFB3AC1CB428BCFA2389F20F46CC277CDA0DB351AB851DF415D4772E25D10F15834BFF978049D2FD7A464289B5601432E65528C38B7FA2D87BBFAA4E8AE15A37CC678366FD6C98A0166B2B531BAE232BE28D97CF4EE2E5D6A928E50B34DEE2E940D6FB4B4B62D5ACD7C557458B02C8B92F49B7777E9930473D11B20F719CD1BA4F1FC5400FD1BE594507B2DEC59C0AEBE99BED1F5B8CC084D090D78053F400360C49B00320622A2F34A844087822B78E6F6F0D10D1B58D705D33DEACC40108297D0204470A23408415C31206B20223A978E8312E4293E2A442696B53D7474C302E111F939EFF091F9A0CC8F770A740D155D1252D48C919C593557702795132A3869A0E4079E59D911081CECE7236043F38AF79C6D99CC023823DE01D16B5734BEF9A8EEBA1DE3FC465F2D0EC45CAD4882D6BB2B3E0E37E71D9672CFD505F0CEC0BECDA24362929A25923FB6660AEE67F5B41D94FC4072B682864EBACEBDF5A55A45C019F10E009EE6A2FDDCF7DED612ECE33B73CD5A02CDAB5C330ABEEF7AD5483FEBD68DC07222EC5A82EB9662E0C17C6D75BDDD51A7A1B2E655E09C7976D82E6370D18C64552C9C79EF7DB96CAEBF29BA0CFA51D9D2754AF8EE2FA2ED73BC37EA7E955521F1E5F6C30DEFA9F35C4894391D1848E5411955AA4EDAFAA8F41CF35DCF0213DCB8AE074B9961E43851E60F2AB2FA75A2D02E1A3950E0DCEDB1C3C9F912C061AA548250CED6DCA65DA83FAE430A0860595BEB7C0F235FEC66EABB9E676BADDBCC666BD3E5E263F0EE2AFC6158D6D6BA6DEB4273E83EBB9DC46CF028EC1F4D89C05B5A280590B57086D698845B499A126DEF1876C99CE6E4B56A0B11C8D50613A4F30D65D1E66B008F00B1FEF28D78C2C6DD7E1B25E9FEF1F76D46FD3F8F8BECB1DCE0877C048665C37B0DD8430A6521E81082CFCA21FFDF3BF58A41632FBBAE93DAEA1B1B0F0DEF9E944B0D6CE184520D6DFAB98F31645FE9D3C0933F55026D293BD20A0F79E8044D8929D5C918374759F9AED99CED3D081624AFC65BC61E62A4AE32E880622FFD675F70D27300CDAD9E36C231CB7ADAD0CF1DF2E1FDA4A4412FD7D0B4F793F22056F581FCDC67DBE839CEEFF1AC77C5D7F7933F0EA4F4262E7FCDE25DF2DC90784F68A6317F9987E6F99C7ECFBE6CB397785BB49F6D519DA54EAE6F5EC5FBE829DA4717DB7DF23D5AEE49F232DEED925C113E44EB03C9F271F32D7EFA9CDE1FF62F873DE972BCF9B67E6599F17EA2AEFFFD446AF3FBFB97FCD72E4417483393FC46DE7D9ADFDE7AA2EDFEBDBC95353120915F7AFA1493EFE5581261B48F9F5F29A5BB2C352454B16F16BFC4E9539CEE17F1E6654D88EDEED379F467ECD2B6AFBBF8267E8E96AFE4FB9FC953BCC589E8078267FBFB59123D6FA3CDAEA2D194273F09869F367FFDEBFF076040779503D60300, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201506250258582_add_constraint2', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7DDB8E1C3993DEBD01BF43A3AFECC5AC4A9AF97FAC6720EDA2BB4A520B7DD24E9584DF578D5475AA2BB15599ED3A8CD530FC64BEF023F915CC3C317988E039332B4B8901345D493248063F46048364F0FFFD9FFFFBF6DF7E6CD6677FC5DB5D92A5EFCEDFBC7A7D7E16A7CBEC31499FDE9D1FF6DFFFF9BF9DFFDBBFFEE7FFF4F6FDE3E6C7D9D73ADF6F793E5232DDBD3B5FEDF7CF7F4C26BBE52ADE44BB579B64B9CD76D9F7FDAB65B699448FD9E4D7D7AF7F9FBC79338909897342EBECECED9F87749F6CE2E207F939CDD265FCBC3F44EBDBEC315EEFAAEF24655E503DBB8B36F1EE395AC6EFCEFFFD10A5372F77AB681E2D57AF668BFBF3B38B75129186CCE3F5F7F3B3284DB37DB427CDFCE3CB2E9EEFB759FA347F261FA2F5E2E53926F9BE47EB5D5C35FF8F26BB694F5EFF9AF764D214AC492D0FBB7DB6B124F8E6B78A3513B1B81383CF29EB08F3DE1326EF5FF25E170C7C777E19A54FD355B421FC7E3A3F132BFC63BADEE699011EBF624BFE72C6A5FF426141D093FFF7CBD9F4B0DE1FB6F1BB343EECB7D1FA97B3CF876FEB64791DBF2CB2FF88D377E961BD665B4ADA4AD2B80FE4D3E76DF61C6FF72F7FC6DFABF6DF4697D3E9F9D9842F3A11CBD2927CB1B26F041149DEFBDBE8C74D9C3EED57EFCE7F2560FE90FC881FEB0F1542BEA409990931FD7D479A1D7D5B371F269A6AA7D14DB4F99AC4CBEE2BBF7B8A5E9AA12E6B9F45FB7841A69DBEEC214BC4C22D36FD2EFA2B792A20283484E1DF9FF1BAC8B15B25CFE5547F45531F66F3029F648C3F6CB3CD9FD99A2D4B531F16D1F629DE930E6568967976D82E2D5A389B935990121A29D84476DA3CB0799B762259684BEAC662F9EA4E99B6B82E98730B6831A57B7971F7717A75713BBDBFFBB8631B0CE790988B648318FC76D2482AA5FC62F06023BC68B13E2517D3767BF9D5A32059ACB2E46312A597B3BA6E13115297BA5ED894BA3910704F6FBE5281152F934DB43E3FFBBC257F5526CAEFE767F36594B7FF6F36F3B49610210489383715B2C609E78D9CB081795DAA4F94372DB7077953B6074DBD3A2CBF1E7A985D716AD0EDBFEB2ADF6F0FDAAA6609E965A2A8E5CDEB30D5C42999FD91AA2653661A480B917BE14486A00043EA4A517E6854AAB1B974F565FAF50B2CE20A7C23268894285B4A520E7B434921803DCC24B1A53A73CABCBD9F57497C28668C6AE8D97CC0B837C9F8A033796C47BC2A4A0CFBDB4364D4D03A2BDED63287B6B95536C716136ACFD7ABCCA8C9342FDEE62A8BB6D1753EC7562F5607A31617F9F0D692646D4BF33C8EADFCC721DA9BF296E6C55B5B65D1B6B8CEE765F9D47AD8CABC2FCAF46ADB57AD7630ECFBB33BB45507B13A165B321877041F9BE035B92ECA2D75A164ECA3DAD209F18DFAB0C17C5DAA4FD4372DB7C77D53B67B5B9F7A40FAA8BEF4CB254E2EB9BCE16DCFD779B6F0B1A64513FD65967537EF95B3DEC162435D5A8055E73EF76B8BCC7AFA97057B970075FB1D85405DBC8F89C8D76D3A17FBF55490BAA707B2C6899E7BB01AF2BDB4AC5877D7957F4AF7BFFDAA2D97A42B620834A52E3332A122D94BA450E9D3C5836EADC3AE4BE402CD5C57E593D4BD32730BAB1FBE3E6C0184E7D274C06B19C4620F16B155B272B509E681842D9CD176256FA5158C97C73ADDA068ACF9624840B0D5A2882B7BA44A0229318FD2CFAB68333895C2B4BCEBAA6759FA316934594606CFC0D4E324B959217F51DE891417A7A791C837ED011D65A0F5559AB2E5581EA9D568462FB1429B6F234FAA427D0A120FB1D0DBBCBC8D6EB228E9B1FA3ECDC5DB68F675D18B6F4BCFF0305B6ABCD4F55C2C1B59D6B8699911FB2397CEA058A2A9449650E63412094896841194C77E57C5C08CF712A1A2F5AB95B5F64D5759EF727580F18E663268BDFB0E464D41B53D20E47900A0826491B70C917C4E905169DC261969AE900AB554CCE2D4C8C5F565945E15A6910E194C56041634871A134D365B40707A09682F930ECB0C3083C45C3897C31ACE78E10934154A572F38550D3536B418916C636AD1627D1A5B85E6B637B4FA52F8EA7A83EF2FA9268E83AA15A7B84A1D7B7912A83272712554857BF725E4EDE8C8935056F5F3FA117AB568CD5CA5B541A4B4B8D439616F019EBD5D7F8195C1A8F718A81A6DB751E5243C8E5E721CB92CC8B7A9D89A87B149D5AB1BD67897CA73AD174CFC803B367A69D5CA0688C5613BDD1688ABB8B473103BEC90A99DC3E1A4A6B4E276B1BAAAC2BDCBCEBC1D1D595D65553F91D5751B91C17DB96276555A3B341FC02453399038970FE07312E6279A139EA378765B19D3F01BE8449DA8EE009E4B6ABC226B485BD2C37B271D72D478F9DCAD48276178F492F0C8655B6E45B2350FC18A0C69C67522B240334E2FE15A31E32CCEF5EBCC3895A4329EFA8DBCB599F675A93EA77CDE0697D95E96EBC115AAA938C8C6E7D764B16DE1829FE74CF6D6DBE20C3650F1C1B6B1F8BA00D50D66D0343994F3D8E9C84853AED7BB390B8FE50853D81DEBE5841ADA6AA407D915E694F0D54CB50DCB4C0A3137B869CC6782EC6424A7AD80B05891180B07F53AC4753336E866BC82A1A1841733C496E28B96EC53805D65D12C9326411BD2AEAEA987F00BDDC959FCF6BCF1311317C1A13874828818D37697A3A692795C0E45EB55F9A40E28337BAD15840ED9CC59AEE8F14DDA639E84B98BE0B2B95F38080F419C5EAFC8C86A1CA761EE3167E9D382F474E5753DD2C77209328B45756B34E55D152F73CACD52F1D292FDCDE17CB09F8CB4EE9DAC6D436F8C548DE1BC60D26461B83BDF67DBF8639CC65B328D1F3F47FB7DBC25D8BCCB52BD1C689470BB15F5B8C2219379161DD45E4578DF84DD8A37BCFA5844787A761619703B5867AE593BB2747AC812973E335AC1B8CBAC260926248DCFD1D81CAF559EA0914FE19AB675B1229CBB8E55029DCFA268B932A3D401756E2FCB4CEC948D54E7CB0E54AEFF9C92BAB07DEC4526B381632F36F32A038B4EA63D2EE2F3C9458432755A8BD18A05AD8852830B0B81C49368719A093327F1C45D69B0914D4CC13E178D5CFBED578EBDDE34246B31B3FA3B3D8BEF788945C4ACFAAA8B1356D91B2D96415EAB723D8779A5ADB7076AAF214C0A9DA2AF7E482157E7598B4157FD624FBAC70301C20DAA03878491184E57C9946D0D222E66D98C10BCCA960B5B81C1960C2432CE2EA35D5CE18C597B9D1BE8A7D9ECAA870B6285C821ADECE9F055B411EAB63CC7D4300E51717922411A0F125EC90159C0BB9A503E87DB9AB4C3F014AB92156D463341E795909C5E6BDD86E9B696645EAA6F33B26CB99B0DD9CF1CAD0C484DE5C1AD471E7F61E7176446AAE6A1AB2149279BA5215995EBD990A4AD7732247B93EAA521A9AFBE7BC47ACA57C098D1486227DCE650B30D41B40C7525DED182994587B2D9BD1830F9105C2A23C0B667C00875DB1EC4AEF9065D972FD30A4339CFC2DC94E752E478347CB28391423B054FA22A19689994081925420EBF48123503AD2CFFB250AF5124EA763B4492E86FAE2D56F14D98B5B443200B6DB75B70A0F94E4D297E053C73CD9BB4889645180265A3EA4C50B3CA3445C3AA0CB64DABA081B28C49CFB5653D98ACB31CC800ECE141B9FCF6EE2A6E59EDD91565FA142075ABEDE5475DB28739ACAD3ABC4D68A4600D260CAE648519E5B87FCCCC1EBBCD635AB05734B2ED7780245BBC0F5C1AD5DF29381DE5A5BCA9A892AAAEEB6A6A1F5AAEABAB723DAFAB69EB9DD6D5BD2D36CA75B5BEFAEECC20CBA500B07E46160BEE97A88B07A6AC2F509352BD5F9E2E5AEE7877BA28DBCBD2BB38E0DC4BF5F9B16CA662D363D93FCD332E064FADE92E38B3CFB1394DC9CB6C165B9E38298AF43719F987E00DCEC2A1AF17C3B9C1F7D0C0AC888700CEDBC4D334C82D5C233128816D9CA09991C33AF06942F4C804961D7C4817CB8C78D1B1EC887100662F2609F0CE179ED9E2B5073E7C936901408BE099E91D708302CD2D4C83CC36C30F2F64E1AC3EAB0C7E6677713A547A9BBCE5EAB8670BDBAD4B70C6B55C5923DDBAA84E108F5D5429EEEFB65F9B701CB1E5F3D8D2B9B2D6EBE32EDEB55E1B7C8AA5BDFAE04DA796EA6BB45C67B5F101323BA890EAD9CE6A64962E1DD446357D17358A21FBDAADAD5349C63BB05BAE4B764AB66C4030F7FCC3D767EE5FCC5F74CD0F5358BA17EB623DDEA08A1232C95C3C8B4DC9EEBD384430442AFF4D8E8056DD471D74DAD1A55243EAA1C9C67854A454D9C32967B171715EEC76D932295A252E291E66F36241331570FA3E7D3CABE26848599BE635E77B9835CA2D9915C9339907A425EFCEDF483C5492A6AEA48634BFE0E2A9FF93449DCCA2781B1336446B526047E66592EEE52997A4CBE4395A6BFB2894441CAF2AE7CD845626A6CCE2E7387D246DD5B223402B68658244D1F1EBED84418F1A54149B9717771FA75717B7D3FBBB8F3B14587076085CCDAC31C71642BD1F7CA9BB6A36BA0A7F9539C4D45C316948218A149ECD2E80567A28C82CA13C41258C9813945D95C3C342704964015C61A80D25B3B0AE190A0BCC836C21AF302EF8B6A04B59C53C56AF1525C0ABF4A1A414431A8052B3746E573CC91DEC4336C9BCB06B05EC49EF0255D0CB54D8D02B9FA96A869E715A9AC34AF9DAA47C28BB1D54293A68369EC00B6956805270C1AB011D00097DA1131B71FD739DDA6157014AFBC827AB4E8537455B0197AEBF66038CEF2F99A34CC71AEF96740037CD433B182A4C5FDD11141975929AE3CFF4793119854865816068C6013308A89EDE3387A319A702B4A81729A843A4FE75B6D072B077086ABBDCA7287482DD11C842FCB50AA5843278BA4290857443C552161ABCEB230311A92CA42CD472C042F220C76D2C65A19653015AD4012C154F2F6040317987A10149B3DB660E4593179A5C6168C11B65E056ACED66515C9BD60BC739CC996416F49963131376B695A96AD277B36981C64E379FA526FCF16D4C174E49347C39EA45D43F82C0A1C2C15E310897DE29F0B45D36741D6241F8EDFC973AE604684CB7C0D3F99C54CF4398404D468192B6B9CBE98DC8EBB7F7E92C5EC7FBF8EC62B92F8ED34FA3DD327A94B76427A4096191E9E42B0A0C48278759BF38849F5031331D1468F4B74B1470B481BA13AC94DD341B55E87D342B5829B9E1D7866EC41BF8E6A6420EA91FE0F45817E96B1998C853F5A153B9A71AB221083F752C5F0C4586817D1B2C89F1C1CD45A26188736E7230C1885B118E46DD37197D24E43898F7CE13AC468CECA8D15DFB60F588D604F70FE87DED1BBCEA9EF6E474750262DFB2138E218D81401350BAC100773DC51C64EA50D49DED9E2BBB6936AAEA0B94E6085372244853BA39F003874AC670A08F9BCC1DFDA11793AC0EFFA8032E8B9B05ADEEA8EBFA6B36D0CA4BB856678194AC09D198AE41A7136CEAC0D741C1D69B5453F5B13F803989B4DEC185C5CD55293665105D5E7596F7485B5CB3EA5B06C0938FB6DA9AE655F0C95CE121910EEC14AF822FFE2DE9460422B17215924A1738971386F4D26C275835089BDE295AB5DC32966678800B2BB1AAE64E88D6747190970FCC8981018BD2C920A00E70D00938B180BEAC7A971B13EABC2FC80CB301C783D4581CF7053BEF5D7FA768ABEE05EBC7570CBFAA459CCA998D07A9643C8FD58DE5506736E0B884B8F75219A490759032979D6DBCA3CAA0B10EDC7574882ABA698664456C1B4B37A78223564DE9CFF010820A2A543A166190333468B48CAE0C0D2C047A27E21CE58AB10AC74360591914301742B4A2ABD3A495EFC2F83287AA107A9214760E690F9262D5F475B1C3A4EF6663AF0E9466798A54C3A6202DEA1C8EE6973CC022AD415177B0BEAB8B1DCA5EF70942CF2B1DBD4250BCE6A977C303D9DBBA7FDBB3035ED153637D17FE22AEA3EB1D6D480F20D30939247F5B30EB57B6693ADB23D29C44DA91412D0FC8668A03363072608871719905781531E33A8116D3C11E61C5F0C2AE157014DC3E50A5BBEB83E46F0B5D8A5B3E1DDC34D374B647A4395D2DEB5980B1F18F1E0C62EA20F921A8D98556D257E11E65C766EAC9D1DAD069A108DDC634B1094468CE0245C837A3B91CD027E53647D1F677393DD1F139C29959C6EE2365F6A444BCAD6F55DCDCCDF36FF10FE8F9D92FBBB80A65B9AB1E8110F194D39CC7FB7AA7E11B3F259B7881E08C95D029526342CE49A4D07074009D86D112196C0CA0D65411A5E4A680A1A6000A4DA025890616A41FA352AF156142F0121CEA93E07493FB2664D052A4277C2452C8093D8006139548A2823E22A1E81D5DF0A0DDA339CCB88F13B4A426DD11415B88BC8280B510276849ADB9202551C21E5B80FB8903834D34A1C45C23856831C95A6AC2B56B899CF21112B875CCC970A8754CB2969A781F43A22766D052E44ECA4AE414E76861A94A8FA841721539BF86B4AA3C440436093A5F04B7871EEB80DA833D540EC89F7A1B56963EC883B8C0D8553BDAF298C14F6242A3CFECB502438FBF3202F286EE5441BCC11E9B43A44BB17285250BF440186027944F2EC90642F95DDF9FC6E895BBD3A4097418D3A82106042B3E63328AE6C6031CD298B3AE15418D695704FB46B20095D46A5B9DA3A634AE267CDF0DF8426D5A3EDE2EC01B2427DE23B800CC238591AC25D8059BE468B1107AD42165F9E14683CAF2D8C1E29BAA28810C414D600FCC30714F5580C1C2A32ABD436C80540FA8003151396AA8456ECF16287027C0166D7C4FAE23AA089F5C4754CFAEA9C9817CC10C047BB6A0612801DE9885ACE47AA40D5A69D22D338A20A3344B277B7E69E228025CD394C07B6A1679109830C8D2C786B89299D8D22A04FA148C348C15A8418B927D6E00EC98699AF07518040D03DEC928D187BC932188BF17681DE50EE426B676B6E7A622EA1AC049D3186D5C470DA2B4719D543CA0681598AD65CE2963B201BC338FE1C675D4288A1BD755DDABA59681DB4436E2BE0D07CB150D290659B066F1C778FB531B814CEC9E890CD4071DEB88690A4B4E17340BEB90D28EB3E74F47761C1C9A492BC1F49C514771F2955B4AEE287C924EA001830CC1C8D1C72312C75B1991C846121B116E194DEA583700CB2C82E370FD330B8FC3F552ED6FB5A08E610EF70E7B1AB84A0E9A4461C1ED500DCFACEDDA6EB9048707019864104784EB933A9208D72575FC0AD3E0212DCD472C5802E2D831088321FA63D4813044170F7E2DDE22F685BC6A08B64A07A332E878A58793327E83378F3AC212165400996EDAF803D2EC50452090A61C726FDD3C72407B330EB9D40EC3C8E406BC38F49A3BF022A0F0FBD23677D75BE297709D1AF2AC2A2E5CF35E50F8CA35EF4F456FF36AAF4AB7CE807A7351C502E81630D278E11EB0071B84ABBFBC5505EF88BA988ED0AD5FD064D45E0F168C39D50561C14454DD9035BD136CC26937C922DC5A85258AEA6AAB38E791CBADA204C12F4A9A5C4A6D69E228EF4F62CE4CA3FB96B2B75177E3D2D42431A7DCE1AE047CE94FCB419BDD08F525C100DCD3FBD3033BD391BB6A061BA62656B5EA5E9BFFB669A7F63478D9CA804D7A64E96E66F933AA4F40156771F46C92EE14293BC4DE2AF2670F7B9148660D7498C89F2D8A3D16A38B31CA0E2977579C58A4DC5A09BCAF82DDD600586574B183EB98EE6A87F1311D23AAAD9F75912F724080D25CF7E0471EBFF0C1F7023BE1A6A3168A27F9358E9C02BD4E40D3DE4EE6CB55BC89AA0F6F2724CB327EDE1FA2F56DF618AF7775C26DF4FC9CA44FBBA664F5E56CFE1C2D73F7F33FCFCFCF7E6CD6E9EEDDF96ABF7FFE6332D915A477AF36C9729BEDB2EFFB57CB6C33891EB3C9AFAF5FFF3E79F366B229694C96DCF133F1F203AD699F6DA3A75848255593967E48B6BB3D5162D1B76847F83F7DDC48D9D8CB133CE7287FEB9AC0FB11F2D0D52719EB62F9DF748F25BD792996D8CBD5ABD9E2FE958A54C3CD0FA4839B38DD177D8D997157172704E6CB681D6DEB7B2BF4D2CA657E3E729AAD0F9B94FB240251458339F7C853521C88C4E9DD3D452F8DA46009F2293614B957E87992CA07EA73C40B9C174779220D73BB38C81E93EFC9B298C41F0E69713D0BAEB7C8FE29DD1146D419CFEA3FAA7D2C715E94739D5705250508521A507D8EB6E4E73EDE725FBFC6DB5D79A3ECB0CD2F3EC1E3688435A90226CDAF1A1E68423D7CA26F451CFCA49AB854B3AADE4EF83187B27C797E8CF6B10F2A4A0A232A86830A7ECCA12CE5954F1F549414C2A3E27E9B3C2569B4C6FAC6B71C92E1C6525327CFEBF4C6183034151A18FAE907948E8191A028DB95765FACB2E46312A597339E1CFBDD9EDAF502A6760D6C08E1D46E0E04C4D39BAF3CADE6EB115807CAD1EFC034682EAFB8D8059D88691649422D6C52984A72802195E4497E9534C813AA68127AB6091A38B81804231CFA82434BC60073B5CDC112B085C32958050A2F928D5AC0C818D80478517CA41A17136F11E0FE50E5B85757DF04EB02B91087535AC429DC302EC19CDE2C898AFB622CA9FA9B0D953C325411D99827443F5B1A28701F85A42330555498ECC052A14E521743A561A424899A24EF456B857059D855099E3A8945BDA894D834BF6AEA1921D4507FF6254E6789449FA604D0AA28A384D49ECD2D8A69176B6BC4F488691F4CB7643336DBA30E26A31DA64FC160ACE691A717012462E240420A7662DC41A498CF16B4B6841177AB240F4DC21163BE1F8101858F52178E9E32D8849397A7751D80D4C0A47856C10041AC8349EADBF9520E9193E7651C227E88DA728854215B5CBC21C643740A6A4D1137C6466462640C541B5E141FA326A60CAFDEB058336A6AB5C50210E4926C8F5224D0290A4B3A872CC9DB001C9E283F9BD39A670BC979517FB3F084BCCC32C101527C3902B5ADC260078A9B46417251DD0D7025B1D324F9AE113930A3767B80AA28D2C1BDFA00E429FCA12DFA32C5AF8A7A6208F4EBCF9EABC462C6888BC3E263CF960DC5B08B6D336278C4B00D865B32FD28865D8C3F3B0C9F8C0188DE83B1D6BF30255333102BAD19B0FA8E0C600C62B797709AF9048708B2DF5DACCB307B76ECA574891E7A5D1DA7B8C8D2A779567826059F0C9B60412F4957641D28516B3E1F8BA58823B52B63B1BAFBE56C2FD6688445559DEAAF06917AD8A4506ABDD53D12768640D5D0444F0F093B734417099BE6594D33A5C44A9A9463B0272B983B9B9423CC47980782799B26677DFFD9D5EAB484F929D89EDA8BFF56BB364A62267B6C1A025D1AA1B7110DCEC0D343C35BE1B466595A8405E14E4155DF6CDC87809178AA06A21E4B5DEC04F251288EDA4C6480295543533C8F6F549015CF6E549F7D7D25B0223B4625D6D6AE260FB7A336D746B87507B7B6766879B81D87D914066FA7609AE18114713DFA6997FF7DFFFDBFC80AB522F75F1DCC32A4254683E56D3BDD465C4C519E9E32DCA88A666827DE6D34FBBA1049159FACCE7981DD64BF1FBBCDD9B99DA88A136900EDD9FDECCBDDC7ABFBE9E2E2739FF82E0378CAE086037BAAA8B1212E2564A3C12F718AE45F901EFBFD08700045F733116D17D3ABBEC69D064314A406168D5233EA342CA134EA68C042E5A883F4D8EF4731EA8866EA647958871A765917B66E3D0BCA51AA864B1D88C3B352A9520DC557EF739B18AFD8A4D35FD1B4B6BAAD678BCBB2769C2DE36C39D2D9D2D2E29C3E8EE0B02A1FE84A39B8EDDF8109C005871FED8051B219553204C966B25E05C154260540125D5E4248A2899EA70E9855AC78EA8049EAD974E2A4CC683F8D52C6A89251CA9820698052A62593939332A3DD69EF6BECC4E5B45C8D76E6A801CC2A19B606A08E7099FF754A001C51773684239AE82DFFB16AD8A4DE1D7444B68CD6E5285B8C2A19658B1E4703942DADB933F3C7E17E1E9BD2F9D40F993F5F93FC8C98E7596C948EC9A108BC6CCBE75F2422F5B723D86B5672B413577355BF93FDDFA6B28168D79F7BF79CD54C73316C8E9D69AD39026AA6B9486C13A69D82A4AE8FCFE24FF3B9DC7740A819486D2D057CC86839F0EE4C99F033DD9CE9EDB68B62F43BBCEE52B5C2FDBE4B8918F83C7899365E3E38E6A33A22109C6FA28C40E808082D5F11A981E07C47C40208E3FD1033FB23A0F1E169791C87D99147099089355F2D8F53078C1813FE72B26BCC987EE2BCF46BD50CC3A469700A04BF08A32A3B097DD1D905D4C0C12FDA0DC072F486D408BFBEE1D7666094E331DF86615AD5666FFD1A7D98C53D42CDC2B58352D00C1F741B9049E8C7B5731B1156BD5C497148D8EF27E8E251A0A043174FD50A777B083933C7A41DFDCA9E059A54479374142B7C42FE62B7CB9649818EF7E9E319F3B3901175831F6673116A671FB6D94695E361116D9F6252F52253669B6787ED12D11F6A2E4BFDA7B5D4E9C67C98F08CE8C32F56F3C3D99C1B678F5925E3ECE963F6B4EC4CACF9E16C8D5ACC9EFE9D893F11F6B48C3001DF10D6070117079E2B83E35816E44E02204208FDDA97EB75586ED27E5706C35816349802FC54612CA70EFC5483F25D1EBDB13B62A27387E2F19870C33018E87AC84F4D60640C0C05BCA8CEFC937D7396877A6532F4A3399DAFC9622BBCE6567D3A02F5AD1A970E5437B5C85DD43668E35B2F2BD5632F1F730D41BE1A7F8178F5B567CD4987C4456BFEE443D292E26A56C70E4ACB6C484E41554D170F2E9167C10D0F45783EFD8E9743D4D9E902D99E6212FADCECF256A60389DCDF6F58C6A6016E6F782F70E71F933610077D5B7A6418E1F47D620E8E38E81A07EDED3BF844D3B3C5C189180157B3CB280DB066559132330414C5F151BBCAA259263991EBAF368ADBCDA8E843ED2AF9DC8DE2A54D7052BDF5F048F3AC4EF0958441657A9B8AABE1A38BEA1A1A1FDB13FC0D1F5D44BF391F5DF7997F46E552322F8C7651D232502F9AF2EDEB977C8F428EB25F7FEC6DE3344EAF5784C7F2E94C3EC56E2B76415AB25A484D14928E40976A51D58132E5DA708CDA948214D8750B10D7A69B4D370ECDB24F9449F4DFDD63300EECEF31A93D9B1F3CF28ED0FE1891D737F25A32D878E4F569B10DC3922206EEE23AD8321D2565B64C571447B1B992ED8B95A56171272ECCEFFAF3F293D9348B0E9275537CB3BECA22DF65E6126C760DE25426D67CB56E997CD48F4BB0E2D7F4902512C3CA8FD6ED92EC68F6BB1DBF2452F4E31198A7BAB9DA8DAB8736C1C138AD66B9A88C5601F4DD1DB096BE1B84A3BE9614B28A2E3E07B949015EE4E4D27CF7036AA9226D07D40941FA019E1FE3D2BCC7A21442F26094DF83F4023262D924FFB1806AA0DFFB77733632C47E9931CA9051868C32642832A43D177F2343EC178C6632C4CDB9AF1722FD5F4E1BC63277B12260BE8EC32C74D5C40C96BA3A02C7BCD82DDC3DF022F5C97EA1CA5C4B00D69762A2652BE1452B97E2D45279F12A255AF3135CC43E392C6499A6C82B5021CD9E9F20C9635AD8EAE766074B5BBE113FC5E2969DFE90833888F5280904FC9253102B92131550AF02599392F8C0FB15C8AA7C5258964F81AC4B51DAE09D0A6165B2720819AA6358B10AA2E16758B38EA261140D27251A5A5A880AA2E1B496A2C35826B2AF80F9D9A10A4A060B4465697C55CF3D62C66F45724956A7B850A262DA1158FF1AAE7760FA332D703A71D5D92B75E2E8C9E7471C2A6BCD6C62D9EA729C68E86C6D49E5B06C75392BE3C2D653D013CC1B8E7E020B2764A0255485F13163DF9F948EF9D2142B1581911492CC69CE9268BA12FC61F5379B331D3362DA11B32A4AC4431D4CC211A82D350A3AD05A4D039C945647EF9D0A7092456BB8AA6AB0894FB6549F7DB7DD18F849FB6E4C5ACF4A9741858BCE1D51D12F2A5AB2191854B8980CF6A838058321378566B3AB4580552544C670490917559B7745196031597EB75E49CAE4B8842350C62A1E77B480CCAB775E3D968C048DF13229C80207AC854B3B821563C147D7E5E2D0F8D8E212B1E0A3EBFAD09C8FA720E80B499216AE78EF350142C86C65881656AAE6BA94BC32A429B62B4390A4907404625FCDEF6ED66055035CD760949D905D45134358DB584D426AFFEB979AA38EEB97C172B43DDBBFE6A8A3ED6FC9D1535009B3E8904B194F7D805031500668497CA0EA22821AA09F6DEEC62D56F18DE481633E5BE913B061ECF723D0248A91EA408D54B53BE910CA456972D214DFEB0B74D8A52A688AB738C5BAC126F5AC9AEA5172D14BE32849A3D492BAAB47C945D7D98CD22968B945B4CC5F33F7139D3011031D87155440BC2C216AA5EAAB95528248319F8F4025E17CEDE2347451B99342AA59288BA12AC15B0A213530297D1F182DB9E7A22886C4BDB6CED495DC7311E0E6DC3B09F15DEAF5000B1505251341AE2AAD3558A0450B976427D731A262DA31487835D73BB9F4425BE026EB598E62766708F3561C3D4078D957D6E2858186AD4E4A60E06C6DEDB075C35627EDE0C0D653D01344E6E42EBAFCBCBCB7BF1D2164B6BF811656BA1FEB52F2FE064DB1DDDF00490A4947A020D4FCEE667FA36A80EBFE066527E43BA68921BCF1584D426AFFFB1B35471DF73706CBD1F6F6376A8E3AEE6F5872F4145442F1E2DE627508F18C2D40C6401DE045F1B1A265A0D76B8BEF369B1C754C4F8020976411A7E1297A91A8D18F3687A0E570C9F537732A372FB38CA7517E3902C5A6C24D578FDE92EADD1FBC2D06147EC7B2480A158A16AE874BF50FAA0B5542BFFB1E9005E3CFD69FFD8897701648971F7BD6F21460CEAFE78E003B0D80B5F91C6F0E30E7A7788D01760AE6CE65368B7D6F0783340C0C1DA41C363CC4D67C9AAEA2CD547ABD9E4F31B703A6D14DB421B379C993633E5BD05A1D965F0503A7FE6671550C3A11E270506596112995BF3826506A3E9BD3E21F7FE0E809491616187878DEE5243E7AA1DBF18E3876FBCFEDEA1FFC0689CB0B24D8D953B7C3AC98A7C7CD7554C846E98A63F3D5921291E8B7870820562758D2CB23975CAF3280204DB1A4282D655CD659ECC3F100359A624E913EBBCD516BBE5AACB3A019E51271013A4C607F2A01DDBA72DB0D635E64E5E535F3FD08D682A85EED602158D4EDB00AE455B16045F1897E1628A3A4855A9814CF2A2AF52DD2AF3E7BDEBE444E54053AF5C6687AB18226C5AF0A41F90BD508A99ECB0DECE64DA8FB4BAAD00F01E36928AE8B86BBD7DB58177215419EEA511C7C0F779140E17D0EE7CD6F4C14A18A26214005B5D902D551A705A8861A33503D34314045D0023994FF85377DA04A68A25F458D552454D22478FA5F1071122A340F72582DCC6138D5D18770872C587B4B54B24C52CF2ECBD214B2F7578EA69021F1D1141A4DA1D1145256329A4256D58CA6D0680AFDD4A6504B9B6BA52964BFB3E6620AB945F6B5B3851CEB303486DCA89B5B438EF4ADCC21B73ADCEC21B7BA6C0C22F71AEC2C22C7A8D4962691732DC63691730D564691732D5656915B2D366691470D567691473D968691474D869691470D96A6915B4D36B6915B0DE6C6911B7D53EBC891BAB579740AA766EE9E0E59323B78BFBD86D231383DA3288B4321217342BADD41BFDA9C1126B34B7C348D7E74396B8C1D343E8A9D58E5387571DBA4AEDFE5F52D3ABC9204A8137C8F4C56C32E9D99ABBE873A91A9388ED9BB93B81921874790C6116247A8ADDB3074841CDEA2B118A101E9B78BDD2E5B2645459292ABED9B87D97CBA78E06D2A95A85495135598984116D28F883926537F986787ED1218550CB33929F8A0D4439D280E60CE4FDA22AFC62EA2ED530CC566541D4C8662593209809E44A821AFEAA0679FF07EBF9D80183287190D4A34AF0D528360644C6E243C1C1ABF471C2391A2358C6C83CB5962486A9F2D72EC2203B538D2AC9B8F74A7D10BCA23705821E92C399391E6D2B317A16F8D82CBE9546471F1C973F4B1E6D982C0DEC8F60142AD7648ABF75192C65B310BB5DFAB2FF4F7AEFE900F6FF414135518AF774DB9529517DDDA3D474B5CDB1345BDCDFE4A1EE32D5948BFECF6F1E6559EE1D5FC7FACA7EBA4303EEA0CB7519A7C8F77FB45F61F3151DFBFBE7EF3EBF9D9C53A8976A468BCFE7E7EF663B34E777F2C0FBB7DB689D234DB175D7F77BEDAEF9FFF984C76458DBB579B64B9CD76D9F7FDAB65B699448FD984D0FA6DF2E6CD247EDC4CC4E21559232AAF7FAFA9EC768F6B76D899750CE46AE707EE3A9620578FF09FF1F7330570DF4EC4B26FE1299037E4DDF95FD176B98AB6E767B7D18F9B387DDAAF72BE9E9FDD1DD6EBE8DB9AE4F81EAD77B1548B4493F1D90B944576FEF1297D8C7FBC3BFF5F45D93FCE3EFDE38129FECBD9FD960CF51F67AFCFFEB76FABF2EB59CD7645D9ACC2E26708EDB707033AC41E1509D9F48F23E0DE43D6885422AB190C2758A1B76A4CC08503C16F3017AB2C218A30BD9CD584F7C926CE8543BC4C4A7BFE5F6C07B6A679BD0847B3783D747AF395028E90DAE46B0C86E89BDF895A24F29F24FF4D4DDF78C8614D6A3AE29876311970DE3C082952AA5D3A277952940D294CCA80115C4F53A8AB7F7F6D8B98FA191F05D137AF1DA8D2877B4CC7C518DE222336591ABF04027235EA6E820BBCC56724B560AC794386A71B08308B2D31BAEFC87272E345D87848E8069AD3A06097CB4C86A5291B58B6D40886681B09188640789325F1B656F2E605465D7D1DDD78CA03C2A3B876DE1964ABED5877D4C2B7188D815B170F8ADD1C213C61179028D4B615FC43629F7F86CDB15555F9A09ABF7915BE6E56922F4B2D857692AE88E06E687C4B3434CC5566E5B26C09EF4809C407E93B3B8C069A21101681B4532EADAA0A876CD12C4BA9AB951459679135F004E83AD16811BCE0B3E9A6A8F5C02036D2BE08E28E99B9A08821F03348D7DB68F675E1D6205230F00A4F18B8500B3C6E123B594EB6FAC778FA3527499D26603176F6930F1A72EFC16388B66B5CD6FAB63E85E7AE70730A1DA9DBB22A67659B17FF9954ED71CDD216E1E60720FFB50C4BF6745632C76AE1BAAC65ACE5227848C40AA8F0318956E4625995F310E5C54F5B2E96476CAE2260EBCBCB93ECBFA4964E01D9734C20D1C1DE5C8B33C40FF3FEA29C257B2AA2BC5581492796130EA0936F261000E78AB7F5CD520DB46E220B93ADD7F6958DE6F2F2434C171E6A8829AC60DF09E912B7E6F8C9E7AE1DB257B3FAD6A413A0CA8B9786269017FAEA9A5C86A42C1B16208AD960B6F3BFF0C6ADF138F3D763030EB4C7C0F9ABF1CB66EB30B016F75632D7AB68B9624DD1503BEA44BD2F48AB57965B9C36126171ED0194BC7140585020E71D782C3CE8CAA96A0C630D19CCCCA2D0C39D382F6DF1D9C805F78ADF38547C7CBA946076161D3C964F9559CB3A609CF6358B8351CF16B3066D0ABB8070694A964E0F59E2CF1246023A7284A110528C2C56A475D7715F82C44534784E7087E59AF7C460D67CBE93236F4E8809C234C97F923CF94F14A63D9E93A5E2504B1386DD8D75B2CF14B1E94D8C34D56EB0B73504106F77E38BD9417662261E99DFF0A031B67F1DE268AF40FBA80FF7CEB320C77BADA65111A0C7790E418F45984EA0B26C1BB387A5DCFAD4A9C3E9B84E1DE4F108C3A9434BB7307504DAED72B2BEAFE9C446E4B2A7D19985BA68E0034355EC15B775455538F03118A1ABED8E277401D87438E1CBB126A3C9DE610E391B78BA2D730E7B7BDD987DF8A31C463C648B0767A44CBC75090D3E546C21A19107790C25342DDD828416687770F85E7A19D36A7B1378A0C77877B3281B5848738F09FAEC4D1202A1EF8B306D72F1D70EEA5E07F0D08E19AED40FCF0105144FCB41B991F7E380AC78BC09202FFE0A1C905BF3C61B50027FC60DC98C071E011C488A77D8E0EC5884033033FA961A9C1D7D2C0DC88EBF878665B6B839A17ECE0C2B00BE588665461F24030AE06F8E01996D861F0D5C0239253DEC107E66BBBB0EA58BEB4E44B8FB9E2E1404DBDB89442335DC8908C2C49D90B8CE76A52178BA9C9CCB9297C7910AB7BDE9484358343B52110C3B172AE2255B671AFC7957673254367AD261EC22671A5C2035373AE2E949171A01B0CF2F4C9D28C82B322711C904C937A562BE8883C37F1AEE8D21E1550DB6BD68C9C0EB8E2AEA234EF5B75F3D56337D1DB3B4F5F5F9B8886CCC6D1F8712E61E34BBC956160E7B920A717199F9158BB21D8CB03E1A9C47302CDC53E31CED068A9D65C4515230F875CE614CE2F9C5F4EA68AEF7F677F2F5F80484C2E7688AA1AA7C509756B4511BB53E7B47F7B32F771FAFEEA78B8BCF2324F1CD55E38BEA79E9E0A0C4B62A4D4159950F0C4AF57ACD1C944C4C4ED1F3F0309B17FA702A60F37DFA78F667B6869C1479DCCB57CCD7DBC37A9F3CAF9325A9F9DDF91BA95F0D29C86F5250E3137882FF2411249323CE638427D19A14D8EDB7512247F9FFBC4DD265F21CADA56E08399159A772C64E28713165163FC70421E91EEA71808A297D4114E858C2C565554383C691BDBCB8FB38BDBAB89DDEDF7DDCA1F0106D82623C9B8FC300071614D8D29A6B171A424CD05EC0513A1BD960CBA8D8E0DC92A5CCA83E9963C20A5CA10405100D104502BA09638E034BECE13576291B667324425F0B8241741616849A8F272310608E6AEB84378DBA400375FA1338C0275E9B419436088A5164BE9AE341306A0B42F45B2B684022D6A0430384A8B14202C84CDBDA3A0040D54EE6090B301E9CD3D0A91020D4C6E91821A9153CD88D8FE2E50C6344A8F8EB527107E06037561884C0216504692FECC734129F26D88305A229A5B50217BCDFE8D0A94235D9A32660DDBD48151D66028B95FE90D29F60B183C8114896FAB124F92529A5641176571BC94213ECF102D194D2DA932CC80359AAD98D9C62B2874DC0BA3B008EE2F9316C8CC5ADF462709B8F43020B1CFA051D2CEC95B3563162F0CA5A0738E10E229560C1826B34030C9E5E2A865748B1C24C53AF001826A115B428024DA09041438858810661B543AD5D38C4E8D112539CC88751EA217533597A430816C1081D2834684CDB085156DC2D48747E122B5356ECCB7D5ABE1F7A76B12C1F219B46BB65F4286F35E5EFB705C3E7906DDF6095766EBDE88014D270E9050F3D982B7668E8D140919EB71D8254E9D9FCED6F6D6DB748EA57C8F0E15E4A518385916A46570812C30EAE986425789A9A05BC3009AD804515F506193924CC0D98F7CE1F59C8A0B4D7B8AE3D7F7AD48573FBF586B35E84921D74FA9648CC451C837D46E0DA4E3196DCF763DE6B44C307A1C3A3BE24D9D6AEA3A6D66E0E235457ABEAE3089ADD47F92E567D26817EB63C95006C40B6BFFB88854442874A792BD6F27C82D506A4BAE2AE21A2131D41E1D1BDE0E80B167662A3774854C7DA091ECA0B270FF3ECB05DC6F8C115FE0C7D796CA5FED6C9D289BF9104B4A34E69E7EC0B14FB081D5EFCEA9339A01437B05CEAED03538B68FB148B61B798E5923C94F0189E24A2AC0616BDD2DF2E9EF06A3B5983D35BAF045270F03176ED2DDD91AD16DECC7773C56521EF82ADB5919852F8E8E0C11B5C9061576B9F871E4AEBCBFCBC9D83917ACCE7EEEC2D5075A49496CFDF692AEF1C34E6E7EFC241C6E938DFE0E1E27AEAAE57B08887FBF5ABE980E7FBFB5A49F773CADF76158D56DB032C7402242C2E7A121DBD21C34E681C1934E4008C6DC18209B4D340A2F8785A709038AAAD138EDAD6071A74472BC322C2F660EFD09161B7A9DCB3A060EFBA32974775BE37A72BC12DF94CC0A831589B5ABEA2EA70AB1C0E55E3765BD912F348D53DC24EE39EB3144C270FB7BE6FC707ACBF0B3558C7837BD0DE913F06A035E1EBB846345F4F065248A0BE63C551E1FECD87A421F4F0619BD123C40F8BEC01887315FC784C510747A3F8C01378FDEA954C632027626426BA54D7E936937243A0FF1D4B23C80C767FD2022FFD6E4B36C1D2749091C3B2D5AA887E3E39E0608F6FA083A98CE8DE0A7CD4357612E123D79757D972113DEB74D10C0F74175C27717571728E4B381D1D8533D7A5DA8E4E6DE691FAF20D6C0644CA739B6C5C407A68B3FCD8CDB1081754053CF6293F77870EAEE2158D5641A5AAB71B8D56C54434C5951CDBB1D66CF4F3C963EB0E7908101D65E55327ADE24B5D7370847D38A44BCC5FF429DD91D69D9F5D3C3D6DE3A7681FD3B89D978764BDFF94D2DF77C93A7A4C963531FAFDD36E9A6D9EB31D17F4F373B42575EDE36D8E8179BC8948B397BB77E717EB75F63F3F6DCAB1270DF82BDEEE92FC5AF37CB922B9DE9D3F7E135DE99414EF6A1323B7678FE4E7A7548A473AD15193227F7AD3CCDF8E121DBAE503520D452D092E0AA24BC3DE4EEAA132C5C297E7B2952316462C94CAE027C182117B9A60C2439499E191BD5865C9C7244A2F6735C97DB2E170FD791B2F935DD1EF7F312677BD0842AE78417D7AF395CE39527613AD117A6F7ECFB919E583F1372F680C51848ED0E8041A4394A89ED030E210DDAF1CA25845DF0AF1B041B890D2FE73B178A6966B64AA26FA773DD1591231A18A35F4DEBC3621989FE9815EEB76ED7731CBC59E578FB0C2A6971D5A8728E947B4FEAC681DA2F2F143AB99762E03FD0F51F3849F783C45FF69B7D846CBD5DD2A89378E346D867088E2781C426E088728A37C86D08837F57309839451E29B1601EC0DEE3D88A03E3A4ACFC53D97372BDCB49B670B533300B2255E66599BD395427288327784E4494372883AC40F92E6FCA96EC80E5691F09727834C319EA4E52C6B653D2D87E7F1B70BC9D2729E152BCC9A66F1C6A27147F337818825D814FF96A0C5ADE138582532C2F114E1385805E20347B3551A171C625423F211C440146759CA042CFABECE229BD9214C2DDBE2C12797009B51DC8FB07180CD4F2996C3C3C688F5F569F7214AF8D0934A88007BCC7655F544663867B2D0EB00FB709C84B2F52198DB8C56281FA2421A513EA2DC0EE543D49FED6BBAE669E721EABAC0138121D7868BB6E1F51025EE50793DC479EFCC6BAB8545FD66F310673EF376F171AC2B8E5D0D8A833E4411340EBAE7A00F51161EDDA09B3BD447012B6EEFB0048F6173A70D0795DDEE8E3D9A46C93DA2291C9A7E429560A53AEB9737072BC3D990087DAB4E90A2F880AD3749AFAD75E961FACE103658B93E226C20081BACAC3F72847537A2A34A020D419660FF86605B26DBA8287EEE71FF09C5B71193A8F81DA240745718F0BE0A4BCF7F27F76BB2D8B6792A9F0EDD1065DA3874C5D00D512CB56F780FF908D974617724A4C7655DB8F9D7C2F1CD211FB01A31101603439492BE1830E5D1D5EC324A076BC15D65D12C0BB98DD03DDB8728A04E80ED439409C3647BD9EA51CA70DE13E6158823709EC4E9F52A5AAE583F7D80E82D59FAB4204D5D195FDD7780D3283D47380584D3CFA6154CF5E6E27AB8F23B078DE376E15DA319ED0A865F6E11F8CFA2835B6B2AC7387B6AC3F6CE7B1118F1D968DAE10D607DD1960DC8D2E9214BBCBACFC848FBDE3385FD650E37A186A7C1C609354EA8239E50C3D3E1039C5046C3B25811945CC7A3E96039339F7C6413B313EE219FF24678CA28A6215E72EAC94B5631AD709757153782CA2C61728C66C03839C6C9814C8E51A5BBB19189AB3040EDDB4E5C88459C0264DBB807CD727F78E2FD94B83F3CF91180FBA64F34543152062920DA081059287681EA11BE0232CF3CDF01B1C5C71045D8888FEEF0314421EB8B0FC37828CC03EF4394B263C0AF70B263B001BFD071645F940F3388C263E2FE3BE4D14620E9BBB0E2A6F41015E338A5C7293D4E69744A0FD196697FB158436390464C705C57AE0C96665B7E8C82E94354338367FA1005811FD34D977D95F81DA42C684121956E01816A1BD064583F44897022AC1FA25CF065BD61C8E7E530E3198F2BA271458430273AE4A80E3B86F93464B6CC432C880492FEC1DB97C38C963DCEE471268F33599CC943B4583A7883A144C4202D96F0685EACE21BE7FD425880088D6CE5BD816A0C87A8ABC631E4C7708852CA6B0CCD8E43464BA2340729A4CAA68744234FB10D3056EC1EA23C1930BB8738F57DD86D78103A2E171F03B55198F60705A54CB6156432DC1FA4343819EE0F5238F872DFD4295D2D170729205A584097FB0102D596F6036AD60F513A9C08EB87281A7C596F1EC078B13A0C522ED48D0FEBAB2B02DD84A49A07DF61E85906DF9967C6C16C80D2372FB3ACCD3946F13344E136E2E778F0334409ED871F23FE5C66B37888F73289D67A9AAEA2CDD47927661ADD441B3295968EC55787E557C71BE082B3CEB270FDB2AD5B712ED6981B09F16C977D69614FC5F26EB2B465695D9E8B35675DDAFCD02F5CDE7C670D285FC804E696964369FE853A0702D5DB711E1418A1E650BA7A10C38D82F8189465D8211FE4F29E3ACBB2F242DE5260D158D4A1B6744BDD313CC36CD41DA3EE1875C7A83B46DDD1B7EE18DEA26CD41DA3EE1875C7A83B46DDE12EFBEF9E0E59925F741DA0DF69112504010177AB6E734845862EBEDF7EB57011B7B9DF4B477078ABBF7104F9111C9E0DE63782307BDE93E6ED5F487BF6519236C61621F821D9EEF6447545DF22D22FBE6565A979BC07ADC332B56CE33C5E7F7FC527B31D3E5B94CCBBBCB8FB38BDBAB89DDEDF7D948022D6C6589252554C1A54CFF4E2E6E2F6EBA7F7536D250D16A53A9A24A88ABBAB8B3B52C39DBE1B95452BF7A14A003B70F565FAF58B967663B548D49B2488FEE7AB4FEFBF4CAF3E99D5505B367025752A5ACFEC6271FBE542CFA8EA3977B4363103C838218FA64E6A774895D114A896F9C5DD6702632D7966512155C0A44155CCEE09BC169FEEAE8CF946CD47947134878A7334930932F03AF51516D820D3E8F3F5D5BD7127A98D8A7692E65075926632E9245EA7BEC2A293FFF872B130E96463434B353549502DFFFEE5E2BF1379642053194F07C44125EAF37443E0B3EFC0C13531C9485D4C0E4D6DC2E25BAA4E4887EABBBABF20338EE8275336D2C710E0EE31C948F7981C9ADAF848CD407D6206A8C6C515D1B9D7EF4D7BC8B913A40AB954A8B69BFB8B4FA658611D0F9012A689881A9E7E2146C5C567A32E95FE15B03F6512D6993255DF13EAC4807A4213919E108EE5A242AF566A4797AC54EA1450A55C7C995F4CF50AA55E4FCB38AB12407C5D4C3F7ED22B796EBD0D0099498551FCBE84964137589710341A3411198D7C28C87431D31185E705D60F4512AA1B16577A33AFF026430677F91DB4B4EF67EF0DA65EBD4C8238D4A4810CFAF8E5FED3EC8B8128A93089A24A4847C4A52978D94588C2B887B321755B2D5BCA56CAF664F11936260DBA35BBCF797D753F5DE4924EE621970CDB936C0EA1B68BDD2E5B2651BE6A04D65F0FB379C12EB29A62328A2BB1261747BBE8CBE3D99FD91A5AD291DAB8AF13BC2CB4F82C8AF30942CF267CD70CBA5DA3811BF51DD4752427DE05118F45F39B8F47D0F9724D4A86B2691530E45226C58873ABDF72B8AB4F8AEE5A31CA678C67F3669DAC1860265B1BA32B2EE38B92CD47EFEED2A526E90835DBE4EE42D9F0464B6BDBA2D5CC57458705CBB22849BF7977973E493017BD01729FD1BC411ACF4F05D0BF514E09B5D7C29E05ECEA9BE91B5D8FCB8CD094D08057F003340046BC09206320223AAF44087428B882676E0F1FDDB081755D30DDA3CE0C042178090D4204274A8310C41503B20622A273E9D8B3A6F6B598B145911BEF90E8E9297AD27C3C1A56084F37CF79B78CCC0C657EBC53A003A7E89290A2668CE472AAB982BB921C4C24EA2533E0079E59D9114884B09F8F8B0D0A9302C8D58AE0B46398B74C50F418CED8922468BDDB8244D10C3598B53D45D98D0814DFC99BF3BE5B9911EA0278B760376FD12B3149CD1CC9355D730677397B9A514A7E20395BC145275DE79E3D532DA8E08C780700A77BD17EEE7B6FCB2AF61DA2B9665985E6552E9F856D807A014D3FEB96D0C0CA2AECB28AEB9662E0C17C6D75BDDD51A751C3E6550CA17976D82E63D07F806455F810F88D8CD283507F5374197429B3A5EB94F0DD5F44DBA7786FD4FD2AAB42E2CBED871BDE53E7B9E830733A3090CA8332AA549DB40B54E939E6BB9E0526B8715D1A9732C3C887A4CC1F5464F5EB4FA25D34F225C1B9DB6387931F2A80EF58A904A19CAD7990BB507F5C871410C0B2B6D6F91E46BED8D8D5773DCFD65AB7997DE7A6CBC5C7E0DD55F8C0B0ACAD75DBD69BE8D07D76678DD9EB52D83F9A128177F7500A206BE10CAD3109B7923425DADE3CED9239CD2174D56E2A90AB0D2648473DCAA2CDD7001E0162FDE56712081B77FB6D94A4FB870FDB8C7AFE1E16D94379D601F21118960DEF3560CF6B9485A0F3183E2B87FC7F6FD42B068DBDECBA4E6AAB6F6C6838BC7B522E35B085C35A35B4E9E73EC6907DB050034FFE800DB4BBEE482B3CE4A1C34425A6548784DC1C65E5136F73B6F7205890BC1A6F197B9E93BACAA0B39ABDF49F7DCC4ACF0134B77ADA08274EEB69433F77C887B7939206BD6744D3DE4ECA3369D507F2739F6DA3A738BFD2B4DE155FDF4EFE3C90D29BB8FC358B77C95343E22DA199C6FCBD269AE753FA3DFBBCCD9EE36DD17EB64575963AB9BE8416EFA3C7681F5D6CF7C9F768B927C9CB78B74B7245F8355A1F4896F79B6FF1E3A7F4FEB07F3EEC4997E3CDB7F50BCB8CB71375FD6F27529BDFDE3FE7BF7621BA409A99E49713EFD3FC22DB236DF787F282DAC480447EFFEB634CBE97634984D13E7E7AA194EEB2D49050C5BE59FC1CA78F71BA5FC49BE73521B6BB4FE7D15FB14BDBBEECE29BF8295ABE90EF7F258FF11627A21F089EED6F6749F4B48D36BB8A46539EFC24187EDCFCF8D7FF0F84B00B679CE40300, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201506250333115_delete_ct_phieuxuatkho', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7DDB8E1C3993DEBD01BF43A3AFECC5AC4A9AF97FAC6720EDA2BB4A520B7DD24E9584DF578D5475AA2BB15599ED3A8CD530FC64BEF023F915CC3C317988E039332B4B8901345D493248063F46048364F0FFFD9FFFFBF6DF7E6CD6677FC5DB5D92A5EFCEDFBC7A7D7E16A7CBEC31499FDE9D1FF6DFFFF9BF9DFFDBBFFEE7FFF4F6FDE3E6C7D9D73ADF6F793E5232DDBD3B5FEDF7CF7F4C26BBE52ADE44BB579B64B9CD76D9F7FDAB65B699448FD9E4D7D7AF7F9FBC79338909897342EBECECED9F87749F6CE2E207F939CDD265FCBC3F44EBDBEC315EEFAAEF24655E503DBB8B36F1EE395AC6EFCEFFFD10A5372F77AB681E2D57AF668BFBF3B38B75129186CCE3F5F7F3B3284DB37DB427CDFCE3CB2E9EEFB759FA347F261FA2F5E2E53926F9BE47EB5D5C35FF8F26BB694F5EFF9AF764D214AC492D0FBB7DB6B124F8E6B78A3513B1B81383CF29EB08F3DE1326EF5FF25E170C7C777E19A54FD355B421FC7E3A3F132BFC63BADEE699011EBF624BFE72C6A5FF426141D093FFF7CBD9F4B0DE1FB6F1BB343EECB7D1FA97B3CF876FEB64791DBF2CB2FF88D377E961BD665B4ADA4AD2B80FE4D3E76DF61C6FF72F7FC6DFABF6DF4697D3E9F9D9842F3A11CBD2927CB1B26F041149DEFBDBE8C74D9C3EED57EFCE7F2560FE90FC881FEB0F1542BEA409990931FD7D479A1D7D5B371F269A6AA7D14DB4F99AC4CBEE2BBF7B8A5E9AA12E6B9F45FB7841A69DBEEC214BC4C22D36FD2EFA2B792A20283484E1DF9FF1BAC8B15B25CFE5547F45531F66F3029F648C3F6CB3CD9FD99A2D4B531F16D1F629DE930E6568967976D82E2D5A389B935990121A29D84476DA3CB0799B762259684BEAC662F9EA4E99B6B82E98730B6831A57B7971F7717A75713BBDBFFBB8631B0CE790988B648318FC76D2482AA5FC62F06023BC68B13E2517D3767BF9D5A32059ACB2E46312A597B3BA6E13115297BA5ED894BA3910704F6FBE5281152F934DB43E3FFBBC257F5526CAEFE767F36594B7FF6F36F3B49610210489383715B2C609E78D9CB081795DAA4F94372DB7077953B6074DBD3A2CBF1E7A985D716AD0EDBFEB2ADF6F0FDAAA6609E965A2A8E5CDEB30D5C42999FD91AA2653661A480B917BE14486A00043EA4A517E6854AAB1B974F565FAF50B2CE20A7C23268894285B4A520E7B434921803DCC24B1A53A73CABCBD9F57497C28668C6AE8D97CC0B837C9F8A033796C47BC2A4A0CFBDB4364D4D03A2BDED63287B6B95536C716136ACFD7ABCCA8C9342FDEE62A8BB6D1753EC7562F5607A31617F9F0D692646D4BF33C8EADFCC721DA9BF296E6C55B5B65D1B6B8CEE765F9D47AD8CABC2FCAF46ADB57AD7630ECFBB33BB45507B13A165B321877041F9BE035B92ECA2D75A164ECA3DAD209F18DFAB0C17C5DAA4FD4372DB7C77D53B67B5B9F7A40FAA8BEF4CB254E2EB9BCE16DCFD779B6F0B1A64513FD65967537EF95B3DEC162435D5A8055E73EF76B8BCC7AFA97057B970075FB1D85405DBC8F89C8D76D3A17FBF55490BAA707B2C6899E7BB01AF2BDB4AC5877D7957F4AF7BFFDAA2D97A42B620834A52E3332A122D94BA450E9D3C5836EADC3AE4BE402CD5C57E593D4BD32730BAB1FBE3E6C0184E7D274C06B19C4620F16B155B272B509E681842D9CD176256FA5158C97C73ADDA068ACF9624840B0D5A2882B7BA44A0229318FD2CFAB68333895C2B4BCEBAA6759FA316934594606CFC0D4E324B959217F51DE891417A7A791C837ED011D65A0F5559AB2E5581EA9D568462FB1429B6F234FAA427D0A120FB1D0DBBCBC8D6EB228E9B1FA3ECDC5DB68F675D18B6F4BCFF0305B6ABCD4F55C2C1B59D6B8699911FB2397CEA058A2A9449650E63412094896841194C77E57C5C08CF712A1A2F5AB95B5F64D5759EF727580F18E663268BDFB0E464D41B53D20E47900A0826491B70C917C4E905169DC261969AE900AB554CCE2D4C8C5F565945E15A6910E194C56041634871A134D365B40707A09682F930ECB0C3083C45C3897C31ACE78E10934154A572F38550D3536B418916C636AD1627D1A5B85E6B637B4FA52F8EA7A83EF2FA9268E83AA15A7B84A1D7B7912A83272712554857BF725E4EDE8C8935056F5F3FA117AB568CD5CA5B541A4B4B8D439616F019EBD5D7F8195C1A8F718A81A6DB751E5243C8E5E721CB92CC8B7A9D89A87B149D5AB1BD67897CA73AD174CFC803B367A69D5CA0688C5613BDD1688ABB8B473103BEC90A99DC3E1A4A6B4E276B1BAAAC2BDCBCEBC1D1D595D65553F91D5751B91C17DB9627655BAAB3B808DA6F228713E20C009254C5834273C69F1ECB642A71900A01375A2BA03782EA9F18AAC218D4B0F779E74EA51E3F673372B9DA4E3D18BC6231776B959C9D63C04B332A45DD789C802ED3ABD846BC5AEB338E8AFB3EB5492CA78EA37F2D666DAD7A5FA9CF2791B5C667B59AE07DFA8A6E2203BA15F93C5B6851B7F9E33D95B6F8B33D840C507DBD7E2EB0254379841D3E450DE64A733244DB95E2FEB2C3CD6274C6177AC97136A68CB931E64579863C35733D5BE2C3329C4DCE02E329F09B293919CB602C26245622C1CD4EB10D7DDD9A0BBF30A8686125ECC105B8A2F5AB24F01769545B34C9A046D48BBBAA61EE231742767F1EBF4C6E74E5C0487E2140A22624CDB5D8E9A4AE6713914AD57E5933AA0CCECB556103A643367B9A2C737698F7912E62E82CBE6C2E1203C04717ABD2223ABF1A486B9D89CA54F0BD2D395D77D491FCB25C82C16D5ADD1947755BCCCB1374BC54B4BF63787F3C17E32D2BA77B2B60DBD53523586F382499385E1EE7C9F6DE38F711A6FC9347EFC1CEDF7F19660F32E4BF572A051C2ED56D4E30A874CE65974507B15E17D13766FDEF02E6411F2E9D95964C0ED609DB966EDC8D2E9214B5CFACC6805E32EB39A249890343E586373DE5679A4463E966BDAD6C58A70EE3A5609743E8BA2E5CA8C5207D4B9BD2C33B15336529D2F3B50B9FE734AEAC2F6B11799CC068EBDD8CCAB0C2C3A99F6B888CF271711CAD4692D462B16B4224A0D6E3004124FA2C56926CC9CC41377C7C146363105FB5C3472EDB75F39F67AF590ACC5CCEAEFF470BEE3AD1611B3EABB2F4E5865AFB858467DADCAF51CF795B6DE1EA8BDC63429748ABEFA21C5609D672D4661F50B46E91E2004883FA88E2412466238DD2D53B63588B898653342F02A5B2E6C05065B3290C838BB8C7671853366ED756EA09F66B3AB1E6E8C152287B4B2A7C357D146A8DBF21C53C33844C5E58904693C4878250764012F6F42F91CAE6FD20EC353AC4A56B419CD049D5742727AAD751BA6DB5A9279A9BECDC8B2E56E36643F73B43220359507B71E79FC859D5F9019A99A87AE86249D6C96866455AE674392B6DEC990EC4DAA9786A4BEFAEE11EB295F01634623899D709B43CD3626D132D41D79470B66161DCA66F762C0E44370A90C09DB9E0123D46D7B10BBE61B747FBE4C2B0CE53C0B73759E4B9103D4F0C90E460AED143C89AA64A065522264940839FC424BD40CB4B2FCCB42BD8695A8DBED105AA2BFB9B658C53761D6D20E912DB4DD6EC181E63B35A58016F0CC356FD2225A167109948DAA3341CD2AD3140DAB32D836AD8206CA32263DD796F560B2CE722003B08707E5F2DBBBABB865B5675794E95380D4ADB6971F75C91EE6B0B6EAF036A19182359830B892156694E3FE31337BEC368F69C15ED1C8B6DF01926CF13E7069547FA7E0749497F2A6A24AAABAAEABA97D68B9AEAECAF5BCAEA6AD775A57F7B6D828D7D5FAEABB33832C9702C0FA19592CB85FA22E5E9CB2BE404D4AF57E79BA68B9E3DDE9A26C2F4BEFE280732FD5E7C7B2998A4D8F65FF34EFBA18BCBDA6BBE0CCBECFE634252FB3596C79E2A428D2DF64E45F8637380B873E670CE7061F4803B3221E02386F1360D320B7708DC4A004B6718266460EEBC0A709D123135876F0655D2C33E245C7B223C60198BD9824C0C35F78668BE71FF8784EA605002D8267A677C00D0A34B7300D32DB0C3FBC9085B3FAAC32F899DDC5E950E9B1F296ABE3DE316CB72EC119D772658D74EBA23A413C7651A5B8BFDB7E6DC271C496CF634BE7CA5AAF8FBB78D77A6DF02996F6EA83379D5AAAAFD1729DD5C647CCECA042AA673BAB9159BA74501BD5F45DD428C6F06BB7B64E2519EFC06EB92ED929D9B201C1DCF30F5F9FB97F317FE2353F4C61E95EAC8BF578832A4AC82473F12C3625BBF7E210C110A9FC3739025A751F75D06947974A0DA987261BE3519152650FA79CC5C6C579B1DB65CBA46895B8A47898CD8B05CD54C0E9FBF4F1AC8AA321656D9AD79CEF61D628B7645624CF641E9096BC3B7F23F150499ABA921AD2FC828BA7FE4F1275328BE26D4CD810AD49811D999749BA97A75C922E93E768ADEDA3501271BCAA9C37135A9998328B9FE3F491B455CB8E00ADA095091245C7AFB713063D6A50516C5E5EDC7D9C5E5DDC4EEFEF3EEE5060C1D9217035B3C61C5B08F57EF0A5EEAAD9E82AFC55E6105373C5A4218528527836BB005AE9A120B384F2049530624E5076550E0F0BC12591057085A13694CCC2BA66282C300FB285BCC2B8E0DB822E6515F37ABD569400CFD48792520C69004ACDD2B95DF12477B00FD924F3C2AE15B027BD0B54414F556143AF7CB7AA197AC669690E2BE5F393F2A1EC7650A5E8A0D978024FA659014AC105AF06740024F4C94E6CC4F5EF776A875D0528EDAB9FAC3A151E196D055CBAFE9A0D30BEBF648E321D6BBC5BD201DC342FEF60A8307D86475064D4496A8E3FD3F7C6641422950582A11907CC20A07A8BCF1C8E669C0AD0A25EA4A00E91FAE7DA42CBC1DE21A8ED729FA2D0097647200BF1D72A9412CAE0E90A4116D20D15118362D7EFD359BC8EF7F1D9C5725F1C2F9B46BB65F428BB2827A44D8E8D54601869674831AA659E85D0424EEA588A512DA702B4A803442B5E6DC08062F28443039266A38E47C7EB57AF54C2D4E47D2757245AB04719F6156BBB590CD8A6F5C26110738D6316329A631313B4B695D96AD277B39981465E379FA826FCF16D4C172E4D34F839EA83D43FA1C0A1C2C1DA3108B6DE29F0B45D36743C6221FCEDBC9F3AE604684CB7C0D379AC548F4B98404D468192B6B9C32AA8B5E48B4C274F5360403AB9DBFAC521FC008B99E9A04023669A98DB250A38DA40DD0956CA6E9A8D2AF4BA9A15AC94DCF06B4337E20D7CB1532187D4CF777A2C8DF4B50C4CE4A9FAD0A9DC530DD910849F3A12308622C3B0C00D96C4E8E2E622D130403A37399850C6AD0847A3EE9B8C3E12B01CCC7BE70956234676D4E8AE3DB87A446B9E0608E8BBED1BBCEA9EF6E4B2750262DFB2138E408D8140138EBAC10077B9C51C64EA40D69DEDBD2BBB6936AAEAEB97E6085372244853BA392E04075AC670A08FBACC1D1CA2D79AAC8E0EA9C3358B5B0DADEEC7EBFA6B36D0CA2BBC56278994AC09D198AE41A7136CEAB0D941C1D69B5453F5B13F803989B4DEC18545DD55293665085E5E7596B7503BD9D4D406DF660FD3B1B15A5BD3BC0A3E992B3C244E829DE255F0C5BF25DD884024D2AE4252E9C2EE72C2905EB9ED04AB0641D73B45AB965BC6D20C0F8F612556D5DC09D19A2E8E01F3613D313060313E1904D4E1113A0127160E9855EF7263429D1606996136E078881B8BC3C260E7BDEBEF146DD5AD62FDF88AC15BB5885339B3F110978CE7B1BAEF1CEACC061CD510F75E2A431CB20E52E6AAB48D77541972D681BB8E0E514537CD90AC888C63E9E65470C4AA29FD191E424842854AC7E2137286068DB5D195A1810550EF449CA35C3156E178002D2B8302E6428856747516B5F25D185F05511542CFA1C2CE21ED917CAC9ABEAE8598F4DD6CECD561D62C0F926AD814A4459DC3D1FC8A0858A43528EA8EE577752D44D9EB3E41E87921A457088A9744F56E78207B5BB7777B76C02B7A6AACEFC25FE37574BDA30DE901643A2187E46F0B66FDCA364D677B449A93483B32A8E5E1DC4C71C086550E0C312EAAB300AF22E25C27D0623AD823AC185ED8B5028EA1DB07AA74D77D90FC6DA14B71CBA783CB669ACEF68834A7DB653D0B30367AD28341441E243F0435BBC04CFA2ADC63F4D84C3D39D61B3A2D1481DF982636610CCD59A0081867349703FAA4DCE628DAFE2EA7273A3E473833CBC87FA4CC9E9488B7F5AD8A9BBB79FE2DFE013D5EFB651757813077D51312229E729AF3785FEF347CE3A764136D109CB1123A456A4CC03A89141ACC0EA0D3305A22838D01D49A2A1E95DC1430501540A109D324D1C042FC6354EAB5224C085E82437D129C6E72DF840C5A8AF4848F440A39A107D060621A4954D0272814BDA30B1EB47B348719F7718296D4A43B22680B913714249A6CE67887B5D094DAEC5B73414AA2843DD500F71307069B684289B9460AD16292B5D4846BD71239E5132670EB9893E150EB98642D35F13E86444FCCA0A5C89D9495C829CED1C252951E5183E42A727E0D69557988086C1274BE086E0F3DD601B5077BE61C903FF536AC2C7D90E77481B1AB76B4E531831FD484469FD96B05861E7FA304E40DDDA98278833D5587C8BF62E50A4B16E87931C04E281F6C920D84F2BBBE3F8DD12B77A74913E830A651430C08757CC66414CD8D07382032675D2B4222D3AE08F68D64012AA9D5B63A474D695C4DF8BE1BF085DAB47CB45E8037484EBC47700198470A23594BB00B36C9B16621F4A803D2F2C38D86A4E5B183454755510219829AC01E9861A2A6AA00830557557A87D8F0AA1E500122AA72D4508BDC9E2D50D84F802DDAE8A05C4754F141B98EA81E6D539303F9821908F66C41835802BC310B78C9F5481BF2D2A45B6614414669964EF6FCD2446104B8A62981F7D42C6E21306190A58F0D712533B1A55508F4291869186950831625FBDC00D831D334C1EF30081A86CB9351A20F98C774585CFAEA20A80F740772135B3BDB735311780DE0A4699836AEA30681DAB84E2A9E5FB40ACCD632E79431D900DE99C770E33A6A14C58DEBAAEECD53CBC06D221B71DF8683E58A8614832C58B3F863BCFDA98D402676CF4406EA838E75C4348525A70B9A85754869C7D9F3A7233B0E0ECDA495607ACEA8A338F9CA2D2577143E4927D080418660E4E8E31189E3AD8C486423898D08B78C2675AC1B806516C171B8FE9985C7E17AA9F6B75A50C730877B873D0D5C25074DA2B0E076A88667D6766DB75C82C383004C328823C2F5491D4984EB923A7E8569F09096E623162C0171EC1884C110FD31EA4018A28B07BF166F11FB425EB8065BA583511974BCD2C34919BFC19B471D61090B2A804C376DFC016976A8221048530EB9B76E1E39A0BD19875C6A87616472035E1C7ACD1D781150F87D699BBBEB2DF14BB84E0D79561517AE792F287CE59AF7A7A2B779B557A55B6740BDB9A86201740B1869BC700FD8830DC2D55FDEAA8277445D4C47E8D62F68326AAF070BC69CEA82B06022AA6EC89ADE0936E1B49B64116EADC2124575B5559CF3C8E5565182E017254D2EA5B6347194F7273167A6D17D4BD9DBA8BB71696A929853EE705702BEF4A7E5A0CD6E84FA926000EEE9FDE9819DE9C85D35830D5313AB5A75AFCD7FDBB4537B1ABC6C65C0263DB27437B3FC19D527A08AB3387A3649778A941D626F15F9B387BD4824B3063A4CE4CF16C51E8BD1C518658794BB2B4E2C526CADA877BC1C5885DDD600586574B183EB98EE6A87F1311D23AAAD9F75912F724080D25CF7E0471EBFF0C1F7023BE1A6A3168A27F9358E9C02BD4E40D3DE4EE6CB55BC89AA0F6F2724CB327EDE1FA2F56DF618AF7775C26DF4FC9CA44FBBA664F5E56CFE1C2D73F7F33FCFCFCF7E6CD6E9EEDDF96ABF7FFE6332D915A477AF36C9729BEDB2EFFB57CB6C33891EB3C9AFAF5FFF3E79F366B229694C96DCF133F1F203AD699F6DA3A75848255593967E48B6BB3D5162D1B76847F83F7DDC48D9D8CB133CE7287FEB9AC0FB11F2D0D52719EB62F9DF748F25BD792996D8CBD5ABD9E2FE958A54C3CD0FA4839B38DD177D8D997157172704E6CB681D6DEB7B2BF4D2CA657E3E729AAD0F9B94FB240251458339F7C853521C88C4E9DD3D452F8DA46009F2293614B937EC7992CAE7ED73C40B9C174779220D73BB38C81E93EFC9B298C41F0E69713D0BAEB7C8FE29DD1146D419CFEA3FAA7D2C715E94739D5705250508521A507D8EB6E4E73EDE725FBFC6DB5D79A3ECB0CD2F3EC1E3688435A90226CDAF1A1E68423D7CA26F451CFCA49AB854B3AADE4EF83187B27C797E8CF6B10F2A4A0A232A86830A7ECCA12CE5954F1F549414C2A3E27E9B3C2569B4C6FAC6B71C92E1C6525327CFEBF4C6183034151A18FAE907948E8191A028DB95765FACB2E46312A597339E1CFBDD9EDAF502A6760D6C08E1D46E0E04C4D39BAF3CADE6EB115807CAD1EFC034682EAFB8D8059D88691649422D6C52984A72802195E4497E9534C813AA68127AB6091A38B81804231CFA82434BC60073B5CDC112B085C32958050A2F928D5AC0C818D80478517CA41A17136F11E0FE50E5B85757DF04EB02B91087535AC429DC302EC19CDE2C898AFB622CA9FA9B0D953C325411D99827443F5B1A28701F85A42330555498ECC052A14E521743A561A424899A24EF456B857059D855099E3A8945BDA894D834BF6AEA1921D4507FF6254E6789449FA604D0AA28A384D49ECD2D8A69176B6BC4F488691F4CB7643336DBA30E26A31DA64FC160ACE691A717012462E240420A7662DC41A498CF16B4B6841177AB240F4DC21163BE1F8101858F52178E9E32D8849397A7751D80D4C0A47856C10041AC8349EADBF9520E9193E7651C227E88DA728854215B5CBC21C643740A6A4D1137C6466462640C541B5E141FA326A60CAFDEB058336A6AB5C50210E4926C8F5224D0290A4B3A872CC9DB001C9E283F9BD39A670BC979517FB3F084BCCC32C101527C3902B5ADC260078A9B46417251DD0D7025B1D324F9AE113930A3767B80AA28D2C1BDFA00E429FCA12DFA32C5AF8A7A6208F4EBCF9EABC462C6888BC3E263CF960DC5B08B6D336278C4B00D865B32FD28865D8C3F3B0C9F8C0188DE83B1D6BF30255333102BAD19B0FA8E0C600C62B797709AF9048708B2DF5DACCB307B76ECA574891E7A5D1DA7B8C8D2A779567826059F0C9B60412F4957641D28516B3E1F8BA58823B52B63B1BAFBE56C2FD6688445559DEAAF06917AD8A4506ABDD53D12768640D5D0444F0F093B734417099BE6594D33A5C44A9A9463B0272B983B9B9423CC47980782799B26677DFFD9D5EAB484F929D89EDA8BFF56BB364A62267B6C1A025D1AA1B7110DCEC0D343C35BE1B466595A8405E14E4155DF6CDC87809178AA06A21E4B5DEC04F251288EDA4C6480295543533C8F6F549015CF6E549F7D7D25B0223B4625D6D6AE260FB7A336D746B87507B7B6766879B81D87D914066FA7609AE18114713DFA6997FF7DFFFDBFC80AB522F75F1DCC32A4254683E56D3BDD465C4C519E9E32DCA88A666827DE6D34FBBA1049159FACCE7981DD64BF1FBBCDD9B99DA88A136900EDD9FDECCBDDC7ABFBE9E2E2739FF82E0378CAE086037BAAA8B1212E2564A3C12F718AE45F901EFBFD08700045F733116D17D3ABBEC69D064314A406168D5233EA342CA134EA68C042E5A883F4D8EF4731EA8866EA647958871A765917B66E3D0BCA51AA864B1D88C3B352A9520DC557EF739B18AFD8A4D35FD1B4B6BAAD678BCBB2769C2DE36C39D2D9D2D2E29C3E8EE0B02A1FE84A39B8EDDF8109C005871FED8051B219553204C966B25E05C154260540125D5E4248A2899EA70E9855AC78EA8049EAD974E2A4CC683F8D52C6A89251CA9820698052A62593939332A3DD69EF6BECC4E5B45C8D76E6A801CC2A19B606A08E7099FF754A001C51773684239AE82DFFB16AD8A4DE1D7444B68CD6E5285B8C2A19658B1E4703942DADB933F3C7E17E1E9BD2F9D40F993F5F93FC8C98E7596C948EC9A108BC6CCBE75F2422F5B723D86B5672B413577355BF93FDDFA6B28168D79F7BF79CD54C73316C8E9D69AD39026AA6B9486C13A69D82A4AE8FCFE24FF3B9DC7740A819486D2D057CC86839F0EE4C99F033DD9CE9EDB68B62F43BBCEE52B5C2FDBE4B8918F83C7899365E3E38E6A33A22109C6FA28C40E808082D5F11A981E07C47C40208E3FD1033FB23A0F1E169791C87D99147099089355F2D8F53078C1813FE72B26BCC987EE2BCF46BD50CC3A469700A04BF08A32A3B097DD1D905D4C0C12FDA0DC072F486D408BFBEE1D7666094E331DF86615AD5666FF51E7D20D70E42CDC2B58352D00C1F741B9049E8C7B5731B1156BD5C497148D8EF27E8E251A0A043174FD50A777B083933C7A41DFDCA9E059A54479374142B7C42FE62B7CB9649818EF7E9E319F3B3901175831F6673116A671FB6D94695E361116D9F6252F52253669B6787ED12D11F6A2E4BFDA7B5D4E9C67C98F08CE8C32F56F3C3D99C1B678F5925E3ECE963F6B4EC4CACF9E16C8D5ACC9EFE9D893F11F6B48C3001DFF1AF0F58C6C6BB10AE57F795C1712C0B7227011021847EEDCBF53A2C3769BF2B83612C0B1A4C017EAA309653077EAA41F92E8FDED81D31D1B943F1784CB821180CB36F743DE4A72630320686025E5467FEC9BE39CB43BD3219FAD19CCED764B1155E73AB3E1D81FA568D4B07AA9B5AE42E6A1BB4F1AD9795EAB1978FB986205F8DBF40BCFADAB3E6A443E2A2357FF22169497135AB6307A5653624A7A0AAA68B0797C8B3E08687223C9F7EC7CB21EAEC74816C4F31097D6E76792BD38144EEEF372C63D300B737BC17B8F38F491B8883BE2D3D328C70FA3E3107471C748D83F6F61D7CA2E9D9E2E0448C80ABD965940658B3AA489919028AE2F8A85D65D12C939CC8F5571BC5ED6654F4A176957CEE46F1D22638A9DE7A78A4795627F84AC2A032BD4DC5D5F0D145750D8D8FED09FE868F2EA2DF9C8FAEFBCC3FA37229991746BB286919A8174DF9F6F54BBE472147D9AF3FF6B6711AA7D72BC263F974269F62B715BB202D592DA4260A4947A04BB5A8EA4099726D38466D4A410AECBA05886BD3CDA61B8766D927CA24FAEFEE311807F6F798D49ECD0F1E7947687F8CC8EB1B792D196C3CF2FAB4D8866149110377711D6C998E92325BA62B8AA3D85CC9F6C5CAD2B0B81317E677FD79F9C96C9A4507C9BA29BE595F6591EF32730936BB06712A136BBE5AB74C3EEAC72558F16B7AC8128961E547EB76497634FBDD8E5F1229FAF108CC53DD5CEDC6D5439BE0609C56B35C5446AB00FAEE0E584BDF0DC2515F4B0A5945179F83DCA4002F727269BEFB01B55491B603EA8420FD00CF8F7169DE63510A217930CAEF417A0119B16C92FF584035D0EFFDBB391B1962BFCC1865C828434619321419D29E8BBF9121F60B463319E2E6DCD70B91FE2FA70D6399BB5811305FC76116BA6A62064B5D1D81635EEC16EE1E7891FA64BF5065AE2500EB4B31D1B295F0A2954B716AA9BC789512ADF9092E629F1C16B24C53E415A89066CF4F90E4312D6CF573B383A52DDF889F6271CB4E7FC8411CC47A9404027EC9298815C9890AA85781AC49497CE0FD0A64553E292CCBA740D6A5286DF04E85B0325939840CD531AC5805D1F033AC5947D1308A8693120D2D2D4405D1705A4BD1612C13D957C0FCEC5005258305A2B234BEAAE71E31E3B722B924AB535C285131ED08AC7F0DD73B30FD9916389DB8EAEC953A71F4E4F3230E95B56636B16C75394E3474B6B6A47258B6BA9C957161EB29E809E60D473F81851332D012AAC2F898B1EF4F4AC77C698A958AC0480A49E6346749345D09FEB0FA9BCD998E1931ED88591525E2A10E26E108D4961A051D68ADA6014E4AABA3F74E0538C9A2355C5535D8C4275BAACFBEDB6E0CFCA47D3726AD67A5CBA0C245E78EA8E817152DD90C0C2A5C4C067B549C82C1909B42B3D9D522C0AA122263B8A4848BAACDBBA20CB0982CBF5BAF2465725CC2112863158F3B5A40E6D53BAF1E4B4682C6789914648103D6C2A51DC18AB1E0A3EB7271687C6C718958F0D1757D68CEC75310F48524490B57BCF79A002164B632440B2B55735D4A5E19D214DB95214852483A02B1AFE677376BB0AA01AE6B30CA4EC8AEA28921AC6DAC2621B5FFF54BCD51C7F5CB6039DA9EED5F73D4D1F6B7E4E829A8845974C8A58CA73E40A8182803B4243E507511410DD0CF3677E316ABF846F2C0319FADF409D830F6FB116812C54875A046AADA9D7408E5A23439698AEFF5053AEC521534C55B9C62DD60937A564DF528B9E8A57194A4516A49DDD5A3E4A2EB6C46E914B4DC225AE6AF99FB894E9888818EC30A2A205E9610B552F5D54A2941A498CF47A09270BE76711ABAA8DC4921D52C94C55095E02D85901A9894BE0F8C96DC73511443E25E5B67EA4AEEB9087073EE9D84F82EF57A80858A829289205795D61A2CD0A2854BB293EB185131ED1824BC9AEB9D5C7AA12D7093F52C4731BB3384792B8E1E20BCEC2B6BF1C240C35627253070B6B676D8BA61AB93767060EB29E809227372175D7E5EDEDBDF8E1032DBDF400B2BDD8F7529797F83A6D8EE6F802485A42350106A7E77B3BF5135C0757F83B213F21DD3C410DE78AC2621B5FFFD8D9AA38EFB1B83E5687BFB1B35471DF7372C397A0A2AA178716FB13A8478C6162063A00EF0A2F858D132D0EBB5C5779B4D8E3AA62740904BB288D3F014BD48D4E8479B43D072B8E4FA9B39959B9759C6D328BF1C816253E1A6AB476F49F5EE0FDE16030ABF635924850A450BD7C3A5FA07D5852AA1DF7D0FC882F167EBCF7EC44B380BA4CB8F3D6B790A30E7D77347809D06C0DA7C8E370798F353BCC6003B0573E7329BC5BEB783411A06860E520E1B1E626B3E4D57D1662ABD5ECFA798DB01D3E826DA90D9BCE4C9319F2D68AD0ECBAF8281537FB3B82A069D087138A832CB8894CA5F1C1328359FCD69F18F3F70F484240B0B0C3C3CEF72121FBDD0ED78471CBBFDE776F50F7E83C4E50512ECECA9DB6156CCD3E3E63A2A64A374C5B1F96A498948F4DB430410AB132CE9E5914BAE57194090A658529496322EEB2CF6E178801A4D31A7489FDDE6A8355F2DD659D08C7289B8001D26B03F95806E5DB9ED86312FB2F2F29AF97E046B4154AF76B0102CEA765805F2AA58B0A2F8443F0B9451D2422D4C8A671595FA16E9579F3D6F5F2227AA029D7A6334BD584193E25785A0FC856A8454CFE50676F326D4FD2555E88780F13414D745C3DDEB6DAC0BB98A204FF5280EBE87BB48A0F03E87F3E637268A50459310A082DA6C81EAA8D30254438D19A81E9A18A02268811CCAFFC29B3E502534D1AFA2C62A122A69123CFD2F883809159A0739AC16E6309CEAE843B84316ACBD252A5926A9679765690AD9FB2B4753C890F8680A8DA6D0680A292B194D21AB6A46536834857E6A53A8A5CDB5D214B2DF59733185DC22FBDAD9428E75181A436ED4CDAD2147FA56E6905B1D6EF6905B5D3606917B0D76169163546A4B93C8B916639BC8B9062BA3C8B9162BABC8AD161BB3C8A3062BBBC8A31E4BC3C8A32643CBC8A3064BD3C8AD261BDBC8AD0673E3C88DBEA975E448DDDA3C3A855333774F872C991DBCDF5E43E9189C9E5194C5A190903921DDEEA05F6DCE0893D9253E9A463FBA9C35C60E1A1FC54EAC729CBAB86D52D7EFF2FA161D5E4902D409BE4726AB6197CECC55DF439DC8541CC7ECDD49DC8C90C32348E308B123D4D66D183A420E6FD1588CD080F4DBC56E972D93A22249C9D5F6CDC36C3E5D3CF036954A54AACA892A4CCC200BE947C41C93A93FCCB3C376098C2A86D99C147C50EAA14E140730E7276D91576317D1F629866233AA0E2643B12C9904404F22D4905775D0B34FCA7E4FB3F43129E6E1A7DDDD61BD7E77FE3D5AEF622BD6BE9D805034472B8D6D34AFED5A8398664C6E24CA1C1A06481C6A91A2351A6D63D45942516A9F2D00ED020CE1ADF31E69D65B48BAD3A817E5493AAC9074249DC94873E9D98BD0B746C1E5742AB2B8F8E439FA58F36C41606FABFB00A1D65EA4D5FB2849E3AD98852E03AA2FF4F7AEFE900F6FF414138D1AAF774DB9D22228BAB57B8E96B8D140F4FD36FB2B798CB7643DFEB2DBC79B57798657F3FFB19EAE93C286A933DC4669F23DDEED17D97FC4C40AF8F5F59B5FCFCF2ED649B42345E3F5F7F3B31F9B75BAFB6379D8EDB34D94A6D9BEE8FABBF3D57EFFFCC764B22B6ADCBDDA24CB6DB6CBBEEF5F2DB3CD247ACC2684D66F93376F26F1E3662216AFC81A5179FD7B4D65B77B5CB3C3CE2C87208F3D3F70D7B104B97A84FF8CBF9F2980FB7622967D0B4F81BC21EFCEFF8AB6CB55B43D3FBB8D7EDCC4E9D37E95F3F5FC2CD732D1B7754C35CD44439371FD0B944576FEF1297D8C7FBC3BFF5F45D93FCE3EFDE38129FECBD9FD960CF51F67AFCFFEB76FABF25B5ECDAE47D9AC62E1C010DA6F0F067488592B12B2E91F47C0BD87AC2DAA445633184EB0422FE798800B0782DF602E56594214617A39AB09EF934D9C0B87789994CB827FB11DD89AE6F5221CCDE211D2E9CD570A38426A932F5518A26F7E276A91C87F92FC37357DE3218735A9E98863DAC564C079F320A448A936FB9CE4495136A43029E34E703D4DA1AEFEFDB52D62EAD7801444DFBC76A04ADFFF311D1763788B8CD86469FC1208C8D5A8BB092EF032A091D482B1E60D199E6E20C02CB6C4E8BE23ABD28D1761E321A1FB704E8382DD51331996A66C60D9522318A26D24601802E14D96C4DB5AC99B171875F5AD76E3290F088FE2F67A6790AD7675DD510B5F8634066E5D3C28767384F0845D40A250DB56F00F897DFE3537C75655E5836AFEE671F9BA5949BE2CB514DA49BA2282BBA1F12DD1D030579995E7B325BC23251057A6EFEC301A6886405804D24EB9B4AA2A1CB245B32CA5AE5652649D45D6C013A0EB44A345F082AFAF9BA2D60383D848FB22883BADE6822286C0CF205D6FA3D9D7855B8348C1C02B3C61E0422DF0B849EC6439D9EA1FE3E9D71C48759A80C5D8D94F3E68C8BD078F21DAAE7159EBDBFA309FBBC2CD2974A46ECBAA9C956D5EFC6752B5C7354B5B849B1F80FCD7322CD9D359C91CAB85EBB296B1968BE059132BA0C2A72D5A918B6555CE4394173F6DB9581E27B98A80AD2F3FC2FE6B6AE9C88B3DCB0412868CF315E5EDCC103FCCFB8B7296ECA988F25605269D584E38804F79E921004E156FEB9BA51A68DD4416265BAFED2B1BCDE5E587982E3CD4105358C1BE13D2256ECDB110CF66986DD5217B35AB2F5F3A01AABCBF69680279A1AFAEC96548CAB26101A2980D663BFF0B6FDC1A8F337FCB36E0407B0C9CBF1ABF6CB60E036B716F2573BD8A962BD6140DB5A34ED4FB82B47A65B9C569231116D71E40C91B0744170572DE81A7CB83AE9CAAC630D690C1CC2C0A3DDC89F3D2169F8D5C70AFF88D43C5C7A74B096667D1C163F55499B5AC03C6695FB33818F56C316BD0A6B00B0897A664E9F49025FE2C6124A02347180A21C5C862455A771DF725485C4483E7047758AE794F0C66CDE73B39F2E68498204C93FC27C993FF4461DAE339592A0EB53461D8DD5827FB4C11E2DEC44853ED067B5B4300F17637BE981D642766E201FE0D0F1A63FBD7218EF60AB48FFA70EF3C0B72BCD76A1A15717E9CE710F4E684E9042ACBB6317B58CAAD4F9D3A2A8FEBD441DEA0309C3AB4740B5347A0DD2E27EBFB9A4E6C442E7B1A9D59A88B063E30548570715B575485031F8311BADAEE784217804D8713BE1C6B329AEC1DE690B381A7DB32E7B027DC8DD987BFED61C443B6787046CAC45B97D0E07BC716121A79D7C75042D3D22D486881760787EFA50736ADB63781777E8C77378BB2818534F726A1CFDE242110FABE08D326177FEDA0EE7500EFF598E14AFD7E1D5040F1421D941B79860EC88AC79B00F2E28FC901B9354FC50125F0D7E090CC78FC12C081A478CE0DCE8E45380033A34FB2C1D9D137D780ECF8B36A58668B9B13EA57D1B002E0C3675866F45D33A000FE741990D966F8D1C0259053D2C30EE167B6BBEB50BAB8EE4484BBEFE94241B0BD9D483452C39D88204CDC0989EB6C571A82A7CBC9B92C79791CA970DB9B8E348445B32315C1B073A1225EB275A6C19F7775264365A3271DC62E72A6C1C56373A3239E9E74A11100FBFCC2D48982BC227312914CAC7D532AE68B38388AA8E1DE1812A5D560DB8B960CBCEEA88247E2547FFBD56335D3D7314B5B5F9F8F8BC8C6DCF6712861EE41B39B6C65E1B027A9101797995FB128DBC108EBA3C17904C3C23D35CED16EA0D859461C2505835FE71CC6249E5F4CAF8EE67A6F7F275F8F4F40287C8EA618AACA077569451BB551EBB377743FFB72F7F1EA7EBAB8F83C4212DF5C35BEA89E970E0E4A6CABD2149455F9C0A054AFD7CC41C9C4E4143D0F0FB379A10FA70236DFA78F677F666BC84991C7BD7CC57CBD3DACF7C9F33A59929ADF9DBF91FAD59082FC2605353E8127F84F12413239E23CD47812AD4981DD7E1B25F263019FB749BA4C9EA3B5D40D212732EB54CED809252EA6CCE2E7982024DD433D0E5031A52F88021D4BB8B8AC6A68D038B29717771FA75717B7D3FBBB8F3B141EA24D508C67F37118E0C082025B5A73ED42438809DA0B384A67231B6C19151B9C5BB29419D527734C58812B94A000A201A248403761CC7160893DBCC62E65C36C8E44E86B413088CEC28250F3F1640402CC516D9DF0A6511768A04E7F0207F8C46B3388D20641318ACC57733C08466D41887E6B050D48C41A746880103556480099695B5B0700A8DAC9BC8401C683731A3A150284DA381D2324B58207BBF1513CC0618C08157F5D2AEE001CECC60A831038A48C20ED85FD9846E2D3047BB04034A5B456E082F71B1D3A55A8267BD404ACBB17A9A2C34C60B1D21F52FA132C76103902C952BFB9243F48A5942CC2EE6A235968828817B187F769F9D6D7D9C5B27CE9631AED96D1A3ECCFC91F49D1410D6A8E94D69E50429EE8520906E400943DE202D6DD01E6140FA061632CEEC21783DB7CE447F5F5AB5726A2A93FBCC08163D0F1C29E5A6B1526064FBD750015EE185389172C344733C0E0D9A7627885142B75D6D42B00864968052D8A30152864D0002456A04158ED506B17EE347A30C51427F251967A48DD0C9EDE1082C53F42070A0D39D336429415770B129D97C5CA106ECBB0B1C3E7902DE76095766EC0E8806465BB68444C2F78E8C15CB143438F068AF4C6EE10A44ACFE66F7F2B73BB7552BF42860F16538A1A2C085533BA4288197670C5242BC1D3D42CE0854968052CAA9839C8C8214172C0BC77FEC84206A5BDC675ED37D4A32E9CD3B0379CF52294ECA0D3B74462AEF118EC5202977E8AB1E4BE1FF34E251A7C081D1EF515CBB6F62C35B5767394A1BA98551F66D0EC5DCA37B9EA130DF4B3E5990660FBB2FDBD4B2CA0123A54CA3BB596A71BACB62FD515770D119DE8080A8FEE05475FB0B0131BBD43A23A144FF0505E5779986787ED32C68FBDF027F0CB432FF5B74E964EFC7D26A01D754A3B2767A0C849E8F0E217A7CC01A5B8BFE5526F1F985A44DBA7580CDAC52C97E4A184C7F024116535B068408076F18457DBC91A9CDE992590824397B16B6FE9866DB5F066BE9B2B2E0B79176CAD8D44A4C247070FFDE0820CBB5AFB3C32515A5FE6A7F51C8CD4633EB5676F81AAE3ACB47C7A4F5379E7A0313FBD170E324E8701070F17D7337BBD8245BC1AA05F4D07BC1DD0D74ABA9F3B02B6AB68B4DA1E60A113206171D193E8E80D197642E3C8A021876F6C0B164C989E0612C5C7D38283C4516D9D70CCB73ED0A03B5D191611B6C782878E0CBB4DE59E05057B5396B97AAAF3BD395D286EC96702C69CC1DAD4F20557873BE970A01BB7BBCE969847AAEE11761AF79CA5603A79B8F57DB73E60FD5DA8C13A9ADC83F686FD3100AD097EC735A2F97A329042C2FC1D2B8E0AF76F3E240DA1870FDB8C1E217E58640F4094ACE0C7638A3A381AC50783CB2F0339112333D1A5BA4EB799941B02FDEF581A4166B0FB931678E9775BB209B5A6838C1CD4AD5645F4F3C901077BBA031D4C653CF856E0A3AEB193F820B9BEBCCA968BE859A78B667898BCE03A89AB8B93735CC2E9E8289CB92ED576746A338FF3976F603320529EDB64A30AD2439BE5C76E8E45B8A02AE0B14FF9B13C7470156F70B40A2A55BDDD68B42AA2A229AEE4C890B566A39F4F1E5B77C83382E8282B1F4A69155FEA9A8323ECC3215D62FEA24FE98EB4EEFCECE2E9691B3F45FB9846FDBC3C24EBFDA794FEBE4BD6D163B2AC89D1EF9F76D36CF39CEDB890A19FA32DA96B1F6F730CCCE34D449ABDDCBD3BBF58AFB3FFF969538E3D69C05FF17697E4D79AE7CB15C9F5EEFCF19BE84AA7A478579B18F73D7B243F3FA55234D3898E9A1437D49B66FEF294E8D02D9F9F6A286A497031145D1AF676520F952916BE3C97AD1CB13062A154063F09168CD8D384221EA2CC0C8FECC52A4B3E26517A39AB49EE930D87EBCFDB7899EC8A7EFF8B31B9EB451072C5FBEBD39BAF74CE91B29B688DD07BF37BCECD281F8CBF794163882274844627D018A244F584861187E87EE510C52AFAD288870DC205A4F69F8BC523B75C235335D1BFEB89CE92880974ACA1F7E6B509C1FC4C0FF4D6B76BBF8B592EF6BC7AC21536BDECD03A44493FA2F56745EB10958F1F5ACDB473F94CC010354FF889C753F49F768B6DB45CDDAD9278E348D3660887288EC721E486708832CA67088D78533FB630481925BE8811C0DEE05E9308EAA3A3F45CDC7379B3C24DBB79B6303503205BE26596B5395D292487287347489E342487A843FC2069CE9FEA86EC6015097F7932C814E3495ACEB256D6D372781E7FBB902C2DE759B1C2AC69162F341A77347F518858824DF16F095ADC1A8E835522231C4F118E8355203E70345BA571C1214635221F410C447196A54CC0A2EFEB2CB2991DC2D4B22D1E7C7209B019C5FD081B07D8FC9462393C6C8C585F9F761FA2840F3DA98408B0C76C57550F6C8673260BBD0EB00FC749285B1F82B9CD6885F2212AA411E523CAED503E44FDD9BEA66B1E861EA2AE0B3C1118726DB8681B5E0F51E20E95D7439CF7CEBCB65A58D42F3E0F71E6332F1F1FC7BAE2D8D5A038E8431441E3A07B0EFA1065E1D10DBAB9437D14B0E2F60E4BF0183677DA7050D9EDEED8A36994DC239AC2A1E927540956AAB37E7973B0329C0D89D0B7EA04298A0FD87A93F4DA5A971EA6EF0C618395EB23C20682B0C1CAFA23475877233AAA24D0106409F66F08B665B28D8AE2E71EF79F507C1B31898ADF210A44778501EFABB0F4FC7772BF268B6D9BA7F2E9D00D51A68D43570CDD10C552FB86F7908F904D177647427A5CD6859B7F2D1CDF1CF201AB11036131304429E98B01531E5DCD2EA374B016DC5516CDB290DB08DDB37D8802EA04D83E4499304CB697AD1EA50CE73D615E813802E7499C5EAFA2E58AF5D30788DE92A54F0BD2D495F1D57D07388DD27384534038FD6C5AC1546F2EAE872BBF73D0386E17DE359AD1AE60F8E51681FF2C3AB8B5A6728CB3A7366CEFBC1781119F8DA61DDE00D6176DD9802C9D1EB2C4ABFB8C8CB4EF3D53D85FE670136A781A6C9C50E3843AE209353C1D3EC00965342C8B1541C9753C9A0E9633F3C94736313BE11EF2296F84A78C621AE225A79EBC6415D30A7779557123A8CC1226C768068C93639C1CC8E41855BA1B1B99B80A03D4BEEDC48558C42940B68D7BD02CF78727DE4F89FBC3931F01B86FFA44431523659002A28D0091856217A81EE12B20F3CCF31D105B7C0C51848DF8E80E1F4314B2BEF8308C87C23CF03E44293B06FC0A273B061BF00B1D47F645F93083283C26EEBF431E6D0492BE0B2B6E4A0F51318E537A9CD2E39446A7F4106D99F6178B35340669C404C775E5CA6069B6E5C728983E44353378A60F5110F831DD74D95789DF41CA82161452E91610A8B6014D86F543940827C2FA21CA055FD61B867C5E0E339EF1B8221A57440873A2438EEAB063984F4366CB3CC4824820E91FBC7D39CC68D9E34C1E67F23893C5993C448BA58337184A440CD262098FE6C52ABE71DE2F840588D0C856DE1BA8C67088BA6A1C437E0C8728A5BCC6D0EC3864B4244A739042AA6C7A4834F214DB0063C5EE21CA9301B37B8853DF87DD8607A1E372F131501B85697F5050CA645B4126C3FD414A8393E1FE2085832FF74D9DD2D572719002A2850574B91F20506D693FA066FD10A5C389B07E88A2C197F5E6018C17ABC320E542DDF8B0BEBA22D04D48AA79F01D869E65F09D79661CCC06287DF332CBDA9C63143F43146E237E8E073F4394D07EF831E2CF65368B87782F9368ADA7E92ADA4C9D7762A6D14DB4215369E9587C75587E75BC012E38EB2C0BD72FDBBA15E7628DB99110CF76D99716F6542CEF264B5B96D6E5B95873D6A5CD0FFDC2E5CD77D680F2854C606E693994E65FA8732050BD1DE74181116A0EA5AB0731DC28888F4159861DF2412EEFA9B32C2B2FE42D05168D451D6A4BB7D41DC333CC46DD31EA8E51778CBA63D41D7DEB8EE12DCA46DD31EA8E51778CBA63D41DEEB2FFEEE99025F945D701FA9D165142101070B7EA36875464E8E2FBED570B17719BFBBD740487B7FA1B47901FC1E1D9607E2308B3E73D69DEFE85B4671F2569636C11821F92ED6E4F5457F42D22FDE25B56969AC77BD03A2C53CB36CEE3F5F7577C32DBE1B345C9BCCB8BBB8FD3AB8BDBE9FDDD470928626D8C252955C5A441F54C2F6E2E6EBF7E7A3FD556D26051AAA34982AAB8BBBAB82335DCE9BB5159B4721FAA04B003575FA65FBF686937568B44BD4982E87FBEFAF4FECBF4EA93590DB565035752A7A2F5CC2E16B75F2EF48CAA9E73476B1333808C13F268EAA4768754194D816A995FDC7D2630D69267161552054C1A54C5EC9EC06BF1E9EECA986FD47C44194773A8384733992003AF535F61810D328D3E5F5FDD1B7792DAA86827690E55276926934EE275EA2B2C3AF98F2F170B934E3636B454539304D5F2EF5F2EFE3B9147063295F174401C54A23E4F37043EFB0E1C5C13938CD4C5E4D0D4262CBEA5EA8474A8BEABFB0B32E3887E3265237D0C01EE1E938C748FC9A1A98D8FD40CD42766806A5C5C119D7BFDDEB4879C3B41AA904B856ABBB9BFF8648A15D6F10029619A88A8E1E91762545C7C36EA52E95F01FB5326619D2953F53DA14E0CA8273411E909E1582E2AF46AA57674C94AA54E0155CAC597F9C554AF50EAF5B48CB32A01C4D7C5F4E327BD92E7D6DB0090995418C5EF4B68197483750941A3411391D1C887824C17331D51785E60FD5024A1BA6171A537F30A6F32647097DF414BFB7EF6DE60EAD5CB2488434D1AC8A08F5FEE3FCDBE1888920A9328AA8474445C9A82975D84288C7B381B52B7D5B2A56CA56C4F169F6163D2A05BB3FB9CD757F7D3452EE9641E72C9B03DC9E6106ABBD8EDB26512E5AB4660FDF5309B17EC22AB2926A3B8126B7271B48BBE3C9EFD99ADA1251DA98DFB3AC1CB428BCFA2389F20F46CC277CDA0DB351AB851DF415D4772E25D10F15834BFF978049D2FD7A464289B5601432E65528C38B7FA2D87BBFAA4E8AE15A37CC678366FD6C98A0166B2B531BAE232BE28D97CF4EE2E5D6A928E50B34DEE2E940D6FB4B4B62D5ACD7C557458B02C8B92F49B7777E9930473D11B20F719CD1BA4F1FC5400FD1BE594507B2DEC59C0AEBE99BED1F5B8CC084D090D78053F400360C49B00320622A2F34A844087822B78E6F6F0D10D1B58D705D33DEACC40108297D0204470A23408415C31206B20223A978E3D6B6A5F8B195B14B9F10E899E9EA227CDC7A36185F074F39C77CBC8CC50E6C73B053A708A2E09296AC6482EA79A2BB82BC9C144A25E32037EE099951D814408FBF9B8D8A03029805CAD084E3B8679CB04458FE18C2D4982D6BB2D4814CD508359DB5394DD8840F19DBC39EFBB9519A12E80770B76F316BD1293D4CC915CD335677097B3A719A5E40792B3155C74D275EED933D5820ACE88770070BA17EDE7BEF7B6AC62DF219A6B9655685EE5F259D806A817D0F4B36E090DACACC22EABB86E29061ECCD756D7DB1D751A356C5EC5109A6787ED3206FD074856850F81DFC8283D08F53745974197325BBA4E09DFFD45B47D8AF746DDAFB22A24BEDC7EB8E13D759E8B0E33A70303A93C28A34AD549BB40959E63BEEB5960821BD7A57129338C7C48CAFC414556BFFE24DA45235F129CBB3D7638F9A102F88E954A10CAD99A07B90BF5C7754801012C6B6B9DEF61E48B8D5D7DD7F36CAD759BD9776EBA5C7C0CDE5D850F0CCBDA5AB76DBD890EDD6777D698BD2E85FDA3291178770FA500B216CED01A93702B4953A2EDCDD32E99D31C4257EDA602B9DA608274D4A32CDA7C0DE01120D65F7E2681B071B7DF4649BA7FF8B0CDA8E7EF61913D94671D201F8161D9F05E03F6BC4659083A8FE1B372C8FFF746BD62D0D8CBAEEBA4B6FAC68686C3BB27E552035B38AC55439B7EEE630CD9070B35F0E40FD840BBEB8EB4C2431E3A4C54624A7548C8CD51563EF136677B0F8205C9ABF196B1E739A9AB0C3AABD94BFFD9C7ACF41C4073ABA78D70E2B49E36F473877C783B2969D07B4634EDEDA43C93567D203FF7D9367A8AF32B4DEB5DF1F5EDE4CF0329BD89CB5FB378973C3524DE129A69CCDF6BA2793EA5DFB3CFDBEC39DE16ED675B5467A993EB4B68F13E7A8CF6D1C5769F7C8F967B92BC8C77BB2457845FA3F5816479BFF9163F7E4AEF0FFBE7C39E7439DE7C5BBFB0CC783B51D7FF7622B5F9EDFD73FE6B17A20BA499497E39F13ECD2FB23DD2767F282FA84D0C48E4F7BF3EC6E47B39964418EDE3A7174AE92E4B0D0955EC9BC5CF71FA18A7FB45BC795E1362BBFB741EFD15BBB4EDCB2EBE899FA2E50BF9FE57F2186F7122FA81E0D9FE7696444FDB68B3AB6834E5C94F82E1C7CD8F7FFDFF3F595C3370E50300, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201506250446371_initial', N'QLNS.Migrations.Configuration', 0x1F8B0800000000000400ED7D5B6F1CB992E6FB02FB1F043DED0ECEB8ECEE7330DB0D7B065295DB3224957CBACAC6D927215D4AAB125395A9AD4B6F1B8BFD65F3303F69FFC2326F4C5E2278CFCCCA72A201B72A4906C9E0C78860900CFEBFFFF8CFB7FFF6E77673F147BCDB2759FAEEF2CDABD7971771BACA9E92F4F9DDE5F1F0ED9FFFC7E5BFFDEB7FFD2F6FDF3F6DFFBCF852E7FB39CF474AA6FB7797EBC3E1E5D7C964BF5AC7DB68FF6A9BAC76D93EFB7678B5CAB693E8299BFCF4FAF52F93376F2631217149685D5CBCFDFD981E926D5CFC203FA759BA8A5F0EC768739F3DC59B7DF59DA42C0AAA17F3681BEF5FA255FCEEF2EFC728BDFB3E5F478B68B57E355B3E5C5E5C6D92883464116FBE5D5E44699A1DA20369E6AF9FF7F1E2B0CBD2E7C50BF9106D96DF5F6292EF5BB4D9C755F37F6DB29BF6E4F54F794F264DC19AD4EAB83F645B4B826F7EAE5833118B3B31F892B28E30EF3D61F2E17BDEEB8281EF2EAFA3F479BA8EB684DFCF97176285BF4E37BB3C33C0E3576CC9BF5CFCFD6EBEF80B4503014DFEDF5F2EA6C7CDE1B88BDFA5F1F1B08B367FB9F874FCBA4956B7F1F765F6EF71FA2E3D6E366C034913491AF7817CFAB4CB5EE2DDE1FBEFF1B7AAD9F7D1F5747A7931E18B4EC4B2B4245FACEC1201429277FA3EFAF32E4E9F0FEB77973F110CFF96FC193FD51F2A607C4E13320162FA7B4E9A1D7DDD341F269A6AA7D15DB4FD92C4ABEE2B9F3F47DF9B112E6B9F45877849669BBEEC314BC4C22D367D1EFD913C17C8131AC2F0EFF77853E4D8AF93977286BFA2A98FB345014B32C6BFEDB2EDEFD9862D4B531F97D1EE393E900E6568964576DCAD2C5A385B90C991121A29D84476B63CB2799B762259684BEAC662F9EA4E99B6B82E98730B6831A57B7D35FF30BDB9BA9F3ECC3FECD906C33924E622D92006BF9D34024A29B6183CD8C82C5AAC0781C534D95E6CF5283F96EB2CF99044E9F5ACAEDB4472D4A56E9736A5EE8E04D3D3BB2F544EC5AB641B6D2E2F3EEDC85F9541F2CBE5C56215E5EDFFABCDF4AC054308F9214E498588718277231E6CD05D97EA01DC4D83EDB1DD94ED412FAF8FAB2FC71E26559C1A74FB6FBACA0FBBA3B6AA59427A99286A79F33A4C35714A267DA4AAC99499064242E45E384921A8BB909A51141B1A056A6C1CDD7C9E7EF90C4BB602DF88C12125CA769194C3DE2C52C85D0FA3486CA9CE78326FEFA775121F8B19A31A7A361F30EE4D323EE84C1EDB11AF8A1233FEFE181935B4CE8AB7B5CCA16D6E95CDB1C584DACBED3A336A32CD8BB7B9CAA26D749DCFB1D5CBF5D1A8C5453EBCB52459DBD23C8F632BFF718C0EA6BCA579F1D65659B42DAEF379193CB51EB632E68B327D58F255631DCCF8FECC0D6DD5418C8DE58E8CCE9CC0621BBC26D795B7A50A944C7B54493A01BDD11A3650AF4BF500F6A6C1F6706FCA766FD953EF461FD5973EB7C4C9DD9637BCED69BAC8963EB6B368907F9F65DD4D77E56477B0CF50771560C3B94FF9DAFEB29EF565C1BE267EDD6CC7B95F17EF63FEF1759B4EC17EDD11A4EEE9912C64A2971E6C847C572C2B16D775E51FD3C3CF3F69CB25E99AA8FDA6D47546E65124BB82140A7CBA7CD42D68D8C5875CA099E2AA7C927257666E6189C3D787AD72F05C9A0E78AD7558ECC192B54A562E29C13C908C8533DA2ED7AD9481F11A58A712148D355FF10808B65AF970654F4B3720251651FA691D6D07A7499896775DF52C4B3F248D02CBC8E01918769C00372BE42FC13B11DEE2AC3492F4A63DA0A30CB4BE4A53B61CCB23B51ACDE8254D68F36DC44855A807F9E1210D7A9B8EF7D15D16253D56DFA771781FCDBE2C7BF15BE9191E66978C17B69E2B62233B1A372433626DE44219944634958810CA9C461001C9920C82F2D86F941818ED5E9253B475B522D6BEE92A5B5DAE0E30D5D14C06AD77DF94A829A83CFE429E47002A4816791710C9E7041995A26D9291E60AA9504BC52C4E8D5CDE5E47E94D6111E990C16445604173A831D164B30504A79780F632E9B0CC003348CC857339ACD88C97994053A174F5F252D55063FB8A11C93616162DD6838D55286C7BFBAA2F3DAFAE37F896916ABE3868587166ABB4B097BB80EA20177F4155B82F87415E7D47EE82B2AA1FD759D0ABFD6AE606ADCD1FA57DA5CE09BB04F0ECED3A05ACCC43BD5B40D568BBBD27279971AA02E3C44540BEF3C4D63C8C7DA75E5DACC61B4F9E0BBA605207DC84D10BA956F6342C0EC9E976355CA5A49DF3D761D34BEDF80D272CA565B58B8D5515EE4B64E6D57764639555FD4036D67D4486FDFB0DB351D25DDD012C3295B788F3EF000E26619EA239E1B98A670F69917978BCA4437F1ACF98BB2DE6245B4E55B09CB8A8C86D31B6E621D862218DA14E263C680CE9E5432BC690C5A9769D31A41250360685D3C66C53AE8FD3ED4B0FC38029EC3E734A5FDED0EC821E64459893773733D56607B3A522E606B766F84C90664572DA4A86C616035A5D273EF27B4E4D8BC10C9254807305365AECB6BC140C0DE5686686D8526AD1923DC8AD9B2C9A6512F6DB1072754D3D5C57EE4EBCE2B74D8DF7705DE485624717912CA6ED2E474D25EAB81C8AD6ABF2491D5066F6B22E840ED94C55AEE8C9CCD5539E7BF95AE2BAB9983388A5449CDEAEC9886B1C1661EEFD91F5CA92F474ED75AFC8C74E09327945E56A34D39D266F63BDD8CCDBBA540F53B63471ED276C4FA6719C6A2A0E02FB2FC972D742C00BF713548E76AF887BB575EC6A573247A52CED4A5AB273E0E742EDD9C8A89CCBC66468C77BD518CE2D244D0C86A98B43B68B3FC469BC23EAEAE9537438C43B2283E759AAD7778D8DD96E453DAEDB89D29A4547B59B0D76C3B33BBC8697E48A803F2FCEAA116E07EBDD346B47964E8F59E2D267C6FA31EE326B310533068C4F65D81CCD549EC7904F709AB675B9269CBB8D55860B9F45D1726546A903EADC5E0B0FB15336C29C2F3B2C71FE630AE8C2B4B79794CC4686BDB4CCAB0C2C3199F6B848CD6717C9C9D4692D3D2B16B422410DCEB807924AA2616926C39CA412770ADE462431057B585771CDB65F5EF57A278DACB2CCEAEFF4F8B6E3750711AAEA4B114E1065EF3E5806F6ACCAF513DA9336DA1E9FBD46B4283488BEFA2185D95C642D06DAF48B37E81E1E020831A78E2311465038DD3552B635889498653342F0265B2D6DE5045BD24F525C5C47FBB88217B3AEBA34D046B3D94D0F37880A49435AD9D349A3682BD46D7968A7611CA2D0F24402301E1BBC4A03B28077F8A07C0EB7F86887E19955252BDA8C66820EE72039BDD6B10DD36DCDC5BC544FB662D9603743B19FA95959899ACA839B883CECC24E2BC856544D3F576B91CE314B6BB12AD78FB5481BED642DF626C34B6B515F7DF740F594A680C5A291BB4E70CDF1671B7F66E57931DAD14C9945C7B2B5BD582939E7AF95313EDBB35284BA6D8F16D77C832E4D976985119C6761EE4B73297230123ED9C112A19D82E74E950CB44C4A842C0F21875F18819A8156567D59A88F100275731DC208F437C596EBF82ECCF2D8218A81B6DB2DB8C27C67A414BC009EB0E64D5A46ABE232BAB2517526A859659AA2615506DBA655D04059C6A4E7BAB11E4CD6DB0D6400F6DEA05C7E7B6E15B7ACF6DA8A323DC88DBAB1F662A32ED9C3D4D5561DDEF03352A706F30457A9C24472DCEE65268DDD5E2F2DD80708D9663B20912DDE071C8DEAEF14938ED251DE0354C950D7A53235022D97CA55B97E96CAB4D14E4BE5DE1612E552595F7D77B68EA5990F2C89918580FB4DDFE23120EB5BBEA4545F377C8B063B5EF02DCAF6B29A2E0ED7F7527D7E2580A9D8F44AC00FF3F686C16B58BA5BB8EC8B594E33F13A9BC596C7418A229DCF41FE1D6E83F369E873B2706EF0C92A302BB2E887F33661110D720B17960C4A601B1E6866E4240D7CC20F3DD88065079F38C532236E702C3B620A80D99BA76D4C335BC4EAE703F498160094079E99DED33728D05C9431C86C33FCF02215CEEAB394E06776172736A5C7A25BAE8E7B59AEDDBA04FF5ACB9535D2AD8BEA04F1D84595E2BE6CFBB50967055B3E232D9DFE6ABD3EEEAE67EBB5C1874EDAAB0FDE3E6AA9BE46CB75561B1F02B1830AA99EEDAC4666C5D2416D54D37751A3189DADDDDA3A9564BC73BAE5BA64CF63CB06047353357C7DE64EC4FCF5CDFC3484A50FB12ED6FD65A6282173CBC57DD894ECDE6743E441A4F2D6E403DFAAB3A8834E3B3A506A243D36D918FF89942ABB31E52C367ECCABFD3E5B2545ABC495C4E36C51AC63A6024EDFA74F1755A016296BD3BCE6800EB334B927B3227921F380B4E4DDE51B89874AD2D471D490E6D7593CF57F92A8935914EF62C28668430AECC9BC4CD2833CE5927495BC441B6D1F8592889B55E5B399D0CAC49459FC12A74FA4AD5A76046805AD4C90283A7EBD9D30E851838A62F3FA6AFE617A73753F7D987FD8A3C082B343E06A668D39B610EAFDE04BDD55B3D155B8A9CC21A6E68A49430A51A47068760134F9E57754C2E0CFC033B2ABF27358082EF4ED7803D486925958D70C8505E638B6905718177C5BD0A5AC62DE13D78A12E0E1F050520A7AB7BC21DDAC98DB154F7207FB904D322FEC5A013BD0BB4015F4C01036F4CAD7869AA1677C95E6B052BE15289FAA6E07558A0E9A8D27F0D09515A0145CF06A40074042DF57C4465CFFD8A276D85580D23ED1C8AA53E145C856C0A5EBAFD900E3DB4AE628D3B1C6BB251DC04DF3820A860AD3E7540445467DA3E6F8337D2E4A4621525920189A71C00C02AAA7D4CCE168C6A9002DEA450AEA10A97F6D2BB41CEC1D82DA2EF7290A9D607702B2107F404129A10C5E53106421DD47B19485060FB5C840442A0B290BB51CB0903CC8291B4B59A8E554801675E1F3401EC1415D14BA17713CE0A1AFC57CB1F146E4FFDB8774166FE2437C71B53A14C726A7D17E153DC9CEF809694708478ABA0FDD894FCD900D41782A83356320328BDCDC2049384F632E39CDE2BB7313830935DD8AD034E9BBD9C0A3CF249803D0843FBE8DE94654222F1528C498EE99130E150E96A3C1CB089D024FDB6543272EF6DE86ADE453332740633A001E1CA41B43842662778386E6F88B39DC34CFE098A03910D094DD341B572844BD15BE94DCF06B43B7F2CCC0EA43DF15721B7325ED81997948F33BB5F090E1198271A70E1D8BC1C6308E6C8320310AB5B9D0330CA4CD4D0426F66D2BE2CFA8FB26A38F44B806F3CE3D716AC4C88E1ADDB59F518F684D08F9801EC6BEC1ABEE694F8E452720F62D3BE1D8C5180834818C1B0C70372FCC41A60E81DCD90EB1B29B66A3AABE1B688E3025478234A59B432D70AC5E0C07FAC0BDDCF1167AE7C6EA808B3AE2AFE8106F75D758D75FB38156DE2FB53AEFA2644D88C6740D3A9D6053475E0E0AB6DEA49AAA8FFD01CC49A4F50E2E2C94AB4AB129E3BAF2AAB3BC22D9E24A55DF32009E7C24D0D634AF824FE60A0FB9C46FA778157CF16F4937221089E3AA9054BAA0AE9C30A4F7413BC1AA4100EF4ED1AAE596B134C36337588955357742B4A68BC3AA7C18490C0C584C490601F5DDFD4EC089459D65D5BBDC9850675A4166980D381E7FC5E2482BD879EFFA3B455B75E5553FBE62B0502DE254DE6B3CB622E379AC2EE32AA95A394CA1B87AB8F75219648F759032F7786DBCA3CA10A70EDC7574882ABA69866445D8164B37A78223564DE9CFF010A2E329543A162A8F3334682088AE0C0D2C4E7727E21CE58AB10AC7A33B591914301742B4A2AB139395EFC2F8C282AA107A5A12760E690F4B62D5F47579C1A4EF6663AF8E0166795252C3A6202DEA1C8EE61719C022AD41517778BCABCB0BCA5EF70942CF6B0BBD4250BCCAA877C303D9DBBA63DAB3035ED153637D17FEB2A9A3EB1D6D480F20D30939247F5B30EB57B6693ADB23D29C44DA89412D8F35668A0336D46F6088719186057815E1D03A8116D3C11E61C5F0C2AE157080D73E50A5BB6285E46F0B5D8A0B551DDCA6D274B647A4395D9FEA5980B1317E1E0DE2C620F921A8D9850FD257E11E49C666EAC911C9D069A1084FC634B189B167CE02455833A3B91CD027E53647D1F677393DD1F139C19959C6A723650EA444BCABEF4DDCCD17F9B7F84FE845D4CFFBB88AD2B8AF9E3510F194D35CC4877AA7E12B3F259B9878E08C95D0295263C2AA49A4D0906B009D86D112196C0CA0D6545193E4A680E194000A4D30218906167F1EA352AF156142F0121CEA93E07493FB2664D052A4277C2452C8093D8006137947A282BE8FA0E81D5DF0A0DDA339CCB88F13B4A4265D00465B8804F8C75A8813B4A4C6DE58811A673EAAFCD53A881693ACA5265C4595C8295FC600E83557BD2452D87B09701F9993E1501F99642D35F13E86444FCCA0A5C89D9495C829CED1C252951E5183E42A727E0D69557988086C12F83E3BD81E7AAC036A0FF68836207FEA6D5859FA20CFB7026357ED68CB6306BFE4088D3EB3D70A0C3DFE8006C81BBA5305F1067B350D912EC5CA15962CD09357809D503E22241B08E5777D7F1AA357EE4E9326D0614CA386181090F782C9289A1B8F70D85ECEBA5604EEA55D11EC1BC9025452AB6D758E9AD2B89AF07D37E00BB569F998B2006F909C788FE002308F1446B29660176C9223A242E851874DE5871B0D9CCA63078BE1A9A204320435813D30C3C4F65401060B01AAF40EB141403DA002C4FDE4A8A116B93D5BA0E094005BB4312CB98EA8A258721D51BD286616B89223871908F66C41432D02BC310BCBC8F5481B98D1A45B6614414669964EF6FCD2C40A04B866135D90EBA9617C4179C2204B1F1BE24A66624BAB10E85330D2301E9E062D4AF6B901B063A66942B46110340CEA26A3441FD64D8620FE149E752437909BD8DAD9C17640228B4116844910325EFB6BC290D9F4CD8870CBDA4219E00AE09879402CAE774621B1B82EEADEE0B48C82258E0BEE1471021C129F09869C493027111B9A704E62F74CC49E3E82539B4C83630B010C330842C4754B1D8688EB92E2C94ED3C843868CF743955A822963E96023AE935B9600EA485AA923B600ECB108F1C275CD2CC80BD74BB5D7D0823A062DDCC7E969A6293968124B04B7A6343CB3B6CEBAE5121CE402609241340CAE4FEA78185C97D451184C4360B4341FB12BFF887BC2209883E855508773101D15F8E56E8B080EB2ED1B6CAD09C616D0F14A0F276514026F1E758425EC6A3C32DDB4B7E8A5D9A1BA472F4D39E4F6B5F9FDF7F6661C72351B8691C93D6E71E83537B94540E1B77E6D6E60B7C42FE15230E41F545C1BE67D79F0C561DE2B88DE49D55EF86D9D01F516998A05D05D56A4F1C26D560F3608175879AB0ADED773311DA1BBABA0C9A8BDE42A1873AA6BAE8289A8BAE7697AB3D584D36E9245B87B094B14D5054D71CE2357344509825FF733B95AD9D2C451DE02C45C7246B706659F99EEDEA0A949624EB943DF3A7C754DCB411B9FBAFAAA5B00EEE9BDC2815DC2C88D2B836D3F13AB5A753BCB7FF3AF537B1ABC3264C0263DB274F78BFC19D527A08A13257A36493763941D62EFC6F8B387BD0E23B3063A12E3CF16C59E8BD1F50E658794BB2C4E2C526EAD04DE57C1EE1C00AC32BA9EC0754C7741C1F8B08911D5D64F6C000FA40380D25C5AE0471EBFB6C0F7023BA7A5A3168A27F5A3EDF4503C4D7B3B59ACD6F136AA3EBC9D902CABF8E5708C36F7D953BCD9D709F7D1CB4B923EEF9B92D5978BC54BB4CA3DCFFFBCB8BCF873BB49F7EF2ED787C3CBAF93C9BE20BD7FB54D56BB6C9F7D3BBC5A65DB49F4944D7E7AFDFA97C99B37936D4963B2E20E518947F8694D876C173DC7422AA99AB4F4B764B73F1025167D8DF684FFD3A7AD948DBD02C0738EF2B7AE093CE52F0F5D7D1EAF2E96FF4DB752D2BBEFC5127BB57E355B3EBC52916AB8F91BE9E0364E0F455F6366DCD5C50981C52ADA44BBFAF605BD7A719D9FF29B669BE336E53E894054D1604EEFF19414C7FA707AF3E7E87B232958827C8A0D45EEBD709EA4F229F11CF102E7C5519E48C3DC2E0EB2A7E45BB22A26F16FC7B4B86404D75B64FF98EE0923EA8C17F51FD57695382FCAB9CEAB82920204290DA83E453BF2F310EFB8AF5FE2DDBEBC1775DCE5D777E07134C29A540193E6570D0F34A11E3ED1B7220E7E524D5CAA59556F27FC9843593EBF3C4587D8071525851115C341053FE65096F2E2A20F2A4A0AE151F1B04B9E9334DA607DE35B0EC97063A9A993E7757A630C189A0A0D0CFDF4034AC7C0485094ED4ABB2FD759F22189D2EB194F8EFD6E4FED760953BB053684706A774702E2E9DD179E56F3F504AC03E5E877601A3457305CEC824EC4348B24A11636294C2539C0904AF224BF4A1AE4095534093DDB040D1C5C0C82110E7DC1A1256380B9A0E56009D8C2E11CAC028517C9462D60640C6C02BC283E528D8B89B708707FA872DCAB0B5C8275815CEBC2292DE3146E1897604E6F9644C5AD279654FDCD864A1EDFA888CFCB13A29F2D0D14B88F42D209982A2A4C7660A95027A98BA1D2305292444D92F7A2B542B82CECAA044F9DC4A25E544A6C9A5F35F58C106AA83FFB12A7B344A24F530268559451426ACFE616C5B48BB535627AC4B40FA65BB2199BED510793D10ED3E7603056F3C8D38B001231712021053B31EE2052CC670B5A3BC288F93AC9036C70C498EF276040E1A3D485A3A70C99E0E4E5695D07203530299E55304010EB6092FA76BE9443E4E4791987881FA2B61C2255E011176F88F1109D835A53443FB11199181903D58617C5C7A8898CC2AB372C628A9A5A6DB10004B924DBA31409748AC292CE314BF236008727CACFE6B416D952725ED4DF2C3C21DF6799E00029BE9C80DA5661B003C54D63F9B8A8EE06B892D869927CD7881C9851BB3D405514E9E05E7D00F214FED0167D99E257453D3104FAF567CF55623163C4C561F1B167CB8662D8C5B619313C62D806C32D997E14C32EC69F1D86CFC60044EFC158EB5F9892A9198895D60C587D47063006B1DB4B38CD7C824304D9EF2ED665983D3BF652BA440FBDAE8E535C66E9F3222B3C93824F864DB0A097A46BB20E94A8359F4FC552C491DA95B158DDFD72B6176B34C2A2AA4EF55783483D6C5228B5DEEA1E093B43A06A68A2A787849D39A28B844DF3ACA6995262254DCA29D89315CC9D4DCA11E623CC03C1BC4D93B3BEFFEC6A755AC2FC1C6C4FEDC57FAB5D1B2531933D360D812E8DD0FB880667E0E9A1E1AD705AB32C2DC28270A7A0AA6F36EE43C0483C5703518FA52E7602F92814276D2632C094AAA1299EC7372AC88A6737AACFBEBE1258919DA2126B6B579387DB499B6B23DCBA835B5B3BB43CDC4EC36C0A83B77330CDF0408AB81EFDB8CFFF7EF8F6DF64855A91FBEF0E6619D212A3C1F2B69DEE232EA6284F4F196E544533B413EF3E9A7D598AA48A4F56E7BCC06EB2DF4FDDE6ECDC4E54C5893480F6EC61F679FEE1E661BABCFAD427BECB009E32B8E1C09E2A6A6C884B09D968F04B9C22F917A4C77E3F011C40D1FD4C44DBD5F4A6AF71A7C11005A98145A3D48C3A0D4B288D3A1AB05039EA203DF6FB498C3AA2993A591ED6A1865DD685AD5BCF827294AAE15207E2F0AC54AA5443F1D5FBDC26C62B36E9FC5734ADAD6EEBD9E2B2AC1D67CB385B4E74B6B4B438A78F2338ACCA07BA520E6EFB77600270C1E1473B60946C46950C41B299AC57413095490190449797109268A2E7A90366152B9E3A60927A369D382933DA4FA39431AA64943226481AA09469C9E4E4A4CC6877DAFB1A3B7139ADD6A39D396A00B34A86AD01A8235CE67F9D120047D49D0DE188267ACB7FAC1A36A977071D912DA37539CA16A34A46D9A2C7D100654B6BEECCFC71B81FC7A6743EF543E6CF97243F23E679161BA5637228022FDBF2F9178948FDED04F69A951CEDC4D55CD5EF64FFB7A96C20DAF5E7DE3D6735D35C0C9B53675A6B8E809A692E12DB8469E720A9EBE3B3F8D37C2EF71D106A06525B4B011F325A0EBC3B5326FC4837677ABBEDA218FD0EAFBB54AD70BFEF5222063E0F5EA68D970F4EF9A88E0804E79B2823103A0242CB57446A2038DF11B100C2783FC4CCFE08687C785A1EA76176E451026462CD57CBE3D40123C684BF9CEC1A33A69F382FFD5A35C330691A9C02C12FC2A8CA4E425F7476013570F08B7603B09CBC2135C2AF6FF8B51918E574CCB7619856B5D95BBF461F66718F50B370EDA01434C307DD066412FA71EDDC478455DF6FA43824ECF73374F12850D0A18BA76A85BB3D849C9963D24E7E65CF024DAAA3493A91157ECBAE9E1A10CE16CA08888E01D1B2CBA70684B3CD600188D1E563E1F2096394785A24A7618EE48B13203201FDDA97CB6758EE997E2D926198230DA680F57118F5D6C1FA78503E9393B748464C74EEC8381DA36418060331E65CC28881AB5745AC15BDFBC22184D87489F81A98843E3D1790D7C2CA48184818D67E63EC340D707B907189AF1198B4812C4D9165E94905AB6CCF4FE1134066C441D73868CF3DE1131AC51607676204DCCCAEA3B4F05E79AB0394949921A0288E8FDA4D16CD3269655E7FB551DC6E46451F6A57C9E76E142F6D8293EAAD87479A677582AF240C2AD3DB545C0D1F5D54D7D0F8D89EE06FF8E822FACDF9E8EA8EFE11954BC9BC30DA4549CB40BD68CAB7AF5F72C78F1C32B5FED89B373A4E6FD784C7F2563B9F62E7DF5E9296ACE5F78C85A413D0A55A5475A04CB9369CA236A520055C99012E2977E3C9E4D02C5FAD6312FD5DA60CC601A72993DAB3F9C123EF04ED8F11797D23AF25838D475E9F16DB302C297AC0C44FDD61640CEC27BC68CB9EF03895C9D08FE674BE24CB5DC253A93E9D8019A21A970E2C90BA7A27E3A34D9F633DCCB2D40C41BE1A7F8178F5B567D54C87C4452BFFE043D292CEA243E2A2AECC86E41C54D574F9B8BC0DE651464999799415C55184AFE5A5F0DA720D3C177DC8F3FE36A489E1378B8ED242BCF8667D845EBE43C925D86C70C7A94CACF96ADD32F9A81F9760C5AFE9314B2486951FADDB25B97CD8EF76FC9248D18F2760C2E8E66A37BB12B4090EA64C35CB45C5B60EB0349B036EDFF920F6946B4921AF268BCF418EBB8317C8B834DFADEB5AAA483BD77542907E80E7C7B834EFB12885903C18E5F720BD80FC2D6C92FF584035D0EFFDEFC83532C4DEF61E65C828434619321419D2DE6E742343EC178B6632C46D1F5A2F44C6EB5666CBDCE59A80F9360EB3D055133358EAEA089CF262B7D8998017A9CFF60B55E65A02B0BE14132D5B092F5AB914A796CA8B5729D19A9FE022F6D96121CB34455E810A69F6FC04499ED2C2563F373B58DAF28DF82116B7ECF487F63283588F9240C02F3905B122395101F52A903529890FBC5F81ACCA678565F91CC8BA14A50DDEA91056262B8790A13A8515AB201A7E8435EB281A46D17056A2A1A585A8201ACE6B293A8C6522FBFA909F1DAAA064B0405496C657F5DCE349FC56249764759E07252AA69D80F5AFE17A07A63FD302A7F3399DBD8E258E9E7C42C4A1B2D6CC2696AD2E676C86CED696540ECB569773322E6C3D073DC1BC1DE727B07042065A4255181F33F6DD3BE9460A4DB15211184921C99CE62C89A66BC11F567FB339D33123A61D31ABA2443CD4C1249C80DA52A3A003ADD534C0496975F4CEA2002759B486ABAA069BF85444F5D977DB8D819FB4EFC6A4F5AC741954B8E8DC1115FDA2A2259B8141858BC9608F8A733018E83BF7FEEB1B888CE192122EAA36EF8A32C062B2FC6EBD9294C9710927A08C553CEE68019957EFBC7A2C19091AE3655290050E580B9776022BC6828FAECBC5A1F1B1C52562C147D7F5A1391FCF41D01792242D5CF1DE6B028490D9CA102DAC54CD7529796548536C5786204921E904C4BE9ADFDDACC1AA06B8AEC1283B21BB8A2686B0B6B19A84D4FED72F35471DD72F83E5687BB67FCD5147DBDF92A3E7A01266D1319732BEAFC0C3540C94015A121FA8BA88F80A7CFDD9E66EDC721DDF491E38E6B3953E011BC67E3F014DA218A92EDE962F6B777B59BEE6A23439698AEFF5053AEC521534C55B9C62DD60937A564DF528393D653F8E92384A2DA9BB7A945C749DCD289D83965B46ABFC15653FD1091331D071584105C4CB12A256AABE5A29258814F3F9045412CED72E4E4317953B29A49A85B218AA12BCA510520393D2F781D1927B2E8A6248DC6BEB4C5DC93D17016ECEBDB310DFA55E0FB05051503211E4AAD25A83055AB4704976721D232AA69D82845773BD934B2FB4056EB29EE528667786306FC5D10384977D652D5E1868D8EAA40406CED6D60E5B376C75D20E0E6C3D073D41644EEEA2CBCFCB7BFBDB114266FB1B6861A5FBB12E25EF6FD014DBFD0D90A49074020A42CDEF6EF637AA06B8EE6F507642BE639A18C21B8FD524A4F6BFBF5173D4717F63B01C6D6F7FA3E6A8E3FE862547CF4125142FEE2DD7C710CFD802640CD4015E141F2B5A067ABDB6F86EB3C951879F0608724916711A9EA3EF1235FAD1E610B41CD9BFFE664EE5EEFB2CE369945F4E40B1A970D3D5A3B7A47AF7076F8B0185DFB12C9242454D87EBE152FDE3BF4395D0EFBE0764C150E9F5673FE2259C05D2E5C79EB53C0598F3EBB923C0CE03606D3EC79B03CCF9295E63809D83B9739DCD62DFDBC1200D03430729870D0FB1359FA7EB683B955EAFE753CCED806974176DC96C5EF1E498CF16B4D6C7D517C1C0A9BF595C15834E84381C549965444AE58F630A949ACFE6B4F8778A387A42928505061E9E7739898F5EE876BC238EDDFE73BBFA073F97E5F2581676F6D4ED302BE6E971731D15B251BAE2D87CB5A44424FAFD310288D50996F4F2C825B7EB0C2048532C294A4B19977516FB703C408DA69853A44F7970D49AAF16EB2C6846B9445C800E13D89F4A40B7AEDC76C398C7C37979CD7C3F81B520AA573B580816753BAC0279552C58517CA29F05CA2869A11626C5B38A4A7D8BF4ABCF9EB72F911355814EBD319A5EACA049F1AB4250FE423542AAE77203BB7913EAFE922AF443C0781A8AEBA2E1EEF536D6855C459057E51407DFC35D2450789FC379F31B1345A8A2490850416DB64075D46901AAA1C60C540F4D0C5011B4400EE57FE14D1FA8129AE857516315099534099EFE17449C840ACD831C560B73184E75F421DC210BD6DE12952C93D4B3CBB23485ECFD95A32964487C3485465368348594958CA6905535A329349A423FB429D4D2E65A690AD9EFACB998426E917DED6C21C73A0C8D2137EAE6D690237D2B73C8AD0E377BC8AD2E1B83C8BD063B8BC8312AB5A549E45C8BB14DE45C839551E45C8B9555E4568B8D59E45183955DE4518FA561E45193A165E45183A569E456938D6DE45683B971E446DFD43A72A46E6D1E9DC3A999F9F3314B6647EFB7D7503A06A7671465712824644E48B73BE8579B33C26476898FA6D18F2E678DB183C627B113AB1CA72E6E9BD4F5BBBCBE45875792007582EF91C96AD8A53373D5F750273215C7317B77123723E4F008D23842EC08B5751B868E90C35B3416233420FD76B5DF67ABA4A848567275B498456D2918448962722371BBD0C02A4FF03298527C5C64C7DD0A18350C93B651BF7266D14638B46F19ED9E6328DC2276E7D62A640BDEBAB7137018CD479AF5BF90EE3413567936092B241DF26532D25C7AF622F4AD51703D9D8A2C2E3E798E3ED63C5B10D85B3F3E40A8E50169F5214AD2782766A18655F585FEDED71FF2E18D9E6322A3E2CDBE2957CAD8A25BFB9768858B61224177D91FC953BC232B9CEFFB43BC7D956778B5F85F9BE92629B4429DE13E4A936FF1FEB0CCFE3D2672F5A7D76F7EBABCB8DA24D19E148D37DF2E2FFEDC6ED2FDAFABE3FE906DA334CD0E45D7DF5DAE0F87975F27937D51E3FED53659EDB27DF6EDF06A956D27D1533621B47E9EBC7933899FB613B17845D688CAEB5F6A2AFBFDD3861D76C6C0847CA0FCC0DDC612E4EA11FE3DFE76A100EEDB8958F62D3C05F286BCBBFC23DAADD6D1EEF2E23EFAF32E4E9F0FEB9CAF9717F3E366137DDD901CDFA2CD3E966A916832CE5481B2C8CE5F3FA64FF19FEF2EFF4F51F6D78B8FFF78648AFFE5E2614786FAD78BD717FFD7B755F9BD99C68F5C36AB30C5184287DDD1800E3114444236FDE308B8F790D5EE4A643583E1042BF4BA8309B87020F80DE6729D254411A6D7B39AF021D9C6B9708857496968FD8BEDC0D6346F97E16816CF3A4EEFBE50C01152DBDCF86388BEF985A84522FF49F25FD5F48D871CD6A4A6238E69179301E7CD839022A5DA3E71922745D990C2A4BCC9CFF53485BAFAB7D7B688A9DF5751107DF3DA812A7D51C5745C8CE12D32629BA5F1F74040AE46DD4D7081D7AB8CA4168C356FC8F074030166B92346F77C9DC45B2FC2C6434277369C0605BBF563322C4DD9C0B2A5463044DB48C03004C29B2C89B7B592372F30EAEA7BC2C6531E101EC57DE0CE205BED93B9A316BE5E660CDCBA7850ECE608E109BB8044A1B6ADE01F12FBFCFB588EADAACA07D5FCCD73DD75B3927C596A29B493744D047743E36BA2A161AE32978F6DE21D29815C8CF39D1D4603CD10088B40DA299756558543B66896A5D4D54A8A6CB2C81A7802749D68B4085EF03D6B53D47A60101B695F0471E77F5C50C410F811A4EB7D34FBB2746B1029187885270C5CA8051E37899D2C275BFD633CFD9A237E4E13B0183BFBC9070DB9F7E03144DB352E6B7D5B1F8F7257B839858ED46D5995B3B2CD8BFF48AAF6B466698B70F30390FF5A86257B3E2B9953B5705DD632D672B13E6AE90E54387A4D2B72B1ACCA7988F2E2E72D17EFA3E6646BD0D9DFAEB46C07847EB0F297962CD97391966DCB24AF15E674E9216098C20ABBF48CA4845B73F2924101D5AAABED66565F5472025479D7C950B979A1AFAEC96548CAB26101A2980D667BBA4B6FDC1A8F337F232DE0407B0C9CBFF6B86E3685022B0FEFC5FBED3A5AAD592323D45E29D12A4BD2EAB5E5E6953152A871E404925268DA430414B6DE83C0520DC4FF2FC972E77504C146342F6F3D666C8E1220242290730E85030CBB38A91AC358430622B228F4381705A4ADA06804B47BC56F1C2A3E3DA386088F597434364AD1250EEBE370DA3A2CCE1EBD58882FB429EC02C2A529593A3D66893F4B1855E4C81186424879BE5C93D6DDC67D091217D1E039C11D966BDE138359F3F94E8EBC39212608D324FF49F2EC3F5198F6784E968A432D4D1876C3D3C90652C4E5363185541BAEDE161140BCDDBD256693D68999785472C3B3BCD8167188D3B302ED933E3FBBC8829CA0B59A46457012E7390405CA379D4065D936660F4BB9F5A9538712719D3A48E07CC3A9434BB7307504DAED72B2BE12E9C446E43EA5D1B180BA68E0333955DC09B775455538F04913A1ABED8E2774C7D67438E1FBA726A3C95E130E391B78BA2D730E7B77DA987DF88304463C648B0767A44CBC75090D3ED26A21A191C7480C25342DDD828416687770BE5D7A15D06A7B13789CC47877B3281B5848730FA9F9EC4D1202A1AF64306D72719C0FEAEA04F0C88819AED48F6E010514CF6A41B991B7B380AC784807202FFE0216905BF3BE1550027FC20AC98C3E38033990146F50C1D9B120026066F41D29383BFA5014901D7F0B0ACB6C713941FD941356007CAD09CB8C3EC60414C0DF5B0232DB0C3F1A1B04724A7AD821FCCC76771D4A77C39D8870572A5D2808B6B71389466AB8131184893B21719DED4A43F074393997252F8F23156E9FD99186B06876A42218762E54C47BACCE34F823A5CE64A86CF4A4C3D845CE34A82475A7231E5074A11100FBFCC2D48982BC227312914C8070532AE68B3838F4A1E1DE18125AD260DB8B960CBCEEA822DEE1547FFEC96335D3D7314B5B5F9F8F8BC8C6DCF6712861EE41B3CB6265E1B047DA101797995FB128DBC108EB03AE79C49BC23D35CE0165A0F054461C250583DF981CC6245E5C4D6F4EE6066D7F47904F4F40287C8EA618AACA077569455BB551EBB377F430FB3CFF70F3305D5E7D1A21896FAE1ADF05CF4B070725B655690ACAAA7C6050AAD76BE6A064C25E8A9E87C7D9A2D08753019BEFD3A78BDFB30DE4A4C8434BBE62BEDE1F3787E46593AC48CDEF2EDF48FD6A48417E93821A9FC013FC278920991C711E1F398936A4C0FEB08B1239C2F9A75D92AE929768237543C889CC3A95337642898B29B3F8252608490F508F03544CE90BA240C7122EF4A91A1A3454EBF5D5FCC3F4E6EA7EFA30FFB047E121DA04C578361F87010E2CEEAEA535D72E3484B09BBD80A37436B2F18C51B1C1B9254B99517D32C78415B842090A20E01E8A047413C61C0796D8C36BEC5236CC164810BC160483E82C2C08351FCF4620C01CD5D6096F1A758106EAF42770804FBC3683286D1014A3C87C35C78360D41684E8B756D080048541870688026385049099B6B5750080AA9D64F89521D79C864E8500A1364EC70849ADE0C16E7CF01D4C7344A8F8EB527107E06037561884C0515B04692FECC734129F26D88305A229A5B50217BCDFE8D0A9A221D9A32660DDBD48151D66028B95FE90D29F60B183C80948966A9B9441091CE144902CC2EE6A235968823D5E209A525A7B9205EC373A74AA7842F6B009587717AB57BED548241447B92276E8212D1FB2BAB85A958FAE4CA3FD2A7A92FD7EF97B35A70BB1FE44921DB6FA1549DCD1A552266171519AC105CF3B15432BA45889A4A65E012C4C422B4851C40841470D8DFE62051784D50EB5762384380B478F13F9F84A3DA46E464E6F08C1824FA10385C6FB691B21CA8A3B00497D82AB84884E4F89E7BD8AF16C3E5A81C30E69818001078D4147078A12638B083B206235762B2F0661AFF402A05EAC9460957680223E8C472956B0F040CD700AC13FD8211593AC844C53B3801226A1159CA8A299202387842F01F3CEFD41850C4A7B8DEBDAA3A3475D38774E6F38EB451ED941A76F89C45CB030D83F02AE631463C97D3FE53D24342C0C3A3CEACB6F6DED26696AED6693B9BA32536F336B7695E43B36F55E33FD6CB9DB0C6C2CB5BFAB8485BA41874A79DBD172DFD96A63495D71D710D1898EA0F0E85E70F4050B3BB1D13B24A4E7E6A187D0D90309FCD9E8F23842FDAD93B5127FD30468479DD2CE990628A60D3ABCF895167340296ED6B8D4DB07A6A0D7EBD9E5923C94F0189E25A2AC0616BDAADD2E9EF06A3B5983D3DB8C045270502976ED2DDD7DAC16DECC7773C56521EF82ADB5915841F8E8E097F25D9061576B9F9BD9A5F5657E8ECAC1483DE5F354F616A83A0246CBE7AA3495770E1AF37355E120E3744C6BF070713D4DD52B58C443DBFAD574C073DB7DADA4FB39BD6DBB8A46ABED01163A011216173D898EDE906127344E0C1A7260BDB660C104506920517C3C2F38481CD5D60947E3EA030DBA73966111617B6073E8C8B03BF5D6B3A060EF3032970275BE37A7AB9E2DF94CC06820589B5ABE7AE8705B180E41E2760BD512F348D53DC24EE39EB3144C670FB7BE6F3D07ACBF0B3558C7F97AD4DE7D3E05A03561C9B846345FCF06524800B653C551E1FECD87A421F4F8DB2EA3A7FB1E97D92310BF28F8F198A20E8E46F18127F0FAD52B99C6404EC4C84C74A9AED36D26E58640FF3B96469019ECFEA4055EFADD966C8260E9202387DBAA5511FD7C76C0C11E5540075319A9BB15F8A86BEC247243AE2F6FB2D5327AD1E9A2191EC02CB84EE2EAE2E41C97703E3A0A67AE4BB51D9DDACC23B0E51BD80C8894E736D9786FF4D066F9B19B63112EA80A78EC537EC60C1D5CC5EB08AD824A556F371AAD8A75678A2B39665FADD9E8E7B3C7D61C79E00D1D65E51316ADE24B5D737084FD764C5798BFE863BA27ADBBBCB87A7EDEC5CFD121A6F118AF8FC9E6F031A5BFE7C9267A4A563531FAFDE37E9A6D5FB23D17CCF153B423751DE25D8E8145BC8D48B357FB7797579B4DF6BF3F6ECBB1270DF823DEED93FCF2E962B526B9DE5D3E7D155DE99414EF6A132372674FE4E7C7548A3339D15193223A7AD3CCDF04121DBAE5C3400D452D092EBA9D4BC3DE4EEAA132C5C2E797B2952316462C94CAE007C182117B9A20B1439499E191BD5C67C987244AAF6735C943B2E570FD6917AF927DD1EF7F312677BB0C42AE78197B7AF785CE3952761B6D107A6F7EC9B919E583F1572F680C51848ED0E8041A4394A89ED030E210DDAF1CA25845DF80F0B041B850C1FE73B1787E946B64AA26FA373D51F45175885EF1BCBA9620FA9ABA63BF8B592EF6BC7A5C1336BDECD03A44493FA2F54745EB10958F1F5ACDB47319C07D889A27FCC4E329FA4FBBE52E5AADE7EB24DE3AD2B419C2218AE37108B9211CA28CF2194223DED461F00729A3C4B70A02D81B5C9CFFA03E3A4ACFC53D97372BDCB4035F84376E10F2187CB0E94A213944993B42F2AC2139441DE2074973FE54376407AB48F8CB9341A6184FD27296B5B29E96C3F3F8DB856469B9C88A15664DB3783BCFB8A3F95B2FC4126C8A7F4DD0E2D6701CAC1219E1788E701CAC02F181A3D92A8D0B0E31AA11F90862208AB32C6502167DDB6491CDEC10A6966DF1E0934B80CD28EE47D838C0E68714CBE16163C4FAFAB4FB10257CE8492544803D65BBAA7AFA309C3359E875807D384E42D9FA10CC6D462B940F51218D281F516E87F221EACFF6355DF364EF10755DE089C0906BC345DBF07A881277A8BC1EE2BC77E6B5D5C2A27E8B7788339F7993F634D615A7AE06C5411FA2081A07DD73D087280B4F6ED0CD1DEAA38015B7775882A7B0B9D38683CA6E77C71E4DA3E41ED1140E4D3FA04AB0529DF5D3E08395E16C4884BE552748517CACD69B644B46548D84C1CADF110981913058D9794A48305759A328160D209660FF06505BA6CA28787FEC71FF01C5ACA93A1AF24185E9D26EE3B147A324DC5469E190D090B7F1470C84C5C01045A52F064C797433AB5E431FA4B4BCC9A25916D259D53DDB8728A0CE80ED439409C3647BD9EA51CA706B1526D6F8092C55E2F4761DADD6AC9729408C00B2F25992A6AE8D2F883AC069949E239C02C2E947D30A462CAA1DD08394DD61172971CAD2F307F59764B96BF37E371DBA21CAC971E8062B93DC87CED4925FDE0ED7A2CCD598E31DE77963ABDB150CEF00220A79161DDD5A5339C6D9D30AB677BD8B80802F468600DE00D6176DD9802C9D1EB3C4ABFB8CD566DF7BA6B0BF15C44DA8E1E98A71428D13EA8427D4F034F8002794D1B02CD70425B7F1683A58CECC671FD9C4EC847BC8A7BC119E328A6988979C7AF692554C2BDCE555C58DA0324B981CA319304E8E717220936354E96E6C64E2090C50FBB6130F6119A700D936EEFFB2DC1F9E783F27EE0F4F7E04E0BEE9D304556C90410A88360223168A5DA07A82AF5F2C32CFF72F6CF131441136E2A33B7C0C51C8FAE2C3300E08F3B0F910A5EC18E82A9CEC186CA02B741CD997D4C30CA2F088B6FF999D682B90F45D5871537A888A719CD2E3941EA7343AA58768CBB4BF58ACA13148232638AE2B57064BB32D3F46C1F421AA99C1337D8882C08FE9A6CBBE4AFC0E5216B4A0904AB78040B50D6832AC1FA2443813D60F512EF8B2DE30D4F16A98717CC715D1B8224298131D7354871DC37C1A325BE62116440249FFA0E5AB6146891E67F23893C7992CCEE4215A2C1DBC3D50226290164B78342FD7F19DF37E212C408446B61267BF1AC321EAAA710CF9311CA294F21A43B3E390D18A28CD410AA9B2E921D1C8536C038C15BB87284F06CCEE214E7D1F761B1E848ECBC5C7406D14A6FD414129936D05990CF707290DCE86FB83140EBEDC37754A57CBC5410A881616D0E57E8040B5A5FD809AF543940E67C2FA218A065FD69B07305EAE8F83940B75E3C3FAEA8AD05B21A9E6E1C0187A96E1C0169971782DA0F4DDF759D6E61CA3F819A2701BF1733AF819A284F6C38F117FAEB3593CC47B99446B3D4FD7D176EABC13338DEEA22D994A2BC7E2EBE3EA8BE30D70C1596759B87ED1D5AD3817FDD08D8478B6CBBEB4B0A762793759DAB2B42ECF45BFB42E6D7EE8172E6FBEB306942F6402734BCBA134FF329B0381EACD340F0A8C5073285D3D88E146417C5CC932EC900F72794F9D655979216F29B06874FC505BBAA5EE189E6136EA8E51778CBA63D41DA3EEE85B770C6F5136EA8E51778CBA63D41DA3EE7097FDF3E76396E4175D07E8775A46094140C0DDAAFB1C5291A18BEFE79F2C5CC46DEEF7D2111CDEEA6F1C417E04876783F98D20CC9EF7A47987EFA43D8728491B638B10FC2DD9ED0F4475455F23D22FBE6565A9457C00ADC332B56CE322DE7C7BC527B31DBE5896CCBBBE9A7F98DE5CDD4F1FE61F24A088B53196A454159306D533BDBABBBAFFF2F1FD545B498345A98E2609AA627E73352735CCF5DDA82C5AB90F5502D8819BCFD32F9FB5B41BAB45A2DE2441F43FDD7C7CFF797AF3D1AC86DAB2812BA953D17A6657CBFBCF577A4655CFAEA3B5891940C60979347552BB43AA8CA640B52CAEE69F088CB5E49945855401930655317B20F05A7E9CDF18F38D9A8F28E3680E15E768261364E075EA2B2CB041A6D1A7DB9B07E34E521B15ED24CDA1EA24CD64D249BC4E7D854527FFF1F96A69D8491C906C22D2355358B2EF46C23531C9485D4C0E4D6DC2D258AA4E4887EABB79B822F381680F2274F58AA3598A4875354950357FFF7CF53F8D6A601F438019C824230C6472686AE3233503F58919A01A973744E7DEBE37E521E74E902AE452A1DAEE1EAE3E9AA291753C404A9826226A78FA991815579F8CBA54FA57C0FE94495867CA547D4FA81303EA094D447A4238968B0ABD5AA91D5DB252A953409572F5797135D52B947A3D2DE3AC4A00F17535FDF051AFE4B9F5360064261546F1FB125A06DD605D42D068D0446434F2A120D3C54C47149E17583F1449A86E58DEE8CDBCC29B0C19DCE577D0D27E98BD37987AF53209E250930632E8C3E7878FB3CF06A2A4C2248A2A211D1197A6E06517210AE31ECE86D46DB56C295B29DB93C567D89834E8D6EC21E7F5CDC374994B3A99875C326C4FB23984DAAEF6FB6C9544F9AA11587F3DCE1605BBC86A8AC928AEC49A5C1CEDA22F4F17BF671B6849476AE3BE4EF0B2D0E2B328CE27083D9BF05D33E8768D066ED4F750D7919C7817443C16CD6F3E9E40E7CB352919CAA655C0904B991423CEAD7ECBE1AE3E29BA6BC5289F319E2D9A75B26280996C6D8CAEB88C2F4A361FBDBB4B979AA423D46C93BB0B65C31B2DAD6D8B56335F151D162CCBA224FDE6DD5DFA24C142F406C87D46F306693C3F1540FF463925D45E0B7B16B0AB6FA66F743D2E33425342035EC10FD00018F126808C8188E8BC1221D0A1E00A9EB93D7C74C306D675C1748F3A331084E0253408119C280D4210570CC81A8888CEA5E3A004798A8F0A9189656D0F1DDDB04078447EC13B7C643E28F3E39D025D43459784143563246756CD15DC49E5840A4E1A28F981675676040207FBF904D8D0BCE2BD605B26B300CE887740F4DA158D6F3EAABB6EC738BFD1578B0331572B92A0F5EE8A8FC32D7887A5DC737501BC33B06FB3E89098A46689E48FAD9982FB593D6D07253F909CADA0A193AE736F7DA956117046BC0380A7B9683FF7BDB7B504FBF8CE42B39640F32AD78C82EFBB5E35D2CFBA7523B09C08BB96E0BAA51878305F5B5D6F77D469A8AC45153867911D77AB185C342359150B67DE7B5F2E9BEB6F8A2E837E54B6749D12BEFBCB68F71C1F8CBA5F6555487CB9FD70C37BEA3C1712654107065279504695AA93B63E2A3DC77CD7B3C00437AEEBC1526618394E94F9838AAC7E9D28B48B460E1438777BEC7072BE0470982A952094B335B76917EA8FEB90020258D6D63ADFC3C817BB99FAAEE7D95AEB36B3D9DA74B9F818BCBB0A7F1896B5B56EDBBAD01CBACF6E27311B3C0AFB475322F096164A01642D9CA13526E15692A644DB3B865D32A73979ADDA420472B5C104E97C4359B4F91AC02340ACBF7C239EB0717FD845497A78FC6D9751FFCFE3327B2C37F8211F8161D9F05E03F6904259083A84E0B372C8FFF746BD62D0D8CBAEEBA4B6FAC6C643C3BB27E552035B38A154439B7EEE630CD957FA34F0E44F95405BCA8EB4C2431E3A4153624A7532C6CD5156BE6BB6607B0F8205C9ABF196B18718A9AB0C3AA0D84BFFD9179CF41C4073ABA78D70CCB29E36F473877C783B2969D0CB3534EDEDA43C88557D203F0FD92E7A8EF37B3C9B7DF1F5EDE4F72329BD8DCB5FB3789F3C3724DE129A69CC5FE6A1793EA6DFB24FBBEC25DE15ED675B5467A993EB9B57F1217A8A0ED1D5EE907C8B560792BC8AF7FB2457845FA2CD916479BFFD1A3F7D4C1F8E8797E3817439DE7EDD7C6799F176A2AEFFED446AF3DB8797FCD73E4417483393FC46DE439ADFDE7AA2EDFEADBC95353120915F7AFA1093EFE558126174889FBF534AF32C352454B16F16BFC4E9539C1E96F1F6654388ED1FD245F447ECD2B6CFFBF82E7E8E56DFC9F73F92A7788713D10F04CFF6B7B3247ADE45DB7D45A3294F7E120C3F6DFFFCD7FF0FD3A3144FF5D40300, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201506250452078_second', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7DDB8E1C3993DEBD01BF43A3AFECC5AC4A9AF97FAC6720EDA2BB4AA316FAA49D2A357E5F3552D5A9AEC45665B6EB309E86E127F3851FC9AF60E689C94304CF9959594A0CA0E94A924132F83122182483FFEFFFFCDFF7FFF6D7667DF667BCDD2559FAE1FCDD9BB7E76771BACC9E92F4F9C3F961FFFD9FFFDBF9BFFDEB7FFE4FEF3F3E6DFE3A7BA8F3FD92E72325D3DD87F3D57EFFF2DB64B25BAEE24DB47BB34996DB6C977DDFBF59669B49F4944D7E7EFBF6D7C9BB779398903827B4CECEDEFF7148F7C9262E7E909FD32C5DC62FFB43B4BECD9EE2F5AEFA4E52E605D5B3BB6813EF5EA265FCE1FCDF0F517AF37AB78AE6D172F566B6B83F3FBB58271169C83C5E7F3F3F8BD234DB477BD2CCDFBEEEE2F97E9BA5CFF317F2215A2F5E5F6292EF7BB4DEC555F37F6BB29BF6E4EDCF794F264DC19AD4F2B0DB671B4B82EF7EA95833118B3B31F89CB28E30EF2361F2FE35EF75C1C00FE79751FA3C5D451BC2EFE7F333B1C2DFA6EB6D9E19E0F11BB6E44F675CFA4F1416043DF97F3F9D4D0FEBFD611B7F48E3C37E1BAD7F3AFB72F8B64E96D7F1EB22FB8F38FD901ED66BB6A5A4AD248DFB403E7DD9662FF176FFFA47FCBD6AFF6D74399D9E9F4DF8A213B12C2DC9172BFB461091E4BDBF8DFEBA89D3E7FDEAC3F9CF04CCBF277FC54FF5870A215FD384CC8498FEBE23CD8EBEAD9B0F134DB5D3E826DA3C24F1B2FBCAEF9EA3D766A8CBDA67D13E5E9069A72F7BC812B1708B4DBF8BFE4C9E0B080A0D61F8F747BC2E72EC56C94B39D5DFD0D4C7D9BCC02719E3DFB7D9E68F6CCD96A5A98F8B68FB1CEF49873234CB3C3B6C97162D9CCDC92C48098D146C223B6D1ED9BC4D3B912CB4257563B17C75A74C5B5C17CCB905B498D2BDBCB8FB34BDBAB89DDEDF7DDAB10D867348CC45B2410C7E3F692495527E3178B0115EB4589F928B69BBBDFCEA51902C5659F22989D2CB595DB78908A94B5D2F6C4ADD1C08B8A7370F5460C5CB6413ADCFCFBE6CC95F9589F2EBF9D97C19E5EDFF9BCD3CAD2544084122CE4D85AC71C27923276C605E97EA13E54DCBED41DE94ED4153AF0ECB87430FB32B4E0DBAFD775DE5FBED415BD52C21BD4C14B5BC7B1BA69A3825B33F52D564CA4C036921722F9CC8101460485D29CA0F8D4A353697AEBE4E1FBEC222AEC03762824889B2A524E5B037941402D8C34C125BAA33A7CCDBFB6595C48762C6A8869ECD078C7B938C0F3A93C776C4ABA2C4B0BF3D44460DADB3E26D2D73689B5B65736C31A1F672BDCA8C9A4CF3E26DAEB2681B5DE7736CF56275306A71910F6F2D49D6B634CFE3D8CA7F1CA2BD296F695EBCB555166D8BEB7C5E964FAD87ADCCFBA24CAFB67DD56A07C3BE3FBB435B7510AB63B125837147F0B1095E93EBA2DC52174AC63EAA2D9D10DFA80F1BCCD7A5FA447DD3727BDC3765BBB7F5A907A48FEA4BBF5CE2E492CB1BDEF67C9D670B1F6B5A34D15F675977F35E39EB1D2C36D4A5055875EE73BFB6C8ACA77F59B0770950B7DF5108D4C5FB98887CDDA673B15F4F05A97B7A206B9CE8A507AB21DF4BCB8A75775DF9E774FFCBCFDA7249BA22864053EA3223132A92BD440A953E5D3CEAD63AECBA442ED0CC75553E49DD2B33B7B0FAE1EBC31640782E4D07BC96412CF660115B252B579B601E48D8C2196D57F2565AC17879ACD30D8AC69A2F8604045B2D8AB8B247AA249012F328FDB28A368353294CCBBBAE7A96A59F9246936564F00C4C3D4E929B15F217E59D4871717A1A897CD31ED051065A5FA5295B8EE5915A8D66F4122BB4F936F2A42AD4A720F1100BBDCDCBDBE8268B921EABEFD35CBC8D660F8B5E7C5B7A8687D952E3A5AEE762D9C8B2C64DCB8CD81FB97406C5124D25B28432A7914840B2248CA03CF6BB2A0666BC970815AD5FADACB56FBACA7A97AB038C77349341EBDD77306A0AAAED0121CF230015248BBC6588E473828C4AE336C948738554A8A56216A7462EAE2FA3F4AA308D74C860B222B0A039D49868B2D90282D34B407B99745866801924E6C2B91CD670C60B4FA0A950BA7AC1A96AA8B1A1C588641B538B16EBD3D82A34B7BDA1D597C257D71B7C7F4935711C54AD38C555EAD8CB934095918B2BA12ADCBB2F216F47479E84B2AA1FD78FD0AB456BE62AAD0D22A5C5A5CE097B0BF0ECEDFA0BAC0C46BDC740D568BB8D2A27E171F492E3C86541BE4DC5D63C8C4DAA5EDDB0C6BB549E6BBD60E207DCB1D14BAB5636402C0EDBE9B6405CC5A59D83D861874CED1C0E2735A515B78BD55515EE5D76E6EDE8C8EA2AABFA81ACAEDB880CEEEB15B3ABD25DDD016C34954789F301014E2861C2A239E1498B670F69A37978C5A4C3831AEF99BB75E624648E5EC21CB9CCC8AD33B6E621586721CDA34E663E681EE905452BE691C579799D79A49254362686D3766E53AED773F30B0F538129EC3E854AC7DFD02C851E844698137C5733D51609B31123E6063774F84C90AE4572DA8A88C63A035A5D273EF23B554D8BC10C92788073053663EC36CA140C0DE5956686D8527CD1927D0AB0AB2C9A65D2246843DAD535F57035BA3B398BDF6C35DE0276111C8A0D6144C498B6BB1C3595CCE372285AAFCA27754099D9CBDE103A643367B9A2C737698F7912E6CB8CCBE6EECF205619717ABD2223AB716A84B9634896320BD2D395D7D5251FCB25C82C16D5ADD194779AC58D3D633381EB527DCEDDD2FAB59FB93D59CD71AAA93808FE1F92C5B685701BEE47B21C4D627102A80D67579393397B656972D292FDCD805CCC3D1BD99B77B29D19DA5D5F3586F321493384E1EE7C9F6DE34F711A6F89027BFA12EDF7F19648E5BB2CD56BC0C6FC6CB7A21ED7F6448DCDA283DA27073BEFD90D62C30B7945DCA117676509B78375859AB5234BA7872C71E933630F197799B5A1829907C6A73B6C0E7D2ACF75C867434DDBBA5811CE5DC72A5386CFA268B932A3D401756EAF3589D8291BA9CE971DA85CFF31257561F5DB8B4C66FBC35E6CE65506169D4C7B5CC4E7B38B0865EAB416A3150B5A11A506C7E8038927D1D43413664EE2893B686F239B98827D2EB9B8F6DBAFBC7ABDFF46166066F5777A42DCF16A858859F5050C27ACB2F72C2C438F56E57A0E3E4A5B6F0FD45E036B143A455FFD900281CEB3164381FA4544748F520104C15387B30823319C2E3829DB1A445CCCB2192178952D17B602832D1948649C5D46BBB8C219B3F63A37D04FB3D9550FD7960A91435AD9D3D1A56823D46D790AA8611CA2E2F24482341E24BC9203B2803708A17C0E77086987E12956252BDA8C66824EFB2039BDD6BA0DD36D2DC9BC54DF6664D972371BB29F395A19909ACA835B8F3CFEC2CE2FC88C54CD435743924E364B43B22AD7B321495BEF6448F626D54B43525F7DF788F594AF8031A391C44EB8CDA1661B186719EAA2B6A305338B0E65B37B3160F221B854C6256DCF8011EAB63DC65CF30DBAC45DA61586729E85B9BFCDA5C85152F864072385760A9E445532D0322911324A841C7EF10D6A065A59FE65A15E631BD4ED76886FD0DF5C5BACE29B306B6987F00ADA6EB7E040F39D9A52540578E69A3769112D8BCBF1CA46D599A06695698A8655196C9B5641036519939E6BCB7A305967399001D8C38372F9EDDD55DCB2DAB32BCAF42940EA56DBCB8FBA640F73585B75789BD048C11A4C185CC90A33CA71FF98993D769BC7B460AF6864DBEF0049B6781FB834AABF53703ACA4B79535125555DD7D5D43EB45C5757E57A5E57D3D63BADAB7B5B6C94EB6A7DF5DD9941964B0160FD8C2C16DCAF2017CF1E595F3F26A57ABF7A5CB4DCF1E67151B697A57771B4BF97EAF30B094CC5A617127E98C7450C1E00D35D0F661F09739A9297D92CB63C715214E96F32F2CF931B9C8543DFD4857383AF748159110F019CB789F268905BB840655002DB384133238775E0D384E891092C3BF8BC2B9619F1A263D911E300CCDE3CE2639AD9E20D023EA8906901408BE0996924018302CD7D1D83CC36C30F2F64E1AC3EAB0C7E6677713A547A31BBE5EAB8C7F4DAAD4B70C6B55C5923DDBAA84E108F5D5429EEEFB65F9B701CB1E5F3D8D2B9B2D6EBE3AE9CB65E1B7C8AA5BDFAE04DA796EA6BB45C67B5F1611B3BA890EAD9CE6A64962E1DD446357D17358A81E4DAADAD5349C63BB05BAE4B764AB66C4030F764C3D767EE5FCCDF19CD0F5358BA17EB623DDEA08A1232C95C3C8B4DC9EEBD384430442AFF4D8E8056DD471D74DAD1A55243EAB1C9C67854A454D9C32967B171715EEC76D932295A252E291E67F36241331570FA317D3AAB22C848599BE635E77B9835CA2D9915C90B9907A4251FCEDF493C5492A6AEA48634BFE0E2A9FF93449DCCA2781B1336446B526047E66592EEE52997A4CBE4255A6BFB2894441CAF2AE7CD845626A6CCE297387D226DD5B223402B68658244D1F1EBFD84418F1A54149B9717779FA65717B7D3FBBB4F3B14587076085CCDAC31C71642BD1F7CA9BB6A36BA0A7F9539C4D45C316948218A149ECD2E8026BF7A8F4A18E9817B4876550E0F0BC12591057085A13694CCC2BA66282C300FB285BCC2B8E0DB822E6515F384BA5694006FA5879252D053ED0DE966E9DCAE78923BD8876C927961D70AD893DE05AAA0F792B0A1573E9ED40C3DE3B4348795F20D44F950763BA85274D06C3C8177BBAC00A5E08257033A0012FA6E2436E2FA4724B5C3AE0294F6E949569D0A2F5DB6022E5D7FCD0618DF5F3247998E35DE2DE9006E9AE75F305498BE05232832EA2435C79FE9A357320A91CA02C1D08C036610503D08670E47334E0568512F52508748FD9B61A1E560EF10D476B94F51E804BB239085F85B0F4A0965F0F083200BE9868AA52C34785C46062252594859A8E58085E4418EDB58CA422DA702B4A80B9F07F2700FEAA2D0BDE2E3010F7D2DE68B8D7722FFDFDFA7B3781DEFE3B38BE5BE3848398D76CBE84976C64F483B423852D47DE84E7C6A866C08C253193C1A03915924E90649C2C11A73C96916789E9B184CE8EB5684A649DFCD061E7DBFC11C8026FCF16D4C37A21279424121C6740FB170A870B01C0D9E6CE81478DA2E1B3A71B187406C259F9A39011AD301F0E058E118223481C31B3434E760CCE1A679A8C704CD8180A6ECA6D9B84291F2ADF0A5E4865F1BBA956706561FFAF291DB982B690FCCCC439ADFA985870CCF108C3B75BC5A0C3686C16B1B048931B0CD859E61186F6E223001775B117F46DD37197D24AC3698F7CE13A7468CECA8D15DFB19F588D604B00FE861EC1BBCEA9EF6E458740262DFB2138E938C81401334B9C1007705C31C64EA70CB9DED102BBB6936AAEA4B82E6085372244853BA39D4028703C670A08F0DCC1D6FA1976FAC0EB8A8830A8B0EF156778D75FD351B68E54553ABF32E4AD684684CD7A0D309367570E7A060EB4DAAA9FAD81FC09C445AEFE0C262C3AA149B32502CAF3ACBBB922DAE54F52D03E0C947146D4DF32AF864AEF090DBFC768A57C117FF967423029178B00A49A50B0ECB09437A31B413AC1A8406EF14AD5A6E194B333C88839558557327446BBA38ACCA079FC4C08045A26410505FE2EF049C58D05A56BDCB8D0975A6156486D980E381582C8EB4829DF7AEBF53B455775FF5E32B8618D5224EE5BDC60331329EC7EA56AE92AA95C3148ABD877B2F9581F858072973A1D7C63BAA0C8CEAC05D4787A8A29B664856C46FB174732A3862D594FE0C0F21709E42A56351F43843834684E8CAD0C0C27C7722CE51AE18AB703CCC939541017321442BBA3A3159F92E8C2F2CA80AA1A72561E790F6B024564D5F97174CFA6E36F6EA6060962725356C0AD2A2CEE1687E91012CD21A147587C7BBBABCA0EC759F20F4BCB6D02B04C5AB8C7A373C90BDAD3BA63D3BE0153D35D677E12F9B3ABADED186F400329D9043F2B705B37E659BA6B33D22CD49A41D19D4F2A063A6386083FF068618177B5880571117AD1368311DEC11560C2FEC5A01477AED0355BA2B5648FEB6D0A5B850D5C16D2A4D677B449AD3F5A99E05181BE3E7D1206E0C921F829A5DF8207D15EE91646CA69E1C910C9D168AF0644C139B607BE62C508435339ACB017D526E73146D7F97D3131D9F239C99657C3A52664F4AC4DBFADEC4CDDD3CFF16FF053DB1FA751757E11A77D54307229E729AF3785FEF347CE3A76413130F9CB1123A456A4C583589141A720DA0D3305A22838D01D49A2A6A92DC14309C1240A1092624D1C002D16354EAB5224C085E82437D129C6E72DF840C5A8AF4848F440A39A107D06022EF4854D0871214BDA30B1EB47B348719F7718296D4A40BC0680B9148FF580B718296D4D81B2B50E3CC4795BF5A07D16292B5D484ABA81239E5131900BDE6AA97440A7B3801EE2373321CEA2393ACA526DEC790E88919B414B993B21239C5395A58AAD2236A905C45CEAF21AD2A0F11814D021F7C07DB438F7540EDC11EE306E44FBD0D2B4B1FE4D15760ECAA1D6D79CCE0671FA1D167F65A81A1C75FD200794377AA20DE600FAA21D2A558B9C292057A040BB013CA67856403A1FCAEEF4F63F4CADD69D2043A8C69D4100302F29E31194573E3110EDBCB59D78AC0BDB42B827D2359804A6AB5ADCE51531A5713BEEF067CA1362D1F5316E00D9213EF115C00E691C248D612EC824D724454083DEAB0A9FC70A3815379EC60313C55944086A026B0076698D89E2AC060214095DE213608A8075480B89F1C35D422B7670B149C12608B368625D71155144BAE23AAA7C5CC025772E43003C19E2D68A8458037666119B91E6903339A74CB8C22C828CDD2C99E5F9A588100D76CA20B723D358C2F284F1864E963435CC94C6C6915027D0A461AC6C3D3A045C93E370076CC344D88360C828641DD6494E8C3BAC910C4DFC4B38EE40672135B3B3BD80E486431C882300942C66B7F4D18329BBE19116E595B28035C011C330F88C5F5CE282416D745DD639C9651B0C471C19D224E8043E233C1903309E624624313CE49EC9E89D8D347706A9369706C218061064188B86EA9C310715D52BCDD691A79C890F17EA8524B30652C1D6CC47572CB12401D492B75C416803D16215EB8AE990579E17AA9F61A5A50C7A085FB383DCD3425074D6289E0D6948667D6D659B75C82835C004C328886C1F5491D0F83EB923A0A8369088C96E62376E51F714F18047310BD0AEA700EA2A302BFDC6D11C141B67D83AD35C1D8023A5EE9E1A48C42E0CDA38EB0845D8D47A69BF616BD343B54F7E8A52987DCBE36BFFFDEDE8C43AE66C33032B9C72D0EBDE626B70828FCD6AFCD0DEC96F8255C0A86FC838A6BC3BC2F0FBE38CC7B05D13BA9DA0BBFAD33A0DE2253B100BACB8A345EB8CDEAC106E1022B6F55C1FB7A2EA6237477153419B5975C05634E75CD55301155F73C4D6FB69A70DA4DB208772F6189A2BAA029CE79E48AA62841F0EB7E26572B5B9A38CA5B80984BCEE8D6A0EC33D3DD1B343549CC2977E85B87AFAE693968E353575F750BC03DBD5738B04B18B97165B0ED676255AB6E67F96FFE756A4F8357860CD8A44796EE7E913FA3FA045471A244CF26E9668CB243ECDD187FF6B0D76164D6404762FCD9A2D87331BADEA1EC907297C58945CAAD95C0FB2AD89D03805546D713B88EE92E28181F3631A2DAFA890DE0817400509A4B0BFCC8E3D716F85E60E7B474D442F1A47EB49D1E8AA769EF27F3E52ADE44D587F713926519BFEC0FD1FA367B8AD7BB3AE1367A7949D2E75D53B2FA72367F8996B9E7F99FE7E7677F6DD6E9EEC3F96ABF7FF96D32D915A4776F36C9729BEDB2EFFB37CB6C33899EB2C9CF6FDFFE3A79F76EB229694C96DC212AF1083FAD699F6DA3E7584825559396FE9E6C777BA2C4A26FD18EF07FFAB491B2B1570078CE51FED63581A7FCE5A1ABCFE3D5C5F2BFE9564A7AF35A2CB197AB37B3C5FD1B15A9869BBF930E6EE2745FF43566C65D5D9C10982FA375B4AD6F5FD0AB1797F929BF69B63E6C52EE930844150DE6F41E4F4971AC0FA777F71CBD36928225C8A7D850E4DE0BE7492A9F12CF112F705E1CE58934CCEDE2207B4ABE27CB6212FF7E488B4B4670BD45F6CFE98E30A2CE7856FF516D5789F3A29CEBBC2A28294090D280EA4BB4253FF7F196FBFA106F77E5BDA8C336BFBE038FA311D6A40A9834BF6A78A009F5F089BE1571F0936AE252CDAA7A3FE1C71CCAF2F5E529DAC73EA828298CA8180E2AF83187B29417177D505152088F8AFB6DF29CA4D11AEB1BDF7248861B4B4D9D3CAFD31B63C0D0546860E8A71F503A064682A26C57DA7DB1CA924F49945ECE7872EC777B6AD70B98DA35B0218453BB3910104F6F1E785ACDD723B00E94A3DF8169D05CC170B10B3A11D32C92845AD8A43095E400432AC993FC2A69902754D124F46C1334707031084638F40587968C01E682968325600B8753B00A145E241BB5809131B009F0A2F848352E26DE22C0FDA1CA71AF2E7009D60572AD0BA7B48853B8615C8239BD591215B79E5852F5371B2A797CA3223E2F4F887EB63450E03E0A494760AAA830D981A5429DA42E864AC34849123549DE8BD60AE1B2B0AB123C75128B7A5129B1697ED5D43342A8A1FEEC4B9CCE12893E4D09A055514609A93D9B5B14D32ED6D688E911D33E986EC9666CB6471D4C463B4C9F82C158CD234F2F0248C4C4818414ECC4B88348319F2D686D0923EE56491E608323C67C3F02030A1FA52E1C3D65C804272F4FEB3A00A98149F1AC820182580793D4B7F3A51C2227CFCB3844FC10B5E510A9028FB878438C87E814D49A22FA898DC8C4C818A836BC283E464D64145EBD611153D4D46A8B0520C825D91EA548A0531496740E5992B701383C517E36A735CF1692F3A2FE66E109799D658203A4F872046A5B85C10E14378DE5E3A2BA1BE04A62A749F25D23726046EDF6005551A4837BF501C853F8435BF4658A5F15F5C410E8D79F3D5789C58C111787C5C79E2D1B8A6117DB66C4F088611B0CB764FA510CBB187F76183E190310BD0763AD7F614AA66620565A3360F51D19C018C46E2FE134F3090E1164BFBB589761F6ECD84BE9123DF4BA3A4E7191A5CFF3ACF04C0A3E1936C1825E92AEC83A50A2D67C3E164B11476A57C66275F7CBD95EACD1088BAA3AD55F0D22F5B049A1D47AAB7B24EC0C81AAA1899E1E1276E6882E1236CDB39A664A89953429C7604F563077362947988F300F04F3364DCEFAFEB3ABD56909F353B03DB517FFAD766D94C44CF6D83404BA34426F231A9C81A78786B7C269CDB2B4080BC29D82AABED9B80F0123F1540D443D96BAD809E4A3501CB599C80053AA86A6781EDFA8202B9EDDA83EFBFA4A6045768C4AACAD5D4D1E6E476DAE8D70EB0E6E6DEDD0F2703B0EB3290CDE4EC134C30329E27AF4F32EFFFBFEFB7F91156A45EEBF3A9865484B8C06CBDB76BA8DB898A23C3D65B85115CDD04EBCDB68F6B01049159FACCE7981DD64BF1FBBCDD9B99DA88A136900EDD9FDECEBDDA7ABFBE9E2E24B9FF82E0378CAE086037BAAA8B1212E2564A3C12F718AE45F901EFBFD08700045F733116D17D3ABBEC69D064314A406168D5233EA342CA134EA68C042E5A883F4D8EF4731EA8866EA647958871A765917B66E3D0BCA51AA864B1D88C3B352A9520DC557EF739B18AFD8A4D35FD1B4B6BAAD678BCBB2769C2DE36C39D2D9D2D2E29C3E8EE0B02A1FE84A39B8EDDF8109C005871FED8051B219553204C966B25E05C154260540125D5E4248A2899EA70E9855AC78EA8049EAD974E2A4CC683F8D52C6A89251CA9820698052A62593939332A3DD69EF6BECC4E5B45C8D76E6A801CC2A19B606A08E7099FF754A001C51773684239AE82DFFB16AD8A4DE1D7444B68CD6E5285B8C2A19658B1E4703942DADB933F3C7E17E1C9BD2F9D40F993F0F497E46CCF32C364AC7E450045EB6E5F32F1291FADB11EC352B39DA89ABB9AADFC9FE6F53D940B4EBCFBD7BCE6AA6B91836C7CEB4D61C0135D35C24B609D34E4152D7C767F1A7F95CEE3B20D40CA4B696023E64B41C7877A64CF8916ECEF476DB4531FA1D5E77A95AE17EDFA5440C7C1EBC4C1B2F1F1CF3511D1108CE3751462074048496AF88D44070BE23620184F17E8899FD11D0F8F0B43C8EC3ECC8A304C8C49AAF96C7A903468C097F39D935664C3F715EFAB56A8661D2343805825F8451959D84BEE8EC026AE0E017ED0660397A436A845FDFF06B3330CAF1986FC330AD6AB3B77E8D3ECCE21EA166E1DA412968860FBA0DC824F4E3DAB98D08AB5EAFA43824ECF71374F12850D0A18BA76A85BB3D849C9963D28E7E65CF024DAAA3493A92157ECBAE9E1A10CE16CA08888E01D1B2CBA70684B3CD600188D1E563E1F2096394785A24C7618EE48B13203201FDDA97CB6758EE997E2D926198230DA680F57118F5D6C1FA78503E93A3B748464C74EEC8381EA36418060331E65CC28881AB5745AC15BDFBC22184D87481F81A98843E3D1790D7C2CA48184818D67E63EC340D707B907181AF1198B4812C4D9165E95105AB6CCF4FE1134066C441D73868CF3DE1131AC516072762045CCD2EA3B4F05E79AB0394949921A0288E8FDA5516CD3269655E7FB551DC6E46451F6A57C9E76E142F6D8293EAAD87479A677582AF240C2AD3DB545C0D1F5D54D7D0F8D89EE06FF8E822FACDF9E8EA8EFE11954BC9BC30DA4549CB40BD68CAB7AF5F72C78F1C32B5FED89B373A4EAF5784C7F2563B9F62E7DF5E9096ACE4F78C85A423D0A55A5475A04CB9361CA336A520055C99012E2977E3C9E4D02C5FAD6312FD5DA60CC601A72993DAB3F9C123EF08ED8F11797D23AF25838D475E9F16DB302C297AC0C44FDD61640CEC27BC68CB9EF03895C9D08FE6741E92C536E1A9549F8EC00C518D4B0716485DBD93F1D1A6CFB11E66596A86205F8DBF40BCFADAB36AA643E2A2957FF021694967D1217151576643720AAA6ABA785C5C07F328A3A4CC3CCA8AE228C257F2527865B906BE137DC877FD6D4813C36F161DA48578F1CDFA08BD7C87924BB0D9E08E539958F3D5BA65F2513F2EC18A5FD34396480C2B3F5AB74B72F9B0DFEDF82591A21F8FC084D1CDD56E762568131C4C996A968B8A6D1560697607B87DEF06B1A75C4B0A7935597C0E72DC1DBC40C6A5F96E5DD75245DAB9AE1382F4033C3FC6A5798F452984E4C128BF07E905E46F6193FCC702AA817EEF7F47AE9121F6B6F72843461932CA90A1C890F676A31B1962BF583493216EFBD07A21325EB7325BE62E5604CCD7719885AE9A98C1525747E09817BBC5CE04BC487DB65FA832D71280F5A59868D94A78D1CAA538B5545EBC4A89D6FC0417B1CF0E0B59A629F20A5448B3E72748F29816B6FAB9D9C1D2966FC40FB1B865A73FB49719C47A9404027EC9298815C9890AA85781AC49497CE0FD0A64553E2B2CCBE740D6A5286DF04E85B0325939840CD531AC5805D1F023AC5947D1308A8693120D2D2D4405D1705A4BD1612C13D9D787FCEC5005258305A2B234BEAAE71E4FE2B722B924ABF33C285131ED08AC7F0DD73B30FD9916389DCFE9EC752C71F4E413220E95B56636B16C7539633374B6B6A47258B6BA9C937161EB29E809E6ED383F81851332D012AAC2F898B1EFDE493752688A958AC0480A49E6346749345D09FEB0FA9BCD998E1931ED88591525E2A10E26E108D4961A051D68ADA6014E4AABA377160538C9A2355C5535D8C4A722AACFBEDB6E0CFCA47D3726AD67A5CBA0C245E78EA8E817152DD90C0C2A5C4C067B549C82C140DFB9F75FDF40640C97947051B5795794011693E577EB95A44C8E4B380265ACE271470BC8BC7AE7D563C948D0182F93822C70C05AB8B4235831167C745D2E0E8D8F2D2E110B3EBAAE0FCDF9780A82BE902469E18AF75E132084CC56866861A56AAE4BC92B439A62BB3204490A494720F6D5FCEE660D5635C0750D46D909D955343184B58DD524A4F6BF7EA939EAB87E192C47DBB3FD6B8E3ADAFE961C3D0595308B0EB994F17D051EA662A00CD092F840D545C457E0EBCF3677E316ABF846F2C0319FADF409D830F6FB116812C54875F1B67C59BBDBCBF23517A5C949537CAF2FD06197AAA029DEE214EB069BD4B36AAA47C9E929FB7194C4516A49DDD5A3E4A2EB6C46E914B4DC225AE6AF28FB894E9888818EC30A2A205E9610B552F5D54A2941A498CF47A09270BE76711ABAA8DC4921D52C94C55095E02D85901A9894BE0F8C96DC73511443E25E5B67EA4AEEB9087073EE9D84F82EF57A80858A829289205795D61A2CD0A2854BB293EB185131ED1824BC9AEB9D5C7AA12D7093F52C4731BB3384792B8E1E20BCEC2B6BF1C240C35627253070B6B676D8BA61AB93767060EB29E809227372175D7E5EDEDBDF8E1032DBDF400B2BDD8F7529797F83A6D8EE6F802485A42350106A7E77B3BF5135C0757F83B213F21DD3C410DE78AC2621B5FFFD8D9AA38EFB1B83E5687BFB1B35471DF7372C397A0A2AA178716FB13A8478C6162063A00EF0A2F858D132D0EBB5C5779B4D8E3AFC3440904BB288D3F01CBD4AD4E8479B43D07264FFFA9B39959BD759C6D328BF1C816253E1A6AB476F49F5EE0FDE16030ABF635924858A9A0ED7C3A5FAC77F872AA1DF7D0FC882A1D2EBCF7EC44B380BA4CB8F3D6B790A30E7D77347809D06C0DA7C8E370798F353BCC6003B0573E7329BC5BEB783411A06860E520E1B1E626B3E4F57D1662ABD5ECFA798DB01D3E826DA90D9BCE4C9319F2D68AD0ECB07C1C0A9BF595C15834E84381C549965444AE58F630A949ACFE6B4F8778A387A42928505061E9E7739898F5EE876BC238EDDFE73BBFA073F97E5F2581676F6D4ED302BE6E971731D15B251BAE2D87CB5A44424FAED210288D50996F4F2C825D7AB0C2048532C294A4B19977516FB703C408DA69853A44F7970D49AAF16EB2C6846B9445C800E13D89F4A40B7AEDC76C398C7C37979CD7C3F82B520AA573B580816753BAC0279552C58517CA29F05CA2869A11626C5B38A4A7D8BF4ABCF9EB72F911355814EBD319A5EACA049F1AB4250FE423542AAE77203BB7913EAFE922AF443C0781A8AEBA2E1EEF536D6855C459057E51407DFC35D2450789FC379F31B1345A8A2490850416DB64075D46901AAA1C60C540F4D0C5011B4400EE57FE14D1FA8129AE857516315099534099EFE17449C840ACD831C560B73184E75F421DC210BD6DE12952C93D4B3CBB23485ECFD95A32964487C3485465368348594958CA6905535A329349A423FB429D4D2E65A690AD9EFACB998426E917DED6C21C73A0C8D2137EAE6D690237D2B73C8AD0E377BC8AD2E1B83C8BD063B8BC8312AB5A549E45C8BB14DE45C839551E45C8B9555E4568B8D59E45183955DE4518FA561E45193A165E45183A569E456938D6DE45683B971E446DFD43A72A46E6D1E9DC2A999BBE74396CC0EDE6FAFA1740C4ECF28CAE25048C89C906E77D0AF366784C9EC121F4DA31F5DCE1A63078D8F622756394E5DDC36A9EB77797D8B0EAF2401EA04DF2393D5B04B67E6AAEFA14E642A8E63F6EE246E46C8E111A47184D8116AEB360C1D2187B7682C466840FAED62B7CB96495191ACE4EA6831F3DA52308812C5E446E276A181559EE06530A5F838CF0EDB25306A18266DA37EE5CCA28D7068DF22DA3EC750B845ECCEAD55C816BC75EF27E0309A8F34EB7F21DD6926ACF26C1256483AE4CB64A4B9F4EC45E85BA3E0723A15595C7CF21C7DAC79B620B0B77E7C8050CB03D2EA7D94A4F156CC420DABEA0BFDBDAB3FE4C31B3DC74446C5EB5D53AE94B145B7762FD11217C344826EB33F93A7784B5638AFBB7DBC7993677833FF1FEBE93A29B4429DE1364A93EFF16EBFC8FE232672F5E7B7EF7E3E3FBB5827D18E148DD7DFCFCFFEDAACD3DD6FCBC36E9F6DA234CDF645D73F9CAFF6FB97DF26935D51E3EECD26596EB35DF67DFF66996D26D1533621B47E99BC7B37899F3613B17845D688CADB5F6B2ABBDDD39A1D76C6C0847CA0FCC05DC712E4EA11FE23FE7EA600EEFB8958F63D3C05F2867C38FF33DA2E57D1F6FCEC36FAEB264E9FF7AB9CAFE7677787F53AFAB62639BE47EB5D2CD522D1649CA90265919DBF7D4E9FE2BF3E9CFFAFA2EC6F679FFFF1C814FFE9EC7E4B86FAB7B3B767FFDBB755F9BD99C68F5C36AB30C51842FBEDC1800E3114444236FDE308B8F790D5EE4A643583E1042BF4BA8309B87020F80DE66295254411A697B39AF03ED9C4B9708897496968FD8BEDC0D634AF17E16816CF3A4E6F1E28E008A94D6EFC3144DFFD4AD42291FF24F96F6AFAC6430E6B52D311C7B48BC980F3E6414891526D9F38C993A26C486152DEE4E77A9A425DFDFB5B5BC4D4EFAB2888BE7BEB4095BEA8623A2EC6F01619B1C9D2F8351090AB5177135CE0F52A23A90563CD1B323CDD4080596C89D17DB74AE28D1761E321A13B1B4E8382DDFA311996A66C60D9522318A26D24601802E14D96C4DB5AC99B171875F53D61E3290F088FE23E706790ADF6C9DC510B5F2F33066E5D3C28767384F0845D40A250DB56F00F897DFE7D2CC75655E5836AFEE6B9EEBA5949BE2CB514DA49BA2282BBA1F12DD1D03057998BC736F18E94402EC6F9CE0EA3816608844520ED944BABAAC2215B34CB52EA6A2545D659640D3C01BA4E345A042FF89EB5296A3D30888DB42F82B8F33F2E286208FC08D2F5369A3D2CDC1A440A065EE10903176A81C74D6227CBC956FF184FBFE6889FD3042CC6CE7EF24143EE3D780CD1768DCB5ADFD6C7A3DC156E4EA123755B56E5AC6CF3E23F92AA3DAE59DA22DCFC00E4BF9661C99ECE4AE6582D5C97B58CB55CAC8F5ABA03158E5ED38A5C2CAB721EA2BCF869CBC5DBA839D91A74F6B72B2DDB01A11FACFCA5254BF654A465DB32C96B85395D780818A6B0C22E3D2129E1D69CBC645040B5EA6ABB9AD517959C0055DE7532546E5EE8AB6B721992B26C5880286683D99EEEC21BB7C6E3CCDF480B38D01E03E7AF3D2E9B4DA1C0CAC37BF17EBD8A962BD6C808B5574AB4CA82B47A65B979658C146A1C3981A4149AF6100185ADF720B05403F1FF21596CBD8E20D888E6C5B5C78CCD510284440472DE41E100C32E4EAAC630D69081882C0A3DDE8902D256503402DABDE2770E151F9F514384C72C3A181BA5E81287F571386D1D16678F5E2CC417DA147601E1D2942C9D1EB2C49F258C2A72E4084321A43C5FAC48EBAEE3BE04898B68F09CE00ECB35EF89C1ACF97C2747DE9C1013846992FF2479F69F284C7B3C274BC5A196260CBBE1E9640329E2729B9842AA0D576F8B0820DEEEDE12B349EBC44C3C2AB9E1595E6C8B38C4E95981F6519F9F9D67414ED05A4DA3223889F31C8202E59B4EA0B26C1BB387A5DCFAD4A94389B84E1D2470BEE1D4A1A55B983A02ED7639595F89746223729FD2E858405D34F0999C2AEE84DBBAA22A1CF8A489D0D576C713BA636B3A9CF0FD5393D164AF09879C0D3CDD963987BD3B6DCC3EFC4102231EB2C583335226DEBA84061F69B590D0C8632486129A966E41420BB43B38DF2EBD0A68B5BD093C4E62BCBB59940D2CA4B987D47CF6260981D057329836B938CE077575027864C40C57EA47B780028A67B5A0DCC8DB5940563CA40390177F010BC8AD79DF0A28813F618564461F9C811C488A37A8E0EC5810013033FA8E149C1D7D280AC88EBF058565B6B89CA07ECA092B00BED68465461F63020AE0EF2D01996D861F8D0D0239253DEC107E66BBBB0EA5BBE14E44B82B952E1404DBDB89442335DC8908C2C49D90B8CE76A52178BA9C9CCB9297C7910AB7CFEC484358343B52110C3B172AE23D56671AFC9152673254367AD261EC22671A5492BAD3110F28BAD008807D7E61EA44415E913989482640B82915F3451C1CFAD0706F0C092D69B0ED454B065E775411EF70AABFFCECB19AE9EB98A5ADAFCFC74564636EFB389430F7A0D965B1B270D8236D888BCBCCAF5894ED6084F501D73CE24DE19E1AE7803250782A238E9282C16F4C0E6312CF2FA657477383B6BF23C8C72720143E47530C55E583BAB4A28DDAA8F5D93BBA9F7DBDFB74753F5D5C7C1921896FAE1ADF05CF4B070725B655690ACAAA7C6050AAD76BE6A064C25E8A9E87C7D9BCD08753019B1FD3A7B33FB235E4A4C8434BBE61BEDE1ED6FBE4659D2C49CD1FCEDF49FD6A48417E93821A9FC013FC278920991C711E1F3989D6A4C06EBF8D1239C2F9976D922E9397682D7543C889CC3A95337642898B29B3F825260849F7508F03544CE90BA240C7122EF4A91A1A3454EBE5C5DDA7E9D5C5EDF4FEEED30E8587681314E3D97C1C0638B0B8BB96D65CBBD010C26EF6028ED2D9C8C63346C506E7962C6546F5C91C1356E00A252880807B2812D04D18731C58620FAFB14BD9309B2341F05A100CA2B3B020D47C3C19810073545B27BC69D4051AA8D39FC0013EF1DA0CA2B441508C22F3D51C0F82515B10A2DF5A41031214061D1A200A8C15124066DAD6D60100AA7692E157865C731A3A150284DA381D2324B58207BBF1C17730CD11A1E2AF4BC51D8083DD58611002476D11A4BDB01FD3487C9A600F1688A694D60A5CF07EA343A78A86648F9A8075F722557498092C56FA434A7F82C50E22472059AA6D52062570841341B208BBAB8D64A109F67881684A69ED4916B0DFE8D0A9E209D9C32660DD5DAC5EF9562391501CE58AD8A1FBB47CC8EAEC62593EBA328D76CBE849F6FBE5EFD51C2FC4FA134976D8EA57247147974A9984C5456906173CEF540CAD906225929A7A05B03009AD20451123041D3534FA8B155C10563BD4DA8D10E22C1C3D4EE4E32BF590BA1939BD21040B3E850E141AEFA76D84282BEE0024F509AE12223A3D259EF72AC6B3F968050E3BA40502061C34061D1D284A8C2D22EC8088D5D8ADBC1884BDD20B807AB1528255DA018AF8301EA558C1C20335C32904FF6087544CB212324DCD024A98845670A28A66828C1C12BE04CC7BE70F2A6450DA6B5CD71E1D3DEAC2B9737AC3592FF2C80E3A7D4B24E68285C1FE11701DA3184BEEFB31EF21A16161D0E1515F7E6B6B3749536B379BCCD595997A9B59B3AB24DFB1A9F79AE967CBDD666063A9FD5D252CD40D3A54CADB8E96FBCE561B4BEA8ABB86884E74048547F782A32F58D8898DDE21213D370F3D84CE1E48E0CF4697C711EA6F9DAC95F89B26403BEA9476CE3440316DD0E1C5AFB498034A71B3C6A5DE3E3005BD5ECF2E97E4A184C7F024116535B0E855ED76F18457DBC91A9CDE66249082834AB16B6FE9EE63B5F066BE9B2B2E0B79176CAD8DC40AC24707BF94EF820CBB5AFBDCCC2EAD2FF373540E46EA319FA7B2B740D511305A3E57A5A9BC73D0989FAB0A0719A7635A83878BEB69AA5EC1221EDAD6AFA6039EDBEE6B25DDCFE96DDB55345A6D0FB0D00990B0B8E84974F4860C3BA17164D09003EBB5050B26804A0389E2E369C141E2A8B64E381A571F68D09DB30C8B08DB039B434786DDA9B79E05057B8791B914A8F3BD395DF56CC967024603C1DAD4F2D54387DBC2700812B75BA8969847AAEE11761AF79CA5603A79B8F57DEB3960FD5DA8C13ACED7A3F6EEF33100AD094BC635A2F97A32904202B01D2B8E0AF76F3E240DA1C7DFB7193DDDF7B8C81E81F845C18FC7147570348A0F3C81B76FDEC8340672224666A24B759D6E33293704FADFB13482CC60F7272DF0D2EFB66413044B071939DC56AD8AE8E793030EF6A8023A98CA48DDADC0475D6327911B727D79952D17D18B4E17CDF00066C17512571727E7B884D3D15138735DAAEDE8D4661E812DDFC06640A43CB7C9C67BA38736CB8FDD1C8B704155C0639FF23366E8E02A5E47681554AA7ABBD16855AC3B535CC931FB6ACD463F9F3CB6EE9007DED051563E61D12ABED4350747D8EF877489F98B3EA73BD2BAF3B38BE7E76DFC1CED631A8FF1F290ACF79F53FAFB2E59474FC9B22646BF7FDE4DB3CD4BB6E382397E89B6A4AE7DBCCD31308F371169F672F7E1FC62BDCEFEE7E74D39F6A4017FC6DB5D925F3E9D2F5724D787F3A76FA22B9D92E25D6D6244EEEC89FCFC9C4A7126273A6A5244476F9AF99B40A243B77C18A8A1A825C145B77369D8FB493D54A658F8FA52B672C4C288855219FC205830624F1324768832333CB217AB2CF99444E9E5AC26B94F361CAEBF6CE365B22BFAFD2FC6E4AE1741C8152F634F6F1EE89C236537D11AA1F7EED79C9B513E187FF382C61045E8088D4EA0314489EA090D230ED1FDCA218A55F40D080F1B840B15EC3F178BE747B946A66AA27FD713451F5587E815CFAB6B09A2AFA93BF6BB98E562CFABC73561D3CB0EAD4394F4235A7F54B40E51F9F8A1D54C3B9701DC87A879C24F3C9EA2FFB45B6CA3E5EA6E95C41B479A36433844713C0E2137844394513E4368C49B3A0CFE206594F85641007B838BF31FD44747E9B9B8E7F266859B76E08BF0C60D421E830F365D292487287347489E342487A843FC2069CE9FEA86EC6015097F7932C814E3495ACEB256D6D372781E7FBB902C2DE759B1C2AC69166FE71977347FEB8558824DF16F095ADC1A8E835522231C4F118E8355203E70345BA571C1214635221F410C447196A54CC0A2EFEB2CB2991DC2D4B22D1E7C7209B019C5FD081B07D8FC9062393C6C8C585F9F761FA2840F3DA98408B0C76C57554F1F8673260BBD0EB00FC749285B1F82B9CD6885F2212AA411E523CAED503E44FDD9BEA66B9EEC1DA2AE0B3C1118726DB8681B5E0F51E20E95D7439CF7CEBCB65A58D46FF10E71E6336FD21EC7BAE2D8D5A038E8431441E3A07B0EFA1065E1D10DBAB9437D14B0E2F60E4BF0183677DA7050D9EDEED8A36994DC239AC2A1E907540956AAB37E1A7CB0329C0D89D0B7EA04298A8FD57A936CC988AA913058F93B22213012062B3B8F0909E62A6B14C5A201C412ECDF006ACB541905EF8F3DEE3FA098355547433EA8305DD86D3CF66894849B2A2D1C121AF236FE8881B01818A2A8F4C580298FAE66D56BE8839496575934CB423AABBA67FB1005D409B07D883261986C2F5B3D4A196EADC2C41A3F82A54A9C5EAFA2E58AF53205881140563E0BD2D495F1055107388DD27384534038FD685AC18845B5037A90B23BEC22254E597AFEA07E4816DB36EF77D3A11BA29C1C876EB032C97DE84C2DF9C5F5702DCA5C8D39DE71BE6B6C75BB82E11D404421CFA2835B6B2AC7387B5AC1F6AE771110F0C5C810C01BC0FAA22D1B90A5D3439678759FB1DAEC7BCF14F6B782B809353C5D314EA871421DF1841A9E061FE084321A96C58AA0E43A1E4D07CB99F9EC239B989D700FF99437C25346310DF19253CF5EB28A6985BBBCAAB81154660993633403C6C9314E0E64728C2ADD8D8D4C3C81016ADF76E2212CE21420DBC6FD5F96FBC313EFA7C4FDE1C98F00DC377D9AA08A0D324801D14660C442B10B548FF0F58B79E6F9FE852D3E8628C2467C74878F210A595F7C18C601611E361FA2941D035D85931D830D74858E23FB927A9841141ED1F63FB3136D0492BE0B2B6E4A0F51318E537A9CD2E39446A7F4106D99F6178B35340669C404C775E5CA6069B6E5C728983E44353378A60F5110F831DD74D95789DF41CA82161452E91610A8B6014D86F543940827C2FA21CA055FD61B863A5E0E338EEFB8221A57440873A2438EEAB063984F4366CB3CC4824820E91FB47C39CC28D1E34C1E67F23893C5993C448BA583B7074A440CD262098FE6C52ABE71DE2F840588D0C856E2EC576338445D358E213F864394525E6368761C325A12A539482155363D241A798A6D80B162F710E5C980D93DC4A9EFC36EC383D071B9F818A88DC2B43F282865B2AD2093E1FE20A5C1C9707F90C2C197FBA64EE96AB9384801D1C202BADC0F10A8B6B41F50B37E88D2E144583F44D1E0CB7AF300C68BD5619072A16E7C585F5D117A2B24D53C1C1843CF321CD83C330EAF0594BE799D656DCE318A9F210AB7113FC7839F214A683FFC18F1E7329BC543BC9749B4D6F374156DA6CE3B31D3E826DA90A9B4742CBE3A2C1F1C6F800BCE3ACBC2F58BAE6EC5B9E8876E24C4B35DF6A5853D15CBBBC9D296A575792EFAA57569F343BF7079F39D35A07C2113985B5A0EA5F997D91C08546FA6795060849A43E9EA410C370AE2E34A9661877C90CB7BEA2CCBCA0B794B8145A3E387DAD22D75C7F00CB351778CBA63D41DA3EE187547DFBA63788BB251778CBA63D41DA3EE187587BBECBF7B3E64497ED175807EA74594100404DCADBACD211519BAF87EF9D9C245DCE67E2F1DC1E1ADFEC611E44770783698DF08C2ECF9489AB77F25EDD94749DA185B84E0EFC976B727AA2BFA16917EF12D2B4BCDE33D681D96A9651BE7F1FAFB1B3E99EDF0D9A264DEE5C5DDA7E9D5C5EDF4FEEE930414B136C69294AA62D2A07AA6173717B70F9F3F4EB595345894EA6892A02AEEAE2EEE480D77FA6E5416ADDC872A01ECC0D5D7E9C3572DEDC66A91A8374910FD2F579F3F7E9D5E7D36ABA1B66CE04AEA54B49ED9C5E2F6EB859E51D5B3EB686D62069071421E4D9DD4EE902AA329502DF38BBB2F04C65AF2CCA242AA804983AA98DD13782D3EDF5D19F38D9A8F28E3680E15E768261364E075EA2B2CB041A6D197EBAB7BE34E521B15ED24CDA1EA24CD64D249BC4E7D854527FFF1F56261D8491C906C22D2355358B2EF46C23531C9485D4C0E4D6DC2D258AA4E4887EABBBABF20F381680F2274F58AA3598A487535495035FFFEF5E2BF1BD5C03E86003390494618C8E4D0D4C6476A06EA133340352EAE88CEBDFE68CA43CE9D2055C8A542B5DDDC5F7C364523EB788094304D44D4F0F42B312A2EBE1875A9F4AF80FD2993B0CE94A9FA9E502706D4139A88F484702C17157AB5523BBA64A552A7802AE5E2EBFC62AA5728F57A5AC6599500E2EB62FAE9B35EC973EB6D00C84C2A8CE28F25B40CBAC1BA84A0D1A089C868E44341A68B998E283C2FB07E289250DDB0B8D29B7985371932B8CBEFA0A57D3FFB6830F5EA6512C4A1260D64D0A7AFF79F675F0D444985491455423A222E4DC1CB2E4214C63D9C0DA9DB6AD952B652B6278BCFB03169D0ADD97DCEEBABFBE9229774320FB964D89E647308B55DEC76D93289F25523B0FE7A9CCD0B7691D51493515C8935B938DA455F9ECEFEC8D6D0928ED4C67D9DE065A1C567519C4F107A36E1BB66D0ED1A0DDCA8EFA0AE2339F12E88782C9ADF7C3C82CE976B5232944DAB8021973229469C5BFD96C35D7D5274D78A513E633C9B37EB64C50033D9DA185D71195F946C3E7A77972E354947A8D9267717CA86375A5ADB16AD66BE2A3A2C58964549FACDBBBBF44982B9E80D90FB8CE60DD2787E2A80FE8D724AA8BD16F62C6057DF4CDFE87A5C6684A68406BC821FA00130E24D00190311D1792542A043C1153C737BF8E8860DACEB82E91E75662008C14B68102238511A8420AE18903510119D4BC74109F2141F152213CBDA1E3ABA6181F088FC9C77F8C87C50E6C73B05BA868A2E09296AC648CEAC9A2BB893CA09159C3450F203CFACEC08040EF6F311B0A179C57BCEB64C66019C11EF80E8B52B1ADF7C5477DD8E717EA3AF160762AE562441EBDD151F879BF30E4BB9E7EA02786760DF66D1213149CD12C91F5B3305F7B37ADA0E4A7E20395B4143275DE7DEFA52AD22E08C7807004F73D17EEE7B6F6B09F6F19DB9662D81E655AE1905DF77BD6AA49F75EB46603911762DC1754B31F060BEB6BADEEEA8D35059F32A70CE3C3B6C9731B86846B22A16CEBCF7BE5C36D7DF145D06FDA86CE93A257CF717D1F639DE1B75BFCAAA90F872FBE186F7D4792E24CA9C0E0CA4F2A08C2A55276D7D547A8EF9AE6781096E5CD783A5CC30729C28F3071559FD3A5168178D1C2870EEF6D8E1E47C09E030552A4128676B6ED32ED41FD7210504B0ACAD75BE87912F7633F55DCFB3B5D66D66B3B5E972F131787715FE302C6B6BDDB675A139749FDD4E62367814F68FA644E02D2D9402C85A38436B4CC2AD244D89B6770CBB644E73F25AB58508E46A8309D2F986B268F335804780587FF9463C61E36EBF8D9274FFF8FB36A3FE9FC745F6586EF0433E02C3B2E1BD06EC2185B2107408C167E590FFEF9D7AC5A0B1975DD7496DF58D8D8786774FCAA506B67042A98636FDDCC718B2AFF469E0C99F2A81B6941D6985873C7482A6C494EA648C9BA3AC7CD76CCEF61E040B9257E32D630F315257197440B197FEB32F38E93980E6564F1BE198653D6DE8E70EF9F07E52D2A0976B68DAFB497910ABFA407EEEB36DF41CE7F778D6BBE2EBFBC91F07527A1397BF66F12E796E48BC2734D398BFCC43F37C4EBF675FB6D94BBC2DDACFB6A8CE5227D737AFE27DF414EDA38BED3EF91E2DF7247919EF7649AE081FA2F58164F9B8F9163F7D4EEF0FFB97C39E7439DE7C5BBFB2CC783F51D7FF7E22B5F9FDFD4BFE6B17A20BA499497E23EF3ECD6F6F3DD176FF5EDECA9A1890C82F3D7D8AC9F7722C8930DAC7CFAF94D25D961A12AAD8378B5FE2F4294EF78B78F3B226C476F7E93CFA337669DBD75D7C133F47CB57F2FDCFE429DEE244F403C1B3FDFD2C899EB7D16657D168CA939F04C34F9BBFFEF5FF03592DAF9315D60300, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201506250459099_third', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7DDB6E1C3993E6FD02FB0E82AE76073D2EBBFBFF31DB0D79065295DB3224953C5D65E3DF2B215D4AAB125395A9AD436F0B8B7DB2BDD847DA5758E689C94304CF995929271A70AB9264900C7E8C0806C9E0FFFB3FFFF7E2DFFEDA6ECEFE8C77FB244BDF9FBF7BF3F6FC2C4E57D963923EBD3F3F1EBEFFF37F3BFFB77FFDCFFFE9E2C3E3F6AFB3AF75BE5FF27CA464BA7F7FBE3E1C9E7F9B4CF6AB75BC8DF66FB6C96A97EDB3EF8737AB6C3B891EB3C9CF6FDFFE3A79F76E121312E784D6D9D9C51FC7F4906CE3E207F939CDD255FC7C38469BBBEC31DEECABEF246551503D9B47DB78FF1CADE2F7E7FF7E8CD2DB97F93A5A44ABF59BD9F2FEFCEC729344A4218B78F3FDFC2C4AD3EC101D48337FFBB28F17875D963E2D9EC98768B37C798E49BEEFD1661F57CDFFADC96EDA93B73FE73D9934056B52ABE3FE906D2D09BEFBA562CD442CEEC4E073CA3AC2BC0F84C98797BCD70503DF9F5F45E9D3741D6D09BF9FCECFC40A7F9B6E76796680C76FD8923F9D71E93F515810F4E4FFFD74363D6E0EC75DFC3E8D8F875DB4F9E9ECF3F1DB2659DDC42FCBEC3FE2F47D7ADC6CD89692B69234EE03F9F479973DC7BBC3CB1FF1F7AAFD77D1D5747A7E36E18B4EC4B2B4245FACEC1B414492F7FE2EFAEB364E9F0EEBF7E73F1330FF9EFC153FD61F2A847C4913321362FA7B4E9A1D7DDB341F269A6AA7D16DB4FD9AC4ABEE2B9F3F452FCD5097B5CFA243BC24D34E5FF6982562E1169B3E8FFE4C9E0A080A0D61F8F747BC2972ECD7C97339D5DFD0D487D9A2C02719E3DF77D9F68F6CC396A5A90FCB68F7141F48873234CB223BEE56162D9C2DC82C48098D146C223B6D1ED8BC4D3B912CB4257563B17C75A74C5B5C17CCB905B498D2BDBA9C7F9C5E5FDE4DEFE71FF76C83E11C1273916C10832F268DA452CA2F060F36C28B16EB5372316DB7975F3D0A92E53A4B3E26517A35ABEB36112175A99BA54DA9DB2301F7F4F62B1558F12AD9469BF3B3CF3BF25765A2FC7A7EB6584579FBFF66334F6B09114290887353216B9C70DEC8091B98D7A5FA4479D3727B9037657BD0D4EBE3EAEBB187D915A706DDFEBBAEF2C3EEA8AD6A96905E268A5ADEBD0D534D9C92D91FA96A3265A681B410B9174E64080A30A4AE14E58746A51A9B4BD75FA65FBFC022AEC03762824889B2A524E5B037941402D8C34C125BAA33A7CCDBFB799DC4C762C6A8869ECD078C7B938C0F3A93C776C4ABA2C4B0BF3B46460DADB3E26D2D73689B5B65736C31A1F67CB3CE8C9A4CF3E26DAEB2681B5DE7736CF5727D346A71910F6F2D49D6B634CFE3D8CA7F1CA383296F695EBCB555166D8BEB7C5E964FAD87ADCCFBA24CAFB67DD56A07C3BE3FBB435B7510AB63B923833127F8D806AFC975516EA90B25631FD5964E886FD4870DE6EB527DA2BE69B93DEE9BB2DDDBFAD403D247F5A55F2E7172C9E50D6F7BBE2EB2A58F352D9AE82FB3ACBB79AF9CF50E161BEAD202AC3AF7B95F5B64D6D3BF2CD8BB04A8DBEF2804EAE27D4C44BE6ED3B9D8AFA782D43D3D92354EF4DC83D590EFA565C5BABBAEFC537AF8E5676DB9245D1343A0297595910915C95E22854A9F2E1F746B1D765D221768E6BA2A9FA4EE95995B58FDF0F5610B203C97A6035ECB20167BB088AD9295AB4D300F246CE18CB62B792BAD60BC3CD6E9064563CD17430282AD16455CD9135512488945947E5E47DBC1A914A6E55D573DCBD28F49A3C932327806A61E27C9CD0AF98BF24EA4B8383D8D44BE690FE82803ADAFD2942DC7F248AD46337A8915DA7C1B795215EA5390788885DEE6E55D749B45498FD5F7692EDE45B3AFCB5E7C5B7A8687D952E3A5AEE762D9C8B2C64DCB8CD81FB97406C5124D25B28432A7914840B2248CA03CF6BB2A0666BC970815AD5FADACB56FBACA7A97AB038C77349341EBDD77306A0AAAED0121CF030015248BBC6588E473828C4AE336C948738554A8A56216A7462E6FAEA2F4BA308D74C860B222B0A039D49868B2D90282D34B407B99745866801924E6C2B91CD670C60B4FA0A950BA7AC1A96AA8B1A1C588641B538B16EBD3D82A34B7BDA1D597C257D71B7C7F4935711C54AD38C555EAD8CB934095918B2BA12ADCBB2F216F47479E84B2AA1FD78FD0AB456BE62AAD0D22A5C5A5CE097B0BF0ECEDFA0BAC0C46BDC740D568BB8D2A27E171F292E3C46541BE4DC5D63C8C4DAA5EDDB0C6BB549E6BBD60E207DCB1D14BAB5636402C0EDBE9B6405CC5A59D83D861874CED1C0E2735A515B78BD55515EE5D76E6EDE8C8EA2AABFA81AC2E973DF5BB8800E2A5CFDB795A6F12E7FF011C50C2644573C21316CF6E2B707246A27E1B91789319F789D579E4B38358465B99AE7188B93AF174ED0DB218759789272F104F5CC4E5C6245BF3108CC990D65C27C20AB4E6F4B2AD156BCEE278BFCE9A530957E3A9DF084F9B695F97EA73CA97CAD67EB677A4A4658FA8A6E220FB9F5F93E5AE857B7EEE7B41549FF2391BF48319A4290BE7F2F5C03A9DBB68CAF57AC165E961D33385DD9152C27138267D6F333FCC51DBEB996A2F939914626E70E795CF045999484E5BE5A8B4E41D8583A818D5222490016FB7A3AD606828E1C50CB1A5F8A225FB1460D75934CBA449D086B4AB6BEA218641777216BF826E7C56C34570284E6E2022C6B4DDE5A8A9641E9743D17A553EA903CACC5E96B6D0219B39CB153DBD497BCA93305F605F3597F406B1BE8ED39B3519D96BC66668ED323059C42F494FD75E770C7D2C9720B35854B74653DE55F13247C52C152F2DD9DF1CCE07FBC948EBCE656D1B7A77A16A0CE74392260BC3DDC521DBC51FE334DE9169FCF8393A1CE21DC1E63C4BF572A051C2ED56D4E30A874CE6597454FBE4E07D0E763FDBF0FE601126E9D95964C0ED605DA166EDC8D2E9314B5CFACC6805E32EB39A249890343E8C62734655790C453ECA6ADAD6E59A70EE265609743E8BA2E5CA8C5207D4B9BD2C33B15336529D2F3B50B9FE634AEAC2F6B11799CCF687BDD8CCAB0C2C3A99F6B888CF271711CAD4692D462B16B4224A0D4EFD07124FA2C56926CC9CC413772FC046363105FB5C3472EDB75F39F67A5D8FACC5CCEAEFF440BBE34D1011B3EAFB224E5865AF8558464AADCAF51C2B95B6DE1EA8BDC60129748ABEFA21C52D5D642D462EF50BE0E81E540388D9A78EBE11466238DDC752B63588B898653342F03A5B2D6D05065B3290C838BB8AF671853366ED756EA09F66B3EB1E6E59152287B4B2A7A34BD156A8DBF21450C33844C5E58904693C4878250764012F3C42F91CAE3CD20EC353AC4A56B419CD049DF641727AAD751BA6DB5A9279A9BECDC8B2E56E36643F73B43220359507B71E79FC859D5F9019A99A87AE86249D6C96866455AE674392B6DEC990EC4DAA9786A4BEFAEE11EB295F01634623899D709B43CD368ECF2AD4BD72470B66161DCB66F762C0E44370A50CA3DA9E0123D46D7B8CB9E61B74E7BC4C2B0CE53C0B73DD9C4B9183BAF0C90E460AED143C89AA64A065522264940839FCC231D40CB4B2FCCB42BD8662A8DBED108EA1BFB9B65CC7B761D6D20ED120B4DD6EC181E63B35A52010F0CC356FD2325A1577F9958DAA3341CD2AD3140DAB32D836AD8206CA32263DD796F560B2CE722003B08707E5F2DBBBABB865B5675794E95380D4ADB6971F75C91EE6B0B6EAF036A19182359830B892156694E3FE31337BEC368F69C15ED1C8B6DF01926CF13E7069547FA7E0749497F2A6A24AAABAAEABA97D68B9AEAECAF5BCAEA6AD775A57F7B6D828D7D5FAEABB33832C9702C0FA19592CB85F412E5E69B2BE7E4C4AF57EF5B868B9E3CDE3A26C2F4BEFE280732FD5E7C7B2998A4D8F65FF306FA118BC57A6BB1ECCBE69E63425AFB2596C79E2A428D2DF64E45F5337380B873E010CE7061F1503B3221E02386F1394D220B7708DC4A004B6718266460EEBC0A709D123135876F0355A2C33E245C7B223C60198BD9824C0635978668B2713F81848A605002D8267A691040C0A34B7300D32DB0C3FBC9085B3FAAC32F899DDC5E950E981EF96ABE3DEFE6BB72EC119D772658D74EBA23A413C7651A5B8BFDB7E6DC271C496CF634BE7CA5AAF8FBB78D77A6DF02996F6EA83379D5AAAAFD1729DD5C64799ECA042AA673BAB9159BA74501BD5F45DD4D8980A5DD4D6A924E31DD82DD7253B255B3620987BFEE1EB33F72FE6CFA2E687292CDD8B75B11E6F50450999642E9EC5A664F75E1C22182295FF264740ABEEA33EE35DAA5D2A35A41E9A6C8C47454A953D9C72161B17E7E57E9FAD92A255E292E261B62816345301A71FD2C7B32A8E8694B5695E73BE8759A3DC9159913C9379405AF2FEFC9DC4432569EA4A6A48F30B2E9EFA3F49D4C92C8A77316143B42105F6645E26E9419E7249BA4A9EA38DB68F4249C4F1AA72DE4C686562CA2C7E8ED347D2562D3B02B482562648141DBF2E260C7AD4A0A2D8BCBA9C7F9C5E5FDE4DEFE71FF728B0E0EC10B89A59638E2D847A3FF85277D56C7415FE2A7388A9B962D2904214293C9B5D00ADF45090594279824A18312728BB2A878785E092C802B8C2501B4A66615D3314169807D9425E615CF06D4197B28A79F15D2B4A80A7DD434929E865F98674B3746E573CC91DEC4336C9BCB06B05EC49EF0255D0F34ED8D02BDF7A6A869E715A9AC34AF964A37C28BB1D54293A68369EC0336356805270C1AB011D00097DE6121B71FD9B97DA6157014AFB5226AB4E8587395B0197AEBF66038CEF2F99A34CC71AEF96740037CD6B35182A4C9FAE11141975929AE3CFF48D2E19854865816068C6013308A8DEAF3387A319A702B4A81729A843A4FE89B3D072B077086ABBDCA7287482DD09C842FCAD07A5843278F84190857443C552161ABC87230311A92CA42CD472C042F220C76D2C65A19653015AD4012C95C14931A898452A6D80221C5930C7A45960630E914C68D556E068D277B3A147E3839B23D1843FBE8DE9C2F18686E8463D65FA40FF1C2A1C74B24148F04E81A7EDB2A17B0C0B346FE7A3D331274063BA059ECEAFA27A02C1046A320A94B4CDDD2AEF445E5FDCA7B378131FE2B3CBD5A138323E8DF6ABE851DE769C90268445A6933F2430209D9C42FDE2107E2604838BE641A10631CD491773B1A77990C40DEA4EB05276D36C54A117B4AC60A5E4865F1BBA116FF03B920A41A47954D2C3FA37A80680198EE113107BCA5E740451DD980D0EA5069A58FD90682B181DA86256F5A153EDAC1AB221A8687554650C458621961B2C8991DACD15B761B0796E723061A15B51E146DD37197D24F83B9877EE0956234676D4E8AEBDE17A446B9E5908E807EF1BBCEA9EF6E4FE760262DFB2138EE68D814013DABBC1007751C81C64EAA0E09D9D635076D36C54D55759CD11A6E44890A67473F40A0E5A8DE1401FC19A3B8445AF88591DC35287BE16B76D5A3DDBA0EBAFD9402BAF435B9DCA52B2264463BA069D4EB0A9439007055B6F524DD5C7FE00E624D27A071716C158A5D894E18C79D559DEE86D71CDAA6F19004F3EEE6D6B9A57C127738587C49CB053BC0ABEF8B7A41B1188442D56482A5D08634E18D2EBCB9D60D520807DA768D572CB589AE1A146ACC4AA9A3B215AD3C5916A3E442A06062C5E2A83803AD44427E0C4422BB3EA5D6E4CA893D72033CC061C0F176471F01AECBC77FD9DA2ADBAA1AD1F5F3110AE16712A67361E2E94F13C5677C79554AD1CA6508448DC7BA90C17C93A48996BE736DE5165F85E07EE3A3A4415DD3443B222CA90A59B53C111ABA6F4677808E11D152A1D8BF5C8191A346E49578606168CBE13718E72C55885E3C1C8AC0C0A980B215AD1D5B9DECA77617CAD4655083DD30B3B87B4477AB16AFABA6263D277B3B15787ACB33CCFAB61539016750E47F3EB366091D6A0A8BBE2D0D5151B65AFFB04A1E7E59A5E21285EB8D5BBE181EC6DDD84EED901AFE8A9B1BE0B7F25DAD1F58E36A40790E9841C92BF2D98F52BDB349DED11694E22EDC4A09687C633C5011BA23A30C4B808D902BC8AE87D9D408BE9608FB0627861D70A381E711FA8D25D0444F2B7852EC5B5BF0EEEFC693ADB23D29C2EF9F52CC0D848540F06D18D90FC10D4EC825CE9AB708F776433F5E4B879E8B45004D1639AD8848434678122F89ED15C0EE893729BA368FBBB9C9EE8F89CE0CCFC50445124650EA444BCABEFFEDCCE17F9B7F82FE821E02FFBB80A2ABAAF9EE310F194D35CC4877AA7E11B3F253FD0C88DE08C95D029526382FF49A4D0C080009D86D112196C0CA0D654B1BDE4A68041BF000A4DC82B8906F65C0246A55E2BC284E02538D427C1E926F74DC8A0A5484FF848A490137A000D263E9444057DCE43D13BBAE041BB477398711F2768494DBA2382B610798F026B214ED0925A73054AA2843D7B01F71307069B684289B9EC0CD16292B5D484E0001239E5733070EB9893E150EB98642D35F13E86444FCCA0A5C89D9495C829CED1C252951E5183E42A727E0D69557988086C1274BE086E0F3DD601B5077B321E903FF536AC2C7D90A78981B1AB76B4E531831F2785469FD96B05861E7FEF05E40DDDA98278833DFB87489762E50A4B16E8A936C04E281FBF920D84F2BBBE3F8DD12B77A74913E830A651430C081B7DC66414CD8D0738B834675D2BC24BD3AE08F68D64012AA9D5B63A474D695C4DF8BE1BF085DAB47CE4638037484EBC47700198470A23594BB00B36C9717B21F4A883FBF2C38D86F7E5B183459A55510219829AC01E986122D0AA008305AA557A87D850B51E5001A2D372D4508BDC9E2D500855802DDA48AB5C4754B156B98EA81EC0539303F9821908F66C41038202BC310B1ECAF5481B3ED4A45B6614414669964EF6FC52874184B8A62981F7D42C0624306190A58F0D712533B1A55508F429186918B551831625FBDC00D831D334810431081A861E9451A20F3E2843107FB9D13ADE20C84D6CED6CCF4D65FC3B8097E6F1F2B8CE1A45CCE3BAAA7B05D532489EC8467C85EE607FA1E1DB203BCC2CD61B6F4569A3BD89DD3399C9FA006F1D314D618FE80294611D525A23F6FCE9C81A81C360016C318897C575451D318BEB8DE22159D3205986CC76030D1CD009868E41F02771C4D5E19F6C84B119659067A857D39F63EAB9A68F43A4EC956ED639B3ABA3F9A78E7103B0CC22280ED73FB3B0385C2FD57E560BEAD82CC5BDC29E86AD928326D15770FB53C3336B7BB65B2EC16141002619C40FE1FAA48E20C275491DB7C23468484BF3110B928038740CC25F887E1875000CD1B5835F87B7887921AF1682ADCEC1680C3A5EE9E1A48CDBE0CDA38EB084051340A69B36EE80343B549107A42987DC57378F18D0DE8C432EB3C33032B9F92E0EBDE6EEBB0828FC9EB4CD9DF596F8255CA3863CAA8A8BD6BCF713BE6ACDFB51D15BBCDA2BD2AD33A0DE5454B100BAFD8B345EB8FFEBC106E1CA2F6F55C13BA12EA62374DB173419B5D78205634E75315830115537634DEF029B70DA4DB208B7556189A2BAD22ACE79E452AB2841F00B922697515B9A38CA7B939813D3E89EA5EC65D4DDB4343549CC2977B81B015FF6D372D06617427D393000F7F47EF4C04E74E48E9AC146A98955ADBACFE6BF5DDAA93D0D5EB23260931E59BA1B59FE8CEA1350C5191C3D9BA4BB44CA0EB1B789FCD9C35E209259031D22F2678B6297CAE8428CB243CA7D2927162937A302EF4461B7340056195DE8E03AA6BBD2617C3CC7886AEB675CE40B1C10A034D73CF891C72F7AF0BDC04EB6E9A885E2497E7D23A740AF11D0B48BC962B58EB751F5E16242B2ACE2E7C331DADC658FF1665F27DC45CFCF49FAB46F4A565FCE16CFD12A773FFFF3E2FCECAFED26DDBF3F5F1F0ECFBF4D26FB82F4FECD3659EDB27DF6FDF066956D27D16336F9F9EDDB5F27EFDE4DB6258DC98A3B76265E7AA0351DB25DF4140BA9A46AD2D2DF93DDFE409458F42DDA13FE4F1FB75236F6D204CF39CADFBA26F05E843C74F509C6BA58FE37DD954A6F5F8A25F66AFD66B6BC7FA322D570F377D2C16D9C1E8ABEC6CCB8AB8B13028B55B48976F57D157A59E52A3F1739CD36C76DCA7D1281A8A2C19C77E429290E42E2F4E64FD14B232958827C8A0D45327330925C924CF36222705E1CE58934CCEDE2207B4CBE27AB6212FF7E4C8B6B5970BD45F64FE99E30A2CE7856FF51ED6389F3A29CEBBC2A28294090D280EA73B4233F0FF18EFBFA35DEEDCB9B64C75D7EE1091E4723AC491530697ED5F04013EAE1137D2BE2E027D5C4A59A557531E1C71CCAF2E5F9313AC43EA828298CA8180E2AF83187B294573D7D505152088F8AFB5DF294A4D106EB1BDF7248861B4B4D9D3CAFD31B63C0D0546860E8A71F503A064682A26C57DA7DB9CE928F49945ECD7872EC777B6A374B98DA0DB0218453BB3D12104F6FBFF2B49AAF27601D2847BF03D3A0B9B4E262177422A6592409B5B049612AC90186549227F955D2204FA8A249E8D92668E0E062108C70E80B0E2D1903CC9536074BC0160EAFC12A5078916CD40246C6C026C08BE223D5B898788B00F7872AC7BDBAF2265817C845389CD2324EE1867109E6F4664954DC136349D5DF6CA8E411A18A88C63C21FAD9D24081FB28249D80A9A2C26407960A7592BA182A0D232549D424792F5A2B84CBC2AE4AF0D4492CEA45A5C4A6F95553CF08A186FAB32F713A4B24FA34258056451925A4F66C6E514CBB585B23A6474CFB60BA259BB1D91E753019ED30FD1A0CC66A1E797A114022260E24A46027C61D448AF96C416B4718315F277948128E18F3FD040C287C94BA70F49441269CBC3CADEB00A40626C5B30A0608621D4C52DFCE9772889C3C2FE310F143D49643A40AD5E2E20D311EA2D7A0D614F1626C442646C640B5E145F1316A62C9F0EA0D8B31A3A6565B2C00412EC9F62845029DA2B0A473CC92BC0DC0E189F2B339AD45B6949C17F5370B4FC8CB2C131C20C5971350DB2A0C76A0B869F42317D5DD0057123B4D92EF1A9103336AB707A88A221DDCAB0F409EC21FDAA22F53FCAAA8278640BFFEECB94A2C668CB8382C3EF66CD9500CBBD8362386470CDB60B825D38F62D8C5F8B3C3F0AB3100D17B30D6FA17A6646A0662A5350356DF91018C41ECF6124E339FE01041F6BB8B751966CF8EBD942ED143AFABE3149759FAB4C80ACFA4E09361132CE825E99AAC03256ACDE753B11471A476652C5677BF9CEDC51A8DB0A8AA53FDD520520F9B144AADB7BA47C2CE10A81A9AE8E92161678EE82261D33CAB69A694584993720AF664057367937284F908F340306FD3E4ACEF3FBB5A9D96307F0DB6A7F6E2BFD5AE8D9298C91E9B86409746E85D448333F0F4D0F05638AD5996166141B85350D5371BF7216024BE5603518FA52E7602F92814276D2632C094AAA1299EC7372AC88A6737AACFBEBE1258919DA2126B6B579387DB499B6B23DCBA835B5B3BB43CDC4EC36C0A83B7D7609AE18114713DFA699FFF7DFFFDBFC80AB522F75F1DCC32A4254683E56D3BDD455C4C519E9E32DCA88A666827DE5D34FBBA1449159FACCE7981DD64BF9FBACDD9B99DA88A136900EDD9FDECCBFCE3F5FD7479F9B94F7C97013C6570C3813D55D4D8109712B2D1E0973845F22F488FFD7E023880A2FB9988B6CBE9755FE34E83210A52038B46A919751A96501A753460A172D4417AECF7931875443375B23CAC430DBBAC0B5BB79E05E52855C3A50EC4E159A954A986E2ABF7B94D8C576CD2EB5FD1B4B6BAAD678BCBB2769C2DE36C39D1D9D2D2E29C3E8EE0B02A1FE84A39B8EDDF8109C005871FED8051B219553204C966B25E05C154260540125D5E4248A2899EA70E9855AC78EA8049EAD974E2A4CC683F8D52C6A89251CA9820698052A62593939332A3DD69EF6BECC4E5B45A8F76E6A801CC2A19B606A08E7099FF754A001C51773684239AE82DFFB16AD8A4DE1D7444B68CD6E5285B8C2A19658B1E4703942DADB933F3C7E17E1C9BD2F9D40F993F5F93FC8C98E7596C948EC9A108BC6CCBE75F2422F5B713D86B5672B413577355BF93FDDFA6B28168D79F7BF79CD54C73316C4E9D69AD39026AA6B9486C13A6BD06495D1F9FC59FE673B9EF80503390DA5A0AF890D172E0DD9932E147BA39D3DB6D17C5E87778DDA56A85FB7D971231F079F0326DBC7C70CA4775442038DF441981D011105ABE225203C1F98E880510C6FB2166F64740E3C3D3F2380DB3238F1220136BBE5A1EA70E183126FCE564D79831FDC479E9D7AA198649D3E014087E1146557612FAA2B30BA881835FB41B80E5E40DA9117E7DC3AFCDC028A763BE0DC3B4AACDDEFA35FA308B7B849A856B07A5A0193EE8362093D08F6B27543893BB88B0FC456C50F9ED042C2083D1EFD0B553B5C2DD0E42CECA316927BFA26F7D73B9C49ED4FCF2F389B8766A20385B2423103A0242CBAE9D1A08CEB681051046D78E856B278CF1E169799C86D9912F42800804F46B5FAE9D61B961FAB54086617E349802D6C161D45A07EBE041F9464EDE121931D1B9C3E2748C9261180CB945799DC794F3531318190343012F1A66DD8EC23A4E6532F4A3399DAFC97227BC16557D3A01F5AD1A970E54775DBD93DA0EB006D28EBD7C8C2E04F96AFC05E2D5D79E35271D1217ADF9830F494B8A8B0E898BD2321B92D7A0AAA6CB0797C896A0635511FE4BEF5177886A395D22EE6F26A11F677A20653A90C8E0FD867D6B1AE0F646F0127767316927EF3D6D578F0C235CB74F4CB311075DE3A03D4FBA4FB42E5B1CBC1223E07A7615A501D6AC2A52668680A2383E6AD75934CB242772FDD54671BB19157DA85D259FBB51BCB4094EAAB71E1E699ED509BE9230A84C6F5371357C74515D43E3637B82BFE1A38BE837E7A3EBCEE98FA85C4AE685D12E4A5A06EA4553BE7DFD92EF51C851BCEB8FBD6D9CC6E9CD9AF0F85A5E6B7229765BB14BD292F5526AA2907402BA548BAA0E9429D78653D4A614A4C0AE5B80B819DD6CBA7168967DA24CA2FFEE1E8371607F8F49EDD9FCE0917782F6C788BCBE91D792C1C623AF4F8B6D18961431709737C196E92829B365BAA2388ACDB56C5FAC2D0D8BB9B8309FF7E7E527B369161D25EBA6F8667DF05EBE2BC925D8EC1AC4A94CACF96ADD32F9A81F9760C5AFE9314B2486951FADDB25D9D1EC773B7E49A4E8C713304F7573B51B570F6D8283715ACD725119AD03E8BB39B0969E0FC2515F4B0A5945179F839CA5072F8A7169BEFB01B55491B603EA8420FD00CF8F7169DE63510A217930CAEF417A0119B16C92FF584035D0EFFDBB391B1962BFCC1865C828434619321419D29E8BBF9121F60B463319E2E6DCD70B91F1BA95D93277B92660BE89C32C74D5C40C96BA3A02A7BCD82DDC3DF022F5C97EA1CA5C4B00D69762A2652BE1452B97E2D45279F12A255AF3135CC43E392C6499A6C82B5021CD9E9F20C9535AD8EAE766074B5BBE113FC4E2969DFE90833888F5280904FC9253102B92131550AF02599392F8C0FB15C8AA7C5258964F81AC4B51DAE09D0A6165B2720819AA5358B10AA2E14758B38EA261140DAF4A34B4B4101544C3EB5A8A0E6399C8BE32E467872A28192C1095A5F1553DF74812BF15C925599DE242898A692760FD6BB8DE81E9CFB4C0E9C45567AF6089A3279F1F71A8AC35B38965ABCB71A2A1B3B52595C3B2D5E5AC8C0B5B5F839E60DE88F313583821032DA12A8C8F19FBBE9D74CC97A658A9088CA490644E739644D3B5E00FABBFD99CE99811D38E985551221EEA60124E406DA951D081D66A1AE0A4B43A7A4F5180932C5AC35555834D7C12A2FAECBBEDC6C04FDA7763D27A56BA0C2A5C74EE888A7E51D192CDC0A0C2C564B047C56B3018E87BF6FEEB1B888CE192122EAA36EF8A32C062B2FC6EBD9294C9710927A08C553CEE68019957EFBC7A2C19091AE3655290050E580B9776022BC6828FAECBC5A1F1B1C52562C147D7F5A1391F5F83A02F24495AB8E2BDD7040821B395215A58A99AEB52F2CA90A6D8AE0C419242D209887D35BFBB5983550D705D8351764276154D0C616D633509A9FDAF5F6A8E3AAE5F06CBD1F66CFF9AA38EB6BF25475F834A9845C75CCAF8BEF60E5331500668497CA0EA22E26BEFF5679BBB71CB757C2B79E098CF56FA046C18FBFD04348962A4BA7843BEACDDED05F99A8BD2E4A429BED717E8B04B55D0146F718A75834DEA5935D5A3E4F464FD384AE228B5A4EEEA5172D17536A3F41AB4DC325AE5AF25FB894E9888818EC30A2A205E9610B552F5D54A2941A498CF27A09270BE76711ABAA8DC4921D52C94C55095E02D85901A9894BE0F8C96DC73511443E25E5B67EA4AEEB9087073EEBD0AF15DEAF5000B1505251341AE2AAD3558A0450B976427D731A262DA29487835D73BB9F4425BE026EB598E62766708F3561C3D4078D957D6E2858186AD4E4A60E06C6DEDB075C35627EDE0C0D6D7A02788CCC95D74F979796F7F3B42C86C7F032DAC743FD6A5E4FD0D9A62BBBF019214924E4041A8F9DDCDFE46D500D7FD0DCA4EC8774C134378E3B19A84D4FEF7376A8E3AEE6F0C96A3EDED6FD41C75DCDFB0E4E86B5009C58B7BCBF531C433B6001903758017C5C78A96815EAF2DBEDB6C72D4313D01825C92459C86A7E845A2463FDA1C8296C325D7DFCCA9DCBECC329E46F9E504149B0A375D3D7A4BAA777FF0B61850F81DCB222954285AB81E2ED53FA82E5409FDEE7B40168C3F5B7FF6235EC259205D7EEC59CB538039BF9E3B02EC7500ACCDE7787380393FC56B0CB0D760EE5C65B3D8F7763048C3C0D041CA61C3436CCDA7E93ADA4EA5D7EBF914733B601ADD465B329B573C39E6B305ADF571F5553070EA6F1657C5A013210E075566199152F98B6302A5E6B3392DFEF1078E9E906461818187E75D4EE2A317BA1DEF8863B7FFDCAEFEC16F90B8BC40829D3D753BCC8A797ADC5C47856C94AE38365F2D2911897E778C0062758225BD3C72C9CD3A0308D2144B8AD252C6659DC53E1C0F50A329E614E9B3DB1CB5E6ABC53A0B9A512E1117A0C304F6A712D0AD2BB7DD30E645565E5E33DF4F602D88EAD50E168245DD0EAB405E150B56149FE86781324A5AA88549F1ACA252DF22FDEAB3E7ED4BE44455A0536F8CA6172B6852FCAA1094BF508D90EAB9DCC06EDE84BABFA40AFD10309E86E2BA68B87BBD8D75215711E4A91EC5C1F770170914DEE770DEFCC64411AA68120254509B2D501D755A806AA83103D543130354042D9043F95F78D307AA8426FA55D4584542254D82A7FF051127A142F32087D5C21C86531D7D0877C882B5B74425CB24F5ECB22C4D217B7FE5680A19121F4DA1D1141A4D216525A3296455CD680A8DA6D00F6D0AB5B4B9569A42F63B6B2EA6905B645F3B5BC8B10E4363C88DBAB935E448DFCA1C72ABC3CD1E72ABCBC62072AFC1CE22728C4A6D691239D7626C1339D760651439D7626515B9D562631679D460651779D463691879D464681979D460691AB9D564631BB9D5606E1CB9D137B58E1CA95B9B47AFE1D4CCFCE99825B3A3F7DB6B281D83D3338AB23814123227A4DB1DF4ABCD196132BBC447D3E84797B3C6D841E393D889558E5317B74DEAFA5D5EDFA2C32B49803AC1F7C86435ECD299B9EA7BA813998AE398BD3B899B11727804691C217684DABA0D4347C8E12D1A8B111A907EBBDCEFB3555254242BB93A5ACCA2B6140CA24431B991B85D6860954778194C293E2CB2E36E058C1A8649DBA85F39B368231CDAB78C764F31146E11BB736B15B2056FDDC5041C46F39166FD2FA43BCD84559E4DC20A49877C998C34979EBD087D6B145C4DA7228B8B4F9EA38F35CF1604F6D68F0F106A79405A7D889234DE8959A861557DA1BFF7F5877C78A3A798C8A878B36FCA9532B6E8D6FE395AE1629848D05DF667F218EFC80AE7657F88B76FF20C6F16FF6333DD248556A833DC4569F23DDE1F96D97FC444AEFEFCF6DDCFE767979B24DA93A2F1E6FBF9D95FDB4DBAFF6D75DC1FB26D94A6D9A1E8FAFBF3F5E1F0FCDB64B22F6ADCBFD926AB5DB6CFBE1FDEACB2ED247ACC2684D62F9377EF26F1E3762216AFC81A5179FB6B4D65BF7FDCB0C3CE1898900F941FB89B58825C3DC27FC4DFCF14C0BD9888652FE0299037E4FDF99FD16EB58E76E76777D15FB771FA7458E77C3D3F9B1F379BE8DB86E4F81E6DF6B1548B449371A60A944576FEF6297D8CFF7A7FFEBF8AB2BF9D7DFAC70353FCA7B3FB1D19EADFCEDE9EFD6FDF56E5F7661A3F72D9ACC21463081D7647033AC4501009D9F48F23E0DE4356BB2B91D50C8613ACD0EB0E26E0C281E03798CB75961045985ECD6AC287641BE7C2215E25A5A1F52FB6035BD3BC5986A3593CEB38BDFD4A0147486D73E38F21FAEE57A21689FC27C97F53D3371E7258939A8E38A65D4C069C370F428A946AFBC4499E1465430A93F2263FD7D314EAEADFDFDA22A67E5F4541F4DD5B07AAF44515D3713186B7C8886D96C62F81805C8DBA9BE002AF5719492D186BDE90E1E90602CC72478CEEF93A89B75E848D8784EE6C380D0A76EBC764589AB281654B8D6088B691806108843759126F6B256F5E60D4D5F7848DA73C203C8AFBC09D41B6DA2773472D7CBDCC18B875F1A0D8CD11C213760189426D5BC13F24F6F9F7B11C5B55950FAAF99BE7BAEB6625F9B2D4526827E99A08EE86C6B74443C35C652E1FDAC43B5202B918E73B3B8C069A21101681B4532EADAA0A876CD12C4BA9AB9514D9649135F004E83AD16811BCE07BD6A6A8F5C02036D2BE08E2CEFFB8A08821F02348D7BB68F675E9D6205230F00A4F18B8500B3C6E123B594EB6FAC778FA3547FC9C26603176F6930F1A72EFC16388B66B5CD6FAB63E1EE5AE70730A1DA9DBB22A67659B17FF9154ED69CDD216E1E60720FFB50C4BF6F5AC644ED5C27559CB58CBC5FAA8A53B50E1E835ADC8C5B22AE721CA8BBF6EB9E8BFF4BD8BF2B3B16E1DCA4B76B063D6226EFD90E82F6059B2AF45C0B62AC6E8416E271C9450B787003845BC6D62966AA0D50C592EECBC36956CF489977760BAF4500E4C6105FB5E8584EF4F3E77ED26BD9ED597CC9C0055DE5333344CBCD057D7E4322465D9B00051CC06B3FDF8A5376E8DC799BF4D1870A03D06CE5F8D5F351B7A81B5B8B792B95947ABF535336743ED7313F5BE24AD5E5B6E3CDA4884E58D0750F2C6015114819C73288260D8F54CD518C61A32989945A187B9382F6DF1D9C805F78ADF39547C7ABA946076161D3D164B9559CBBA459C761B8BE34ACF16B3066D0ABB8070694A964E8F59E2CF1246023A7284A110528C2CD7A47537715F82C44534784E7087E59AF7C460D67CBE93236F4E8809C234C97F923CF94F14A63D9E93A5E2504B1386DD2375B2CF14A1BC4D8C34D51EADB73504106F773B8AD9D77562261EC8DCF0F82FB6AB1CE2C0AD40FBA48FDC2EB220876EADA65111CFC4790E41B1F54D275059B68DD9C3526E7DEAD4D1475CA70E126BDF70EAD0D22D4C1D8176BB9CAC6F513AB111B982697492A02E1AF8184F15AAC26D5D51150E7C3845E86ABBE3095DCB351D4EF8CAAAC968B2378B43CE069E6ECB9CC39EAA36661FFE8681110FD9E2C11929136F5D4283EFBA5A4868E4FD1243094D4BB720A105DA1D1C89971E12B4DADE04DE3331DEDD2CCA0616D2DCDB6B3E7B938440E85B1C4C9B5CFCB583BA6D01BC4B62862BF53B5D4001C54B5C506EE4B92D202B1E0502C88B3F9A05E4D63C890594C05FBD4232A36FD4400E24C5B35570762CEE0098197D7A0ACE8EBE2D0564C79F8FC2325BDC6750BFFE8415001F78C232A3EF370105F0279A80CC36C38F8613819C921E76083FB3DD5D87D275722722DC2D4C170A82EDED44A2911AEE440461E24E485C67BBD2103C5D4ECE65C9CBE34885DBDE74A4212C9A1DA908869D0B15F1EAAB330DFE14AA33192A1B3DE9307691330D2A49DDE93402D69D4600ECF30B53270AF28ACC49443231C54DA9982FE2E06889867B6348344A836D2F5A32F0BAA30A928753FDE5678FD54C5FC72C6D7D7D3E2E221B73DBC7A184B907CDEE979585C39EA4425C5C667EC5A26C0723AC8FD1E611A20AF7D438C7A081225A197194140C7EC9721893787139BD3E994BB7FD9D7C3D3D01A1F0399A62A82A1FD4A5156DD546ADCFDED1FDECCBFCE3F5FD7479F9798424BEB96A7C7D3C2F1D1C94D856A52928ABF28141A95EAF9983928994297A1E1E668B421F4E056C7E481FCFFEC8369093228F46F986F97A77DC1C92E74DB22235BF3F7F27F5AB2105F94D0A6A7C024FF09F24826472C47948E524DA9002FBC32E4AE4A0E89F7749BA4A9EA38DD40D212732EB54CED809252EA6CCE2E79820243D403D0E5031A52F88021D4BB868A96A68D0E8AE5797F38FD3EBCBBBE9FDFCE31E8587681314E3D97C1C0638B050BD96D65CBBD0102275F6028ED2D9C8864046C506E7962C6546F5C91C1356E00A252880187D2812D04D18731C58620FAFB14BD9305B2071F35A100CA2B3B020D47C7C350201E6A8B64E78D3A80B3450A73F81037CE2B519446983A01845E6AB391E04A3B62044BFB58206248E0C3A3440E0182B2480CCB4ADAD030054ED24C3AF8CD2E634742A0408B5713A46486A050F76E383EF609A2342C55F978A3B0007BBB1C220040EF422487B613FA691F834C11E2C104D29AD15B8E0FD46874E1540C91E3501EBEE45AAE8301358ACF48794FE048B1D444E40B254DBA40C4AE0082782641176571BC94213ECF102D194D2DA932C60BFD1A1538520B2874DC0BA3B000E77C0A4440E1634A11965F0544A31C6428A15709A7A05D43009AD40461140001D37343484156010563BD4DA85A3831E1930C5897CC8A01E523755D41B42B0C834E840A1C140DA4688B2E26E41A25BFF5A9928625FEED3F219BDB3CB55F9E4D334DAAFA247790B217F2D2B183E876CD304ABB40314D5A7B54A41A3039278B6AB18C4E6A39588E9050F700432746CA09063EDA201ABB11B81C219B748B4366734B425587A36837B809483F57B42B81A84B6EA1954FDADC5ED60D5AFF2E2C3C3942A0C0B3BD58CAE1054861D5C31C94AA135350B7861125A018B2A4A0E327248581C30EFDC1F59C8A0B4D7B8AE3D857AD4857313F686B35E84921D74FA9648CCC51D837D49E09A4F3196DCF753DE9B44C30DA1C3A3BE54D9D62EA5A6D66E0E2F5457B1EAE30B9ADD4AF9EE567D86817EB63CC5006C58B6BF5B89855042874A798BD6F23C83D586A5BAE2AE21A2131D41E1D1BDE0E80B167662A3774854C7E0091ECA0B2A0F8BECB85BC5F84117FECC7D79CCA5FED6C9D289BFC104B4A34E69E7AC0C142B091D5EFCAA9439A01437B65CEAED0353CB68F7148B61BA98E5923C94F018BE4A44590D2C1A02A05D3CE1D576B206A7B76409A4E06065ECDA5BBA535B2DBC99EFE68ACB42DE055B6B2331A8F0D1C1833DB820C3AED63E0F4994D697F9F93C0723F594CFE9D95BA0EAC82A2D9FD7D354DE3968CCCFEB85838CD3F1BFC1C3C5F5945EAF60112F03E857D301EF03F4B592EEE75680ED2A1AADB60758E80448585CF4243A7A43869DD0383168C8011BDB82051398A78144F1F175C141E2A8B64E38CA5B1F68D09DDF0D8B08DB83C0434786DDA672CF8282BD1BCB5C36D5F9DE9CAE10B7E43301A3CC606D6AF94AABC32D7438B48DDBED664BCC2355F7083B8D7BCE5230BD7AB8F57D9B3E60FD5DA8C13A7EDC83F64EFD2900AD0977C735A2F9FA6A208504F63B551C15EEDF7C481A420FBFEF327A34FD61993D0071B1821F8F29EAE068141F78026FDFBC91690CE4448CCC4497EA3ADD66526E08F4BF63690499C1EE4F5AE0A5DF6DC926B89A0E327218B75A15D1CFAF0E38D8631DE8602A23C0B7021F758D9D4404C9F5E575B65A46CF3A5D34C303E305D7495C5D9C9CE3125E8F8EC299EB526D47A736F3C87EF906360322E5B94D368E203DB4597EECE658840BAA021EFB949FC7430757F1EA46ABA052D5DB8D46AB62289AE24A8E05596B36FAF9D5636B8E3C1C888EB2F2699456F1A5AE3938C27E3FA62BCC5FF429DD93D69D9F5D3E3DEDE2A7E810D3389F57C76473F894D2DFF364133D26AB9A18FDFE693FCDB6CFD99E0B12FA39DA91BA0EF12EC7C022DE46A4D9ABFDFBF3CBCD26FB9F9FB6E5D89306FC19EFF6497E5D7EB15A935CEFCF1FBF89AE744A8A77B58991DEB347F2F3532AC52F9DE8A8499142BD69E66F4D890EDDF2C1A986A296041735D1A56117937AA84CB1F0E5B96CE58885110BA532F841B060C49E26F8F010656678642FD759F23189D2AB594DF2906C395C7FDEC5AB645FF4FB5F8CC9DD2C83902B5E5C9FDE7EA5738E94DD461B84DEBB5F736E46F960FCCD0B1A4314A123343A81C61025AA27348C3844F72B872856D1B7453C6C102E04B5FF5C2C9EB5E51A99AA89FE5D4F7496444C68630DBD776F4D08E6677AA0D7BD5DFB5DCC72B1E7D5A3ADB0E96587D6214AFA11AD3F2A5A87A87CFCD06AA69DCB870186A879C24F3C9EA2FFB45BEEA2D57ABE4EE2AD234D9B211CA2381E87901BC221CA289F2134E24DFDBCC2206594F80646007B837B3F22A88F8ED27371CFE5CD0A37ED16D9D2D40C806C899759D6E674A5901CA2CC1D21F9AA2139441DE2074973FE54376407AB48F8CB9341A6184FD27296B5B29E96C3F3F8DB856469B9C88A15664DB37893D1B8A3F91B42C4126C8A7F4BD0E2D6701CAC1219E1F81AE1385805E20347B3551A171C625423F211C440146759CA042CFABEC9229BD9214C2DDBE2C12797009B51DC8FB07180CD0F2996C3C3C688F5F569F7214AF8D0934A88007BCA7655F5A4663867B2D0EB00FB709C84B2F52198DB8C56281FA2421A513EA2DC0EE543D49FED6BBAE629E821EABAC0138121D7868BB6E1F51025EE50793DC479EFCC6BAB8545FDC6F310673EF3D6F169AC2B4E5D0D8A833E4411340EBAE7A00F51169EDCA09B3BD447012B6EEFB0044F6173A70D0795DDEE8E3D9A46C93DA2291C9A7E409560A53AEB9737072BC3D990087DAB4E2F8B076C4EF9366B672818ACEC1D51101005839599A784027355358A60D1F06109F66FF8B465A28C42F7C71EF71F50CC1A3129D776C5A3DD431488EEAA1ADE4760E9F9EF5C7E4D96BB364FA1D3A11BA24C1B87AE18BA218AA5F60DE4211F999A2EED8E40F4B2440A3DFF5A38AE38E403452306C262608852D21703A63CBA9E5D45E9602DB8EB2C9A6521DDE6DDB37D8802EA15B07D883261986C2F5B3D4A19CE7BC2BC7A7002CE9338BD5947ABF535A37E03442BC9D2A72569EADAF8AABA039C46E939C229209C7E34AD60AA379737C395DF39681C77F3E68D66B4DD060CBDDC22F09F4547B7D6548E71F69482ED1DEF2210E0B3D1B4C31BC0FAA22D1B90A5D3639678759F9191F6BD670AFBCB1C6E420D4F838D136A9C50273CA186A7C30738A18C8665B92628B98947D3C172663EF9C8266627DC433EE58DF094514C43BCE4D49397AC625AE12EAF2A6E049559C2E418CD8071728C9303991CA34A77632313476080DAB79D3808CB3805C8B671EF97E5FEF0C4FB6BE2FEF0E44700EE9B3E4950C50419A48068232062A1D805AA27F8EAC522F37CF7C2161F431461233EBAC3C71085AC2F3E0CE37F300F9A0F51CA8E01AEC2C98EC106B842C7917D413DCC200A8F67FBEF90475B81A4EFC28A9BD243548CE3941EA7F438A5D1293D445BA6FDC5620D8D411A31C1715DB932589A6DF9310AA60F51CD0C9EE94314047E4C375DF655E27790B2A0058554BA0504AA6D409361FD1025C22B61FD10E5822FEB0D431CAF8619BF775C118D2B228439D1314775D831CCA721B3651E62412490F40F56BE1A6674E871268F33799CC9E24C1EA2C5D2C19B0325220669B18447F3721DDF3AEF17C2024468642BF1F5AB311CA2AE1AC7901FC3214A29AF31343B0E19AD88D21CA4902A9B1E128D3CC536C058B17B88F264C0EC1EE2D4F761B7E141E8B85C7C0CD44661DA1F149432D95690C9707F90D2E0D5707F90C2C197FBA64EE96AB9384801D1C202BADC0F10A8B6B41F50B37E88D2E195B07E88A2C197F5E6018C97EBE320E542DDF8B0BEBA22D04D48AA79F01D869E65F09D45661CCC06287DFB32CBDA9C63143F43146E237E4E073F4394D07EF831E2CF55368B87782F9368ADA7E93ADA4E9D7762A6D16DB4255369E5587C7D5C7D75BC012E38EB2C0BD72FB9BA15E7628DB99110CF76D99716F6542CEF264B5B96D6E5B95873D6A5CD0FFDC2E5CD77D680F2854C606E693994E65F64732050BD95E64181116A0EA5AB0731DC28D471EBDD4A7B2197F7D459969517F296028BC6A20EB5A55BEA8EE11966A3EE1875C7A83B46DD31EA8EBE75C7F01665A3EE1875C7A83B46DD31EA0E77D93F7F3A66497ED175807EA76594100404DCADBACB211519BAF87EF9D9C245DCE67E2F1DC1E1ADFEC611E44770783698DF08C2ECF9409A777821ED394449DA185B84E0EFC96E7F20AA2BFA16917EF12D2B4B2DE203681D96A9651B17F1E6FB1B3E99EDF0D9B264DED5E5FCE3F4FAF26E7A3FFF280145AC8DB124A5AA9834A89EE9E5EDE5DDD74F1FA6DA4A1A2C4A7534495015F3EBCB39A961AEEF4665D1CA7DA812C00E5C7F997EFDA2A5DD582D12F52609A2FFF9FAD3872FD3EB4F6635D4960D5C499D8AD633BB5CDE7DB9D433AA7A761DAD4DCC00324EC8A3A993DA1D52653405AA657139FF4C60AC25CF2C2AA40A9834A88AD93D81D7F2D3FCDA986FD47C44194773A8384733992003AF535F61810D328D3EDF5CDF1B7792DAA86827690E55276926934EE275EA2B2C3AF98F2F974B934E3636B454539304D5F2EF5F2EFF3B9147063295F174401C54A23E4F37043EFB0E1C5C13938CD4C5E4D0D4262CBEA5EA8474A8BEEBFB4B32E3887E3265237D0C01EE1E938C748FC9A1A98D8FD40CD42766806A5C5E139D7BF3C1B4879C3B41AA904B856ABBBDBFFC648A15D6F10029619A88A8E1E91762545C7E36EA52E95F01FB5326619D2953F53DA14E0CA8273411E909E1582E2AF46AA57674C94AA54E0155CAE597C5E554AF50EAF5B48CB32A01C4D7E5F4E327BD92E7D6DB0090995418C51F4A68197483750941A3411391D1C887824C17331D51785E60FD5024A1BA6179AD37F30A6F32647097DF414BFB7EF6C160EAD5CB2488434D1AC8A08F5FEE3FCDBE1888920A9328AA8474445C9A82975D84288C7B381B52B7D5B2A56CA56C4F169F6163D2A05BB3FB9CD7D7F7D3652EE9641E72C9B03DC9E6106ABBDCEFB35512E5AB4660FDF5305B14EC22AB2926A3B8126B7271B48BBE3C9EFD916DA0251DA98DFB3AC1CB428BCFA2389F20F46CC277CDA0DB351AB851DF435D4772E25D10F15834BFF978029D2FD7A464289B5601432E65528C38B7FA2D87BBFAA4E8AE15A37CC678B668D6C98A0166B2B531BAE232BE28D97CF4EE2E5D6A928E50B34DEE2E940D6FB4B4B62D5ACD7C557458B02C8B92F49B7777E993040BD11B20F719CD1BA4F1FC5400FD1BE594507B2DEC59C0AEBE99BED1F5B8CC084D090D78053F400360C49B00320622A2F34A844087822B78E6F6F0D10D1B58D705D33DEACC40108297D0204470A23408415C31206B20223A978E3D6B84F78A17BC2F42668C323FDE29D06B51744948513346F2B3D45CC1FD270E7601750D19F003CFACEC08346FD8CFA7C506851E0572B5222DEC18E6D0DDDAE9580EA3A2C77046BCF1A2A3B3687AF3B1E76E0B12E5A1691838D670DE963ADFA11814BBA6463C98B53D25D90D0BC437F216BCDF566684BA00DE2DD8C55BF44A4C523347724BD79CC1DDCD9E2694921F48CE5670D149D7B927CF548B293823DE01C0E15EB49FFBDEDB928A7D8368A15952A179954B67610BA05E3CD3CFBAE533B0AA0ABBA4E2BAA51878305F5B5D6F77D469C4B045153F68911D77AB18F41D205915FE037E13A3F41ED4DF145D06DDC96CE93A257CF797D1EE293E1875BFCAAA90F872FBE186F7D4792E32CC820E0CA4F2A08C2A5527ED00557A8EF9AE6781096E5C97C5A5CC30F21F29F3071559FDFA9268178DFC4870EEF6D8E1E4830AE037562A4128676BDEE32ED41FD7210504B0ACAD75BE87912F3675F55DCFB3B5D66D66CFB9E972F1317877156E412C6B6BDDB6F5243A749FDD5563F6B914F68FA644E09D3D9402C85A38436B4CC2AD244D89B6374EBB644E73005DB5930AE46A8309D2318FB268F335804780587FF97904C2C6FD611725E9E1E1F75D461DA00FCBECA13CE700F9080CCB86F71AB06735CA42D0590C9F9543FEBF77EA1583C65E765D27B5D537362C1CDE3D29971AD8C241AD1ADAF4731F63C83E56A881277FB806DA5977A4151EF2D041A21253AA03426E8EB2F279B705DB7B102C485E8DB78C3DCB495D65D039CD5EFACF3E64A5E7009A5B3D6D84D3A6F5B4A19F3BE4C3C5A4A441EF18D1B48B49791EADFA407E1EB25DF414E7D79936FBE2EBC5E48F2329BD8DCB5FB3789F3C35242E08CD34E6EF34D13C9FD2EFD9E75DF61CEF8AF6B32DAAB3D4C9F505B4F8103D4687E8727748BE47AB03495EC5FB7D922BC2AFD1E648B27CD87E8B1F3FA5F7C7C3F3F140BA1C6FBF6D5E58665C4CD4F55F4CA4365FDC3FE7BFF621BA409A99E41713EFD3FC12DB236DF7EFE5E5B4890189FCEED7C7987C2FC79208A343FCF44229CDB3D49050C5BE59FC1CA78F717A58C6DBE70D21B6BF4F17D19FB14BDBBEECE3DBF8295ABD90EF7F268FF10E27A21F089EED17B3247ADA45DB7D45A3294F7E120C3F6EFFFAD7FF0F9DAB36280EDE0300, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201506250508041_fourth', N'QuanLyNhaSach.Migrations.Configuration', 0x1F8B0800000000000400ED7D5B8FDCB892E6FB02FB1F0AF5B43B38E3B4BBCFC16C37EC195465BA5D46DD7C3AD385B34F05394BAE142653AACD4B6F1716FBCBE6617ED2FE85A56E142F11BC4B4AA58506DC95221924831F23824132F8FFFEE33FDFFFDB9F9BF5D91FF1769764E987F3776FDE9E9FC5E9327B4AD2E70FE787FDF77FFE1FE7FFF6AFFFF5BFBCFFF8B4F9F3ECA1CEF7739E8F944C771FCE57FBFDCBAF93C96EB98A37D1EECD26596EB35DF67DFF66996D26D15336F9E9EDDB5F26EFDE4D6242E29CD03A3B7BFFFB21DD279BB8F8417E4EB37419BFEC0FD1FA367B8AD7BBEA3B49991754CFEEA24DBC7B8996F187F3BF1FA2F4E6F56E15CDA3E5EACD6C717F7E76B14E22D29079BCFE7E7E16A569B68FF6A499BF7EDDC5F3FD364B9FE72FE443B45EBCBEC424DFF768BD8BABE6FFDA6437EDC9DB9FF29E4C9A8235A9E561B7CF369604DFFD5CB16622167762F039651D61DE47C2E4FD6BDEEB82811FCE2FA3F479BA8A3684DFCFE7676285BF4ED7DB3C33C0E3376CC9BF9C71E97FA1B020E8C9FFFBCBD9F4B0DE1FB6F187343EECB7D1FA2F675F0EDFD6C9F23A7E5D64FF1EA71FD2C37ACDB694B495A4711FC8A72FDBEC25DEEE5F7F8FBF57EDBF8D2EA7D3F3B3095F742296A525F96265DF082292BCF7B7D19F3771FABC5F7D38FF8980F9B7E4CFF8A9FE5021E46B9A909910D3DF77A4D9D1B775F361A2A9761ADD449B87245E765FF9DD73F4DA0C7559FB2CDAC70B32EDF4650F5922166EB1E977D11FC9730141A1210CFF7E8FD7458EDD2A7929A7FA1B9AFA389B17F82463FCDB36DBFC9EADD9B234F571116D9FE33DE9508666996787EDD2A285B339990529A191824D64A7CD239BB769279285B6A46E2C96AFEE94698BEB8239B7801653BA9717779FA65717B7D3FBBB4F3BB6C1700E89B9483688C1EF278DA452CA2F060F36C28B16EB5372316DB7975F3D0A92C52A4B3E25517A39ABEB36112175A9EB854DA99B0301F7F4E6810AAC78996CA2F5F9D9972DF9AB32517E393F9B2FA3BCFD7FB599A7B584082148C4B9A990354E386FE4840DCCEB527DA2BC69B93DC89BB23D68EAD561F970E86176C5A941B7FFA6AB7CBF3D68AB9A25A49789A296776FC35413A764F647AA9A4C9969202D44EE85131982020CA92B45F9A151A9C6E6D2D5D7E9C35758C415F8464C102951B694A41CF6869242007B9849624B75E694797BBFAC92F850CC18D5D0B3F980716F92F14167F2D88E78559418F6B787C8A8A17556BCAD650E6D73AB6C8E2D26D45EAE57995193695EBCCD55166DA3EB7C8EAD5EAC0E462D2EF2E1AD25C9DA96E6791C5BF98F43B437E52DCD8BB7B6CAA26D719DCFCBF2A9F5B095795F94E9D5B6AF5AED60D8F7677768AB0E62752CB66430EE083E36C16B725D945BEA42C9D847B5A513E21BF56183F9BA549FA86F5A6E8FFBA66CF7B63EF580F4517DE9974B9C5C7279C3DB9EAFF36CE1634D8B26FAEB2CEB6EDE2B67BD83C586BAB400ABCE7DEED71699F5F42F0BF62E01EAF63B0A81BA781F1391AFDB742EF6EBA920754F0F648D13BDF46035E47B6959B1EEAE2BFF9CEE7FFE495B2E4957C410684A5D66644245B29748A1D2A78B47DD5A875D97C8059AB9AECA27A97B65E616563F7C7DD80208CFA5E980D73288C51E2C62AB64E56A13CC03095B38A3ED4ADE4A2B182F8F75BA41D158F3C5908060AB451157F648950452621EA55F56D166702A856979D755CFB2F453D268B28C0C9E81A9C74972B342FEA2BC13292E4E4F23916FDA033ACA40EBAB3465CBB13C52ABD18C5E628536DF469E5485FA14241E62A1B779791BDD6451D263F57D9A8BB7D1EC61D18B6F4BCFF0305B6ABCD4F55C2C1B59D6B8699911FB2397CEA058A2A9449650E63412094896841194C77E57C5C08CF712A1A2F5AB95B5F64D5759EF727580F18E663268BDFB0E464D41B53D20E47904A0826491B70C917C4E905169DC261969AE900AB554CCE2D4C8C5F565945E15A6910E194C56041634871A134D365B40707A09682F930ECB0C3083C45C3897C31ACE78E10934154A572F38550D3536B418916C636AD1627D1A5B85E6B637B4FA52F8EA7A83EF2FA9268E83AA15A7B84A1D7B7912A83272712554857BF725E4EDE8C8935056F5E3FA117AB568CD5CA5B541A4B4B8D439616F019EBD5D7F8195C1A8F718A81A6DB751E5243C8E5E721CB92CC8B7A9D89A87B149D5AB1BD67897CA73AD174CFC803B367A69D5CA0688C5613BDD1688ABB8B473103BEC90A99DC3E1A4A6B4E276B1BAAAC2BDCBCEBC1D1D595D65553F90D515C04E527975383F0CE00812260D9A139E3878F690769287674A3AC0A7F160B95B484E13FDE867F991CFDBDC42626B1E828514D244E964E683268A5E50B462A2589C59D799282A4965A3E69DB6549B72BD9E5D5F78A86BA6B0FB142A9D6FC3D1D6B71119ADD71E84469853745733D53605B31922E6063755F84C90AE4572DA8A889CE768ABEBC4477EB7A869319841120F70AEC0668CDD669582A1A13CC3CC105B8A2F5AB24F01769545B34C9A046D48BBBAA61EAE27772767F1DBA5C6DBB02E8243B1298B8818D37697A3A692795C0E45EB55F9A40E28337BD91B42876CE62C57F4F826ED314FC27C9971D9DCBF19C42A234EAF576464AF189BA1B57B7E6429B3203D5D795D1FF2B15C82CC6251DD1A4D79A759DCD8333613B82ED5E7DC2DAD5FFB99DB93D51CA79A8A83E0FF21596C5B0879E17E2CCAD124162780DA7076353999F34F9626272DD9DF0CC8C5DCB391BD7927DB99A15DE65563381F92344318EECEF7D936FE14A7F19628B0A72FD17E1F6F8954BECB52BD066CCCCF762BEA716D4FD4D82C3AA87D72B0F39EDDA435BC1457C4FE79715696703B5857A8593BB2747AC812973E33F6907197591B2A9879607CC2C2E6E0A5F26C857C3ED3B4AD8B15E1DC75AC3265F82C8A962B334A1D50E7F65A93889DB291EA7CD981CAF51F53521756BFBDC864B63FECC5665E6560D1C9B4C7457C3EBB8850A64E6B315AB1A015516A70943D9078124D4D3361E6249EB8C3EE36B28929D8E7928B6BBFFDCAABD73B68640166567FA7A7B41DAF378898555F8270C22A7BD7C132FC6755AEE700A0B4F5F640ED35B845A153F4D50F2918E73C6B311CA75F5442F7481140203A7548893012C3E99291B2AD41C4C52C9B118257D972612B30D8928144C6D965B48B2B9C316BAF7303FD349B5DF57075A81039A4953D1D5D8A3642DD96A7801AC6212A2E4F2448E341C22B39200B788B0FCAE7708F8F76189E6255B2A2CD6826E8B40F92D36BADDB30DDD692CC4BF56D46962D77B321FB99A39501A9A93CB8F5C8E32FECFC82CC48D53C743524E964B33424AB723D1B92B4F54E86646F52BD3424F5D5778F584FF90A18331A49EC189F66697963BA04679F16CC2C3A94CDEEC580C987E052191BB43D0346A8DBF61873CD37E82275995618CA7916E60E359722472AE1931D8C14DA29781255C940CBA444C8281172F8C518A8196865F997857A8D2F50B7DB21C6407F736DB18A6FC2ACA51D421C68BBDD8203CD776A4A910DE0996BDEA445B42C2EA82B1B5567829A55A6291A5665B06D5A050D94654C7AAE2DEBC1649DE54006600F0FCAE5B7775771CB6ACFAE28D3A700A95B6D2F3FEA923DCC616DD5E16D4223056B306170252BCC28C7FD6366F6D86D1ED382BDA2916DBF0324D9E27DE0D2A8FE4EC1E9282FE54D459554755D5753FBD0725D5D95EB795D4D5BEFB4AEEE6DB151AEABF5D5776706592E0580F533B25870BF825C3C3D647DFD9894EAFDEA71D172C79BC745D95E96DEC5D1FE5EAACF2F2430159B5E48F8611EF83078844B773D987DA8CB694A5E66B3D8F2C44951A4BFC9C83F116E70160E7DD716CE0DBE940566453C0470DE26D2A2416EE1029541096CE304CD8C1CD6814F13A24726B0ECE013AB5866C48B8E65478C03307BF3908E69668B7700F8C03EA605002D8267A691040C0A34F7750C32DB0C3FBC9085B3FAAC32F899DDC5E950E9D5EA96ABE31EB46BB72EC119D772658D74EBA23A413C7651A5B8BFDB7E6DC271C496CF634BE7CA5AAF8FBB72DA7A6DF02996F6EA83379D5AAAAFD1729DD5C6874EECA042AA673BAB9159BA74501BD5F45DD4D8980A5DD4D6A924E31DD82DD7253B255B3620987BB2E1EB33F72FE66F7DE687292CDD8B75B11E6F50450999642E9EC5A664F75E1C22182295FF264740ABEEA30E3AEDE852A921F5D864633C2A52AAECE194B3D8B8382F76BB6C9914AD1297148FB379B1A0990A38FD983E9D551164A4AC4DF39AF33DCC1AE596CC8AE485CC03D2920FE7EF241E2A49535752439A5F70F1D4FF49A24E6651BC8D091BA23529B023F33249F7F2944BD265F212ADB57D144A228E5795F366422B135366F14B9C3E91B66AD911A015B43241A2E8F8F57EC2A0470D2A8ACDCB8BBB4FD3AB8BDBE9FDDDA71D0A2C383B04AE66D698630BA1DE0FBED45D351B5D85BFCA1C626AAE9834A410450ACF661740935F9E47250CFE0C3D23BB2A878785E042DFAE37406D28998575CD5058601E640B798571C1B7055DCA2AE61973AD2801DE2B0F25A5A0E7D21BD2CDD2B95DF12477B00FD924F3C2AE15B027BD0B54416F166143AF7CC0A8197AC669690E2BE53B84F2A1EC7650A5E8A0D978026F6759014AC105AF06740024F4ED466CC4F50F396A875D0528EDF38FAC3A155E9B6C055CBAFE9A0D30BEBF648E321D6BBC5BD201DC344FB060A8307D8F455064D4496A8E3FD387A7641422950582A11907CC20A07A94CD1C8E669C0AD0A25EA4A00E91FA77BB42CBC1DE21A8ED729FA2D0097647200BF1B71E9412CAE0E1074116D20D154B5968F0B88C0C44A4B290B250CB010BC9831CB7B194855A4E056851173E0FE4E11ED445A17BC5C7031EFA5ACC171BEF44FEBFBF4F67F13ADEC76717CB7D7190721AED96D193EC8C9F90768470A4A8FBD09DF8D40CD91084A73278340622B348D20D92848335E692D32CF03C373198D0D7AD084D93BE9B0D3CFA7E8339004DF8E3DB986E4425F28482428CE91E62E150E160391A3CD9D029F0B45D3674E2620F81D84A3E35730234A603E0C1B1C23144680287376868CEC198C34DF3508F099A03014DD94DB3718522E55BE14BC90DBF36742BCF0CAC3EF4E523B73157D21E98998734BF530B0F199E211877EA78B5186C0C83D736081263609B0B3DC330DEDC446002EEB622FE8CBA6F32FA48586D30EF9D274E8D18D951A3BBF633EA11AD09601FD0C3D83778D53DEDC9B1E804C4BE65271C271903812668728301EE0A8639C8D4E1963BDB215676D36C54D59704CD11A6E44890A67473A8050E078CE1401F1B983BDE422FDF581D70510715161DE2ADEE1AEBFA6B36D0CA8BA656E75D94AC09D198AE41A7136CEAE0CE41C1D69B5453F5B13F803989B4DEC185C58655293665A0585E759677255B5CA9EA5B06C0938F28DA9AE655F0C95CE121B7F9ED14AF822FFE2DE9460422F16015924A171C961386F46268275835080DDE295AB5DC3296667810072BB1AAE64E88D6747158950F3E8981018B44C920A0BEC4DF0938B1A0B5AC7A971B13EA4C2BC80CB301C703B1581C69053BEF5D7FA768ABEEBEEAC7570C31AA459CCA7B8D0762643C8FD5AD5C25552B8729147B0FF75E2A03F1B10E52E642AF8D77541918D581BB8E0E514537CD90AC88DF62E9E65470C4AA29FD191E42E03C854AC7A2E87186068D08D195A18185F9EE449CA35C3156E17898272B8302E6428856747562B2F25D185F585015424F4BC2CE21ED6149AC9ABE2E2F98F4DD6CECD5C1C02C4F4A6AD814A4459DC3D1FC220358A43528EA0E8F77757941D9EB3E41E8796DA157088A5719F56E78207B5B774C7B76C02B7A6AACEFC25F367574BDA30DE901643A2187E46F0B66FDCA364D677B449A93483B32A8E541C74C71C006FF0D0C312EF6B000AF222E5A27D0623AD823AC185ED8B5028EF4DA07AA7457AC90FC6DA14B71A1AA83DB549ACEF68834A7EB533D0B3036C6CFA341DC18243F0435BBF041FA2ADC23C9D84C3D3922193A2D14E1C9982636C1F6CC59A0086B66349703FAA4DCE628DAFE2EA7273A3E473833CBF874A4CC9E9488B7F5BD899BBB79FE2DFE137A62F5EB2EAEC235EEAA870E443CE534E7F1BEDE69F8C64FC926261E386325748AD498B06A122934E41A40A761B444061B03A83555D424B9296038258042134C48A28105A2C7A8D46B459810BC0487FA2438DDE4BE0919B414E9091F891472420FA0C144DE91A8A00F25287A47173C68F7680E33EEE3042DA9491780D1162291FEB116E2042DA9B13756A0C6998F2A7FB50EA2C5246BA90957512572CA2732007ACD552F8914F67002DC47E66438D44726594B4DBC8F21D11333682972276525728A73B4B054A547D420B98A9C5F435A551E22029B043EF80EB6871EEB80DA833DC60DC89F7A1B56963EC8A3AFC0D8553BDAF298C1CF3E42A3CFECB502438FBFA401F286EE5441BCC11E5443A44BB17285250BF40816602794CF0AC90642F95DDF9FC6E895BBD3A4097418D3A8210604E43D63328AE6C6231CB697B3AE15817B695704FB46B20095D46A5B9DA3A634AE267CDF0DF8426D5A3EA62CC01B2427DE23B800CC238591AC25D8059BE488A8107AD46153F9E14603A7F2D8C16278AA28810C414D600FCC30B13D5580C142802ABD436C10500FA800713F396AA8456ECF16283825C0166D0C4BAE23AA28965C47544F8B9905AEE4C86106823D5BD0508B006FCCC232723DD2066634E996194590519AA5933DBF34B10201AED94417E47A6A185F509E30C8D2C786B89299D8D22A04FA148C348C87A7418B927D6E00EC98699A106D18040D83BAC928D18775932188BF89671DC90DE426B67676B01D90C86290056112848CD7FE9A3064367D3322DCB2B65006B80238661E108BEB9D51482CAE8BBAC7382DA36089E3823B459C0087C46782216712CC49C486269C93D83D13B1A78FE0D426D3E0D84200C30C821071DD528721E2BAA478BBD334F29021E3FD50A59660CA583AD888EBE49625803A9256EA882D007B2C42BC705D330BF2C2F552ED35B4A08E410BF7717A9A694A0E9AC412C1AD290DCFACADB36EB90407B9009864100D83EB933A1E06D725751406D310182DCD47ECCA3FE29E3008E6207A15D4E11C4447057EB9DB2282836CFB065B6B82B10574BCD2C3491985C09B471D6109BB1A8F4C37ED2D7A6976A8EED14B530EB97D6D7EFFBDBD19875CCD866164728F5B1C7ACD4D6E1150F8AD5F9B1BD82DF14BB8140CF90715D786795F1E7C7198F70AA27752B5177E5B6740BD45A6620174971569BC709BD5830DC20556DEAA82F7F55C4C47E8EE2A68326A2FB90AC69CEA9AAB6022AAEE799ADE6C35E1B49B6411EE5EC212457541539CF3C8154D5182E0D7FD4CAE56B6347194B70031979CD1AD41D967A6BB37686A929853EED0B70E5F5DD372D0C6A7AEBEEA16807B7AAF7060973072E3CA60DBCFC4AA56DDCEF2DFFCEBD49E06AF0C19B0498F2CDDFD227F46F509A8E244899E4DD2CD186587D8BB31FEEC61AFC3C8AC818EC4F8B345B1E76274BD43D921E52E8B138B945B2B81F755B03B0700AB8CAE27701DD35D50303E6C6244B5F5131BC003E900A0349716F891C7AF2DF0BDC0CE69E9A885E249FD683B3D144FD3DE4FE6CB55BC89AA0FEF2724CB327ED91FA2F56DF614AF7775C26DF4F292A4CFBBA664F5E56CFE122D73CFF33FCFCFCFFEDCACD3DD87F3D57EFFF2EB64B22B48EFDE6C92E536DB65DFF76F96D966123D65939FDEBEFD65F2EEDD6453D2982CB94354E2117E5AD33EDB46CFB1904AAA262DFD2DD9EEF6448945DFA21DE1FFF469236563AF00F09CA3FCAD6B024FF9CB43579FC7AB8BE57FD3AD94F4E6B558622F576F668BFB372A520D377F231DDCC4E9BEE86BCC8CBBBA3821305F46EB685BDFBEA0572F2EF3537ED36C7DD8A4DC2711882A1ACCE93D9E92E2581F4EEFEE397A6D24054B904FB1A1C8BD17CE93543E259E235EE0BC38CA136998DBC541F6947C4F96C524FEED9016978CE07A8BEC9FD31D61449DF1ACFEA3DAAE12E74539D7795550528020A501D597684B7EEEE32DF7F521DEEECA7B51876D7E7D071E4723AC491530697ED5F04013EAE1137D2BE2E027D5C4A59A55F57EC28F3994E5EBCB53B48F7D5051521851311C54F0630E65292F2EFAA0A2A4101E15F7DBE43949A335D637BEE5900C37969A3A795EA737C680A1A9D0C0D04F3FA0740C8C0445D9AEB4FB6295259F9228BD9CF1E4D8EFF6D4AE1730B56B604308A7767320209EDE3CF0B49AAF47601D2847BF03D3A0B982E162177422A6592409B5B049612AC90186549227F955D2204FA8A249E8D92668E0E062108C70E80B0E2D1903CC052D074BC0160EA7601528BC48366A0123636013E045F1916A5C4CBC4580FB4395E35E5DE012AC0BE45A174E6911A770C3B804737AB3242A6E3DB1A4EA6F3654F2F846457C5E9E10FD6C69A0C07D14928EC0545161B2034B853A495D0C95869192246A92BC17AD15C26561572578EA2416F5A25262D3FCAAA967845043FDD997389D25127D9A1240ABA28C12527B36B728A65DACAD11D323A67D30DD92CDD86C8F3A988C76983E0583B19A479E5E04908889030929D889710791623E5BD0DA1246DCAD923CC006478CF97E0406143E4A5D387ACA90094E5E9ED67500520393E259050304B10E26A96FE74B39444E9E977188F8216ACB2152051E71F186180FD129A83545F4131B91899131506D78517C8C9AC828BC7AC322A6A8A9D5160B40904BB23D4A9140A7282CE91CB2246F037078A2FC6C4E6B9E2D24E745FDCDC213F23ACB040748F1E508D4B60A831D286E1ACBC7457537C095C44E93E4BB46E4C08CDAED01AAA24807F7EA0390A7F087B6E8CB14BF2AEA8921D0AF3F7BAE128B19232E0E8B8F3D5B3614C32EB6CD88E111C336186EC9F4A3187631FEEC307C3206207A0FC65AFFC2944CCD40ACB466C0EA3B32803188DD5EC269E6131C22C87E77B12EC3ECD9B197D2257AE875759CE2224B9FE759E199147C326C8205BD245D9175A044ADF97C2C96228ED4AE8CC5EAEE97B3BD58A311165575AABF1A44EA619342A9F556F748D819025543133D3D24ECCC115D246C9A6735CD94122B69528EC19EAC60EE6C528E301F611E08E66D9A9CF5FD6757ABD312E6A7607B6A2FFE5BEDDA288999ECB16908746984DE463438034F0F0D6F85D39A65691116843B05557DB3711F0246E2A91A887A2C75B113C847A1386A339101A6540D4DF13CBE5141563CBB517DF6F595C08AEC1895585BBB9A3CDC8EDA5C1BE1D61DDCDADAA1E5E1761C665318BC9D8269860752C4F5E8E75DFEF7FDF7FF262BD48ADC7F7730CB9096180D96B7ED741B713145797ACA70A32A9AA19D78B7D1EC6121922A3E599DF302BBC97E3F769BB3733B511527D200DAB3FBD9D7BB4F57F7D3C5C5973EF15D06F094C10D07F6545163435C4AC846835FE214C9BF203DF6FB11E0008AEE6722DA2EA6577D8D3B0D8628480D2C1AA566D469584269D4D18085CA5107E9B1DF8F62D411CDD4C9F2B00E35ECB22E6CDD7A1694A3540D973A108767A552A51A8AAFDEE736315EB149A7BFA2696D755BCF169765ED385BC6D972A4B3A5A5C5397D1CC161553ED0957270DBBF0313800B0E3FDA01A36433AA640892CD64BD0A82A94C0A8024BABC849044133D4F1D30AB58F1D40193D4B3E9C44999D17E1AA58C5125A3943141D200A54C4B2627276546BBD3DED7D889CB69B91AEDCC51039855326C0D401DE132FFEB940038A2EE6C084734D15BFE63D5B049BD3BE8886C19ADCB51B6185532CA163D8E06285B5A7367E68FC3FD3836A5F3A91F327F1E92FC8C98E7596C948EC9A108BC6CCBE75F2422F5B723D86B5672B413577355BF93FDDFA6B28168D79F7BF79CD54C73316C8E9D69AD39026AA6B9486C13A69D82A4AE8FCFE24FF3B9DC7740A819486D2D057CC86839F0EE4C99F023DD9CE9EDB68B62F43BBCEE52B5C2FDBE4B8918F83C7899365E3E38E6A33A22109C6FA28C40E808082D5F11A981E07C47C40208E3FD1033FB23A0F1E169791C87D99147099089355F2D8F53078C1813FE72B26BCC987EE2BCF46BD50CC3A469700A04BF08A32A3B097DD1D905D4C0C12FDA0DC072F486D408BFBEE1D7666094E331DF86615AD5666FFD1A7D98C53D42CDC2B58352D00C1F741B9049E8C7B53318A78C62DC3A74CA54AD70B76090536E4CDAD1AFC587E237A9C7CA59DD8F63D58C55CBAE8D7AAC9C75A3C5588DAE0D0BD74618E5EBA9798F43EDE6463870039F7EEDCBB5312C3744BF7A7C184ABCC114B00E0CA3793A58070ECA3770F4C6C28889CE17ECC763940CC36020C69C4BB82C70CDA78829A25FA63B84CA9A2E90353593D0CF0AFD36220C7A150995DF2C8C8481841BED37964CD300B7870717F81A81493BFA55630D2F897EF9F9888232B6E742F0099432E2A06B1CB4E79EF00901628B83133102AE6697517A958F9FB73A40499919028AE2F8A85D65D12C9356E6F5571BC5ED6654F4A176957CEE46F1D22638A9DE7A78A4795627F84AC2A032BD4DC5D5F0D145750D8D8FED09FE868F2EA2DF9C8FAEEEE81F51B994CC0BA35D94B40CD48BA67CFBFA2577FCC8A141EB8FBD79A3E3F47A45787C25AF35B9143BFFF682B46425BFDB2B241D812ED5A2AA0365CAB5E118B5290529E0CA0C7019B71B4F268766F90A1993E8EF3265300E384D99D49ECD0F1E7947687F8CC8EB1B792D196C3CF2FAB4D8866149E51E9C00461446C6C07EC28BB6EC098F53990CFD684EE721596C139E4AF5E908CC10D5B8746081D4D53B191F6DFA1CEB6196A56608F2D5F80BC4ABAF3DAB663A242E5AF9071F929674161D121775653624A7A0AAA68BC7C575308F324ACACCA3AC288E227C252F8557966BE03BD1877CD7DF863431FC66D1415A8817DFAC0F9ECB7705B9049B0DEE389589355FAD5B261FF5E312ACF8353D6489C4B0F2A375BB24970FFBDD8E5F1229FAF1084C18DD5CED66578236C1C194A966B9A8D8560196667780DBF76E107BCAB5A4905793C5E720C7DDC18B525C9AEFD6752D55A49DEB3A21483FC0F3635C9AF7589442481E8CF27B905E40FE1636C97F2CA01AE8F7FE77E41A19626F7B8F32649421A30C198A0C696F37BA9121F68B453319E2B60FAD1722E3752BB365EE6245C07C1D8759E8AA89192C7575048E79B15BEC4CC08BD467FB852A732D01585F8A8996AD8417AD5C8A534BE5C5AB9468CD4F7011FBECB090659A22AF4085347B7E82248F6961AB9F9B1D2C6DF946FC108B5B76FA437B9941AC474920E0979C8258919CA8807A15C89A94C407DEAF4056E5B3C2B27C0E645D8AD206EF54082B939543C8501DC38A55100D3FC29A75140DA3683829D1D0D24254100DA7B5141DC632917D65C7CF0E55503258202A4BE3AB7AEE91207E2B924BB23ACF831215D38EC0FAD770BD03D39F6981D3F99CCE5E8112474F3E21E250596B6613CB5697333643676B4B2A8765ABCB391917B69E829E60DE48F313583821032DA12A8C8F19FBBE9B742385A658A9088CA490644E739644D395E00FABBFD99CE99811D38E985551221EEA60128E406DA951D081D66A1AE0A4B43A7A4F5080932C5AC35555834D7C12A1FAECBBEDC6C04FDA7763D27A56BA0C2A5C74EE888A7E51D192CDC0A0C2C564B047C529180CF43D77FFF50D44C670490917559B77E52BF4F262B2FC6EBD9294C9710947A08C553CEE68019957EFBC7A2C19091AE3655290050E580B9776042BC6828FAECBC5A1F1B1C52562C147D7F5A1391F4F41D01792242D5CF1DE6B028490D9CA102DAC54CD7529796548536C5786204921E908C4BE9ADFDDACC1AA06B8AEC1283B21BB8A2686B0B6B19A84D4FED72F35471DD72F83E5687BB67FCD5147DBDF92A3A7A01266D1219732BEAF9DC3540C94015A121FA8BA88F8DA79FDD9E66EDC6215DF481E38E6B3953E011BC67E3F024DA218A92EDE502F6B777B41BDE6A23439698AEFF5053AEC521534C55B9C62DD60937A564DF528393DD93E8E92384A6DBD125F8D92D31BF116A3740A5A6E112DF3D782FD44274CC440C7610515102F4B885AA9FA6AA5942052CCE7235049385FBB380D5D54EEA4906A16CA62A84AF09642480D4C4ADF07464BEEB9288A2171AFAD337525F75C04B839F74E427C977A3DC0424541C94490AB4A6B0D1668D1C225D9C9758CA898760C125ECDF54E2EBDD016B8C97A96A398DD19C2BC15470F105EF695B57861A061AB931218385B5B3B6CDDB0D5493B38B0F514F4049139B98B2E3F2FEFED6F470899ED6FA08595EEC7BA94BCBF41536CF737409242D211280835BFBBD9DFA81AE0BABF41D909F98E6962086F3C569390DAFFFE46CD51C7FD8DC172B4BDFD8D9AA38EFB1B961C3D059550BCB8B7581D423C630B9031500778517CAC6819E8F5DAE2BBCD26471D7E1A20C82559C469788E5E256AF4A3CD216839B27FFDCD9CCACDEB2CE369945F8E40B1A970D3D5A3B7A47AF7076F8B0185DFB12C9242454D87EBE152FDE3BF4395D0EFBE0764C150E9F5673FE2259C05D2E5C79EB53C0598F3EBB923C04E03606D3EC79B03CCF9295E63809D82B97399CD62DFDBC1200D03430729870D0FB1359FA7AB6833955EAFE753CCED806974136DC86C5EF2E498CF16B45687E58360E0D4DF2CAE8A4127421C0EAACC3222A5F2C731054ACD67735AFC3B451C3D21C9C202030FCFBB9CC4472F743BDE11C76EFFB95DFD839FCB72792C0B3B7BEA769815F3F4B8B98E0AD9285D716CBE5A522212FDF61001C4EA044B7A79E492EB550610A4299614A5A58CCB3A8B7D381EA04653CC29D2A73C386ACD578B751634A35C222E408709EC4F25A05B576EBB61CCE3E1BCBC66BE1FC15A10D5AB1D2C048BBA1D5681BC2A16AC283ED1CF026594B4500B93E25945A5BE45FAD567CFDB97C889AA40A7DE184D2F56D0A4F85521287FA11A21D573B981DDBC09757F4915FA21603C0DC575D170F77A1BEB42AE22C8AB728A83EFE12E1228BCCFE1BCF98D892254D12404A8A0365BA03AEAB400D5506306AA872606A8085A2087F2BFF0A60F54094DF4ABA8B18A844A9A044FFF0B224E4285E6410EAB85390CA73AFA10EE90056B6F894A9649EAD965599A42F6FECAD11432243E9A42A329349A42CA4A4653C8AA9AD1141A4DA11FDA146A6973AD3485EC77D65C4C21B7C8BE76B690631D86C6901B75736BC891BE9539E456879B3DE456978D41E45E839D45E41895DAD22472AEC5D82672AEC1CA2872AEC5CA2A72ABC5C62CF2A8C1CA2EF2A8C7D230F2A8C9D032F2A8C1D23472ABC9C63672ABC1DC3872A36F6A1D3952B7368F4EE1D4CCDDF3214B6607EFB7D7503A06A7671465712824644E48B73BE8579B33C26476898FA6D18F2E678DB183C647B113AB1CA72E6E9BD4F5BBBCBE45875792007582EF91C96AD8A53373D5F750273215C7317B77123723E4F008D23842EC08B5751B868E90C35B3416233420FD76B1DB65CBA4A848567275B498796D2918448962722371BBD0C02A4FF03298527C9C6787ED1218350C93B651BF7266D14638B46F116D9F6328DC2276E7D62A640BDEBAF7137018CD479AF5BF90EE3413567936092B241DF26532D25C7AF622F4AD5170399D8A2C2E3E798E3ED63C5B10D85B3F3E40A8E50169F53E4AD2782B66A18655F585FEDED51FF2E18D9E6322A3E2F5AE2957CAD8A25BBB9768898B612241B7D91FC953BC252B9CD7DD3EDEBCC933BC99FFAFF5749D145AA1CE701BA5C9F778B75F64FF1E13B9FAD3DB773F9D9F5DAC9368478AC6EBEFE7677F6ED6E9EED7E561B7CF36519A66FBA2EB1FCE57FBFDCBAF93C9AEA871F766932CB7D92EFBBE7FB3CC3693E8299B105A3F4FDEBD9BC44F9B8958BC226B44E5ED2F3595DDEE69CD0E3B6360423E507EE0AE630972F508FF1E7F3F5300F7FD442CFB1E9E0279433E9CFF116D97AB687B7E761BFD7913A7CFFB55CED7F3B3BBC37A1D7D5B931CDFA3F52E966A916832CE5481B2C8CE5F3FA74FF19F1FCEFF4F51F6D7B3CFFF78648AFFE5EC7E4B86FAD7B3B767FFD7B755F9BD99C68F5C36AB30C51842FBEDC1800E3114444236FDE308B8F790D5EE4A643583E1042BF4BA8309B87020F80DE66295254411A697B39AF03ED9C4B9708897496968FD8BEDC0D634AF17E16816CF3A4E6F1E28E008A94D6EFC3144DFFD42D42291FF24F9AF6AFAC6430E6B52D311C7B48BC980F3E6414891526D9F38C993A26C486152DEE4E77A9A425DFDDB5B5BC4D4EFAB2888BE7BEB4095BEA8623A2EC6F01619B1C9D2F8351090AB5177135CE0F52A23A90563CD1B323CDD4080596C89D17DB74AE28D1761E321A13B1B4E8382DDFA311996A66C60D9522318A26D24601802E14D96C4DB5AC99B171875F53D61E3290F088FE23E706790ADF6C9DC510B5F2F33066E5D3C28767384F0845D40A250DB56F00F897DFE7D2CC75655E5836AFEE6B9EEBA5949BE2CB514DA49BA2282BBA1F12DD1D03057998BC736F18E94402EC6F9CE0EA3816608844520ED944BABAAC2215B34CB52EA6A2545D659640D3C01BA4E345A042FF89EB5296A3D30888DB42F82B8F33F2E286208FC08D2F5369A3D2CDC1A440A065EE10903176A81C74D6227CBC956FF184FBFE6889FD3042CC6CE7EF24143EE3D780CD1768DCB5ADFD6C7A3DC156E4EA123755B56E5AC6CF3E23F92AA3DAE59DA22DCFC00E4BF9661C99ECE4AE6582D5C97B58CB55CAC8F5ABA03158E5ED38A5C2CAB721EA2BCF869CBC576855A3B58F11B7D7FA1C6923D15A1D6B6E8F05A084E171E728029AC301F4F6232DF46F93175B7E6E4258302AA558FD8D5ACBE4FE404A8F24A92A10EF2425F5D93CB909465C30244311BCCB65E17DEB8351E67FEE258C081F618387FED71D9ECDD04561EDE6BECEB55B45C5D317336D49626D12A0BD2EA95E51E933152E8ED1C27909442D31E22A0B0F51E04966A20FE3F248BADD749011BD1BCB8F698B1394A80C88540CE3B286A5FD83544D518C61A32109145A1C73B5140DA0A8A4640BB57FCCEA1E2E3336A88F098450763A3145DE2B0AE08A71DBEE288D08B85F8429BC22E205C9A92A5D34396F8B38451458E1C61288494E78B1569DD75DC972071110D9E13DC61B9E63D3198359FEFE4C89B136282304DF29F24CFFE1385698FE764A938D4D28461F7259D6C2045F86C135348B52FEA6D1101C4DBDD0262F6529D9889070F373C728BEDE48638E42AD03EEA63AEF32CC84157AB6954C410719E43503C7BD30954966D63F6B0945B9F3A75C40FD7A983C4B7379C3AB4740B5347A0DD2E27EB9B8B4E6C44AE3D1AEDDED745031F9DA9C243B8AD2BAAC2810F84085D6D773CA1ABB0A6C3095F1335194DF6366FC8D9C0D36D9973D8F3D0C6ECC3DF0D30E2215B3C382365E2AD4B68F02D550B098DBC196228A169E91624B440BB8363E8D2E37D56DB9BC01B22C6BB9B45D9C0429A7BEFCC676F9210087D738269938BE37C50371C80B740CC70A57E1B0B28A078FD0ACA8D3C710564C5232F0079F187AA80DC9A67A88012F84B534866F45D18C881A4782A0ACE8EDDF50733A3CF3DC1D9D1F79C80ECF8934D58668B3B04EA1797B002E0A34A5866F4CD24A000FE2C1290D966F8D1101E9053D2C30EE167B6BBEB50BAC2ED4484BBF9E84241B0BD9D483452C39D88204CDC0989EB6C571A82A7CBC9B92C79791CA970FBCC8E348445B32315C1B073A1225E3775A6C19FFC74264365A3271DC62E72A64125A93B9D46C0BAD308807D7E61EA44415E91398948268EB72915F3451C1CA1D0706F0C890069B0ED454B065E775481E970AA3FFFE4B19AE9EB98A5ADAFCFC74564636EFB389430F7A0D99DAEB270D8236D888BCBCCAF5894ED6084F571D13CC242E19E1AE7B82F501429238E9282C12F360E6312CF2FA6574773D1B5BF23C8C72720143E47530C55E583BAB4A28DDAA8F5D93BBA9F7DBDFB74753F5D5C7C1921896FAE1A5FD9CE4B070725B655690ACAAA7C6050AAD76BE6A064A2538A9E87C7D9BCD08753019B1FD3A7B3DFB335E4A4C82340BE61BEDE1ED6FBE4659D2C49CD1FCEDF49FD6A48417E93821A9FC013FC278920991C711EC63889D6A4C06EBF8D123910F9976D922E9397682D7543C889CC3A95337642898B29B3F825260849F7508F03544CE90BA240C7122E42A91A1A34A2EAE5C5DDA7E9D5C5EDF4FEEED30E8587681314E3D97C1C0638B0F0B896D65CBBD010A263F6028ED2D9C8861D46C506E7962C6546F5C91C1356E00A252880B8782812D04D18731C58620FAFB14BD9309B23B1EA5A100CA2B3B020D47C3C19810073545B27BC69D4051AA8D39FC0013EF1DA0CA2B441508C22F3D51C0F82515B10A2DF5A410312BB051D1A20588B15124066DAD6D60100AA7692E1574646731A3A150284DA381D2324B58207BBF1C17730CD11A1E2AF4BC51D8083DD58611002075711A4BDB01FD3487C9A600F1688A694D60A5CF07EA343A70A5A648F9A8075F722557498092C56FA434A7F82C50E22472059AA6D52062570841341B208BBAB8D64A109F67881684A69ED4916B0DFE8D0A9C2FED8C32660DD5DAC5EF9562391501CE58AD8A1FBB47C6FEAEC6259BE8D328D76CBE849F6FBE5CFCA1C2FC4FA134976D8EA57247147974A9984C5456906173CEF540CAD906225929A7A05B03009AD20451123041D3534FA8B155C10563BD4DA8D10E22C1C3D4EE4E32BF590BA1939BD21040B3E850E141AEFA76D84282BEE0024F509AE12223A3D259EF72AC6B3F968050E3BA40502061C34061D1D284A8C2D22EC8088D5D8ADBC1884BDD20B807AB1528255DA018AF8301EA558C1C20335C32904FF6087544CB212324DCD024A98845670A28A66828C1C12BE04CC7BE70F2A6450DA6B5CD71E1D3DEAC2B9737AC3592FF2C80E3A7D4B24E68285C1FE11701DA3184BEEFB31EF21A16161D0E1515F7E6B6B3749536B379BCCD595997A9B59B3AB24DFB1A9F79AE967CBDD666063A9FD5D252CD40D3A54CADB8E96FBCE561B4BEA8ABB86884E74048547F782A32F58D8898DDE2161F46A3D7B20813F1B5D1E47A8BF75B256E26F9A00EDA853DA39D300C5B4418717BFD2620E28C5CD1A977AFBC014F4C83CBB5C9287121EC3934494D5C0A257B5DBC5135E6D276B707A9B91400A0E2AC5AEBDA5BB8FD5C29BF96EAEB82CE45DB0B536122B081F1DFC52BE0B32EC6AED7333BBB4BECCCF513918A9C77C9ECADE025547C068F95C95A6F2CE41637EAE2A1C649C8E690D1E2EAEA7A97A058B78685BBF9A0E786EBBAF95743FA7B76D57D168B53DC0422740C2E2A227D1D11B32EC84C69141430EACD7162C98002A0D248A8FA7050789A3DA3AE1685C7DA04177CE322C226C0F6C0E1D1976A7DE7A1614EC1D46E652A0CEF7E674D5B3259F09180D046B53CB570F1D6E0BC32148DC6EA15A621EA9BA47D869DC739682E9E4E1D6F7ADE780F577A106EB385F8FDABBCFC700B4262C19D788E6EBC9400A09C076AC382ADCBFF99034841E7FDB66F474DFE3227B04E217053F1E53D4C1D1283EF004DEBE7923D318C8891899892ED575BACDA4DC10E87FC7D2083283DD9FB4C04BBFDB924D102C1D64E4705BB52AA29F4F0E38D8A30AE8602A2375B7021F758D9D446EC8F5E555B65C442F3A5D34C3039805D7495C5D9C9CE3124E4747E1CC75A9B6A3539B7904B67C039B0191F2DC261BEF8D1EDA2C3F76732CC20555018F7DCACF98A183AB781DA15550A9EAED46A355B1EE4C7125C7ECAB351BFD7CF2D8BA431E78434759F98445ABF852D71C1C61BF1DD225E62FFA9CEE48EBCECF2E9E9FB7F173B48F693CC6CB43B2DE7F4EE9EFBB641D3D25CB9A18FDFE7937CD362FD98E0BE6F825DA92BAF6F136C7C03CDE44A4D9CBDD87F38BF53AFBDF9F37E5D89306FC116F77497EF974BE5C915C1FCE9FBE89AE744A8A77B58911B9B327F2F3732AC5999CE8A849111DBD69E66F02890EDDF261A086A2960417DDCEA561EF27F5509962E1EB4BD9CA110B23164A65F08360C1883D4D90D821CACCF0C85EACB2E45312A597B39AE43ED970B8FEB28D97C9AEE8F7BF1893BB5E042157BC8C3DBD79A0738E94DD446B84DEBB5F726E46F960FCD50B1A4314A123343A81C61025AA27348C3844F72B872856D137203C6C102E54B0FF5C2C9E1FE51A99AA89FE4D4F147D541DA2573CAFAE2588BEA6EED8EF62968B3DAF1ED7844D2F3BB40E51D28F68FD51D13A44E5E3875633ED5C06701FA2E6093FF1788AFED36EB18D96ABBB55126F1C69DA0CE110C5F13884DC100E5146F90CA1116FEA30F8839451E25B0501EC0D2ECE7F501F1DA5E7E29ECB9B156EDA812FC21B3708790C3ED874A5901CA2CC1D2179D2901CA20EF183A4397FAA1BB2835524FCE5C920538C276939CB5A594FCBE179FCED42B2B49C67C50AB3A659BC9D67DCD1FCAD17620936C5BF2568716B380E56898C703C45380E5681F8C0D16C95C6058718D5887C043110C5599632018BBEAFB3C866760853CBB678F0C925C06614F7236C1C60F3438AE5F0B031627D7DDA7D88123EF4A41222C01EB35D553D7D18CE992CF43AC03E1C27A16C7D08E636A315CA87A89046948F28B743F910F567FB9AAE79B27788BA2EF04460C8B5E1A26D783D44893B545E0F71DE3BF3DA6A6151BFC53BC499CFBC497B1CEB8A635783E2A00F51048D83EE39E84394854737E8E60EF551C08ADB3B2CC163D8DC69C34165B7BB638FA651728F680A87A61F502558A9CEFA69F0C1CA70362442DFAAB33B8BA71EB6C10ACB1F7BD8062B958E69D8CC95C128E444D38225D8BF69D19611304AC91F7BDC7F40316BAA8E867C0460BAB0DBD2EBC582B88DFE7E885EC34D95168EDF0C79837CC440580C0C5154FA62C0944757B3EA9DF1414ACBAB2C9A6521DD40DDB37D8802EA04D83E4499304CB697AD1EA50CB75661A2781FC152254EAF57D17275C5A8DF00B7EFC9CA67419ABA32BE7AE900A7517A8E700A08A71F4D2B18B128B7F3072BBBC32E52E294A5E70FEA8764B16DF3E6341DBA21CAC971E8062B93DC87CED4925F5C0FD7A2CCD598E3EDE1BBC656B72B18DE014414F22C3AB8B5A6728CB3E7006C6F5117A1F65E8C0C01BC01AC2FDAB201593A3D648957F719ABCDBEF74C617F2B889B50C3D315E3841A27D4114FA8E169F0014E28A36159AC084AAEE3D174B09C99CF3EB289D909F7904F79233C6514D3102F39F5EC25AB9856B8CBAB8A1B41659630394633609C1CE3E44026C7A8D2DDD8C8DCD41FA0F66D27D2C0224E01B26DDCAC65B93F3CF17E4ADC1F9EFC08C07DD3A0FF55D48D410A8836420E168A5DA07A84EF4ACC33CF97256CF131441136E2A33B7C0C51C8FAE2C330C206F364F810A5EC18422A9CEC186C0829741CD937CAC30CA2F03CB5FF999D682390F45D5871537A888A719CD2E3941EA7343AA58768CBB4BF58ACA13148232638AE2B57064BB32D3F46C1F421AA99C1337D8882C08FE9A6CBBE4AFC0E5216B4A0904AB78040B50D6832AC1FA2443811D60F512EF8B2DE3088F072981172C715D1B8224298131D7254871DC37C1A325BE62116440249FF70E0CB61C65F1E67F23893C7992CCEE4215A2C1D44F52F1131488B253C9A17ABF8C679BF10162042235B89605F8DE11075D53886FC180E514A798DA1D971C8684994E6208554D9F49068E429B601C68ADD4394270366F710A7BE0FBB0D0F42C7E5E263A0360AD3FEA0A094C9B6824C86FB83940627C3FD410A075FEE9B3AA5ABE5E22005440B0BE8723F40A0DAD27E40CDFA214A871361FD1045832FEBCD03182F568741CA85BAF1617D7545E8AD9054F370600C3DCB7060F3CC38BC1650FAE67596B539C7287E8628DC46FC1C0F7E8628A1FDF063C49FCB6C160FF15E26D15ACFD355B4993AEFC44CA39B6843A6D2D2B1F8EAB07C70BC012E38EB2C0BD76FA5BA15E7A21FBA9110CF76D99716F6542CEF264B5B96D6E5B9E897D6A5CD0FFDC2E5CD77D680F2854C606E693994E6DF3C732050BD46E64181116A0EA5AB0731DC28D451F6DC4A7B2197F7D459969517F296028B46C70FB5A55BEA8EE11966A3EE1875C7A83B46DD31EA8EBE75C7F01665A3EE1875C7A83B46DD31EA0E77D97FF77CC892FCA2EB00FD4E8B28210808B85B759B432A3274F1FDFC93858BB8CDFD5E3A82C35BFD8D23C88FE0F06C30BF1184D9F391346FFF4ADAB38F92B431B608C1DF92ED6E4F5457F42D22FDE25B56969AC77BD03A2C53CB36CEE3F5F7377C32DBE1B345C9BCCB8BBB4FD3AB8BDBE9FDDD270928626D8C252955C5A441F54C2F6E2E6E1F3E7F9C6A2B69B028D5D1244155DC5D5DDC911AEEF4DDA82C5AB90F5502D881ABAFD387AF5ADA8DD522516F9220FA5FAE3E7FFC3ABDFA6C56436DD9C095D4A9683DB38BC5EDD70B3DA3AA67D7D1DAC40C20E3843C9A3AA9DD21554653A05AE617775F088CB5E4994585540193065531BB27F05A7CBEBB32E61B351F51C6D11C2ACED14C26C8C0EBD4575860834CA32FD757F7C69DA4362ADA499A43D5499AC9A493789DFA0A8B4EFEE3EBC5C2B0933820D944A46BA6B064DF8D846B629291BA981C9ADA84A5B1549D900ED577757F41E603D11E44E8EA1547B31491EA6A92A06AFEFEF5E27F1AD5C03E86003390494618C8E4D0D4C6476A06EA133340352EAE88CEBDFE68CA43CE9D2055C8A542B5DDDC5F7C364523EB788094304D44D4F0F42B312A2EBE1875A9F4AF80FD2993B0CE94A9FA9E502706D4139A88F484702C17157AB5523BBA64A552A7802AE5E2EBFC62AA5728F57A5AC6599500E2EB62FAE9B35EC973EB6D00C84C2A8CE28F25B40CBAC1BA84A0D1A089C868E44341A68B998E283C2FB07E289250DDB0B8D29B7985371932B8CBEFA0A57D3FFB6830F5EA6512C4A1260D64D0A7AFF79F675F0D444985491455423A222E4DC1CB2E4214C63D9C0DA9DB6AD952B652B6278BCFB03169D0ADD97DCEEBABFBE9229774320FB964D89E647308B55DEC76D93289F25523B0FE7A9CCD0B7691D51493515C8935B938DA455F9ECE7ECFD6D0928ED4C67D9DE065A1C567519C4F107A36E1BB66D0ED1A0DDCA8EFA0AE2339F12E88782C9ADF7C3C82CE976B5232944DAB8021973229469C5BFD96C35D7D5274D78A513E633C9B37EB64C50033D9DA185D71195F946C3E7A77972E354947A8D9267717CA86375A5ADB16AD66BE2A3A2C58964549FACDBBBBF44982B9E80D90FB8CE60DD2787E2A80FE8D724AA8BD16F62C6057DF4CDFE87A5C6684A68406BC821FA00130E24D00190311D1792542A043C1153C737BF8E8860DACEB82E91E75662008C14B68102238511A8420AE18903510119D4BC74109F2141F152213CBDA1E3ABA6181F088FC9C77F8C87C50E6C73B05BA868A2E09296AC648CEAC9A2BB893CA09159C3450F203CFACEC08040EF6F311B0A179C57BCEB64C66019C11EF80E8B52B1ADF7C5477DD8E717EA3AF160762AE562441EBDD151F879BF30E4BB9E7EA02786760DF66D1213149CD12C91F5B3305F7B37ADA0E4A7E20395B4143275DE7DEFA52AD22E08C7807004F73D17EEE7B6F6B09F6F19DB9662D81E655AE1905DF77BD6AA49F75EB46603911762DC1754B31F060BEB6BADEEEA8D35059F32A70CE3C3B6C9731B86846B22A16CEBCF7BE5C36D7DF145D06FDA86CE93A257CF717D1F639DE1B75BFCAAA90F872FBE186F7D4792E24CA9C0E0CA4F2A08C2A55276D7D547A8EF9AE6781096E5CD783A5CC30729C28F3071559FD3A5168178D1C2870EEF6D8E1E47C09E030552A4128676B6ED32ED41FD7210504B0ACAD75BE87912F7633F55DCFB3B5D66D66B3B5E972F131787715FE302C6B6BDDB675A139749FDD4E62367814F68FA644E02D2D9402C85A38436B4CC2AD244D89B6770CBB644E73F25AB58508E46A8309D2F986B268F335804780587FF9463C61E36EBF8D9274FFF8DB36A3FE9FC745F6586EF0433E02C3B2E1BD06EC2185B2107408C167E590FFEF9D7AC5A0B1975DD7496DF58D8D8786774FCAA506B67042A98636FDDCC718B2AFF469E0C99F2A81B6941D6985873C7482A6C494EA648C9BA3AC7CD76CCEF61E040B9257E32D630F315257197440B197FEB32F38E93980E6564F1BE198653D6DE8E70EF9F07E52D2A0976B68DAFB497910ABFA407EEEB36DF41CE7F778D6BBE2EBFBC9EF07527A1397BF66F12E796E48BC2734D398BFCC43F37C4EBF675FB6D94BBC2DDACFB6A8CE5227D737AFE27DF414EDA38BED3EF91E2DF7247919EF7649AE081FA2F58164F9B8F9163F7D4EEF0FFB97C39E7439DE7C5BBFB2CC783F51D7FF7E22B5F9FDFD4BFE6B17A20BA499497E23EF3ECD6F6F3DD176FF56DECA9A1890C82F3D7D8AC9F7722C8930DAC7CFAF94D25D961A12AAD8378B5FE2F4294EF78B78F3B226C476F7E93CFA237669DBD75D7C133F47CB57F2FD8FE429DEE244F403C1B3FDFD2C899EB7D16657D168CA939F04C34F9B3FFFF5FF036C420D0E82D30300, N'6.1.1-30610')
INSERT [dbo].[BODEM] ([BangChamCong], [CaLamViec], [ChucVu], [CT_SanPham], [DauSach], [DonViTinh], [HoaDonBanHang], [LoaiDDHT], [LoaiSanPham], [NhaCungCap], [NhanVien], [NhaSanXuat], [NhaXuatBan], [PhieuChi], [PhieuDatMua], [PhieuNhapKho], [PhieuThu], [PhieuXuatKho], [QuayHang], [SanPham], [TacGia], [TheLoaiSach]) VALUES (0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0)
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
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000001', N'SP000016', 10)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000001', N'SP000020', 10)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000002', N'SP000018', 10)
INSERT [dbo].[CT_PhieuXuatKho] ([MaPhieuXuat], [MaSanPham], [SoLuong]) VALUES (N'PXK000002', N'SP000019', 10)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [MaQuay], [TinhTrang]) VALUES (N'CTSP000001', N'SP000001', N'QH001', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [MaQuay], [TinhTrang]) VALUES (N'CTSP000002', N'SP000001', N'QH001', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [MaQuay], [TinhTrang]) VALUES (N'CTSP000003', N'SP000002', N'QH001', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [MaQuay], [TinhTrang]) VALUES (N'CTSP000004', N'SP000002', N'QH001', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [MaQuay], [TinhTrang]) VALUES (N'CTSP000005', N'SP000003', N'QH002', 0)
INSERT [dbo].[CT_SANPHAM] ([MaCTSanPham], [MaSanPham], [MaQuay], [TinhTrang]) VALUES (N'CTSP000006', N'SP000003', N'QH001', 0)
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
INSERT [dbo].[DODUNGHOCTAP] ([MaSanPham], [MaLoaiDDHT], [MaNhaSanXuat], [NamSanXuat]) VALUES (N'SP000016', N'LDD0001', N'NSX0001', 2015)
INSERT [dbo].[DODUNGHOCTAP] ([MaSanPham], [MaLoaiDDHT], [MaNhaSanXuat], [NamSanXuat]) VALUES (N'SP000017', N'LDD0002', N'NSX0002', 2015)
INSERT [dbo].[DODUNGHOCTAP] ([MaSanPham], [MaLoaiDDHT], [MaNhaSanXuat], [NamSanXuat]) VALUES (N'SP000018', N'LDD0003', N'NSX0001', 2015)
INSERT [dbo].[DODUNGHOCTAP] ([MaSanPham], [MaLoaiDDHT], [MaNhaSanXuat], [NamSanXuat]) VALUES (N'SP000019', N'LDD0004', N'NSX0002', 2015)
INSERT [dbo].[DODUNGHOCTAP] ([MaSanPham], [MaLoaiDDHT], [MaNhaSanXuat], [NamSanXuat]) VALUES (N'SP000020', N'LDD0001', N'NSX0001', 2015)
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
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000001', N'DS00001', N'NXB0001', 2010)
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000002', N'DS00002', N'NXB0002', 2010)
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000003', N'DS00003', N'NXB0003', 2010)
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000004', N'DS00004', N'NXB0004', 2010)
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000005', N'DS00005', N'NXB0005', 2010)
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000006', N'DS00006', N'NXB0006', 2010)
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000007', N'DS00007', N'NXB0007', 2010)
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000008', N'DS00008', N'NXB0008', 2010)
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000009', N'DS00009', N'NXB0001', 2010)
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000010', N'DS00010', N'NXB0002', 2010)
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000011', N'DS00001', N'NXB0003', 2012)
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000012', N'DS00002', N'NXB0004', 2013)
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000013', N'DS00003', N'NXB0005', 2014)
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000014', N'DS00004', N'NXB0006', 2015)
INSERT [dbo].[SACH] ([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan]) VALUES (N'SP000015', N'DS00005', N'NXB0007', 2011)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000001', N'LSP0001', N'NCC0001', N'DVT001', N'Jeff Bezos Và Kỷ Nguyên Amazon
', 69000.0000, 251)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000002', N'LSP0001', N'NCC0002', N'DVT001', N'Trò Chơi Của Nhà Tiên Tri
', 72000.0000, 300)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000003', N'LSP0001', N'NCC0003', N'DVT001', N'Làng Quê Đang Biến Mất
', 120000.0000, 150)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000004', N'LSP0001', N'NCC0004', N'DVT001', N'Tâm Thành Và Lộc Đời', 150000.0000, 170)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000005', N'LSP0001', N'NCC0001', N'DVT001', N'Tháng Ngày Ta Đã Qua
', 175500.0000, 200)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000006', N'LSP0001', N'NCC0002', N'DVT001', N'Disney - Câu Chuyện Đồ Chơi
', 204600.0000, 260)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000007', N'LSP0001', N'NCC0003', N'DVT001', N'Hồi Ký Hillary Clinton Và Chính Trường Nước Mỹ
', 233700.0000, 120)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000008', N'LSP0001', N'NCC0004', N'DVT001', N'Chuyện Con Nai
', 262800.0000, 350)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000009', N'LSP0001', N'NCC0001', N'DVT001', N'Cún Bụi Đời ', 291900.0000, 310)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000010', N'LSP0001', N'NCC0002', N'DVT001', N'Sức Hút Của Kỹ Năng Nói Chuyện
', 321000.0000, 341)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000011', N'LSP0001', N'NCC0003', N'DVT001', N'25 Thuật Đắc Nhân Tâm', 350100.0000, 372)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000012', N'LSP0001', N'NCC0004', N'DVT001', N'Tiếng Anh Ma Thuật Dành Cho Người Tự Học
', 379200.0000, 403)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000013', N'LSP0001', N'NCC0001', N'DVT001', N'Collins Cambridge EnglishPreliminary
', 408300.0000, 434)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000014', N'LSP0001', N'NCC0002', N'DVT001', N'Võ Nguyên Giáp - Chân Dung Một Huyền Thoại
', 437400.0000, 465)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000015', N'LSP0001', N'NCC0003', N'DVT001', N'Dược Thảo Toàn Thư
', 466500.0000, 496)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000016', N'LSP0002', N'NCC0005', N'DVT002', N'Bút Bi Xanh
', 3500.0000, 500)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000017', N'LSP0002', N'NCC0005', N'DVT002', N'Bút Bi Đỏ
', 3500.0000, 500)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000018', N'LSP0002', N'NCC0005', N'DVT002', N'Thước Kẻ
', 2000.0000, 490)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000019', N'LSP0002', N'NCC0005', N'DVT003', N'Màu
', 10000.0000, 490)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong]) VALUES (N'SP000020', N'LSP0002', N'NCC0005', N'DVT002', N'Kéo
', 3500.0000, 0)
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
/****** Object:  Index [IX_MaCaLamViec]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaCaLamViec] ON [dbo].[BANGCHAMCONG]
(
	[MaCaLamViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_NguoiChamCong]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_NguoiChamCong] ON [dbo].[BANGCHAMCONG]
(
	[NguoiChamCong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaBCC]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaBCC] ON [dbo].[CT_BANGCHAMCONG]
(
	[MaBCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhanVien]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhanVien] ON [dbo].[CT_BANGCHAMCONG]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaDauSach]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaDauSach] ON [dbo].[CT_DAUSACH]
(
	[MaDauSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaTacGia]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaTacGia] ON [dbo].[CT_DAUSACH]
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaCTSanPham]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaCTSanPham] ON [dbo].[CT_HDBanHang]
(
	[MaCTSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaHoaDon]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaHoaDon] ON [dbo].[CT_HDBanHang]
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaPhieuDatMua]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaPhieuDatMua] ON [dbo].[CT_PhieuDatMua]
(
	[MaPhieuDatMua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[CT_PhieuDatMua]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaPhieuNhap]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaPhieuNhap] ON [dbo].[CT_PhieuNhapKho]
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[CT_PhieuNhapKho]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaPhieuXuat]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaPhieuXuat] ON [dbo].[CT_PhieuXuatKho]
(
	[MaPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[CT_PhieuXuatKho]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaQuay]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaQuay] ON [dbo].[CT_SANPHAM]
(
	[MaQuay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[CT_SANPHAM]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[CT_TKBanHang]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Thang_Nam]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_Thang_Nam] ON [dbo].[CT_TKBanHang]
(
	[Thang] ASC,
	[Nam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaTheLoai]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaTheLoai] ON [dbo].[DAUSACH]
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaLoaiDDHT]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaLoaiDDHT] ON [dbo].[DODUNGHOCTAP]
(
	[MaLoaiDDHT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhaSanXuat]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhaSanXuat] ON [dbo].[DODUNGHOCTAP]
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[DODUNGHOCTAP]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhanVien]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhanVien] ON [dbo].[NGUOIDUNG]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaChucVu]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaChucVu] ON [dbo].[NHANVIEN]
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhanVienChi]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhanVienChi] ON [dbo].[PHIEUCHI]
(
	[MaNhanVienChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhaCungCap]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhaCungCap] ON [dbo].[PHIEUDATMUA]
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhanVien]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhanVien] ON [dbo].[PHIEUDATMUA]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhanVien]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhanVien] ON [dbo].[PHIEUNHAPKHO]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaPhieuDatMua]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaPhieuDatMua] ON [dbo].[PHIEUNHAPKHO]
(
	[MaPhieuDatMua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhanVienThu]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhanVienThu] ON [dbo].[PHIEUTHU]
(
	[MaNhanVienThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhanVien]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhanVien] ON [dbo].[PHIEUXUATKHO]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaDauSach]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaDauSach] ON [dbo].[SACH]
(
	[MaDauSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhaXuatBan]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhaXuatBan] ON [dbo].[SACH]
(
	[MaNhaXuatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[SACH]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaDVT]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaDVT] ON [dbo].[SANPHAM]
(
	[MaDVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaLoaiSanPham]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaLoaiSanPham] ON [dbo].[SANPHAM]
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhaCungCap]    Script Date: 26/06/2015 09:07:42 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhaCungCap] ON [dbo].[SANPHAM]
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO