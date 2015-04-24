USE [master]
GO
CREATE DATABASE [QUANLYNHASACH]
GO
USE [QUANLYNHASACH]
GO
/****** Object:  StoredProcedure [dbo].[BangChamCong_Delete]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BangChamCong_Delete]
    @MaBCC [varchar](20)
AS
BEGIN
    DELETE [dbo].[BANGCHAMCONG]
    WHERE ([MaBCC] = @MaBCC)
END
GO
/****** Object:  StoredProcedure [dbo].[BangChamCong_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[BangChamCong_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[BoDem_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
    @PhieuChiKhac [int],
    @PhieuNhapKho [int],
    @PhieuThuKhac [int],
    @PhieuXuatKho [int],
    @QuayHang [int],
    @SanPham [int],
    @TacGia [int],
    @TheLoaiSach [int],
    @ThueSuat [int]
AS
BEGIN
    DELETE [dbo].[BODEM]
    WHERE ((((((((((((((((((((([BangChamCong] = @BangChamCong) AND ([CaLamViec] = @CaLamViec)) AND ([ChucVu] = @ChucVu)) AND ([DauSach] = @DauSach)) AND ([DonViTinh] = @DonViTinh)) AND ([HoaDonBanHang] = @HoaDonBanHang)) AND ([LoaiDDHT] = @LoaiDDHT)) AND ([LoaiSanPham] = @LoaiSanPham)) AND ([NhaCungCap] = @NhaCungCap)) AND ([NhanVien] = @NhanVien)) AND ([NhaSanXuat] = @NhaSanXuat)) AND ([NhaXuatBan] = @NhaXuatBan)) AND ([PhieuChiKhac] = @PhieuChiKhac)) AND ([PhieuNhapKho] = @PhieuNhapKho)) AND ([PhieuThuKhac] = @PhieuThuKhac)) AND ([PhieuXuatKho] = @PhieuXuatKho)) AND ([QuayHang] = @QuayHang)) AND ([SanPham] = @SanPham)) AND ([TacGia] = @TacGia)) AND ([TheLoaiSach] = @TheLoaiSach)) AND ([ThueSuat] = @ThueSuat))
END
GO
/****** Object:  StoredProcedure [dbo].[BoDem_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
    @PhieuChiKhac [int],
    @PhieuNhapKho [int],
    @PhieuThuKhac [int],
    @PhieuXuatKho [int],
    @QuayHang [int],
    @SanPham [int],
    @TacGia [int],
    @TheLoaiSach [int],
    @ThueSuat [int]
AS
BEGIN
    INSERT [dbo].[BODEM]([BangChamCong], [CaLamViec], [ChucVu], [DauSach], [DonViTinh], [HoaDonBanHang], [LoaiDDHT], [LoaiSanPham], [NhaCungCap], [NhanVien], [NhaSanXuat], [NhaXuatBan], [PhieuChiKhac], [PhieuNhapKho], [PhieuThuKhac], [PhieuXuatKho], [QuayHang], [SanPham], [TacGia], [TheLoaiSach], [ThueSuat])
    VALUES (@BangChamCong, @CaLamViec, @ChucVu, @DauSach, @DonViTinh, @HoaDonBanHang, @LoaiDDHT, @LoaiSanPham, @NhaCungCap, @NhanVien, @NhaSanXuat, @NhaXuatBan, @PhieuChiKhac, @PhieuNhapKho, @PhieuThuKhac, @PhieuXuatKho, @QuayHang, @SanPham, @TacGia, @TheLoaiSach, @ThueSuat)
END
GO
/****** Object:  StoredProcedure [dbo].[BoDem_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
    @PhieuChiKhac [int],
    @PhieuNhapKho [int],
    @PhieuThuKhac [int],
    @PhieuXuatKho [int],
    @QuayHang [int],
    @SanPham [int],
    @TacGia [int],
    @TheLoaiSach [int],
    @ThueSuat [int]
AS
BEGIN
    RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[CaLamViec_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[CaLamViec_Insert]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CaLamViec_Insert]
    @MaCaLamViec [varchar](20),
    @ThoiGianBD [datetime],
    @ThoiGianKT [datetime],
    @LuongCLV [money]
AS
BEGIN
    INSERT [dbo].[CALAMVIEC]([MaCaLamViec], [ThoiGianBD], [ThoiGianKT], [LuongCLV])
    VALUES (@MaCaLamViec, @ThoiGianBD, @ThoiGianKT, @LuongCLV)
END
GO
/****** Object:  StoredProcedure [dbo].[CaLamViec_Update]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CaLamViec_Update]
    @MaCaLamViec [varchar](20),
    @ThoiGianBD [datetime],
    @ThoiGianKT [datetime],
    @LuongCLV [money]
AS
BEGIN
    UPDATE [dbo].[CALAMVIEC]
    SET [ThoiGianBD] = @ThoiGianBD, [ThoiGianKT] = @ThoiGianKT, [LuongCLV] = @LuongCLV
    WHERE ([MaCaLamViec] = @MaCaLamViec)
END
GO
/****** Object:  StoredProcedure [dbo].[ChucVu_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[ChucVu_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[ChucVu_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_HDBanHang_Delete]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_HDBanHang_Delete]
    @MaHoaDon [varchar](20),
    @MaSanPham [varchar](20)
AS
BEGIN
    DELETE [dbo].[CT_HDBanHang]
    WHERE (([MaHoaDon] = @MaHoaDon) AND ([MaSanPham] = @MaSanPham))
END
GO
/****** Object:  StoredProcedure [dbo].[CT_HDBanHang_Insert]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_HDBanHang_Insert]
    @MaHoaDon [varchar](20),
    @MaSanPham [varchar](20),
    @MaSoThue [varchar](20),
    @GiaBan [money],
    @SoLuong [int]
AS
BEGIN
    INSERT [dbo].[CT_HDBanHang]([MaHoaDon], [MaSanPham], [MaSoThue], [GiaBan], [SoLuong])
    VALUES (@MaHoaDon, @MaSanPham, @MaSoThue, @GiaBan, @SoLuong)
END
GO
/****** Object:  StoredProcedure [dbo].[CT_HDBanHang_Update]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_HDBanHang_Update]
    @MaHoaDon [varchar](20),
    @MaSanPham [varchar](20),
    @MaSoThue [varchar](20),
    @GiaBan [money],
    @SoLuong [int]
AS
BEGIN
    UPDATE [dbo].[CT_HDBanHang]
    SET [MaSoThue] = @MaSoThue, [GiaBan] = @GiaBan, [SoLuong] = @SoLuong
    WHERE (([MaHoaDon] = @MaHoaDon) AND ([MaSanPham] = @MaSanPham))
END
GO
/****** Object:  StoredProcedure [dbo].[CT_PhieuNhapKho_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_PhieuNhapKho_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_PhieuNhapKho_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_PhieuXuatKho_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_PhieuXuatKho_Insert]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PhieuXuatKho_Insert]
    @MaPhieuXuat [varchar](20),
    @MaSanPham [varchar](20),
    @SoLuong [int]
AS
BEGIN
    INSERT [dbo].[CT_PhieuXuatKho]([MaPhieuXuat], [MaSanPham], [SoLuong])
    VALUES (@MaPhieuXuat, @MaSanPham, @SoLuong)
END
GO
/****** Object:  StoredProcedure [dbo].[CT_PhieuXuatKho_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_TKBanHang_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_TKBanHang_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[CT_TKBanHang_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[DauSach_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[DauSach_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[DauSach_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[DoDungHocTap_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[DoDungHocTap_Insert]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DoDungHocTap_Insert]
    @MaSanPham [varchar](20),
    @MaLoaiSanPham [varchar](20),
    @MaNhaCungCap [varchar](20),
    @MaQuay [varchar](20),
    @MaDVT [varchar](20),
    @TenSanPham [nvarchar](50),
    @DonGia [money],
    @SoLuong [int],
    @TinhTrang [bit],
    @MaDDHT [nvarchar](20),
    @MaLoaiDDHT [varchar](20),
    @MaNhaSanXuat [varchar](20),
    @NamSanXuat [int]
AS
BEGIN
    INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaQuay], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [TinhTrang])
    VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaQuay, @MaDVT, @TenSanPham, @DonGia, @SoLuong, @TinhTrang)
    
    INSERT [dbo].[DODUNGHOCTAP]([MaSanPham], [MaDDHT], [MaLoaiDDHT], [MaNhaSanXuat], [NamSanXuat])
    VALUES (@MaSanPham, @MaDDHT, @MaLoaiDDHT, @MaNhaSanXuat, @NamSanXuat)
END
GO
/****** Object:  StoredProcedure [dbo].[DoDungHocTap_Update]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DoDungHocTap_Update]
    @MaSanPham [varchar](20),
    @MaLoaiSanPham [varchar](20),
    @MaNhaCungCap [varchar](20),
    @MaQuay [varchar](20),
    @MaDVT [varchar](20),
    @TenSanPham [nvarchar](50),
    @DonGia [money],
    @SoLuong [int],
    @TinhTrang [bit],
    @MaDDHT [nvarchar](20),
    @MaLoaiDDHT [varchar](20),
    @MaNhaSanXuat [varchar](20),
    @NamSanXuat [int]
AS
BEGIN
    UPDATE [dbo].[DODUNGHOCTAP]
    SET [MaDDHT] = @MaDDHT, [MaLoaiDDHT] = @MaLoaiDDHT, [MaNhaSanXuat] = @MaNhaSanXuat, [NamSanXuat] = @NamSanXuat
    WHERE ([MaSanPham] = @MaSanPham)
    
    UPDATE [dbo].[SANPHAM]
    SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaQuay] = @MaQuay, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong, [TinhTrang] = @TinhTrang
    WHERE ([MaSanPham] = @MaSanPham)
    AND @@ROWCOUNT > 0
END
GO
/****** Object:  StoredProcedure [dbo].[DonViTinh_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[DonViTinh_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[DonViTinh_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[HoaDonBanHang_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[HoaDonBanHang_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
BEGIN
    INSERT [dbo].[HOADONBANHANG]([MaHoaDon], [NgayBan], [MaNhanVien], [TenKhachHang], [TongThanhTien])
    VALUES (@MaHoaDon, @NgayBan, @MaNhanVien, @TenKhachHang, @TongThanhTien)
END
GO
/****** Object:  StoredProcedure [dbo].[HoaDonBanHang_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[LoaiDDHT_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[LoaiDDHT_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[LoaiDDHT_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[LoaiSanPham_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[LoaiSanPham_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[LoaiSanPham_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaCungCap_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaCungCap_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaCungCap_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[NhanVien_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[NhanVien_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[NhanVien_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaSanXuat_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaSanXuat_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaSanXuat_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaXuatBan_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaXuatBan_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[NhaXuatBan_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuChiKhac_Delete]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuChiKhac_Delete]
    @MaPhieuChiKhac [varchar](20)
AS
BEGIN
    DELETE [dbo].[PHIEUCHIKHAC]
    WHERE ([MaPhieuChiKhac] = @MaPhieuChiKhac)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuChiKhac_Insert]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuChiKhac_Insert]
    @MaPhieuChiKhac [varchar](20),
    @MaNhanVienChi [varchar](20),
    @NgayChi [date],
    @NguoiNhan [nvarchar](50),
    @SoTien [money],
    @LyDo [nvarchar](50)
AS
BEGIN
    INSERT [dbo].[PHIEUCHIKHAC]([MaPhieuChiKhac], [MaNhanVienChi], [NgayChi], [NguoiNhan], [SoTien], [LyDo])
    VALUES (@MaPhieuChiKhac, @MaNhanVienChi, @NgayChi, @NguoiNhan, @SoTien, @LyDo)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuChiKhac_Update]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuChiKhac_Update]
    @MaPhieuChiKhac [varchar](20),
    @MaNhanVienChi [varchar](20),
    @NgayChi [date],
    @NguoiNhan [nvarchar](50),
    @SoTien [money],
    @LyDo [nvarchar](50)
AS
BEGIN
    UPDATE [dbo].[PHIEUCHIKHAC]
    SET [MaNhanVienChi] = @MaNhanVienChi, [NgayChi] = @NgayChi, [NguoiNhan] = @NguoiNhan, [SoTien] = @SoTien, [LyDo] = @LyDo
    WHERE ([MaPhieuChiKhac] = @MaPhieuChiKhac)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuNhapKho_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuNhapKho_Insert]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuNhapKho_Insert]
    @MaPhieuNhap [varchar](20),
    @NgayNhap [date],
    @MaNhanVien [varchar](20),
    @MaNhaCungCap [varchar](20),
    @TongSoLuong [int]
AS
BEGIN
    INSERT [dbo].[PHIEUNHAPKHO]([MaPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap], [TongSoLuong])
    VALUES (@MaPhieuNhap, @NgayNhap, @MaNhanVien, @MaNhaCungCap, @TongSoLuong)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuNhapKho_Update]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuNhapKho_Update]
    @MaPhieuNhap [varchar](20),
    @NgayNhap [date],
    @MaNhanVien [varchar](20),
    @MaNhaCungCap [varchar](20),
    @TongSoLuong [int]
AS
BEGIN
    UPDATE [dbo].[PHIEUNHAPKHO]
    SET [NgayNhap] = @NgayNhap, [MaNhanVien] = @MaNhanVien, [MaNhaCungCap] = @MaNhaCungCap, [TongSoLuong] = @TongSoLuong
    WHERE ([MaPhieuNhap] = @MaPhieuNhap)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuThuKhac_Delete]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuThuKhac_Delete]
    @MaPhieuThuKhac [varchar](20)
AS
BEGIN
    DELETE [dbo].[PHIEUTHUKHAC]
    WHERE ([MaPhieuThuKhac] = @MaPhieuThuKhac)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuThuKhac_Insert]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuThuKhac_Insert]
    @MaPhieuThuKhac [varchar](20),
    @MaNhanVienThu [varchar](20),
    @NgayThu [date],
    @SoTien [money],
    @LyDo [nvarchar](50)
AS
BEGIN
    INSERT [dbo].[PHIEUTHUKHAC]([MaPhieuThuKhac], [MaNhanVienThu], [NgayThu], [SoTien], [LyDo])
    VALUES (@MaPhieuThuKhac, @MaNhanVienThu, @NgayThu, @SoTien, @LyDo)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuThuKhac_Update]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuThuKhac_Update]
    @MaPhieuThuKhac [varchar](20),
    @MaNhanVienThu [varchar](20),
    @NgayThu [date],
    @SoTien [money],
    @LyDo [nvarchar](50)
AS
BEGIN
    UPDATE [dbo].[PHIEUTHUKHAC]
    SET [MaNhanVienThu] = @MaNhanVienThu, [NgayThu] = @NgayThu, [SoTien] = @SoTien, [LyDo] = @LyDo
    WHERE ([MaPhieuThuKhac] = @MaPhieuThuKhac)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuXuatKho_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[PhieuXuatKho_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
BEGIN
    INSERT [dbo].[PHIEUXUATKHO]([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong])
    VALUES (@MaPhieuXuat, @NgayXuat, @MaNhanVien, @TongSoLuong)
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuXuatKho_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[QuayHang_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[QuayHang_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[QuayHang_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[Sach_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[Sach_Insert]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sach_Insert]
    @MaSanPham [varchar](20),
    @MaLoaiSanPham [varchar](20),
    @MaNhaCungCap [varchar](20),
    @MaQuay [varchar](20),
    @MaDVT [varchar](20),
    @TenSanPham [nvarchar](50),
    @DonGia [money],
    @SoLuong [int],
    @TinhTrang [bit],
    @MaSach [nvarchar](20),
    @MaDauSach [varchar](20),
    @MaNhaXuatBan [varchar](20),
    @NamXuatBan [int]
AS
BEGIN
    INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaQuay], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [TinhTrang])
    VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaQuay, @MaDVT, @TenSanPham, @DonGia, @SoLuong, @TinhTrang)
    
    INSERT [dbo].[SACH]([MaSanPham], [MaSach], [MaDauSach], [MaNhaXuatBan], [NamXuatBan])
    VALUES (@MaSanPham, @MaSach, @MaDauSach, @MaNhaXuatBan, @NamXuatBan)
END
GO
/****** Object:  StoredProcedure [dbo].[Sach_Update]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sach_Update]
    @MaSanPham [varchar](20),
    @MaLoaiSanPham [varchar](20),
    @MaNhaCungCap [varchar](20),
    @MaQuay [varchar](20),
    @MaDVT [varchar](20),
    @TenSanPham [nvarchar](50),
    @DonGia [money],
    @SoLuong [int],
    @TinhTrang [bit],
    @MaSach [nvarchar](20),
    @MaDauSach [varchar](20),
    @MaNhaXuatBan [varchar](20),
    @NamXuatBan [int]
AS
BEGIN
    UPDATE [dbo].[SACH]
    SET [MaSach] = @MaSach, [MaDauSach] = @MaDauSach, [MaNhaXuatBan] = @MaNhaXuatBan, [NamXuatBan] = @NamXuatBan
    WHERE ([MaSanPham] = @MaSanPham)
    
    UPDATE [dbo].[SANPHAM]
    SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaQuay] = @MaQuay, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong, [TinhTrang] = @TinhTrang
    WHERE ([MaSanPham] = @MaSanPham)
    AND @@ROWCOUNT > 0
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[SanPham_Insert]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPham_Insert]
    @MaSanPham [varchar](20),
    @MaLoaiSanPham [varchar](20),
    @MaNhaCungCap [varchar](20),
    @MaQuay [varchar](20),
    @MaDVT [varchar](20),
    @TenSanPham [nvarchar](50),
    @DonGia [money],
    @SoLuong [int],
    @TinhTrang [bit]
AS
BEGIN
    INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaQuay], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [TinhTrang])
    VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaQuay, @MaDVT, @TenSanPham, @DonGia, @SoLuong, @TinhTrang)
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Update]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPham_Update]
    @MaSanPham [varchar](20),
    @MaLoaiSanPham [varchar](20),
    @MaNhaCungCap [varchar](20),
    @MaQuay [varchar](20),
    @MaDVT [varchar](20),
    @TenSanPham [nvarchar](50),
    @DonGia [money],
    @SoLuong [int],
    @TinhTrang [bit]
AS
BEGIN
    UPDATE [dbo].[SANPHAM]
    SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaQuay] = @MaQuay, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong, [TinhTrang] = @TinhTrang
    WHERE ([MaSanPham] = @MaSanPham)
END
GO
/****** Object:  StoredProcedure [dbo].[TacGia_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[TacGia_Insert]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TacGia_Insert]
    @MaTacGia [varchar](20) = null,
    @TenTacGia [nvarchar](50)
AS
BEGIN
    set nocount on
    declare @count int
    set @count = (select TacGia from BODEM) + 1
    insert into TACGIA values('TG' + (select right('00000' + CAST(@count as varchar(5)), 5)), @TenTacGia)
    update [BODEM] set TacGia = @count
END
GO
/****** Object:  StoredProcedure [dbo].[TacGia_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[TheLoaiSach_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[TheLoaiSach_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[TheLoaiSach_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[ThongKeBanHang_Delete]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[ThongKeBanHang_Insert]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[ThongKeBanHang_Update]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  StoredProcedure [dbo].[ThueSuat_Delete]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThueSuat_Delete]
    @MaSoThue [varchar](20)
AS
BEGIN
    DELETE [dbo].[THUESUAT]
    WHERE ([MaSoThue] = @MaSoThue)
END
GO
/****** Object:  StoredProcedure [dbo].[ThueSuat_Insert]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThueSuat_Insert]
    @MaSoThue [varchar](20),
    @TenThue [nvarchar](50),
    @GiaTri [float]
AS
BEGIN
    INSERT [dbo].[THUESUAT]([MaSoThue], [TenThue], [GiaTri])
    VALUES (@MaSoThue, @TenThue, @GiaTri)
END
GO
/****** Object:  StoredProcedure [dbo].[ThueSuat_Update]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThueSuat_Update]
    @MaSoThue [varchar](20),
    @TenThue [nvarchar](50),
    @GiaTri [float]
AS
BEGIN
    UPDATE [dbo].[THUESUAT]
    SET [TenThue] = @TenThue, [GiaTri] = @GiaTri
    WHERE ([MaSoThue] = @MaSoThue)
END
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 24/04/2015 10:37:45 ******/
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
/****** Object:  Table [dbo].[BANGCHAMCONG]    Script Date: 24/04/2015 10:37:45 ******/
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
 CONSTRAINT [PK_BANGCHAMCONG] PRIMARY KEY CLUSTERED 
