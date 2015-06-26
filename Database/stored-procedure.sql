
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

CREATE PROCEDURE [dbo].[HoaDonBanHang_PhatSinhMa]
    @MaHoadon varchar(20) output
AS
BEGIN TRANSACTION
	declare @count int
	set @count = (select HoaDonBanHang from BODEM) + 1
	set @MaHoaDon = 'HD' + (select right('000000' + CAST(@count as varchar(6)), 6))
COMMIT TRANSACTION
GO

ALTER PROCEDURE [dbo].[HoaDonBanHang_Insert]
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

ALTER PROCEDURE [dbo].[CT_HDBanHang_Insert]
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

CREATE PROCEDURE [dbo].[PhieuXuatKho_PhatSinhMa]
@MaPhieuXuat varchar(20) output
AS
BEGIN TRANSACTION
	declare @count int
	set @count = (select PhieuXuatKho from BODEM) + 1
	set @MaPhieuXuat = 'PXK' + (select right('000000' + CAST(@count as varchar(6)), 6))
COMMIT TRANSACTION
GO

ALTER PROCEDURE [dbo].[PhieuXuatKho_Insert]
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

ALTER PROCEDURE [dbo].[CT_PhieuXuatKho_Insert]
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

ALTER PROCEDURE [dbo].[CT_SanPham_Insert]
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