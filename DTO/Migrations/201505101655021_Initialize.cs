namespace DTO.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initialize : DbMigration
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
                "dbo.CT_PHIEUDATMUA",
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
                "dbo.DONVITINH",
                c => new
                    {
                        MaDVT = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenDVT = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaDVT);
            
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
                        PhieuChiKhac = c.Int(nullable: false),
                        PhieuNhapKho = c.Int(nullable: false),
                        PhieuThuKhac = c.Int(nullable: false),
                        PhieuXuatKho = c.Int(nullable: false),
                        QuayHang = c.Int(nullable: false),
                        SanPham = c.Int(nullable: false),
                        TacGia = c.Int(nullable: false),
                        TheLoaiSach = c.Int(nullable: false),
                        ThueSuat = c.Int(nullable: false),
                    });
                //.PrimaryKey(t => new { t.BangChamCong, t.CaLamViec, t.ChucVu, t.DauSach, t.DonViTinh, t.HoaDonBanHang, t.LoaiDDHT, t.LoaiSanPham, t.NhaCungCap, t.NhanVien, t.NhaSanXuat, t.NhaXuatBan, t.PhieuChiKhac, t.PhieuNhapKho, t.PhieuThuKhac, t.PhieuXuatKho, t.QuayHang, t.SanPham, t.TacGia, t.TheLoaiSach, t.ThueSuat });
            
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
            
        }
        
        public override void Down()
        {
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
            DropForeignKey("dbo.CT_PHIEUDATMUA", "MaPhieuDatMua", "dbo.PHIEUDATMUA");
            DropForeignKey("dbo.DAUSACH", "MaTheLoai", "dbo.THELOAISACH");
            DropForeignKey("dbo.CT_DAUSACH", "MaTacGia", "dbo.TACGIA");
            DropForeignKey("dbo.CT_DAUSACH", "MaDauSach", "dbo.DAUSACH");
            DropForeignKey("dbo.SANPHAM", "MaQuay", "dbo.QUAYHANG");
            DropForeignKey("dbo.SANPHAM", "MaNhaCungCap", "dbo.NHACUNGCAP");
            DropForeignKey("dbo.PHIEUDATMUA", "MaNhaCungCap", "dbo.NHACUNGCAP");
            DropForeignKey("dbo.SANPHAM", "MaLoaiSanPham", "dbo.LOAISANPHAM");
            DropForeignKey("dbo.SANPHAM", "MaDVT", "dbo.DONVITINH");
            DropForeignKey("dbo.CT_TKBanHang", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_TKBanHang", new[] { "Thang", "Nam" }, "dbo.THONGKEBANHANG");
            DropForeignKey("dbo.CT_PhieuXuatKho", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_PhieuXuatKho", "MaPhieuXuat", "dbo.PHIEUXUATKHO");
            DropForeignKey("dbo.CT_PhieuNhapKho", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_PhieuNhapKho", "MaPhieuNhap", "dbo.PHIEUNHAPKHO");
            DropForeignKey("dbo.CT_PHIEUDATMUA", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_HDBanHang", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_HDBanHang", "MaSoThue", "dbo.THUESUAT");
            DropForeignKey("dbo.CT_HDBanHang", "MaHoaDon", "dbo.HOADONBANHANG");
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
            DropIndex("dbo.CT_PHIEUDATMUA", new[] { "MaSanPham" });
            DropIndex("dbo.CT_PHIEUDATMUA", new[] { "MaPhieuDatMua" });
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
            DropTable("dbo.DONVITINH");
            DropTable("dbo.THONGKEBANHANG");
            DropTable("dbo.CT_TKBanHang");
            DropTable("dbo.PHIEUXUATKHO");
            DropTable("dbo.CT_PhieuXuatKho");
            DropTable("dbo.PHIEUNHAPKHO");
            DropTable("dbo.CT_PhieuNhapKho");
            DropTable("dbo.THUESUAT");
            DropTable("dbo.HOADONBANHANG");
            DropTable("dbo.CT_HDBanHang");
            DropTable("dbo.SANPHAM");
            DropTable("dbo.CT_PHIEUDATMUA");
            DropTable("dbo.PHIEUDATMUA");
            DropTable("dbo.PHIEUCHI");
            DropTable("dbo.CHUCVU");
            DropTable("dbo.NHANVIEN");
            DropTable("dbo.CALAMVIEC");
            DropTable("dbo.BANGCHAMCONG");
        }
    }
}
