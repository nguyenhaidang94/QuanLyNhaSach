namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.BANGCHAMCONG",
                c => new
                    {
                        MaBCC = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaCaLamViec = c.String(nullable: false, maxLength: 20, unicode: false),
                        NgayChamCong = c.DateTime(storeType: "date"),
                        NguoiChamCong = c.String(nullable: false, maxLength: 20, unicode: false),
                    })
                .PrimaryKey(t => t.MaBCC)
                .ForeignKey("dbo.CALAMVIEC", t => t.MaCaLamViec)
                .ForeignKey("dbo.NHANVIEN", t => t.NguoiChamCong)
                .Index(t => t.MaCaLamViec)
                .Index(t => t.NguoiChamCong);
            
            CreateTable(
                "dbo.CALAMVIEC",
                c => new
                    {
                        MaCaLamViec = c.String(nullable: false, maxLength: 20, unicode: false),
                        ThoiGianBD = c.DateTime(),
                        ThoiGianKT = c.DateTime(),
                        LuongCLV = c.Decimal(storeType: "money"),
                    })
                .PrimaryKey(t => t.MaCaLamViec);
            
            CreateTable(
                "dbo.NHANVIEN",
                c => new
                    {
                        MaNhanVien = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaChucVu = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenNhanVien = c.String(maxLength: 50),
                        DiaChi = c.String(maxLength: 100),
                        DienThoai = c.String(maxLength: 20, unicode: false),
                        LuongNhanVien = c.Decimal(storeType: "money"),
                    })
                .PrimaryKey(t => t.MaNhanVien)
                .ForeignKey("dbo.CHUCVU", t => t.MaChucVu)
                .Index(t => t.MaChucVu);
            
            CreateTable(
                "dbo.CHUCVU",
                c => new
                    {
                        MaChucVu = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenChucVu = c.String(maxLength: 50),
                        TrachNhiem = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaChucVu);
            
            CreateTable(
                "dbo.PHIEUCHI",
                c => new
                    {
                        MaPhieuChi = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaNhanVienChi = c.String(nullable: false, maxLength: 20, unicode: false),
                        NgayChi = c.DateTime(storeType: "date"),
                        NguoiNhan = c.String(maxLength: 50),
                        SoTien = c.Decimal(storeType: "money"),
                        LyDo = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaPhieuChi)
                .ForeignKey("dbo.NHANVIEN", t => t.MaNhanVienChi)
                .Index(t => t.MaNhanVienChi);
            
            CreateTable(
                "dbo.PHIEUDATMUA",
                c => new
                    {
                        MaPhieuDatMua = c.String(nullable: false, maxLength: 20, unicode: false),
                        NgayDatMua = c.DateTime(storeType: "date"),
                        MaNhanVien = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaNhaCungCap = c.String(nullable: false, maxLength: 20, unicode: false),
                        TongSoLuong = c.Int(),
                    })
                .PrimaryKey(t => t.MaPhieuDatMua)
                .ForeignKey("dbo.NHACUNGCAP", t => t.MaNhaCungCap)
                .ForeignKey("dbo.NHANVIEN", t => t.MaNhanVien)
                .Index(t => t.MaNhanVien)
                .Index(t => t.MaNhaCungCap);
            
            CreateTable(
                "dbo.CT_PhieuDatMua",
                c => new
                    {
                        MaPhieuDatMua = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaSanPham = c.String(nullable: false, maxLength: 20, unicode: false),
                        DonGia = c.Double(),
                        SoLuong = c.Double(),
                        TinhTrang = c.Boolean(),
                    })
                .PrimaryKey(t => new { t.MaPhieuDatMua, t.MaSanPham })
                .ForeignKey("dbo.SANPHAM", t => t.MaSanPham)
                .ForeignKey("dbo.PHIEUDATMUA", t => t.MaPhieuDatMua)
                .Index(t => t.MaPhieuDatMua)
                .Index(t => t.MaSanPham);
            
            CreateTable(
                "dbo.SANPHAM",
                c => new
                    {
                        MaSanPham = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaLoaiSanPham = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaNhaCungCap = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaQuay = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaDVT = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenSanPham = c.String(maxLength: 50),
                        DonGia = c.Decimal(storeType: "money"),
                        SoLuong = c.Int(),
                        TinhTrang = c.Boolean(),
                    })
                .PrimaryKey(t => t.MaSanPham)
                .ForeignKey("dbo.DONVITINH", t => t.MaDVT)
                .ForeignKey("dbo.LOAISANPHAM", t => t.MaLoaiSanPham)
                .ForeignKey("dbo.NHACUNGCAP", t => t.MaNhaCungCap)
                .ForeignKey("dbo.QUAYHANG", t => t.MaQuay)
                .Index(t => t.MaLoaiSanPham)
                .Index(t => t.MaNhaCungCap)
                .Index(t => t.MaQuay)
                .Index(t => t.MaDVT);
            
            CreateTable(
                "dbo.DONVITINH",
                c => new
                    {
                        MaDVT = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenDVT = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaDVT);
            
            CreateTable(
                "dbo.CT_HDBanHang",
                c => new
                    {
                        MaHoaDon = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaSanPham = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaSoThue = c.String(nullable: false, maxLength: 20, unicode: false),
                        GiaBan = c.Decimal(storeType: "money"),
                        SoLuong = c.Int(),
                    })
                .PrimaryKey(t => new { t.MaHoaDon, t.MaSanPham })
                .ForeignKey("dbo.HOADONBANHANG", t => t.MaHoaDon)
                .ForeignKey("dbo.THUESUAT", t => t.MaSoThue)
                .ForeignKey("dbo.SANPHAM", t => t.MaSanPham)
                .Index(t => t.MaHoaDon)
                .Index(t => t.MaSanPham)
                .Index(t => t.MaSoThue);
            
            CreateTable(
                "dbo.HOADONBANHANG",
                c => new
                    {
                        MaHoaDon = c.String(nullable: false, maxLength: 20, unicode: false),
                        NgayBan = c.DateTime(storeType: "date"),
                        MaNhanVien = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenKhachHang = c.String(maxLength: 50),
                        TongThanhTien = c.Decimal(storeType: "money"),
                    })
                .PrimaryKey(t => t.MaHoaDon);
            
            CreateTable(
                "dbo.THUESUAT",
                c => new
                    {
                        MaSoThue = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenThue = c.String(maxLength: 50),
                        GiaTri = c.Double(),
                    })
                .PrimaryKey(t => t.MaSoThue);
            
            CreateTable(
                "dbo.CT_PhieuNhapKho",
                c => new
                    {
                        MaPhieuNhap = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaSanPham = c.String(nullable: false, maxLength: 20, unicode: false),
                        DonGia = c.Decimal(storeType: "money"),
                        SoLuong = c.Int(),
                    })
                .PrimaryKey(t => new { t.MaPhieuNhap, t.MaSanPham })
                .ForeignKey("dbo.PHIEUNHAPKHO", t => t.MaPhieuNhap)
                .ForeignKey("dbo.SANPHAM", t => t.MaSanPham)
                .Index(t => t.MaPhieuNhap)
                .Index(t => t.MaSanPham);
            
            CreateTable(
                "dbo.PHIEUNHAPKHO",
                c => new
                    {
                        MaPhieuNhap = c.String(nullable: false, maxLength: 20, unicode: false),
                        NgayNhap = c.DateTime(storeType: "date"),
                        MaNhanVien = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaPhieuDatMua = c.String(nullable: false, maxLength: 20, unicode: false),
                        TongSoLuong = c.Int(),
                    })
                .PrimaryKey(t => t.MaPhieuNhap)
                .ForeignKey("dbo.PHIEUDATMUA", t => t.MaPhieuDatMua)
                .ForeignKey("dbo.NHANVIEN", t => t.MaNhanVien)
                .Index(t => t.MaNhanVien)
                .Index(t => t.MaPhieuDatMua);
            
            CreateTable(
                "dbo.CT_PhieuXuatKho",
                c => new
                    {
                        MaPhieuXuat = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaSanPham = c.String(nullable: false, maxLength: 20, unicode: false),
                        SoLuong = c.Int(),
                    })
                .PrimaryKey(t => new { t.MaPhieuXuat, t.MaSanPham })
                .ForeignKey("dbo.PHIEUXUATKHO", t => t.MaPhieuXuat)
                .ForeignKey("dbo.SANPHAM", t => t.MaSanPham)
                .Index(t => t.MaPhieuXuat)
                .Index(t => t.MaSanPham);
            
            CreateTable(
                "dbo.PHIEUXUATKHO",
                c => new
                    {
                        MaPhieuXuat = c.String(nullable: false, maxLength: 20, unicode: false),
                        NgayXuat = c.DateTime(storeType: "date"),
                        MaNhanVien = c.String(nullable: false, maxLength: 20, unicode: false),
                        TongSoLuong = c.Int(),
                    })
                .PrimaryKey(t => t.MaPhieuXuat)
                .ForeignKey("dbo.NHANVIEN", t => t.MaNhanVien)
                .Index(t => t.MaNhanVien);
            
            CreateTable(
                "dbo.CT_TKBanHang",
                c => new
                    {
                        Thang = c.Int(nullable: false),
                        Nam = c.Int(nullable: false),
                        MaSanPham = c.String(nullable: false, maxLength: 20, unicode: false),
                        TonDau = c.Int(),
                        SoLuongNhap = c.Int(),
                        TienNhap = c.Decimal(storeType: "money"),
                        SoLuongXuat = c.Int(),
                        TonCuoi = c.Int(),
                        SoLuongBan = c.Int(),
                        TienBan = c.Decimal(storeType: "money"),
                    })
                .PrimaryKey(t => new { t.Thang, t.Nam, t.MaSanPham })
                .ForeignKey("dbo.THONGKEBANHANG", t => new { t.Thang, t.Nam })
                .ForeignKey("dbo.SANPHAM", t => t.MaSanPham)
                .Index(t => new { t.Thang, t.Nam })
                .Index(t => t.MaSanPham);
            
            CreateTable(
                "dbo.THONGKEBANHANG",
                c => new
                    {
                        Thang = c.Int(nullable: false),
                        Nam = c.Int(nullable: false),
                        TongTonDau = c.Int(),
                        TongSoLuongNhap = c.Int(),
                        TongTienNhap = c.Decimal(storeType: "money"),
                        TongSoLuongXuat = c.Int(),
                        TongTonCuoi = c.Int(),
                        TongSoLuongBan = c.Int(),
                        TongTienBan = c.Decimal(storeType: "money"),
                    })
                .PrimaryKey(t => new { t.Thang, t.Nam });
            
            CreateTable(
                "dbo.LOAISANPHAM",
                c => new
                    {
                        MaLoaiSanPham = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenLoaiSanPham = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaLoaiSanPham);
            
            CreateTable(
                "dbo.NHACUNGCAP",
                c => new
                    {
                        MaNhaCungCap = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenNhaCungCap = c.String(maxLength: 50),
                        DiaChi = c.String(maxLength: 100),
                        SoDienThoai = c.String(maxLength: 20, unicode: false),
                    })
                .PrimaryKey(t => t.MaNhaCungCap);
            
            CreateTable(
                "dbo.QUAYHANG",
                c => new
                    {
                        MaQuay = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenQuay = c.String(maxLength: 50),
                        ViTri = c.String(maxLength: 20, unicode: false),
                    })
                .PrimaryKey(t => t.MaQuay);
            
            CreateTable(
                "dbo.LOAIDDHT",
                c => new
                    {
                        MaLoaiDDHT = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenLoaiDDHT = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaLoaiDDHT);
            
            CreateTable(
                "dbo.NHASANXUAT",
                c => new
                    {
                        MaNhaSanXuat = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenNhaSanXuat = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaNhaSanXuat);
            
            CreateTable(
                "dbo.DAUSACH",
                c => new
                    {
                        MaDauSach = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaTheLoai = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenDauSach = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaDauSach)
                .ForeignKey("dbo.THELOAISACH", t => t.MaTheLoai)
                .Index(t => t.MaTheLoai);
            
            CreateTable(
                "dbo.TACGIA",
                c => new
                    {
                        MaTacGia = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenTacGia = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaTacGia);
            
            CreateTable(
                "dbo.THELOAISACH",
                c => new
                    {
                        MaTheLoaiSach = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenTheLoaiSach = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaTheLoaiSach);
            
            CreateTable(
                "dbo.NHAXUATBAN",
                c => new
                    {
                        MaNhaXuatBan = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenNhaXuatBan = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaNhaXuatBan);
            
            CreateTable(
                "dbo.PHIEUTHU",
                c => new
                    {
                        MaPhieuThu = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaNhanVienThu = c.String(nullable: false, maxLength: 20, unicode: false),
                        NgayThu = c.DateTime(storeType: "date"),
                        SoTien = c.Decimal(storeType: "money"),
                        LyDo = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaPhieuThu)
                .ForeignKey("dbo.NHANVIEN", t => t.MaNhanVienThu)
                .Index(t => t.MaNhanVienThu);

            CreateTable(
                "dbo.BODEM",
                c => new
                    {
                        BangChamCong = c.Int(nullable: false),
                        CaLamViec = c.Int(nullable: false),
                        ChucVu = c.Int(nullable: false),
                        DauSach = c.Int(nullable: false),
                        DonViTinh = c.Int(nullable: false),
                        HoaDonBanHang = c.Int(nullable: false),
                        LoaiDDHT = c.Int(nullable: false),
                        LoaiSanPham = c.Int(nullable: false),
                        NhaCungCap = c.Int(nullable: false),
                        NhanVien = c.Int(nullable: false),
                        NhaSanXuat = c.Int(nullable: false),
                        NhaXuatBan = c.Int(nullable: false),
                        PhieuChi = c.Int(nullable: false),
                        PhieuDatMua = c.Int(nullable: false),
                        PhieuNhapKho = c.Int(nullable: false),
                        PhieuThu = c.Int(nullable: false),
                        PhieuXuatKho = c.Int(nullable: false),
                        QuayHang = c.Int(nullable: false),
                        SanPham = c.Int(nullable: false),
                        TacGia = c.Int(nullable: false),
                        TheLoaiSach = c.Int(nullable: false),
                        ThueSuat = c.Int(nullable: false),
                    });
                //.PrimaryKey(t => new { t.BangChamCong, t.CaLamViec, t.ChucVu, t.DauSach, t.DonViTinh, t.HoaDonBanHang, t.LoaiDDHT, t.LoaiSanPham, t.NhaCungCap, t.NhanVien, t.NhaSanXuat, t.NhaXuatBan, t.PhieuChi, t.PhieuDatMua, t.PhieuNhapKho, t.PhieuThu, t.PhieuXuatKho, t.QuayHang, t.SanPham, t.TacGia, t.TheLoaiSach, t.ThueSuat });
            
            CreateTable(
                "dbo.CT_DAUSACH",
                c => new
                    {
                        MaDauSach = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaTacGia = c.String(nullable: false, maxLength: 20, unicode: false),
                    })
                .PrimaryKey(t => new { t.MaDauSach, t.MaTacGia })
                .ForeignKey("dbo.DAUSACH", t => t.MaDauSach, cascadeDelete: true)
                .ForeignKey("dbo.TACGIA", t => t.MaTacGia, cascadeDelete: true)
                .Index(t => t.MaDauSach)
                .Index(t => t.MaTacGia);
            
            CreateTable(
                "dbo.CT_BANGCHAMCONG",
                c => new
                    {
                        MaBCC = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaNhanVien = c.String(nullable: false, maxLength: 20, unicode: false),
                    })
                .PrimaryKey(t => new { t.MaBCC, t.MaNhanVien })
                .ForeignKey("dbo.BANGCHAMCONG", t => t.MaBCC, cascadeDelete: true)
                .ForeignKey("dbo.NHANVIEN", t => t.MaNhanVien, cascadeDelete: true)
                .Index(t => t.MaBCC)
                .Index(t => t.MaNhanVien);
            
            CreateTable(
                "dbo.SACH",
                c => new
                    {
                        MaSanPham = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaSach = c.String(maxLength: 20),
                        MaDauSach = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaNhaXuatBan = c.String(nullable: false, maxLength: 20, unicode: false),
                        NamXuatBan = c.Int(),
                    })
                .PrimaryKey(t => t.MaSanPham)
                .ForeignKey("dbo.SANPHAM", t => t.MaSanPham)
                .ForeignKey("dbo.DAUSACH", t => t.MaDauSach, cascadeDelete: true)
                .ForeignKey("dbo.NHAXUATBAN", t => t.MaNhaXuatBan, cascadeDelete: true)
                .Index(t => t.MaSanPham)
                .Index(t => t.MaDauSach)
                .Index(t => t.MaNhaXuatBan);
            
            CreateTable(
                "dbo.DODUNGHOCTAP",
                c => new
                    {
                        MaSanPham = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaDDHT = c.String(maxLength: 20),
                        MaLoaiDDHT = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaNhaSanXuat = c.String(nullable: false, maxLength: 20, unicode: false),
                        NamSanXuat = c.Int(),
                    })
                .PrimaryKey(t => t.MaSanPham)
                .ForeignKey("dbo.SANPHAM", t => t.MaSanPham)
                .ForeignKey("dbo.LOAIDDHT", t => t.MaLoaiDDHT, cascadeDelete: true)
                .ForeignKey("dbo.NHASANXUAT", t => t.MaNhaSanXuat, cascadeDelete: true)
                .Index(t => t.MaSanPham)
                .Index(t => t.MaLoaiDDHT)
                .Index(t => t.MaNhaSanXuat);
            
            CreateStoredProcedure(
                "dbo.BangChamCong_Insert",
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
                "dbo.BangChamCong_Update",
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
                "dbo.BangChamCong_Delete",
                p => new
                    {
                        MaBCC = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[BANGCHAMCONG]
                      WHERE ([MaBCC] = @MaBCC)"
            );
            
            CreateStoredProcedure(
                "dbo.CaLamViec_Insert",
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
                "dbo.CaLamViec_Update",
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
                "dbo.CaLamViec_Delete",
                p => new
                    {
                        MaCaLamViec = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[CALAMVIEC]
                      WHERE ([MaCaLamViec] = @MaCaLamViec)"
            );
            
            CreateStoredProcedure(
                "dbo.NhanVien_Insert",
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
                "dbo.NhanVien_Update",
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
                "dbo.NhanVien_Delete",
                p => new
                    {
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[NHANVIEN]
                      WHERE ([MaNhanVien] = @MaNhanVien)"
            );
            
            CreateStoredProcedure(
                "dbo.ChucVu_Insert",
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
                "dbo.ChucVu_Update",
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
                "dbo.ChucVu_Delete",
                p => new
                    {
                        MaChucVu = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[CHUCVU]
                      WHERE ([MaChucVu] = @MaChucVu)"
            );
            
            CreateStoredProcedure(
                "dbo.PhieuChi_Insert",
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
                "dbo.PhieuChi_Update",
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
                "dbo.PhieuChi_Delete",
                p => new
                    {
                        MaPhieuChi = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[PHIEUCHI]
                      WHERE ([MaPhieuChi] = @MaPhieuChi)"
            );
            
            CreateStoredProcedure(
                "dbo.PhieuDatMua_Insert",
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
                "dbo.PhieuDatMua_Update",
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
                "dbo.PhieuDatMua_Delete",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[PHIEUDATMUA]
                      WHERE ([MaPhieuDatMua] = @MaPhieuDatMua)"
            );
            
            CreateStoredProcedure(
                "dbo.CT_PhieuDatMua_Insert",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        DonGia = p.Double(),
                        SoLuong = p.Double(),
                        TinhTrang = p.Boolean(),
                    },
                body:
                    @"INSERT [dbo].[CT_PhieuDatMua]([MaPhieuDatMua], [MaSanPham], [DonGia], [SoLuong], [TinhTrang])
                      VALUES (@MaPhieuDatMua, @MaSanPham, @DonGia, @SoLuong, @TinhTrang)"
            );
            
            CreateStoredProcedure(
                "dbo.CT_PhieuDatMua_Update",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        DonGia = p.Double(),
                        SoLuong = p.Double(),
                        TinhTrang = p.Boolean(),
                    },
                body:
                    @"UPDATE [dbo].[CT_PhieuDatMua]
                      SET [DonGia] = @DonGia, [SoLuong] = @SoLuong, [TinhTrang] = @TinhTrang
                      WHERE (([MaPhieuDatMua] = @MaPhieuDatMua) AND ([MaSanPham] = @MaSanPham))"
            );
            
            CreateStoredProcedure(
                "dbo.CT_PhieuDatMua_Delete",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[CT_PhieuDatMua]
                      WHERE (([MaPhieuDatMua] = @MaPhieuDatMua) AND ([MaSanPham] = @MaSanPham))"
            );
            
            CreateStoredProcedure(
                "dbo.SanPham_Insert",
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
                "dbo.SanPham_Update",
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
                "dbo.SanPham_Delete",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[SANPHAM]
                      WHERE ([MaSanPham] = @MaSanPham)"
            );
            
            CreateStoredProcedure(
                "dbo.DoDungHocTap_Insert",
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
                "dbo.DoDungHocTap_Update",
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
                "dbo.DoDungHocTap_Delete",
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
                "dbo.Sach_Insert",
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
                "dbo.Sach_Update",
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
                "dbo.Sach_Delete",
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
                "dbo.DonViTinh_Insert",
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
                "dbo.DonViTinh_Update",
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
                "dbo.DonViTinh_Delete",
                p => new
                    {
                        MaDVT = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[DONVITINH]
                      WHERE ([MaDVT] = @MaDVT)"
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
                "dbo.HoaDonBanHang_Insert",
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
                "dbo.HoaDonBanHang_Update",
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
                "dbo.HoaDonBanHang_Delete",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[HOADONBANHANG]
                      WHERE ([MaHoaDon] = @MaHoaDon)"
            );
            
            CreateStoredProcedure(
                "dbo.ThueSuat_Insert",
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
                "dbo.ThueSuat_Update",
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
                "dbo.ThueSuat_Delete",
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
                "dbo.PhieuNhapKho_Insert",
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
                "dbo.PhieuNhapKho_Update",
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
                "dbo.PhieuNhapKho_Delete",
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
                "dbo.PhieuXuatKho_Insert",
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
                "dbo.PhieuXuatKho_Update",
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
                "dbo.PhieuXuatKho_Delete",
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
                "dbo.ThongKeBanHang_Insert",
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
                "dbo.ThongKeBanHang_Update",
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
                "dbo.ThongKeBanHang_Delete",
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
                "dbo.LoaiSanPham_Insert",
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
                "dbo.LoaiSanPham_Update",
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
                "dbo.LoaiSanPham_Delete",
                p => new
                    {
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[LOAISANPHAM]
                      WHERE ([MaLoaiSanPham] = @MaLoaiSanPham)"
            );
            
            CreateStoredProcedure(
                "dbo.NhaCungCap_Insert",
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
                "dbo.NhaCungCap_Update",
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
                "dbo.NhaCungCap_Delete",
                p => new
                    {
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[NHACUNGCAP]
                      WHERE ([MaNhaCungCap] = @MaNhaCungCap)"
            );
            
            CreateStoredProcedure(
                "dbo.QuayHang_Insert",
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
                "dbo.QuayHang_Update",
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
                "dbo.QuayHang_Delete",
                p => new
                    {
                        MaQuay = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[QUAYHANG]
                      WHERE ([MaQuay] = @MaQuay)"
            );
            
            CreateStoredProcedure(
                "dbo.LoaiDDHT_Insert",
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
                "dbo.LoaiDDHT_Update",
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
                "dbo.LoaiDDHT_Delete",
                p => new
                    {
                        MaLoaiDDHT = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[LOAIDDHT]
                      WHERE ([MaLoaiDDHT] = @MaLoaiDDHT)"
            );
            
            CreateStoredProcedure(
                "dbo.NhaSanXuat_Insert",
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
                "dbo.NhaSanXuat_Update",
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
                "dbo.NhaSanXuat_Delete",
                p => new
                    {
                        MaNhaSanXuat = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[NHASANXUAT]
                      WHERE ([MaNhaSanXuat] = @MaNhaSanXuat)"
            );
            
            CreateStoredProcedure(
                "dbo.DauSach_Insert",
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
                "dbo.DauSach_Update",
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
                "dbo.DauSach_Delete",
                p => new
                    {
                        MaDauSach = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[DAUSACH]
                      WHERE ([MaDauSach] = @MaDauSach)"
            );
            
            CreateStoredProcedure(
                "dbo.TacGia_Insert",
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
                "dbo.TacGia_Update",
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
                "dbo.TacGia_Delete",
                p => new
                    {
                        MaTacGia = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[TACGIA]
                      WHERE ([MaTacGia] = @MaTacGia)"
            );
            
            CreateStoredProcedure(
                "dbo.TheLoaiSach_Insert",
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
                "dbo.TheLoaiSach_Update",
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
                "dbo.TheLoaiSach_Delete",
                p => new
                    {
                        MaTheLoaiSach = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[THELOAISACH]
                      WHERE ([MaTheLoaiSach] = @MaTheLoaiSach)"
            );
            
            CreateStoredProcedure(
                "dbo.NhaXuatBan_Insert",
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
                "dbo.NhaXuatBan_Update",
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
                "dbo.NhaXuatBan_Delete",
                p => new
                    {
                        MaNhaXuatBan = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[NHAXUATBAN]
                      WHERE ([MaNhaXuatBan] = @MaNhaXuatBan)"
            );
            
            CreateStoredProcedure(
                "dbo.PhieuThu_Insert",
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
                "dbo.PhieuThu_Update",
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
                "dbo.PhieuThu_Delete",
                p => new
                    {
                        MaPhieuThu = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[PHIEUTHU]
                      WHERE ([MaPhieuThu] = @MaPhieuThu)"
            );
            
            CreateStoredProcedure(
                "dbo.BoDem_Insert",
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
                        PhieuChi = p.Int(),
                        PhieuDatMua = p.Int(),
                        PhieuNhapKho = p.Int(),
                        PhieuThu = p.Int(),
                        PhieuXuatKho = p.Int(),
                        QuayHang = p.Int(),
                        SanPham = p.Int(),
                        TacGia = p.Int(),
                        TheLoaiSach = p.Int(),
                        ThueSuat = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[BODEM]([BangChamCong], [CaLamViec], [ChucVu], [DauSach], [DonViTinh], [HoaDonBanHang], [LoaiDDHT], [LoaiSanPham], [NhaCungCap], [NhanVien], [NhaSanXuat], [NhaXuatBan], [PhieuChi], [PhieuDatMua], [PhieuNhapKho], [PhieuThu], [PhieuXuatKho], [QuayHang], [SanPham], [TacGia], [TheLoaiSach], [ThueSuat])
                      VALUES (@BangChamCong, @CaLamViec, @ChucVu, @DauSach, @DonViTinh, @HoaDonBanHang, @LoaiDDHT, @LoaiSanPham, @NhaCungCap, @NhanVien, @NhaSanXuat, @NhaXuatBan, @PhieuChi, @PhieuDatMua, @PhieuNhapKho, @PhieuThu, @PhieuXuatKho, @QuayHang, @SanPham, @TacGia, @TheLoaiSach, @ThueSuat)"
            );
            
            CreateStoredProcedure(
                "dbo.BoDem_Update",
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
                        PhieuChi = p.Int(),
                        PhieuDatMua = p.Int(),
                        PhieuNhapKho = p.Int(),
                        PhieuThu = p.Int(),
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
                "dbo.BoDem_Delete",
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
                        PhieuChi = p.Int(),
                        PhieuDatMua = p.Int(),
                        PhieuNhapKho = p.Int(),
                        PhieuThu = p.Int(),
                        PhieuXuatKho = p.Int(),
                        QuayHang = p.Int(),
                        SanPham = p.Int(),
                        TacGia = p.Int(),
                        TheLoaiSach = p.Int(),
                        ThueSuat = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[BODEM]
                      WHERE (((((((((((((((((((((([BangChamCong] = @BangChamCong) AND ([CaLamViec] = @CaLamViec)) AND ([ChucVu] = @ChucVu)) AND ([DauSach] = @DauSach)) AND ([DonViTinh] = @DonViTinh)) AND ([HoaDonBanHang] = @HoaDonBanHang)) AND ([LoaiDDHT] = @LoaiDDHT)) AND ([LoaiSanPham] = @LoaiSanPham)) AND ([NhaCungCap] = @NhaCungCap)) AND ([NhanVien] = @NhanVien)) AND ([NhaSanXuat] = @NhaSanXuat)) AND ([NhaXuatBan] = @NhaXuatBan)) AND ([PhieuChi] = @PhieuChi)) AND ([PhieuDatMua] = @PhieuDatMua)) AND ([PhieuNhapKho] = @PhieuNhapKho)) AND ([PhieuThu] = @PhieuThu)) AND ([PhieuXuatKho] = @PhieuXuatKho)) AND ([QuayHang] = @QuayHang)) AND ([SanPham] = @SanPham)) AND ([TacGia] = @TacGia)) AND ([TheLoaiSach] = @TheLoaiSach)) AND ([ThueSuat] = @ThueSuat))"
            );
            
        }
        
        public override void Down()
        {
            DropStoredProcedure("dbo.BoDem_Delete");
            DropStoredProcedure("dbo.BoDem_Update");
            DropStoredProcedure("dbo.BoDem_Insert");
            DropStoredProcedure("dbo.PhieuThu_Delete");
            DropStoredProcedure("dbo.PhieuThu_Update");
            DropStoredProcedure("dbo.PhieuThu_Insert");
            DropStoredProcedure("dbo.NhaXuatBan_Delete");
            DropStoredProcedure("dbo.NhaXuatBan_Update");
            DropStoredProcedure("dbo.NhaXuatBan_Insert");
            DropStoredProcedure("dbo.TheLoaiSach_Delete");
            DropStoredProcedure("dbo.TheLoaiSach_Update");
            DropStoredProcedure("dbo.TheLoaiSach_Insert");
            DropStoredProcedure("dbo.TacGia_Delete");
            DropStoredProcedure("dbo.TacGia_Update");
            DropStoredProcedure("dbo.TacGia_Insert");
            DropStoredProcedure("dbo.DauSach_Delete");
            DropStoredProcedure("dbo.DauSach_Update");
            DropStoredProcedure("dbo.DauSach_Insert");
            DropStoredProcedure("dbo.NhaSanXuat_Delete");
            DropStoredProcedure("dbo.NhaSanXuat_Update");
            DropStoredProcedure("dbo.NhaSanXuat_Insert");
            DropStoredProcedure("dbo.LoaiDDHT_Delete");
            DropStoredProcedure("dbo.LoaiDDHT_Update");
            DropStoredProcedure("dbo.LoaiDDHT_Insert");
            DropStoredProcedure("dbo.QuayHang_Delete");
            DropStoredProcedure("dbo.QuayHang_Update");
            DropStoredProcedure("dbo.QuayHang_Insert");
            DropStoredProcedure("dbo.NhaCungCap_Delete");
            DropStoredProcedure("dbo.NhaCungCap_Update");
            DropStoredProcedure("dbo.NhaCungCap_Insert");
            DropStoredProcedure("dbo.LoaiSanPham_Delete");
            DropStoredProcedure("dbo.LoaiSanPham_Update");
            DropStoredProcedure("dbo.LoaiSanPham_Insert");
            DropStoredProcedure("dbo.ThongKeBanHang_Delete");
            DropStoredProcedure("dbo.ThongKeBanHang_Update");
            DropStoredProcedure("dbo.ThongKeBanHang_Insert");
            DropStoredProcedure("dbo.CT_TKBanHang_Delete");
            DropStoredProcedure("dbo.CT_TKBanHang_Update");
            DropStoredProcedure("dbo.CT_TKBanHang_Insert");
            DropStoredProcedure("dbo.PhieuXuatKho_Delete");
            DropStoredProcedure("dbo.PhieuXuatKho_Update");
            DropStoredProcedure("dbo.PhieuXuatKho_Insert");
            DropStoredProcedure("dbo.CT_PhieuXuatKho_Delete");
            DropStoredProcedure("dbo.CT_PhieuXuatKho_Update");
            DropStoredProcedure("dbo.CT_PhieuXuatKho_Insert");
            DropStoredProcedure("dbo.PhieuNhapKho_Delete");
            DropStoredProcedure("dbo.PhieuNhapKho_Update");
            DropStoredProcedure("dbo.PhieuNhapKho_Insert");
            DropStoredProcedure("dbo.CT_PhieuNhapKho_Delete");
            DropStoredProcedure("dbo.CT_PhieuNhapKho_Update");
            DropStoredProcedure("dbo.CT_PhieuNhapKho_Insert");
            DropStoredProcedure("dbo.ThueSuat_Delete");
            DropStoredProcedure("dbo.ThueSuat_Update");
            DropStoredProcedure("dbo.ThueSuat_Insert");
            DropStoredProcedure("dbo.HoaDonBanHang_Delete");
            DropStoredProcedure("dbo.HoaDonBanHang_Update");
            DropStoredProcedure("dbo.HoaDonBanHang_Insert");
            DropStoredProcedure("dbo.CT_HDBanHang_Delete");
            DropStoredProcedure("dbo.CT_HDBanHang_Update");
            DropStoredProcedure("dbo.CT_HDBanHang_Insert");
            DropStoredProcedure("dbo.DonViTinh_Delete");
            DropStoredProcedure("dbo.DonViTinh_Update");
            DropStoredProcedure("dbo.DonViTinh_Insert");
            DropStoredProcedure("dbo.Sach_Delete");
            DropStoredProcedure("dbo.Sach_Update");
            DropStoredProcedure("dbo.Sach_Insert");
            DropStoredProcedure("dbo.DoDungHocTap_Delete");
            DropStoredProcedure("dbo.DoDungHocTap_Update");
            DropStoredProcedure("dbo.DoDungHocTap_Insert");
            DropStoredProcedure("dbo.SanPham_Delete");
            DropStoredProcedure("dbo.SanPham_Update");
            DropStoredProcedure("dbo.SanPham_Insert");
            DropStoredProcedure("dbo.CT_PhieuDatMua_Delete");
            DropStoredProcedure("dbo.CT_PhieuDatMua_Update");
            DropStoredProcedure("dbo.CT_PhieuDatMua_Insert");
            DropStoredProcedure("dbo.PhieuDatMua_Delete");
            DropStoredProcedure("dbo.PhieuDatMua_Update");
            DropStoredProcedure("dbo.PhieuDatMua_Insert");
            DropStoredProcedure("dbo.PhieuChi_Delete");
            DropStoredProcedure("dbo.PhieuChi_Update");
            DropStoredProcedure("dbo.PhieuChi_Insert");
            DropStoredProcedure("dbo.ChucVu_Delete");
            DropStoredProcedure("dbo.ChucVu_Update");
            DropStoredProcedure("dbo.ChucVu_Insert");
            DropStoredProcedure("dbo.NhanVien_Delete");
            DropStoredProcedure("dbo.NhanVien_Update");
            DropStoredProcedure("dbo.NhanVien_Insert");
            DropStoredProcedure("dbo.CaLamViec_Delete");
            DropStoredProcedure("dbo.CaLamViec_Update");
            DropStoredProcedure("dbo.CaLamViec_Insert");
            DropStoredProcedure("dbo.BangChamCong_Delete");
            DropStoredProcedure("dbo.BangChamCong_Update");
            DropStoredProcedure("dbo.BangChamCong_Insert");
            DropForeignKey("dbo.DODUNGHOCTAP", "MaNhaSanXuat", "dbo.NHASANXUAT");
            DropForeignKey("dbo.DODUNGHOCTAP", "MaLoaiDDHT", "dbo.LOAIDDHT");
            DropForeignKey("dbo.DODUNGHOCTAP", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.SACH", "MaNhaXuatBan", "dbo.NHAXUATBAN");
            DropForeignKey("dbo.SACH", "MaDauSach", "dbo.DAUSACH");
            DropForeignKey("dbo.SACH", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_BANGCHAMCONG", "MaNhanVien", "dbo.NHANVIEN");
            DropForeignKey("dbo.CT_BANGCHAMCONG", "MaBCC", "dbo.BANGCHAMCONG");
            DropForeignKey("dbo.PHIEUXUATKHO", "MaNhanVien", "dbo.NHANVIEN");
            DropForeignKey("dbo.PHIEUTHU", "MaNhanVienThu", "dbo.NHANVIEN");
            DropForeignKey("dbo.PHIEUNHAPKHO", "MaNhanVien", "dbo.NHANVIEN");
            DropForeignKey("dbo.PHIEUDATMUA", "MaNhanVien", "dbo.NHANVIEN");
            DropForeignKey("dbo.PHIEUNHAPKHO", "MaPhieuDatMua", "dbo.PHIEUDATMUA");
            DropForeignKey("dbo.CT_PhieuDatMua", "MaPhieuDatMua", "dbo.PHIEUDATMUA");
            DropForeignKey("dbo.DAUSACH", "MaTheLoai", "dbo.THELOAISACH");
            DropForeignKey("dbo.CT_DAUSACH", "MaTacGia", "dbo.TACGIA");
            DropForeignKey("dbo.CT_DAUSACH", "MaDauSach", "dbo.DAUSACH");
            DropForeignKey("dbo.SANPHAM", "MaQuay", "dbo.QUAYHANG");
            DropForeignKey("dbo.SANPHAM", "MaNhaCungCap", "dbo.NHACUNGCAP");
            DropForeignKey("dbo.PHIEUDATMUA", "MaNhaCungCap", "dbo.NHACUNGCAP");
            DropForeignKey("dbo.SANPHAM", "MaLoaiSanPham", "dbo.LOAISANPHAM");
            DropForeignKey("dbo.CT_TKBanHang", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_TKBanHang", new[] { "Thang", "Nam" }, "dbo.THONGKEBANHANG");
            DropForeignKey("dbo.CT_PhieuXuatKho", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_PhieuXuatKho", "MaPhieuXuat", "dbo.PHIEUXUATKHO");
            DropForeignKey("dbo.CT_PhieuNhapKho", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_PhieuNhapKho", "MaPhieuNhap", "dbo.PHIEUNHAPKHO");
            DropForeignKey("dbo.CT_PhieuDatMua", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_HDBanHang", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_HDBanHang", "MaSoThue", "dbo.THUESUAT");
            DropForeignKey("dbo.CT_HDBanHang", "MaHoaDon", "dbo.HOADONBANHANG");
            DropForeignKey("dbo.SANPHAM", "MaDVT", "dbo.DONVITINH");
            DropForeignKey("dbo.PHIEUCHI", "MaNhanVienChi", "dbo.NHANVIEN");
            DropForeignKey("dbo.NHANVIEN", "MaChucVu", "dbo.CHUCVU");
            DropForeignKey("dbo.BANGCHAMCONG", "NguoiChamCong", "dbo.NHANVIEN");
            DropForeignKey("dbo.BANGCHAMCONG", "MaCaLamViec", "dbo.CALAMVIEC");
            DropIndex("dbo.DODUNGHOCTAP", new[] { "MaNhaSanXuat" });
            DropIndex("dbo.DODUNGHOCTAP", new[] { "MaLoaiDDHT" });
            DropIndex("dbo.DODUNGHOCTAP", new[] { "MaSanPham" });
            DropIndex("dbo.SACH", new[] { "MaNhaXuatBan" });
            DropIndex("dbo.SACH", new[] { "MaDauSach" });
            DropIndex("dbo.SACH", new[] { "MaSanPham" });
            DropIndex("dbo.CT_BANGCHAMCONG", new[] { "MaNhanVien" });
            DropIndex("dbo.CT_BANGCHAMCONG", new[] { "MaBCC" });
            DropIndex("dbo.CT_DAUSACH", new[] { "MaTacGia" });
            DropIndex("dbo.CT_DAUSACH", new[] { "MaDauSach" });
            DropIndex("dbo.PHIEUTHU", new[] { "MaNhanVienThu" });
            DropIndex("dbo.DAUSACH", new[] { "MaTheLoai" });
            DropIndex("dbo.CT_TKBanHang", new[] { "MaSanPham" });
            DropIndex("dbo.CT_TKBanHang", new[] { "Thang", "Nam" });
            DropIndex("dbo.PHIEUXUATKHO", new[] { "MaNhanVien" });
            DropIndex("dbo.CT_PhieuXuatKho", new[] { "MaSanPham" });
            DropIndex("dbo.CT_PhieuXuatKho", new[] { "MaPhieuXuat" });
            DropIndex("dbo.PHIEUNHAPKHO", new[] { "MaPhieuDatMua" });
            DropIndex("dbo.PHIEUNHAPKHO", new[] { "MaNhanVien" });
            DropIndex("dbo.CT_PhieuNhapKho", new[] { "MaSanPham" });
            DropIndex("dbo.CT_PhieuNhapKho", new[] { "MaPhieuNhap" });
            DropIndex("dbo.CT_HDBanHang", new[] { "MaSoThue" });
            DropIndex("dbo.CT_HDBanHang", new[] { "MaSanPham" });
            DropIndex("dbo.CT_HDBanHang", new[] { "MaHoaDon" });
            DropIndex("dbo.SANPHAM", new[] { "MaDVT" });
            DropIndex("dbo.SANPHAM", new[] { "MaQuay" });
            DropIndex("dbo.SANPHAM", new[] { "MaNhaCungCap" });
            DropIndex("dbo.SANPHAM", new[] { "MaLoaiSanPham" });
            DropIndex("dbo.CT_PhieuDatMua", new[] { "MaSanPham" });
            DropIndex("dbo.CT_PhieuDatMua", new[] { "MaPhieuDatMua" });
            DropIndex("dbo.PHIEUDATMUA", new[] { "MaNhaCungCap" });
            DropIndex("dbo.PHIEUDATMUA", new[] { "MaNhanVien" });
            DropIndex("dbo.PHIEUCHI", new[] { "MaNhanVienChi" });
            DropIndex("dbo.NHANVIEN", new[] { "MaChucVu" });
            DropIndex("dbo.BANGCHAMCONG", new[] { "NguoiChamCong" });
            DropIndex("dbo.BANGCHAMCONG", new[] { "MaCaLamViec" });
            DropTable("dbo.DODUNGHOCTAP");
            DropTable("dbo.SACH");
            DropTable("dbo.CT_BANGCHAMCONG");
            DropTable("dbo.CT_DAUSACH");
            DropTable("dbo.BODEM");
            DropTable("dbo.PHIEUTHU");
            DropTable("dbo.NHAXUATBAN");
            DropTable("dbo.THELOAISACH");
            DropTable("dbo.TACGIA");
            DropTable("dbo.DAUSACH");
            DropTable("dbo.NHASANXUAT");
            DropTable("dbo.LOAIDDHT");
            DropTable("dbo.QUAYHANG");
            DropTable("dbo.NHACUNGCAP");
            DropTable("dbo.LOAISANPHAM");
            DropTable("dbo.THONGKEBANHANG");
            DropTable("dbo.CT_TKBanHang");
            DropTable("dbo.PHIEUXUATKHO");
            DropTable("dbo.CT_PhieuXuatKho");
            DropTable("dbo.PHIEUNHAPKHO");
            DropTable("dbo.CT_PhieuNhapKho");
            DropTable("dbo.THUESUAT");
            DropTable("dbo.HOADONBANHANG");
            DropTable("dbo.CT_HDBanHang");
            DropTable("dbo.DONVITINH");
            DropTable("dbo.SANPHAM");
            DropTable("dbo.CT_PhieuDatMua");
            DropTable("dbo.PHIEUDATMUA");
            DropTable("dbo.PHIEUCHI");
            DropTable("dbo.CHUCVU");
            DropTable("dbo.NHANVIEN");
            DropTable("dbo.CALAMVIEC");
            DropTable("dbo.BANGCHAMCONG");
        }
    }
}