(
	[MaBCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BODEM]    Script Date: 24/04/2015 10:37:45 ******/
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
	[PhieuChiKhac] [int] NOT NULL,
	[PhieuNhapKho] [int] NOT NULL,
	[PhieuThuKhac] [int] NOT NULL,
	[PhieuXuatKho] [int] NOT NULL,
	[QuayHang] [int] NOT NULL,
	[SanPham] [int] NOT NULL,
	[TacGia] [int] NOT NULL,
	[TheLoaiSach] [int] NOT NULL,
	[ThueSuat] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CALAMVIEC]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CALAMVIEC](
	[MaCaLamViec] [varchar](20) NOT NULL,
	[ThoiGianBD] [datetime] NULL,
	[ThoiGianKT] [datetime] NULL,
	[LuongCLV] [money] NULL,
 CONSTRAINT [PK_CALAMVIEC] PRIMARY KEY CLUSTERED 
(
	[MaCaLamViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 24/04/2015 10:37:45 ******/
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
 CONSTRAINT [PK_CHUCVU] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_BANGCHAMCONG]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_BANGCHAMCONG](
	[MaBCC] [varchar](20) NOT NULL,
	[MaNhanVien] [varchar](20) NOT NULL,
 CONSTRAINT [PK_CT_BANGCHAMCONG] PRIMARY KEY CLUSTERED 
(
	[MaBCC] ASC,
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_DAUSACH]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_DAUSACH](
	[MaDauSach] [varchar](20) NOT NULL,
	[MaTacGia] [varchar](20) NOT NULL,
 CONSTRAINT [PK_CT_DAUSACH] PRIMARY KEY CLUSTERED 
(
	[MaDauSach] ASC,
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_HDBANHANG]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_HDBANHANG](
	[MaHoaDon] [varchar](20) NOT NULL,
	[MaSanPham] [varchar](20) NOT NULL,
	[MaSoThue] [varchar](20) NOT NULL,
	[GiaBan] [money] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_CT_HDBANHANG] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_PHIEUNHAPKHO]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_PHIEUNHAPKHO](
	[MaPhieuNhap] [varchar](20) NOT NULL,
	[MaSanPham] [varchar](20) NOT NULL,
	[DonGia] [money] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_CT_PHIEUNHAPKHO] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_PHIEUXUATKHO]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_PHIEUXUATKHO](
	[MaPhieuXuat] [varchar](20) NOT NULL,
	[MaSanPham] [varchar](20) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_CT_PHIEUXUATKHO] PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuat] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_TKBANHANG]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_TKBANHANG](
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
 CONSTRAINT [PK_CT_TKBANHANG] PRIMARY KEY CLUSTERED 
(
	[Thang] ASC,
	[Nam] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DAUSACH]    Script Date: 24/04/2015 10:37:45 ******/
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
 CONSTRAINT [PK_DAUSACH] PRIMARY KEY CLUSTERED 
(
	[MaDauSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DODUNGHOCTAP]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DODUNGHOCTAP](
	[MaSanPham] [varchar](20) NOT NULL,
	[MaDDHT] [nvarchar](20) NULL,
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
/****** Object:  Table [dbo].[DONVITINH]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONVITINH](
	[MaDVT] [varchar](20) NOT NULL,
	[TenDVT] [nvarchar](50) NULL,
 CONSTRAINT [PK_DONVITINH] PRIMARY KEY CLUSTERED 
(
	[MaDVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOADONBANHANG]    Script Date: 24/04/2015 10:37:45 ******/
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
 CONSTRAINT [PK_HOADONBANHANG] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAIDDHT]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAIDDHT](
	[MaLoaiDDHT] [varchar](20) NOT NULL,
	[TenLoaiDDHT] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAIDDHT] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDDHT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MaLoaiSanPham] [varchar](20) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAISANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 24/04/2015 10:37:45 ******/
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
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 24/04/2015 10:37:45 ******/
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
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHASANXUAT]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHASANXUAT](
	[MaNhaSanXuat] [varchar](20) NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHASANXUAT] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[MaNhaXuatBan] [varchar](20) NOT NULL,
	[TenNhaXuatBan] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHAXUATBAN] PRIMARY KEY CLUSTERED 
