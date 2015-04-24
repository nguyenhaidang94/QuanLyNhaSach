namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Add_Table : DbMigration
    {
        public override void Up()
        {
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
            DropIndex("dbo.DODUNGHOCTAP", new[] { "MaNhaSanXuat" });
            DropIndex("dbo.DODUNGHOCTAP", new[] { "MaLoaiDDHT" });
            DropIndex("dbo.DODUNGHOCTAP", new[] { "MaSanPham" });
            DropIndex("dbo.SACH", new[] { "MaNhaXuatBan" });
            DropIndex("dbo.SACH", new[] { "MaDauSach" });
            DropIndex("dbo.SACH", new[] { "MaSanPham" });
            DropTable("dbo.DODUNGHOCTAP");
            DropTable("dbo.SACH");
        }
    }
}
