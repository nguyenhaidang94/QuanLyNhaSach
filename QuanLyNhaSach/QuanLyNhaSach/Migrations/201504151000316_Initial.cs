namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            /*CreateTable(
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
                "dbo.PHIEUCHIKHAC",
                c => new
                    {
                        MaPhieuChiKhac = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaNhanVienChi = c.String(nullable: false, maxLength: 20, unicode: false),
                        NgayChi = c.DateTime(storeType: "date"),
                        NguoiNhan = c.String(maxLength: 50),
                        SoTien = c.Decimal(storeType: "money"),
                        LyDo = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaPhieuChiKhac)
                .ForeignKey("dbo.NHANVIEN", t => t.MaNhanVienChi)
                .Index(t => t.MaNhanVienChi);
            
            CreateTable(
                "dbo.PHIEUNHAPKHO",
                c => new
                    {
                        MaPhieuNhap = c.String(nullable: false, maxLength: 20, unicode: false),
                        NgayNhap = c.DateTime(storeType: "date"),
                        MaNhanVien = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaNhaCungCap = c.String(nullable: false, maxLength: 20, unicode: false),
                        TongSoLuong = c.Int(),
                    })
                .PrimaryKey(t => t.MaPhieuNhap)
                .ForeignKey("dbo.NHANVIEN", t => t.MaNhanVien)
                .Index(t => t.MaNhanVien);
            
            CreateTable(
                "dbo.CT_PHIEUNHAPKHO",
                c => new
                    {
                        MaPhieuNhap = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaSanPham = c.String(nullable: false, maxLength: 20, unicode: false),
                        DonGia = c.Decimal(storeType: "money"),
                        SoLuong = c.Int(),
                    })
                .PrimaryKey(t => new { t.MaPhieuNhap, t.MaSanPham })
                .ForeignKey("dbo.SANPHAM", t => t.MaSanPham)
                .ForeignKey("dbo.PHIEUNHAPKHO", t => t.MaPhieuNhap)
                .Index(t => t.MaPhieuNhap)
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
                "dbo.CT_HDBANHANG",
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
                "dbo.CT_PHIEUXUATKHO",
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
                "dbo.CT_TKBANHANG",
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
                "dbo.PHIEUTHUKHAC",
                c => new
                    {
                        MaPhieuThuKhac = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaNhanVienThu = c.String(nullable: false, maxLength: 20, unicode: false),
                        NgayThu = c.DateTime(storeType: "date"),
                        SoTien = c.Decimal(storeType: "money"),
                        LyDo = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaPhieuThuKhac)
                .ForeignKey("dbo.NHANVIEN", t => t.MaNhanVienThu)
                .Index(t => t.MaNhanVienThu);
            
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
                "dbo.NHAXUATBAN",
                c => new
                    {
                        MaNhaXuatBan = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenNhaXuatBan = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaNhaXuatBan);
            
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
            */
        }
        
        public override void Down()
        {
            /*DropForeignKey("dbo.DAUSACH", "MaTheLoai", "dbo.THELOAISACH");
            DropForeignKey("dbo.CT_DAUSACH", "MaTacGia", "dbo.TACGIA");
            DropForeignKey("dbo.CT_DAUSACH", "MaDauSach", "dbo.DAUSACH");
            DropForeignKey("dbo.CT_BANGCHAMCONG", "MaNhanVien", "dbo.NHANVIEN");
            DropForeignKey("dbo.CT_BANGCHAMCONG", "MaBCC", "dbo.BANGCHAMCONG");
            DropForeignKey("dbo.PHIEUXUATKHO", "MaNhanVien", "dbo.NHANVIEN");
            DropForeignKey("dbo.PHIEUTHUKHAC", "MaNhanVienThu", "dbo.NHANVIEN");
            DropForeignKey("dbo.PHIEUNHAPKHO", "MaNhanVien", "dbo.NHANVIEN");
            DropForeignKey("dbo.CT_PHIEUNHAPKHO", "MaPhieuNhap", "dbo.PHIEUNHAPKHO");
            DropForeignKey("dbo.SANPHAM", "MaQuay", "dbo.QUAYHANG");
            DropForeignKey("dbo.SANPHAM", "MaNhaCungCap", "dbo.NHACUNGCAP");
            DropForeignKey("dbo.SANPHAM", "MaLoaiSanPham", "dbo.LOAISANPHAM");
            DropForeignKey("dbo.SANPHAM", "MaDVT", "dbo.DONVITINH");
            DropForeignKey("dbo.CT_TKBANHANG", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_TKBANHANG", new[] { "Thang", "Nam" }, "dbo.THONGKEBANHANG");
            DropForeignKey("dbo.CT_PHIEUXUATKHO", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_PHIEUXUATKHO", "MaPhieuXuat", "dbo.PHIEUXUATKHO");
            DropForeignKey("dbo.CT_PHIEUNHAPKHO", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_HDBANHANG", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_HDBANHANG", "MaSoThue", "dbo.THUESUAT");
            DropForeignKey("dbo.CT_HDBANHANG", "MaHoaDon", "dbo.HOADONBANHANG");
            DropForeignKey("dbo.PHIEUCHIKHAC", "MaNhanVienChi", "dbo.NHANVIEN");
            DropForeignKey("dbo.NHANVIEN", "MaChucVu", "dbo.CHUCVU");
            DropForeignKey("dbo.BANGCHAMCONG", "NguoiChamCong", "dbo.NHANVIEN");
            DropForeignKey("dbo.BANGCHAMCONG", "MaCaLamViec", "dbo.CALAMVIEC");
            DropIndex("dbo.CT_DAUSACH", new[] { "MaTacGia" });
            DropIndex("dbo.CT_DAUSACH", new[] { "MaDauSach" });
            DropIndex("dbo.CT_BANGCHAMCONG", new[] { "MaNhanVien" });
            DropIndex("dbo.CT_BANGCHAMCONG", new[] { "MaBCC" });
            DropIndex("dbo.DAUSACH", new[] { "MaTheLoai" });
            DropIndex("dbo.PHIEUTHUKHAC", new[] { "MaNhanVienThu" });
            DropIndex("dbo.CT_TKBANHANG", new[] { "MaSanPham" });
            DropIndex("dbo.CT_TKBANHANG", new[] { "Thang", "Nam" });
            DropIndex("dbo.PHIEUXUATKHO", new[] { "MaNhanVien" });
            DropIndex("dbo.CT_PHIEUXUATKHO", new[] { "MaSanPham" });
            DropIndex("dbo.CT_PHIEUXUATKHO", new[] { "MaPhieuXuat" });
            DropIndex("dbo.CT_HDBANHANG", new[] { "MaSoThue" });
            DropIndex("dbo.CT_HDBANHANG", new[] { "MaSanPham" });
            DropIndex("dbo.CT_HDBANHANG", new[] { "MaHoaDon" });
            DropIndex("dbo.SANPHAM", new[] { "MaDVT" });
            DropIndex("dbo.SANPHAM", new[] { "MaQuay" });
            DropIndex("dbo.SANPHAM", new[] { "MaNhaCungCap" });
            DropIndex("dbo.SANPHAM", new[] { "MaLoaiSanPham" });
            DropIndex("dbo.CT_PHIEUNHAPKHO", new[] { "MaSanPham" });
            DropIndex("dbo.CT_PHIEUNHAPKHO", new[] { "MaPhieuNhap" });
            DropIndex("dbo.PHIEUNHAPKHO", new[] { "MaNhanVien" });
            DropIndex("dbo.PHIEUCHIKHAC", new[] { "MaNhanVienChi" });
            DropIndex("dbo.NHANVIEN", new[] { "MaChucVu" });
            DropIndex("dbo.BANGCHAMCONG", new[] { "NguoiChamCong" });
            DropIndex("dbo.BANGCHAMCONG", new[] { "MaCaLamViec" });
            DropTable("dbo.CT_DAUSACH");
            DropTable("dbo.CT_BANGCHAMCONG");
            DropTable("dbo.NHAXUATBAN");
            DropTable("dbo.NHASANXUAT");
            DropTable("dbo.LOAIDDHT");
            DropTable("dbo.THELOAISACH");
            DropTable("dbo.TACGIA");
            DropTable("dbo.DAUSACH");
            DropTable("dbo.PHIEUTHUKHAC");
            DropTable("dbo.QUAYHANG");
            DropTable("dbo.NHACUNGCAP");
            DropTable("dbo.LOAISANPHAM");
            DropTable("dbo.DONVITINH");
            DropTable("dbo.THONGKEBANHANG");
            DropTable("dbo.CT_TKBANHANG");
            DropTable("dbo.PHIEUXUATKHO");
            DropTable("dbo.CT_PHIEUXUATKHO");
            DropTable("dbo.THUESUAT");
            DropTable("dbo.HOADONBANHANG");
            DropTable("dbo.CT_HDBANHANG");
            DropTable("dbo.SANPHAM");
            DropTable("dbo.CT_PHIEUNHAPKHO");
            DropTable("dbo.PHIEUNHAPKHO");
            DropTable("dbo.PHIEUCHIKHAC");
            DropTable("dbo.CHUCVU");
            DropTable("dbo.NHANVIEN");
            DropTable("dbo.CALAMVIEC");
            DropTable("dbo.BANGCHAMCONG");*/
        }
    }
}