(
	[MaNhaXuatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUCHIKHAC]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUCHIKHAC](
	[MaPhieuChiKhac] [varchar](20) NOT NULL,
	[MaNhanVienChi] [varchar](20) NOT NULL,
	[NgayChi] [date] NULL,
	[NguoiNhan] [nvarchar](50) NULL,
	[SoTien] [money] NULL,
	[LyDo] [nvarchar](50) NULL,
 CONSTRAINT [PK_PHIEUCHIKHAC] PRIMARY KEY CLUSTERED 
(
	[MaPhieuChiKhac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUNHAPKHO]    Script Date: 24/04/2015 10:37:45 ******/
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
	[MaNhaCungCap] [varchar](20) NOT NULL,
	[TongSoLuong] [int] NULL,
 CONSTRAINT [PK_PHIEUNHAPKHO] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUTHUKHAC]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUTHUKHAC](
	[MaPhieuThuKhac] [varchar](20) NOT NULL,
	[MaNhanVienThu] [varchar](20) NOT NULL,
	[NgayThu] [date] NULL,
	[SoTien] [money] NULL,
	[LyDo] [nvarchar](50) NULL,
 CONSTRAINT [PK_PHIEUTHUKHAC] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThuKhac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUXUATKHO]    Script Date: 24/04/2015 10:37:45 ******/
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
 CONSTRAINT [PK_PHIEUXUATKHO] PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QUAYHANG]    Script Date: 24/04/2015 10:37:45 ******/
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
 CONSTRAINT [PK_QUAYHANG] PRIMARY KEY CLUSTERED 
