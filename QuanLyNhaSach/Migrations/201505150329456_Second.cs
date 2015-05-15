namespace DAL.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Second : DbMigration
    {
        public override void Up()
        {
            /*CreateStoredProcedure(
                "dbo.BANGCHAMCONG_Insert",
                p => new
                    {
                        MaBCC = p.String(maxLength: 20, unicode: false),
                        MaCaLamViec = p.String(maxLength: 20, unicode: false),
                        NgayChamCong = p.DateTime(storeType: "date"),
                        NguoiChamCong = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"INSERT [dbo].[BANGCHAMCONG]([MaBCC], [MaCaLamViec], [NgayChamCong], [NguoiChamCong])
                      VALUES (@MaBCC, @MaCaLamViec, @NgayChamCong, @NguoiChamCong)"
            );
            
            CreateStoredProcedure(
                "dbo.BANGCHAMCONG_Update",
                p => new
                    {
                        MaBCC = p.String(maxLength: 20, unicode: false),
                        MaCaLamViec = p.String(maxLength: 20, unicode: false),
                        NgayChamCong = p.DateTime(storeType: "date"),
                        NguoiChamCong = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"UPDATE [dbo].[BANGCHAMCONG]
                      SET [MaCaLamViec] = @MaCaLamViec, [NgayChamCong] = @NgayChamCong, [NguoiChamCong] = @NguoiChamCong
                      WHERE ([MaBCC] = @MaBCC)"
            );
            
            CreateStoredProcedure(
                "dbo.BANGCHAMCONG_Delete",
                p => new
                    {
                        MaBCC = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[BANGCHAMCONG]
                      WHERE ([MaBCC] = @MaBCC)"
            );
            
            CreateStoredProcedure(
                "dbo.CALAMVIEC_Insert",
                p => new
                    {
                        MaCaLamViec = p.String(maxLength: 20, unicode: false),
                        ThoiGianBD = p.DateTime(),
                        ThoiGianKT = p.DateTime(),
                        LuongCLV = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                    },
                body:
                    @"INSERT [dbo].[CALAMVIEC]([MaCaLamViec], [ThoiGianBD], [ThoiGianKT], [LuongCLV])
                      VALUES (@MaCaLamViec, @ThoiGianBD, @ThoiGianKT, @LuongCLV)"
            );
            
            CreateStoredProcedure(
                "dbo.CALAMVIEC_Update",
                p => new
                    {
                        MaCaLamViec = p.String(maxLength: 20, unicode: false),
                        ThoiGianBD = p.DateTime(),
                        ThoiGianKT = p.DateTime(),
                        LuongCLV = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                    },
                body:
                    @"UPDATE [dbo].[CALAMVIEC]
                      SET [ThoiGianBD] = @ThoiGianBD, [ThoiGianKT] = @ThoiGianKT, [LuongCLV] = @LuongCLV
                      WHERE ([MaCaLamViec] = @MaCaLamViec)"
            );
            
            CreateStoredProcedure(
                "dbo.CALAMVIEC_Delete",
                p => new
                    {
                        MaCaLamViec = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[CALAMVIEC]
                      WHERE ([MaCaLamViec] = @MaCaLamViec)"
            );
            
            CreateStoredProcedure(
                "dbo.NHANVIEN_Insert",
                p => new
                    {
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                        MaChucVu = p.String(maxLength: 20, unicode: false),
                        TenNhanVien = p.String(maxLength: 50),
                        DiaChi = p.String(maxLength: 100),
                        DienThoai = p.String(maxLength: 20, unicode: false),
                        LuongNhanVien = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                    },
                body:
                    @"INSERT [dbo].[NHANVIEN]([MaNhanVien], [MaChucVu], [TenNhanVien], [DiaChi], [DienThoai], [LuongNhanVien])
                      VALUES (@MaNhanVien, @MaChucVu, @TenNhanVien, @DiaChi, @DienThoai, @LuongNhanVien)"
            );
            
            CreateStoredProcedure(
                "dbo.NHANVIEN_Update",
                p => new
                    {
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                        MaChucVu = p.String(maxLength: 20, unicode: false),
                        TenNhanVien = p.String(maxLength: 50),
                        DiaChi = p.String(maxLength: 100),
                        DienThoai = p.String(maxLength: 20, unicode: false),
                        LuongNhanVien = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                    },
                body:
                    @"UPDATE [dbo].[NHANVIEN]
                      SET [MaChucVu] = @MaChucVu, [TenNhanVien] = @TenNhanVien, [DiaChi] = @DiaChi, [DienThoai] = @DienThoai, [LuongNhanVien] = @LuongNhanVien
                      WHERE ([MaNhanVien] = @MaNhanVien)"
            );
            
            CreateStoredProcedure(
                "dbo.NHANVIEN_Delete",
                p => new
                    {
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[NHANVIEN]
                      WHERE ([MaNhanVien] = @MaNhanVien)"
            );
            
            CreateStoredProcedure(
                "dbo.CHUCVU_Insert",
                p => new
                    {
                        MaChucVu = p.String(maxLength: 20, unicode: false),
                        TenChucVu = p.String(maxLength: 50),
                        TrachNhiem = p.String(maxLength: 50),
                    },
                body:
                    @"INSERT [dbo].[CHUCVU]([MaChucVu], [TenChucVu], [TrachNhiem])
                      VALUES (@MaChucVu, @TenChucVu, @TrachNhiem)"
            );
            
            CreateStoredProcedure(
                "dbo.CHUCVU_Update",
                p => new
                    {
                        MaChucVu = p.String(maxLength: 20, unicode: false),
                        TenChucVu = p.String(maxLength: 50),
                        TrachNhiem = p.String(maxLength: 50),
                    },
                body:
                    @"UPDATE [dbo].[CHUCVU]
                      SET [TenChucVu] = @TenChucVu, [TrachNhiem] = @TrachNhiem
                      WHERE ([MaChucVu] = @MaChucVu)"
            );
            
            CreateStoredProcedure(
                "dbo.CHUCVU_Delete",
                p => new
                    {
                        MaChucVu = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[CHUCVU]
                      WHERE ([MaChucVu] = @MaChucVu)"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUCHI_Insert",
                p => new
                    {
                        MaPhieuChi = p.String(maxLength: 20, unicode: false),
                        MaNhanVienChi = p.String(maxLength: 20, unicode: false),
                        NgayChi = p.DateTime(storeType: "date"),
                        NguoiNhan = p.String(maxLength: 50),
                        SoTien = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        LyDo = p.String(maxLength: 50),
                    },
                body:
                    @"INSERT [dbo].[PHIEUCHI]([MaPhieuChi], [MaNhanVienChi], [NgayChi], [NguoiNhan], [SoTien], [LyDo])
                      VALUES (@MaPhieuChi, @MaNhanVienChi, @NgayChi, @NguoiNhan, @SoTien, @LyDo)"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUCHI_Update",
                p => new
                    {
                        MaPhieuChi = p.String(maxLength: 20, unicode: false),
                        MaNhanVienChi = p.String(maxLength: 20, unicode: false),
                        NgayChi = p.DateTime(storeType: "date"),
                        NguoiNhan = p.String(maxLength: 50),
                        SoTien = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        LyDo = p.String(maxLength: 50),
                    },
                body:
                    @"UPDATE [dbo].[PHIEUCHI]
                      SET [MaNhanVienChi] = @MaNhanVienChi, [NgayChi] = @NgayChi, [NguoiNhan] = @NguoiNhan, [SoTien] = @SoTien, [LyDo] = @LyDo
                      WHERE ([MaPhieuChi] = @MaPhieuChi)"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUCHI_Delete",
                p => new
                    {
                        MaPhieuChi = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[PHIEUCHI]
                      WHERE ([MaPhieuChi] = @MaPhieuChi)"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUDATMUA_Insert",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        NgayDatMua = p.DateTime(storeType: "date"),
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        TongSoLuong = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[PHIEUDATMUA]([MaPhieuDatMua], [NgayDatMua], [MaNhanVien], [MaNhaCungCap], [TongSoLuong])
                      VALUES (@MaPhieuDatMua, @NgayDatMua, @MaNhanVien, @MaNhaCungCap, @TongSoLuong)"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUDATMUA_Update",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        NgayDatMua = p.DateTime(storeType: "date"),
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        TongSoLuong = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[PHIEUDATMUA]
                      SET [NgayDatMua] = @NgayDatMua, [MaNhanVien] = @MaNhanVien, [MaNhaCungCap] = @MaNhaCungCap, [TongSoLuong] = @TongSoLuong
                      WHERE ([MaPhieuDatMua] = @MaPhieuDatMua)"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUDATMUA_Delete",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[PHIEUDATMUA]
                      WHERE ([MaPhieuDatMua] = @MaPhieuDatMua)"
            );
            
            CreateStoredProcedure(
                "dbo.CT_PHIEUDATMUA_Insert",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        DonGia = p.Double(),
                        SoLuong = p.Double(),
                        TinhTrang = p.Boolean(),
                    },
                body:
                    @"INSERT [dbo].[CT_PHIEUDATMUA]([MaPhieuDatMua], [MaSanPham], [DonGia], [SoLuong], [TinhTrang])
                      VALUES (@MaPhieuDatMua, @MaSanPham, @DonGia, @SoLuong, @TinhTrang)"
            );
            
            CreateStoredProcedure(
                "dbo.CT_PHIEUDATMUA_Update",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        DonGia = p.Double(),
                        SoLuong = p.Double(),
                        TinhTrang = p.Boolean(),
                    },
                body:
                    @"UPDATE [dbo].[CT_PHIEUDATMUA]
                      SET [DonGia] = @DonGia, [SoLuong] = @SoLuong, [TinhTrang] = @TinhTrang
                      WHERE (([MaPhieuDatMua] = @MaPhieuDatMua) AND ([MaSanPham] = @MaSanPham))"
            );
            
            CreateStoredProcedure(
                "dbo.CT_PHIEUDATMUA_Delete",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[CT_PHIEUDATMUA]
                      WHERE (([MaPhieuDatMua] = @MaPhieuDatMua) AND ([MaSanPham] = @MaSanPham))"
            );
            
            CreateStoredProcedure(
                "dbo.SANPHAM_Insert",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        MaQuay = p.String(maxLength: 20, unicode: false),
                        MaDVT = p.String(maxLength: 20, unicode: false),
                        TenSanPham = p.String(maxLength: 50),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                        TinhTrang = p.Boolean(),
                    },
                body:
                    @"INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaQuay], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [TinhTrang])
                      VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaQuay, @MaDVT, @TenSanPham, @DonGia, @SoLuong, @TinhTrang)"
            );
            
            CreateStoredProcedure(
                "dbo.SANPHAM_Update",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        MaQuay = p.String(maxLength: 20, unicode: false),
                        MaDVT = p.String(maxLength: 20, unicode: false),
                        TenSanPham = p.String(maxLength: 50),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                        TinhTrang = p.Boolean(),
                    },
                body:
                    @"UPDATE [dbo].[SANPHAM]
                      SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaQuay] = @MaQuay, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong, [TinhTrang] = @TinhTrang
                      WHERE ([MaSanPham] = @MaSanPham)"
            );
            
            CreateStoredProcedure(
                "dbo.SANPHAM_Delete",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[SANPHAM]
                      WHERE ([MaSanPham] = @MaSanPham)"
            );
            
            CreateStoredProcedure(
                "dbo.DODUNGHOCTAP_Insert",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        MaQuay = p.String(maxLength: 20, unicode: false),
                        MaDVT = p.String(maxLength: 20, unicode: false),
                        TenSanPham = p.String(maxLength: 50),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                        TinhTrang = p.Boolean(),
                        MaDDHT = p.String(maxLength: 20),
                        MaLoaiDDHT = p.String(maxLength: 20, unicode: false),
                        MaNhaSanXuat = p.String(maxLength: 20, unicode: false),
                        NamSanXuat = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaQuay], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [TinhTrang])
                      VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaQuay, @MaDVT, @TenSanPham, @DonGia, @SoLuong, @TinhTrang)
                      
                      INSERT [dbo].[DODUNGHOCTAP]([MaSanPham], [MaDDHT], [MaLoaiDDHT], [MaNhaSanXuat], [NamSanXuat])
                      VALUES (@MaSanPham, @MaDDHT, @MaLoaiDDHT, @MaNhaSanXuat, @NamSanXuat)"
            );
            
            CreateStoredProcedure(
                "dbo.DODUNGHOCTAP_Update",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        MaQuay = p.String(maxLength: 20, unicode: false),
                        MaDVT = p.String(maxLength: 20, unicode: false),
                        TenSanPham = p.String(maxLength: 50),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                        TinhTrang = p.Boolean(),
                        MaDDHT = p.String(maxLength: 20),
                        MaLoaiDDHT = p.String(maxLength: 20, unicode: false),
                        MaNhaSanXuat = p.String(maxLength: 20, unicode: false),
                        NamSanXuat = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[DODUNGHOCTAP]
                      SET [MaDDHT] = @MaDDHT, [MaLoaiDDHT] = @MaLoaiDDHT, [MaNhaSanXuat] = @MaNhaSanXuat, [NamSanXuat] = @NamSanXuat
                      WHERE ([MaSanPham] = @MaSanPham)
                      
                      UPDATE [dbo].[SANPHAM]
                      SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaQuay] = @MaQuay, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong, [TinhTrang] = @TinhTrang
                      WHERE ([MaSanPham] = @MaSanPham)
                      AND @@ROWCOUNT > 0"
            );
            
            CreateStoredProcedure(
                "dbo.DODUNGHOCTAP_Delete",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[DODUNGHOCTAP]
                      WHERE ([MaSanPham] = @MaSanPham)
                      
                      DELETE [dbo].[SANPHAM]
                      WHERE ([MaSanPham] = @MaSanPham)
                      AND @@ROWCOUNT > 0"
            );
            
            CreateStoredProcedure(
                "dbo.SACH_Insert",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        MaQuay = p.String(maxLength: 20, unicode: false),
                        MaDVT = p.String(maxLength: 20, unicode: false),
                        TenSanPham = p.String(maxLength: 50),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                        TinhTrang = p.Boolean(),
                        MaSach = p.String(maxLength: 20),
                        MaDauSach = p.String(maxLength: 20, unicode: false),
                        MaNhaXuatBan = p.String(maxLength: 20, unicode: false),
                        NamXuatBan = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaQuay], [MaDVT], [TenSanPham], [DonGia], [SoLuong], [TinhTrang])
                      VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaQuay, @MaDVT, @TenSanPham, @DonGia, @SoLuong, @TinhTrang)
                      
                      INSERT [dbo].[SACH]([MaSanPham], [MaSach], [MaDauSach], [MaNhaXuatBan], [NamXuatBan])
                      VALUES (@MaSanPham, @MaSach, @MaDauSach, @MaNhaXuatBan, @NamXuatBan)"
            );
            
            CreateStoredProcedure(
                "dbo.SACH_Update",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        MaQuay = p.String(maxLength: 20, unicode: false),
                        MaDVT = p.String(maxLength: 20, unicode: false),
                        TenSanPham = p.String(maxLength: 50),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                        TinhTrang = p.Boolean(),
                        MaSach = p.String(maxLength: 20),
                        MaDauSach = p.String(maxLength: 20, unicode: false),
                        MaNhaXuatBan = p.String(maxLength: 20, unicode: false),
                        NamXuatBan = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[SACH]
                      SET [MaSach] = @MaSach, [MaDauSach] = @MaDauSach, [MaNhaXuatBan] = @MaNhaXuatBan, [NamXuatBan] = @NamXuatBan
                      WHERE ([MaSanPham] = @MaSanPham)
                      
                      UPDATE [dbo].[SANPHAM]
                      SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaQuay] = @MaQuay, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong, [TinhTrang] = @TinhTrang
                      WHERE ([MaSanPham] = @MaSanPham)
                      AND @@ROWCOUNT > 0"
            );
            
            CreateStoredProcedure(
                "dbo.SACH_Delete",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[SACH]
                      WHERE ([MaSanPham] = @MaSanPham)
                      
                      DELETE [dbo].[SANPHAM]
                      WHERE ([MaSanPham] = @MaSanPham)
                      AND @@ROWCOUNT > 0"
            );
            
            CreateStoredProcedure(
                "dbo.CT_HDBanHang_Insert",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaSoThue = p.String(maxLength: 20, unicode: false),
                        GiaBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[CT_HDBanHang]([MaHoaDon], [MaSanPham], [MaSoThue], [GiaBan], [SoLuong])
                      VALUES (@MaHoaDon, @MaSanPham, @MaSoThue, @GiaBan, @SoLuong)"
            );
            
            CreateStoredProcedure(
                "dbo.CT_HDBanHang_Update",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaSoThue = p.String(maxLength: 20, unicode: false),
                        GiaBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[CT_HDBanHang]
                      SET [MaSoThue] = @MaSoThue, [GiaBan] = @GiaBan, [SoLuong] = @SoLuong
                      WHERE (([MaHoaDon] = @MaHoaDon) AND ([MaSanPham] = @MaSanPham))"
            );
            
            CreateStoredProcedure(
                "dbo.CT_HDBanHang_Delete",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[CT_HDBanHang]
                      WHERE (([MaHoaDon] = @MaHoaDon) AND ([MaSanPham] = @MaSanPham))"
            );
            
            CreateStoredProcedure(
                "dbo.HOADONBANHANG_Insert",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                        NgayBan = p.DateTime(storeType: "date"),
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                        TenKhachHang = p.String(maxLength: 50),
                        TongThanhTien = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                    },
                body:
                    @"INSERT [dbo].[HOADONBANHANG]([MaHoaDon], [NgayBan], [MaNhanVien], [TenKhachHang], [TongThanhTien])
                      VALUES (@MaHoaDon, @NgayBan, @MaNhanVien, @TenKhachHang, @TongThanhTien)"
            );
            
            CreateStoredProcedure(
                "dbo.HOADONBANHANG_Update",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                        NgayBan = p.DateTime(storeType: "date"),
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                        TenKhachHang = p.String(maxLength: 50),
                        TongThanhTien = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                    },
                body:
                    @"UPDATE [dbo].[HOADONBANHANG]
                      SET [NgayBan] = @NgayBan, [MaNhanVien] = @MaNhanVien, [TenKhachHang] = @TenKhachHang, [TongThanhTien] = @TongThanhTien
                      WHERE ([MaHoaDon] = @MaHoaDon)"
            );
            
            CreateStoredProcedure(
                "dbo.HOADONBANHANG_Delete",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[HOADONBANHANG]
                      WHERE ([MaHoaDon] = @MaHoaDon)"
            );
            
            CreateStoredProcedure(
                "dbo.THUESUAT_Insert",
                p => new
                    {
                        MaSoThue = p.String(maxLength: 20, unicode: false),
                        TenThue = p.String(maxLength: 50),
                        GiaTri = p.Double(),
                    },
                body:
                    @"INSERT [dbo].[THUESUAT]([MaSoThue], [TenThue], [GiaTri])
                      VALUES (@MaSoThue, @TenThue, @GiaTri)"
            );
            
            CreateStoredProcedure(
                "dbo.THUESUAT_Update",
                p => new
                    {
                        MaSoThue = p.String(maxLength: 20, unicode: false),
                        TenThue = p.String(maxLength: 50),
                        GiaTri = p.Double(),
                    },
                body:
                    @"UPDATE [dbo].[THUESUAT]
                      SET [TenThue] = @TenThue, [GiaTri] = @GiaTri
                      WHERE ([MaSoThue] = @MaSoThue)"
            );
            
            CreateStoredProcedure(
                "dbo.THUESUAT_Delete",
                p => new
                    {
                        MaSoThue = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[THUESUAT]
                      WHERE ([MaSoThue] = @MaSoThue)"
            );
            
            CreateStoredProcedure(
                "dbo.CT_PhieuNhapKho_Insert",
                p => new
                    {
                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[CT_PhieuNhapKho]([MaPhieuNhap], [MaSanPham], [DonGia], [SoLuong])
                      VALUES (@MaPhieuNhap, @MaSanPham, @DonGia, @SoLuong)"
            );
            
            CreateStoredProcedure(
                "dbo.CT_PhieuNhapKho_Update",
                p => new
                    {
                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[CT_PhieuNhapKho]
                      SET [DonGia] = @DonGia, [SoLuong] = @SoLuong
                      WHERE (([MaPhieuNhap] = @MaPhieuNhap) AND ([MaSanPham] = @MaSanPham))"
            );
            
            CreateStoredProcedure(
                "dbo.CT_PhieuNhapKho_Delete",
                p => new
                    {
                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[CT_PhieuNhapKho]
                      WHERE (([MaPhieuNhap] = @MaPhieuNhap) AND ([MaSanPham] = @MaSanPham))"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUNHAPKHO_Insert",
                p => new
                    {
                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
                        NgayNhap = p.DateTime(storeType: "date"),
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        TongSoLuong = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[PHIEUNHAPKHO]([MaPhieuNhap], [NgayNhap], [MaNhanVien], [MaPhieuDatMua], [TongSoLuong])
                      VALUES (@MaPhieuNhap, @NgayNhap, @MaNhanVien, @MaPhieuDatMua, @TongSoLuong)"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUNHAPKHO_Update",
                p => new
                    {
                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
                        NgayNhap = p.DateTime(storeType: "date"),
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        TongSoLuong = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[PHIEUNHAPKHO]
                      SET [NgayNhap] = @NgayNhap, [MaNhanVien] = @MaNhanVien, [MaPhieuDatMua] = @MaPhieuDatMua, [TongSoLuong] = @TongSoLuong
                      WHERE ([MaPhieuNhap] = @MaPhieuNhap)"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUNHAPKHO_Delete",
                p => new
                    {
                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[PHIEUNHAPKHO]
                      WHERE ([MaPhieuNhap] = @MaPhieuNhap)"
            );
            
            CreateStoredProcedure(
                "dbo.CT_PhieuXuatKho_Insert",
                p => new
                    {
                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        SoLuong = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[CT_PhieuXuatKho]([MaPhieuXuat], [MaSanPham], [SoLuong])
                      VALUES (@MaPhieuXuat, @MaSanPham, @SoLuong)"
            );
            
            CreateStoredProcedure(
                "dbo.CT_PhieuXuatKho_Update",
                p => new
                    {
                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        SoLuong = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[CT_PhieuXuatKho]
                      SET [SoLuong] = @SoLuong
                      WHERE (([MaPhieuXuat] = @MaPhieuXuat) AND ([MaSanPham] = @MaSanPham))"
            );
            
            CreateStoredProcedure(
                "dbo.CT_PhieuXuatKho_Delete",
                p => new
                    {
                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[CT_PhieuXuatKho]
                      WHERE (([MaPhieuXuat] = @MaPhieuXuat) AND ([MaSanPham] = @MaSanPham))"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUXUATKHO_Insert",
                p => new
                    {
                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
                        NgayXuat = p.DateTime(storeType: "date"),
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                        TongSoLuong = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[PHIEUXUATKHO]([MaPhieuXuat], [NgayXuat], [MaNhanVien], [TongSoLuong])
                      VALUES (@MaPhieuXuat, @NgayXuat, @MaNhanVien, @TongSoLuong)"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUXUATKHO_Update",
                p => new
                    {
                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
                        NgayXuat = p.DateTime(storeType: "date"),
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                        TongSoLuong = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[PHIEUXUATKHO]
                      SET [NgayXuat] = @NgayXuat, [MaNhanVien] = @MaNhanVien, [TongSoLuong] = @TongSoLuong
                      WHERE ([MaPhieuXuat] = @MaPhieuXuat)"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUXUATKHO_Delete",
                p => new
                    {
                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[PHIEUXUATKHO]
                      WHERE ([MaPhieuXuat] = @MaPhieuXuat)"
            );
            
            CreateStoredProcedure(
                "dbo.CT_TKBanHang_Insert",
                p => new
                    {
                        Thang = p.Int(),
                        Nam = p.Int(),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        TonDau = p.Int(),
                        SoLuongNhap = p.Int(),
                        TienNhap = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuongXuat = p.Int(),
                        TonCuoi = p.Int(),
                        SoLuongBan = p.Int(),
                        TienBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                    },
                body:
                    @"INSERT [dbo].[CT_TKBanHang]([Thang], [Nam], [MaSanPham], [TonDau], [SoLuongNhap], [TienNhap], [SoLuongXuat], [TonCuoi], [SoLuongBan], [TienBan])
                      VALUES (@Thang, @Nam, @MaSanPham, @TonDau, @SoLuongNhap, @TienNhap, @SoLuongXuat, @TonCuoi, @SoLuongBan, @TienBan)"
            );
            
            CreateStoredProcedure(
                "dbo.CT_TKBanHang_Update",
                p => new
                    {
                        Thang = p.Int(),
                        Nam = p.Int(),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        TonDau = p.Int(),
                        SoLuongNhap = p.Int(),
                        TienNhap = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuongXuat = p.Int(),
                        TonCuoi = p.Int(),
                        SoLuongBan = p.Int(),
                        TienBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                    },
                body:
                    @"UPDATE [dbo].[CT_TKBanHang]
                      SET [TonDau] = @TonDau, [SoLuongNhap] = @SoLuongNhap, [TienNhap] = @TienNhap, [SoLuongXuat] = @SoLuongXuat, [TonCuoi] = @TonCuoi, [SoLuongBan] = @SoLuongBan, [TienBan] = @TienBan
                      WHERE ((([Thang] = @Thang) AND ([Nam] = @Nam)) AND ([MaSanPham] = @MaSanPham))"
            );
            
            CreateStoredProcedure(
                "dbo.CT_TKBanHang_Delete",
                p => new
                    {
                        Thang = p.Int(),
                        Nam = p.Int(),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[CT_TKBanHang]
                      WHERE ((([Thang] = @Thang) AND ([Nam] = @Nam)) AND ([MaSanPham] = @MaSanPham))"
            );
            
            CreateStoredProcedure(
                "dbo.THONGKEBANHANG_Insert",
                p => new
                    {
                        Thang = p.Int(),
                        Nam = p.Int(),
                        TongTonDau = p.Int(),
                        TongSoLuongNhap = p.Int(),
                        TongTienNhap = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        TongSoLuongXuat = p.Int(),
                        TongTonCuoi = p.Int(),
                        TongSoLuongBan = p.Int(),
                        TongTienBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                    },
                body:
                    @"INSERT [dbo].[THONGKEBANHANG]([Thang], [Nam], [TongTonDau], [TongSoLuongNhap], [TongTienNhap], [TongSoLuongXuat], [TongTonCuoi], [TongSoLuongBan], [TongTienBan])
                      VALUES (@Thang, @Nam, @TongTonDau, @TongSoLuongNhap, @TongTienNhap, @TongSoLuongXuat, @TongTonCuoi, @TongSoLuongBan, @TongTienBan)"
            );
            
            CreateStoredProcedure(
                "dbo.THONGKEBANHANG_Update",
                p => new
                    {
                        Thang = p.Int(),
                        Nam = p.Int(),
                        TongTonDau = p.Int(),
                        TongSoLuongNhap = p.Int(),
                        TongTienNhap = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        TongSoLuongXuat = p.Int(),
                        TongTonCuoi = p.Int(),
                        TongSoLuongBan = p.Int(),
                        TongTienBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                    },
                body:
                    @"UPDATE [dbo].[THONGKEBANHANG]
                      SET [TongTonDau] = @TongTonDau, [TongSoLuongNhap] = @TongSoLuongNhap, [TongTienNhap] = @TongTienNhap, [TongSoLuongXuat] = @TongSoLuongXuat, [TongTonCuoi] = @TongTonCuoi, [TongSoLuongBan] = @TongSoLuongBan, [TongTienBan] = @TongTienBan
                      WHERE (([Thang] = @Thang) AND ([Nam] = @Nam))"
            );
            
            CreateStoredProcedure(
                "dbo.THONGKEBANHANG_Delete",
                p => new
                    {
                        Thang = p.Int(),
                        Nam = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[THONGKEBANHANG]
                      WHERE (([Thang] = @Thang) AND ([Nam] = @Nam))"
            );
            
            CreateStoredProcedure(
                "dbo.DONVITINH_Insert",
                p => new
                    {
                        MaDVT = p.String(maxLength: 20, unicode: false),
                        TenDVT = p.String(maxLength: 50),
                    },
                body:
                    @"INSERT [dbo].[DONVITINH]([MaDVT], [TenDVT])
                      VALUES (@MaDVT, @TenDVT)"
            );
            
            CreateStoredProcedure(
                "dbo.DONVITINH_Update",
                p => new
                    {
                        MaDVT = p.String(maxLength: 20, unicode: false),
                        TenDVT = p.String(maxLength: 50),
                    },
                body:
                    @"UPDATE [dbo].[DONVITINH]
                      SET [TenDVT] = @TenDVT
                      WHERE ([MaDVT] = @MaDVT)"
            );
            
            CreateStoredProcedure(
                "dbo.DONVITINH_Delete",
                p => new
                    {
                        MaDVT = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[DONVITINH]
                      WHERE ([MaDVT] = @MaDVT)"
            );
            
            CreateStoredProcedure(
                "dbo.LOAISANPHAM_Insert",
                p => new
                    {
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                        TenLoaiSanPham = p.String(maxLength: 50),
                    },
                body:
                    @"INSERT [dbo].[LOAISANPHAM]([MaLoaiSanPham], [TenLoaiSanPham])
                      VALUES (@MaLoaiSanPham, @TenLoaiSanPham)"
            );
            
            CreateStoredProcedure(
                "dbo.LOAISANPHAM_Update",
                p => new
                    {
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                        TenLoaiSanPham = p.String(maxLength: 50),
                    },
                body:
                    @"UPDATE [dbo].[LOAISANPHAM]
                      SET [TenLoaiSanPham] = @TenLoaiSanPham
                      WHERE ([MaLoaiSanPham] = @MaLoaiSanPham)"
            );
            
            CreateStoredProcedure(
                "dbo.LOAISANPHAM_Delete",
                p => new
                    {
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[LOAISANPHAM]
                      WHERE ([MaLoaiSanPham] = @MaLoaiSanPham)"
            );
            
            CreateStoredProcedure(
                "dbo.NHACUNGCAP_Insert",
                p => new
                    {
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        TenNhaCungCap = p.String(maxLength: 50),
                        DiaChi = p.String(maxLength: 100),
                        SoDienThoai = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"INSERT [dbo].[NHACUNGCAP]([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai])
                      VALUES (@MaNhaCungCap, @TenNhaCungCap, @DiaChi, @SoDienThoai)"
            );
            
            CreateStoredProcedure(
                "dbo.NHACUNGCAP_Update",
                p => new
                    {
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        TenNhaCungCap = p.String(maxLength: 50),
                        DiaChi = p.String(maxLength: 100),
                        SoDienThoai = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"UPDATE [dbo].[NHACUNGCAP]
                      SET [TenNhaCungCap] = @TenNhaCungCap, [DiaChi] = @DiaChi, [SoDienThoai] = @SoDienThoai
                      WHERE ([MaNhaCungCap] = @MaNhaCungCap)"
            );
            
            CreateStoredProcedure(
                "dbo.NHACUNGCAP_Delete",
                p => new
                    {
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[NHACUNGCAP]
                      WHERE ([MaNhaCungCap] = @MaNhaCungCap)"
            );
            
            CreateStoredProcedure(
                "dbo.QUAYHANG_Insert",
                p => new
                    {
                        MaQuay = p.String(maxLength: 20, unicode: false),
                        TenQuay = p.String(maxLength: 50),
                        ViTri = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"INSERT [dbo].[QUAYHANG]([MaQuay], [TenQuay], [ViTri])
                      VALUES (@MaQuay, @TenQuay, @ViTri)"
            );
            
            CreateStoredProcedure(
                "dbo.QUAYHANG_Update",
                p => new
                    {
                        MaQuay = p.String(maxLength: 20, unicode: false),
                        TenQuay = p.String(maxLength: 50),
                        ViTri = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"UPDATE [dbo].[QUAYHANG]
                      SET [TenQuay] = @TenQuay, [ViTri] = @ViTri
                      WHERE ([MaQuay] = @MaQuay)"
            );
            
            CreateStoredProcedure(
                "dbo.QUAYHANG_Delete",
                p => new
                    {
                        MaQuay = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[QUAYHANG]
                      WHERE ([MaQuay] = @MaQuay)"
            );
            
            CreateStoredProcedure(
                "dbo.LOAIDDHT_Insert",
                p => new
                    {
                        MaLoaiDDHT = p.String(maxLength: 20, unicode: false),
                        TenLoaiDDHT = p.String(maxLength: 50),
                    },
                body:
                    @"INSERT [dbo].[LOAIDDHT]([MaLoaiDDHT], [TenLoaiDDHT])
                      VALUES (@MaLoaiDDHT, @TenLoaiDDHT)"
            );
            
            CreateStoredProcedure(
                "dbo.LOAIDDHT_Update",
                p => new
                    {
                        MaLoaiDDHT = p.String(maxLength: 20, unicode: false),
                        TenLoaiDDHT = p.String(maxLength: 50),
                    },
                body:
                    @"UPDATE [dbo].[LOAIDDHT]
                      SET [TenLoaiDDHT] = @TenLoaiDDHT
                      WHERE ([MaLoaiDDHT] = @MaLoaiDDHT)"
            );
            
            CreateStoredProcedure(
                "dbo.LOAIDDHT_Delete",
                p => new
                    {
                        MaLoaiDDHT = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[LOAIDDHT]
                      WHERE ([MaLoaiDDHT] = @MaLoaiDDHT)"
            );
            
            CreateStoredProcedure(
                "dbo.NHASANXUAT_Insert",
                p => new
                    {
                        MaNhaSanXuat = p.String(maxLength: 20, unicode: false),
                        TenNhaSanXuat = p.String(maxLength: 50),
                    },
                body:
                    @"INSERT [dbo].[NHASANXUAT]([MaNhaSanXuat], [TenNhaSanXuat])
                      VALUES (@MaNhaSanXuat, @TenNhaSanXuat)"
            );
            
            CreateStoredProcedure(
                "dbo.NHASANXUAT_Update",
                p => new
                    {
                        MaNhaSanXuat = p.String(maxLength: 20, unicode: false),
                        TenNhaSanXuat = p.String(maxLength: 50),
                    },
                body:
                    @"UPDATE [dbo].[NHASANXUAT]
                      SET [TenNhaSanXuat] = @TenNhaSanXuat
                      WHERE ([MaNhaSanXuat] = @MaNhaSanXuat)"
            );
            
            CreateStoredProcedure(
                "dbo.NHASANXUAT_Delete",
                p => new
                    {
                        MaNhaSanXuat = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[NHASANXUAT]
                      WHERE ([MaNhaSanXuat] = @MaNhaSanXuat)"
            );
            
            CreateStoredProcedure(
                "dbo.DAUSACH_Insert",
                p => new
                    {
                        MaDauSach = p.String(maxLength: 20, unicode: false),
                        MaTheLoai = p.String(maxLength: 20, unicode: false),
                        TenDauSach = p.String(maxLength: 50),
                    },
                body:
                    @"INSERT [dbo].[DAUSACH]([MaDauSach], [MaTheLoai], [TenDauSach])
                      VALUES (@MaDauSach, @MaTheLoai, @TenDauSach)"
            );
            
            CreateStoredProcedure(
                "dbo.DAUSACH_Update",
                p => new
                    {
                        MaDauSach = p.String(maxLength: 20, unicode: false),
                        MaTheLoai = p.String(maxLength: 20, unicode: false),
                        TenDauSach = p.String(maxLength: 50),
                    },
                body:
                    @"UPDATE [dbo].[DAUSACH]
                      SET [MaTheLoai] = @MaTheLoai, [TenDauSach] = @TenDauSach
                      WHERE ([MaDauSach] = @MaDauSach)"
            );
            
            CreateStoredProcedure(
                "dbo.DAUSACH_Delete",
                p => new
                    {
                        MaDauSach = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[DAUSACH]
                      WHERE ([MaDauSach] = @MaDauSach)"
            );
            
            CreateStoredProcedure(
                "dbo.TACGIA_Insert",
                p => new
                    {
                        MaTacGia = p.String(maxLength: 20, unicode: false),
                        TenTacGia = p.String(maxLength: 50),
                    },
                body:
                    @"INSERT [dbo].[TACGIA]([MaTacGia], [TenTacGia])
                      VALUES (@MaTacGia, @TenTacGia)"
            );
            
            CreateStoredProcedure(
                "dbo.TACGIA_Update",
                p => new
                    {
                        MaTacGia = p.String(maxLength: 20, unicode: false),
                        TenTacGia = p.String(maxLength: 50),
                    },
                body:
                    @"UPDATE [dbo].[TACGIA]
                      SET [TenTacGia] = @TenTacGia
                      WHERE ([MaTacGia] = @MaTacGia)"
            );
            
            CreateStoredProcedure(
                "dbo.TACGIA_Delete",
                p => new
                    {
                        MaTacGia = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[TACGIA]
                      WHERE ([MaTacGia] = @MaTacGia)"
            );
            
            CreateStoredProcedure(
                "dbo.THELOAISACH_Insert",
                p => new
                    {
                        MaTheLoaiSach = p.String(maxLength: 20, unicode: false),
                        TenTheLoaiSach = p.String(maxLength: 50),
                    },
                body:
                    @"INSERT [dbo].[THELOAISACH]([MaTheLoaiSach], [TenTheLoaiSach])
                      VALUES (@MaTheLoaiSach, @TenTheLoaiSach)"
            );
            
            CreateStoredProcedure(
                "dbo.THELOAISACH_Update",
                p => new
                    {
                        MaTheLoaiSach = p.String(maxLength: 20, unicode: false),
                        TenTheLoaiSach = p.String(maxLength: 50),
                    },
                body:
                    @"UPDATE [dbo].[THELOAISACH]
                      SET [TenTheLoaiSach] = @TenTheLoaiSach
                      WHERE ([MaTheLoaiSach] = @MaTheLoaiSach)"
            );
            
            CreateStoredProcedure(
                "dbo.THELOAISACH_Delete",
                p => new
                    {
                        MaTheLoaiSach = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[THELOAISACH]
                      WHERE ([MaTheLoaiSach] = @MaTheLoaiSach)"
            );
            
            CreateStoredProcedure(
                "dbo.NHAXUATBAN_Insert",
                p => new
                    {
                        MaNhaXuatBan = p.String(maxLength: 20, unicode: false),
                        TenNhaXuatBan = p.String(maxLength: 50),
                    },
                body:
                    @"INSERT [dbo].[NHAXUATBAN]([MaNhaXuatBan], [TenNhaXuatBan])
                      VALUES (@MaNhaXuatBan, @TenNhaXuatBan)"
            );
            
            CreateStoredProcedure(
                "dbo.NHAXUATBAN_Update",
                p => new
                    {
                        MaNhaXuatBan = p.String(maxLength: 20, unicode: false),
                        TenNhaXuatBan = p.String(maxLength: 50),
                    },
                body:
                    @"UPDATE [dbo].[NHAXUATBAN]
                      SET [TenNhaXuatBan] = @TenNhaXuatBan
                      WHERE ([MaNhaXuatBan] = @MaNhaXuatBan)"
            );
            
            CreateStoredProcedure(
                "dbo.NHAXUATBAN_Delete",
                p => new
                    {
                        MaNhaXuatBan = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[NHAXUATBAN]
                      WHERE ([MaNhaXuatBan] = @MaNhaXuatBan)"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUTHU_Insert",
                p => new
                    {
                        MaPhieuThu = p.String(maxLength: 20, unicode: false),
                        MaNhanVienThu = p.String(maxLength: 20, unicode: false),
                        NgayThu = p.DateTime(storeType: "date"),
                        SoTien = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        LyDo = p.String(maxLength: 50),
                    },
                body:
                    @"INSERT [dbo].[PHIEUTHU]([MaPhieuThu], [MaNhanVienThu], [NgayThu], [SoTien], [LyDo])
                      VALUES (@MaPhieuThu, @MaNhanVienThu, @NgayThu, @SoTien, @LyDo)"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUTHU_Update",
                p => new
                    {
                        MaPhieuThu = p.String(maxLength: 20, unicode: false),
                        MaNhanVienThu = p.String(maxLength: 20, unicode: false),
                        NgayThu = p.DateTime(storeType: "date"),
                        SoTien = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        LyDo = p.String(maxLength: 50),
                    },
                body:
                    @"UPDATE [dbo].[PHIEUTHU]
                      SET [MaNhanVienThu] = @MaNhanVienThu, [NgayThu] = @NgayThu, [SoTien] = @SoTien, [LyDo] = @LyDo
                      WHERE ([MaPhieuThu] = @MaPhieuThu)"
            );
            
            CreateStoredProcedure(
                "dbo.PHIEUTHU_Delete",
                p => new
                    {
                        MaPhieuThu = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[PHIEUTHU]
                      WHERE ([MaPhieuThu] = @MaPhieuThu)"
            );
            
            CreateStoredProcedure(
                "dbo.BODEM_Insert",
                p => new
                    {
                        BangChamCong = p.Int(),
                        CaLamViec = p.Int(),
                        ChucVu = p.Int(),
                        DauSach = p.Int(),
                        DonViTinh = p.Int(),
                        HoaDonBanHang = p.Int(),
                        LoaiDDHT = p.Int(),
                        LoaiSanPham = p.Int(),
                        NhaCungCap = p.Int(),
                        NhanVien = p.Int(),
                        NhaSanXuat = p.Int(),
                        NhaXuatBan = p.Int(),
                        PhieuChiKhac = p.Int(),
                        PhieuNhapKho = p.Int(),
                        PhieuThuKhac = p.Int(),
                        PhieuXuatKho = p.Int(),
                        QuayHang = p.Int(),
                        SanPham = p.Int(),
                        TacGia = p.Int(),
                        TheLoaiSach = p.Int(),
                        ThueSuat = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[BODEM]([BangChamCong], [CaLamViec], [ChucVu], [DauSach], [DonViTinh], [HoaDonBanHang], [LoaiDDHT], [LoaiSanPham], [NhaCungCap], [NhanVien], [NhaSanXuat], [NhaXuatBan], [PhieuChiKhac], [PhieuNhapKho], [PhieuThuKhac], [PhieuXuatKho], [QuayHang], [SanPham], [TacGia], [TheLoaiSach], [ThueSuat])
                      VALUES (@BangChamCong, @CaLamViec, @ChucVu, @DauSach, @DonViTinh, @HoaDonBanHang, @LoaiDDHT, @LoaiSanPham, @NhaCungCap, @NhanVien, @NhaSanXuat, @NhaXuatBan, @PhieuChiKhac, @PhieuNhapKho, @PhieuThuKhac, @PhieuXuatKho, @QuayHang, @SanPham, @TacGia, @TheLoaiSach, @ThueSuat)"
            );
            
            CreateStoredProcedure(
                "dbo.BODEM_Update",
                p => new
                    {
                        BangChamCong = p.Int(),
                        CaLamViec = p.Int(),
                        ChucVu = p.Int(),
                        DauSach = p.Int(),
                        DonViTinh = p.Int(),
                        HoaDonBanHang = p.Int(),
                        LoaiDDHT = p.Int(),
                        LoaiSanPham = p.Int(),
                        NhaCungCap = p.Int(),
                        NhanVien = p.Int(),
                        NhaSanXuat = p.Int(),
                        NhaXuatBan = p.Int(),
                        PhieuChiKhac = p.Int(),
                        PhieuNhapKho = p.Int(),
                        PhieuThuKhac = p.Int(),
                        PhieuXuatKho = p.Int(),
                        QuayHang = p.Int(),
                        SanPham = p.Int(),
                        TacGia = p.Int(),
                        TheLoaiSach = p.Int(),
                        ThueSuat = p.Int(),
                    },
                body:
                    @"RETURN"
            );
            
            CreateStoredProcedure(
                "dbo.BODEM_Delete",
                p => new
                    {
                        BangChamCong = p.Int(),
                        CaLamViec = p.Int(),
                        ChucVu = p.Int(),
                        DauSach = p.Int(),
                        DonViTinh = p.Int(),
                        HoaDonBanHang = p.Int(),
                        LoaiDDHT = p.Int(),
                        LoaiSanPham = p.Int(),
                        NhaCungCap = p.Int(),
                        NhanVien = p.Int(),
                        NhaSanXuat = p.Int(),
                        NhaXuatBan = p.Int(),
                        PhieuChiKhac = p.Int(),
                        PhieuNhapKho = p.Int(),
                        PhieuThuKhac = p.Int(),
                        PhieuXuatKho = p.Int(),
                        QuayHang = p.Int(),
                        SanPham = p.Int(),
                        TacGia = p.Int(),
                        TheLoaiSach = p.Int(),
                        ThueSuat = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[BODEM]
                      WHERE ((((((((((((((((((((([BangChamCong] = @BangChamCong) AND ([CaLamViec] = @CaLamViec)) AND ([ChucVu] = @ChucVu)) AND ([DauSach] = @DauSach)) AND ([DonViTinh] = @DonViTinh)) AND ([HoaDonBanHang] = @HoaDonBanHang)) AND ([LoaiDDHT] = @LoaiDDHT)) AND ([LoaiSanPham] = @LoaiSanPham)) AND ([NhaCungCap] = @NhaCungCap)) AND ([NhanVien] = @NhanVien)) AND ([NhaSanXuat] = @NhaSanXuat)) AND ([NhaXuatBan] = @NhaXuatBan)) AND ([PhieuChiKhac] = @PhieuChiKhac)) AND ([PhieuNhapKho] = @PhieuNhapKho)) AND ([PhieuThuKhac] = @PhieuThuKhac)) AND ([PhieuXuatKho] = @PhieuXuatKho)) AND ([QuayHang] = @QuayHang)) AND ([SanPham] = @SanPham)) AND ([TacGia] = @TacGia)) AND ([TheLoaiSach] = @TheLoaiSach)) AND ([ThueSuat] = @ThueSuat))"
            );
            
            DropStoredProcedure("dbo.BANGCHAMCONG_Insert");
            DropStoredProcedure("dbo.BANGCHAMCONG_Update");
            DropStoredProcedure("dbo.BANGCHAMCONG_Delete");
            DropStoredProcedure("dbo.CALAMVIEC_Insert");
            DropStoredProcedure("dbo.CALAMVIEC_Update");
            DropStoredProcedure("dbo.CALAMVIEC_Delete");
            DropStoredProcedure("dbo.NHANVIEN_Insert");
            DropStoredProcedure("dbo.NHANVIEN_Update");
            DropStoredProcedure("dbo.NHANVIEN_Delete");
            DropStoredProcedure("dbo.CHUCVU_Insert");
            DropStoredProcedure("dbo.CHUCVU_Update");
            DropStoredProcedure("dbo.CHUCVU_Delete");
            DropStoredProcedure("dbo.PHIEUCHI_Insert");
            DropStoredProcedure("dbo.PHIEUCHI_Update");
            DropStoredProcedure("dbo.PHIEUCHI_Delete");
            DropStoredProcedure("dbo.PHIEUDATMUA_Insert");
            DropStoredProcedure("dbo.PHIEUDATMUA_Update");
            DropStoredProcedure("dbo.PHIEUDATMUA_Delete");
            DropStoredProcedure("dbo.CT_PHIEUDATMUA_Insert");
            DropStoredProcedure("dbo.CT_PHIEUDATMUA_Update");
            DropStoredProcedure("dbo.CT_PHIEUDATMUA_Delete");
            DropStoredProcedure("dbo.SANPHAM_Insert");
            DropStoredProcedure("dbo.SANPHAM_Update");
            DropStoredProcedure("dbo.SANPHAM_Delete");
            DropStoredProcedure("dbo.DODUNGHOCTAP_Insert");
            DropStoredProcedure("dbo.DODUNGHOCTAP_Update");
            DropStoredProcedure("dbo.DODUNGHOCTAP_Delete");
            DropStoredProcedure("dbo.SACH_Insert");
            DropStoredProcedure("dbo.SACH_Update");
            DropStoredProcedure("dbo.SACH_Delete");
            DropStoredProcedure("dbo.CT_HDBanHang_Insert");
            DropStoredProcedure("dbo.CT_HDBanHang_Update");
            DropStoredProcedure("dbo.CT_HDBanHang_Delete");
            DropStoredProcedure("dbo.HOADONBANHANG_Insert");
            DropStoredProcedure("dbo.HOADONBANHANG_Update");
            DropStoredProcedure("dbo.HOADONBANHANG_Delete");
            DropStoredProcedure("dbo.THUESUAT_Insert");
            DropStoredProcedure("dbo.THUESUAT_Update");
            DropStoredProcedure("dbo.THUESUAT_Delete");
            DropStoredProcedure("dbo.CT_PhieuNhapKho_Insert");
            DropStoredProcedure("dbo.CT_PhieuNhapKho_Update");
            DropStoredProcedure("dbo.CT_PhieuNhapKho_Delete");
            DropStoredProcedure("dbo.PHIEUNHAPKHO_Insert");
            DropStoredProcedure("dbo.PHIEUNHAPKHO_Update");
            DropStoredProcedure("dbo.PHIEUNHAPKHO_Delete");
            DropStoredProcedure("dbo.CT_PhieuXuatKho_Insert");
            DropStoredProcedure("dbo.CT_PhieuXuatKho_Update");
            DropStoredProcedure("dbo.CT_PhieuXuatKho_Delete");
            DropStoredProcedure("dbo.PHIEUXUATKHO_Insert");
            DropStoredProcedure("dbo.PHIEUXUATKHO_Update");
            DropStoredProcedure("dbo.PHIEUXUATKHO_Delete");
            DropStoredProcedure("dbo.CT_TKBanHang_Insert");
            DropStoredProcedure("dbo.CT_TKBanHang_Update");
            DropStoredProcedure("dbo.CT_TKBanHang_Delete");
            DropStoredProcedure("dbo.THONGKEBANHANG_Insert");
            DropStoredProcedure("dbo.THONGKEBANHANG_Update");
            DropStoredProcedure("dbo.THONGKEBANHANG_Delete");
            DropStoredProcedure("dbo.DONVITINH_Insert");
            DropStoredProcedure("dbo.DONVITINH_Update");
            DropStoredProcedure("dbo.DONVITINH_Delete");
            DropStoredProcedure("dbo.LOAISANPHAM_Insert");
            DropStoredProcedure("dbo.LOAISANPHAM_Update");
            DropStoredProcedure("dbo.LOAISANPHAM_Delete");
            DropStoredProcedure("dbo.NHACUNGCAP_Insert");
            DropStoredProcedure("dbo.NHACUNGCAP_Update");
            DropStoredProcedure("dbo.NHACUNGCAP_Delete");
            DropStoredProcedure("dbo.QUAYHANG_Insert");
            DropStoredProcedure("dbo.QUAYHANG_Update");
            DropStoredProcedure("dbo.QUAYHANG_Delete");
            DropStoredProcedure("dbo.LOAIDDHT_Insert");
            DropStoredProcedure("dbo.LOAIDDHT_Update");
            DropStoredProcedure("dbo.LOAIDDHT_Delete");
            DropStoredProcedure("dbo.NHASANXUAT_Insert");
            DropStoredProcedure("dbo.NHASANXUAT_Update");
            DropStoredProcedure("dbo.NHASANXUAT_Delete");
            DropStoredProcedure("dbo.DAUSACH_Insert");
            DropStoredProcedure("dbo.DAUSACH_Update");
            DropStoredProcedure("dbo.DAUSACH_Delete");
            DropStoredProcedure("dbo.TACGIA_Insert");
            DropStoredProcedure("dbo.TACGIA_Update");
            DropStoredProcedure("dbo.TACGIA_Delete");
            DropStoredProcedure("dbo.THELOAISACH_Insert");
            DropStoredProcedure("dbo.THELOAISACH_Update");
            DropStoredProcedure("dbo.THELOAISACH_Delete");
            DropStoredProcedure("dbo.NHAXUATBAN_Insert");
            DropStoredProcedure("dbo.NHAXUATBAN_Update");
            DropStoredProcedure("dbo.NHAXUATBAN_Delete");
            DropStoredProcedure("dbo.PHIEUTHU_Insert");
            DropStoredProcedure("dbo.PHIEUTHU_Update");
            DropStoredProcedure("dbo.PHIEUTHU_Delete");
            DropStoredProcedure("dbo.BODEM_Insert");
            DropStoredProcedure("dbo.BODEM_Update");
            DropStoredProcedure("dbo.BODEM_Delete");*/
        }
        
        public override void Down()
        {
            DropStoredProcedure("dbo.BODEM_Delete");
            DropStoredProcedure("dbo.BODEM_Update");
            DropStoredProcedure("dbo.BODEM_Insert");
            DropStoredProcedure("dbo.PHIEUTHU_Delete");
            DropStoredProcedure("dbo.PHIEUTHU_Update");
            DropStoredProcedure("dbo.PHIEUTHU_Insert");
            DropStoredProcedure("dbo.NHAXUATBAN_Delete");
            DropStoredProcedure("dbo.NHAXUATBAN_Update");
            DropStoredProcedure("dbo.NHAXUATBAN_Insert");
            DropStoredProcedure("dbo.THELOAISACH_Delete");
            DropStoredProcedure("dbo.THELOAISACH_Update");
            DropStoredProcedure("dbo.THELOAISACH_Insert");
            DropStoredProcedure("dbo.TACGIA_Delete");
            DropStoredProcedure("dbo.TACGIA_Update");
            DropStoredProcedure("dbo.TACGIA_Insert");
            DropStoredProcedure("dbo.DAUSACH_Delete");
            DropStoredProcedure("dbo.DAUSACH_Update");
            DropStoredProcedure("dbo.DAUSACH_Insert");
            DropStoredProcedure("dbo.NHASANXUAT_Delete");
            DropStoredProcedure("dbo.NHASANXUAT_Update");
            DropStoredProcedure("dbo.NHASANXUAT_Insert");
            DropStoredProcedure("dbo.LOAIDDHT_Delete");
            DropStoredProcedure("dbo.LOAIDDHT_Update");
            DropStoredProcedure("dbo.LOAIDDHT_Insert");
            DropStoredProcedure("dbo.QUAYHANG_Delete");
            DropStoredProcedure("dbo.QUAYHANG_Update");
            DropStoredProcedure("dbo.QUAYHANG_Insert");
            DropStoredProcedure("dbo.NHACUNGCAP_Delete");
            DropStoredProcedure("dbo.NHACUNGCAP_Update");
            DropStoredProcedure("dbo.NHACUNGCAP_Insert");
            DropStoredProcedure("dbo.LOAISANPHAM_Delete");
            DropStoredProcedure("dbo.LOAISANPHAM_Update");
            DropStoredProcedure("dbo.LOAISANPHAM_Insert");
            DropStoredProcedure("dbo.DONVITINH_Delete");
            DropStoredProcedure("dbo.DONVITINH_Update");
            DropStoredProcedure("dbo.DONVITINH_Insert");
            DropStoredProcedure("dbo.THONGKEBANHANG_Delete");
            DropStoredProcedure("dbo.THONGKEBANHANG_Update");
            DropStoredProcedure("dbo.THONGKEBANHANG_Insert");
            DropStoredProcedure("dbo.CT_TKBanHang_Delete");
            DropStoredProcedure("dbo.CT_TKBanHang_Update");
            DropStoredProcedure("dbo.CT_TKBanHang_Insert");
            DropStoredProcedure("dbo.PHIEUXUATKHO_Delete");
            DropStoredProcedure("dbo.PHIEUXUATKHO_Update");
            DropStoredProcedure("dbo.PHIEUXUATKHO_Insert");
            DropStoredProcedure("dbo.CT_PhieuXuatKho_Delete");
            DropStoredProcedure("dbo.CT_PhieuXuatKho_Update");
            DropStoredProcedure("dbo.CT_PhieuXuatKho_Insert");
            DropStoredProcedure("dbo.PHIEUNHAPKHO_Delete");
            DropStoredProcedure("dbo.PHIEUNHAPKHO_Update");
            DropStoredProcedure("dbo.PHIEUNHAPKHO_Insert");
            DropStoredProcedure("dbo.CT_PhieuNhapKho_Delete");
            DropStoredProcedure("dbo.CT_PhieuNhapKho_Update");
            DropStoredProcedure("dbo.CT_PhieuNhapKho_Insert");
            DropStoredProcedure("dbo.THUESUAT_Delete");
            DropStoredProcedure("dbo.THUESUAT_Update");
            DropStoredProcedure("dbo.THUESUAT_Insert");
            DropStoredProcedure("dbo.HOADONBANHANG_Delete");
            DropStoredProcedure("dbo.HOADONBANHANG_Update");
            DropStoredProcedure("dbo.HOADONBANHANG_Insert");
            DropStoredProcedure("dbo.CT_HDBanHang_Delete");
            DropStoredProcedure("dbo.CT_HDBanHang_Update");
            DropStoredProcedure("dbo.CT_HDBanHang_Insert");
            DropStoredProcedure("dbo.SACH_Delete");
            DropStoredProcedure("dbo.SACH_Update");
            DropStoredProcedure("dbo.SACH_Insert");
            DropStoredProcedure("dbo.DODUNGHOCTAP_Delete");
            DropStoredProcedure("dbo.DODUNGHOCTAP_Update");
            DropStoredProcedure("dbo.DODUNGHOCTAP_Insert");
            DropStoredProcedure("dbo.SANPHAM_Delete");
            DropStoredProcedure("dbo.SANPHAM_Update");
            DropStoredProcedure("dbo.SANPHAM_Insert");
            DropStoredProcedure("dbo.CT_PHIEUDATMUA_Delete");
            DropStoredProcedure("dbo.CT_PHIEUDATMUA_Update");
            DropStoredProcedure("dbo.CT_PHIEUDATMUA_Insert");
            DropStoredProcedure("dbo.PHIEUDATMUA_Delete");
            DropStoredProcedure("dbo.PHIEUDATMUA_Update");
            DropStoredProcedure("dbo.PHIEUDATMUA_Insert");
            DropStoredProcedure("dbo.PHIEUCHI_Delete");
            DropStoredProcedure("dbo.PHIEUCHI_Update");
            DropStoredProcedure("dbo.PHIEUCHI_Insert");
            DropStoredProcedure("dbo.CHUCVU_Delete");
            DropStoredProcedure("dbo.CHUCVU_Update");
            DropStoredProcedure("dbo.CHUCVU_Insert");
            DropStoredProcedure("dbo.NHANVIEN_Delete");
            DropStoredProcedure("dbo.NHANVIEN_Update");
            DropStoredProcedure("dbo.NHANVIEN_Insert");
            DropStoredProcedure("dbo.CALAMVIEC_Delete");
            DropStoredProcedure("dbo.CALAMVIEC_Update");
            DropStoredProcedure("dbo.CALAMVIEC_Insert");
            DropStoredProcedure("dbo.BANGCHAMCONG_Delete");
            DropStoredProcedure("dbo.BANGCHAMCONG_Update");
            DropStoredProcedure("dbo.BANGCHAMCONG_Insert");
            throw new NotSupportedException("Scaffolding create or alter procedure operations is not supported in down methods.");
        }
    }
}
