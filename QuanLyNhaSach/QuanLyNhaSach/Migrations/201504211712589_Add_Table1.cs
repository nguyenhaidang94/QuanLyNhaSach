namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Add_Table1 : DbMigration
    {
        public override void Up()
        {
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
            
        }
        
        public override void Down()
        {
            DropTable("dbo.BODEM");
        }
    }
}