(
	[MaQuay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACH](
	[MaSanPham] [varchar](20) NOT NULL,
	[MaSach] [nvarchar](20) NULL,
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
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 24/04/2015 10:37:45 ******/
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
	[MaQuay] [varchar](20) NOT NULL,
	[MaDVT] [varchar](20) NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[DonGia] [money] NULL,
	[SoLuong] [int] NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MaTacGia] [varchar](20) NOT NULL,
	[TenTacGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_TACGIA] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THELOAISACH]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THELOAISACH](
	[MaTheLoaiSach] [varchar](20) NOT NULL,
	[TenTheLoaiSach] [nvarchar](50) NULL,
 CONSTRAINT [PK_THELOAISACH] PRIMARY KEY CLUSTERED 
(
	[MaTheLoaiSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THONGKEBANHANG]    Script Date: 24/04/2015 10:37:45 ******/
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
 CONSTRAINT [PK_THONGKEBANHANG] PRIMARY KEY CLUSTERED 
(
	[Thang] ASC,
	[Nam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[THUESUAT]    Script Date: 24/04/2015 10:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THUESUAT](
	[MaSoThue] [varchar](20) NOT NULL,
	[TenThue] [nvarchar](50) NULL,
	[GiaTri] [float] NULL,
 CONSTRAINT [PK_THUESUAT] PRIMARY KEY CLUSTERED 
(
	[MaSoThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaLoaiDDHT]    Script Date: 24/04/2015 10:37:45 ******/
CREATE NONCLUSTERED INDEX [IX_MaLoaiDDHT] ON [dbo].[DODUNGHOCTAP]
(
	[MaLoaiDDHT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhaSanXuat]    Script Date: 24/04/2015 10:37:45 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhaSanXuat] ON [dbo].[DODUNGHOCTAP]
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 24/04/2015 10:37:45 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[DODUNGHOCTAP]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaDauSach]    Script Date: 24/04/2015 10:37:45 ******/
CREATE NONCLUSTERED INDEX [IX_MaDauSach] ON [dbo].[SACH]
(
	[MaDauSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaNhaXuatBan]    Script Date: 24/04/2015 10:37:45 ******/
CREATE NONCLUSTERED INDEX [IX_MaNhaXuatBan] ON [dbo].[SACH]
(
	[MaNhaXuatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MaSanPham]    Script Date: 24/04/2015 10:37:45 ******/
CREATE NONCLUSTERED INDEX [IX_MaSanPham] ON [dbo].[SACH]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BANGCHAMCONG]  WITH CHECK ADD  CONSTRAINT [FK_BANGCHAMCONG_CALAMVIEC] FOREIGN KEY([MaCaLamViec])
REFERENCES [dbo].[CALAMVIEC] ([MaCaLamViec])
GO
ALTER TABLE [dbo].[BANGCHAMCONG] CHECK CONSTRAINT [FK_BANGCHAMCONG_CALAMVIEC]
GO
ALTER TABLE [dbo].[BANGCHAMCONG]  WITH CHECK ADD  CONSTRAINT [FK_BANGCHAMCONG_NHANVIEN] FOREIGN KEY([NguoiChamCong])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[BANGCHAMCONG] CHECK CONSTRAINT [FK_BANGCHAMCONG_NHANVIEN]
GO
ALTER TABLE [dbo].[CT_BANGCHAMCONG]  WITH CHECK ADD  CONSTRAINT [FK_CT_BANGCHAMCONG_BANGCHAMCONG] FOREIGN KEY([MaBCC])
REFERENCES [dbo].[BANGCHAMCONG] ([MaBCC])
GO
ALTER TABLE [dbo].[CT_BANGCHAMCONG] CHECK CONSTRAINT [FK_CT_BANGCHAMCONG_BANGCHAMCONG]
GO
ALTER TABLE [dbo].[CT_BANGCHAMCONG]  WITH CHECK ADD  CONSTRAINT [FK_CT_BANGCHAMCONG_NHANVIEN] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[CT_BANGCHAMCONG] CHECK CONSTRAINT [FK_CT_BANGCHAMCONG_NHANVIEN]
GO
ALTER TABLE [dbo].[CT_DAUSACH]  WITH CHECK ADD  CONSTRAINT [FK_CT_DAUSACH_DAUSACH] FOREIGN KEY([MaDauSach])
REFERENCES [dbo].[DAUSACH] ([MaDauSach])
GO
ALTER TABLE [dbo].[CT_DAUSACH] CHECK CONSTRAINT [FK_CT_DAUSACH_DAUSACH]
GO
ALTER TABLE [dbo].[CT_DAUSACH]  WITH CHECK ADD  CONSTRAINT [FK_CT_DAUSACH_TACGIA] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TACGIA] ([MaTacGia])
GO
ALTER TABLE [dbo].[CT_DAUSACH] CHECK CONSTRAINT [FK_CT_DAUSACH_TACGIA]
GO
ALTER TABLE [dbo].[CT_HDBANHANG]  WITH CHECK ADD  CONSTRAINT [FK_CT_HDBANHANG_HOADONBANHANG] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HOADONBANHANG] ([MaHoaDon])
GO
ALTER TABLE [dbo].[CT_HDBANHANG] CHECK CONSTRAINT [FK_CT_HDBANHANG_HOADONBANHANG]
GO
ALTER TABLE [dbo].[CT_HDBANHANG]  WITH CHECK ADD  CONSTRAINT [FK_CT_HDBANHANG_SANPHAM] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CT_HDBANHANG] CHECK CONSTRAINT [FK_CT_HDBANHANG_SANPHAM]
GO
ALTER TABLE [dbo].[CT_HDBANHANG]  WITH CHECK ADD  CONSTRAINT [FK_CT_HDBANHANG_THUESUAT] FOREIGN KEY([MaSoThue])
REFERENCES [dbo].[THUESUAT] ([MaSoThue])
GO
ALTER TABLE [dbo].[CT_HDBANHANG] CHECK CONSTRAINT [FK_CT_HDBANHANG_THUESUAT]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAPKHO]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUNHAPKHO_PHIEUNHAPKHO] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PHIEUNHAPKHO] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAPKHO] CHECK CONSTRAINT [FK_CT_PHIEUNHAPKHO_PHIEUNHAPKHO]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAPKHO]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUNHAPKHO_SANPHAM] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAPKHO] CHECK CONSTRAINT [FK_CT_PHIEUNHAPKHO_SANPHAM]
GO
ALTER TABLE [dbo].[CT_PHIEUXUATKHO]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUXUATKHO_PHIEUXUATKHO] FOREIGN KEY([MaPhieuXuat])
REFERENCES [dbo].[PHIEUXUATKHO] ([MaPhieuXuat])
GO
ALTER TABLE [dbo].[CT_PHIEUXUATKHO] CHECK CONSTRAINT [FK_CT_PHIEUXUATKHO_PHIEUXUATKHO]
GO
ALTER TABLE [dbo].[CT_PHIEUXUATKHO]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUXUATKHO_SANPHAM] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CT_PHIEUXUATKHO] CHECK CONSTRAINT [FK_CT_PHIEUXUATKHO_SANPHAM]
GO
ALTER TABLE [dbo].[CT_TKBANHANG]  WITH CHECK ADD  CONSTRAINT [FK_CT_TKBANHANG_SANPHAM] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CT_TKBANHANG] CHECK CONSTRAINT [FK_CT_TKBANHANG_SANPHAM]
GO
ALTER TABLE [dbo].[CT_TKBANHANG]  WITH CHECK ADD  CONSTRAINT [FK_CT_TKBANHANG_THONGKEBANHANG] FOREIGN KEY([Thang], [Nam])
REFERENCES [dbo].[THONGKEBANHANG] ([Thang], [Nam])
GO
ALTER TABLE [dbo].[CT_TKBANHANG] CHECK CONSTRAINT [FK_CT_TKBANHANG_THONGKEBANHANG]
GO
ALTER TABLE [dbo].[DAUSACH]  WITH CHECK ADD  CONSTRAINT [FK_DAUSACH_THELOAISACH] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[THELOAISACH] ([MaTheLoaiSach])
GO
ALTER TABLE [dbo].[DAUSACH] CHECK CONSTRAINT [FK_DAUSACH_THELOAISACH]
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
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_CHUCVU] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[CHUCVU] ([MaChucVu])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_CHUCVU]
GO
ALTER TABLE [dbo].[PHIEUCHIKHAC]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUCHIKHAC_NHANVIEN] FOREIGN KEY([MaNhanVienChi])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PHIEUCHIKHAC] CHECK CONSTRAINT [FK_PHIEUCHIKHAC_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUNHAPKHO]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAPKHO_NHANVIEN] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PHIEUNHAPKHO] CHECK CONSTRAINT [FK_PHIEUNHAPKHO_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUTHUKHAC]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUTHUKHAC_NHANVIEN] FOREIGN KEY([MaNhanVienThu])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PHIEUTHUKHAC] CHECK CONSTRAINT [FK_PHIEUTHUKHAC_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUXUATKHO]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUXUATKHO_NHANVIEN] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PHIEUXUATKHO] CHECK CONSTRAINT [FK_PHIEUXUATKHO_NHANVIEN]
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
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_DONVITINH] FOREIGN KEY([MaDVT])
REFERENCES [dbo].[DONVITINH] ([MaDVT])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_DONVITINH]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_LOAISANPHAM] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LOAISANPHAM] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_LOAISANPHAM]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_NHACUNGCAP] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NHACUNGCAP] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_NHACUNGCAP]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_QUAYHANG] FOREIGN KEY([MaQuay])
REFERENCES [dbo].[QUAYHANG] ([MaQuay])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_QUAYHANG]