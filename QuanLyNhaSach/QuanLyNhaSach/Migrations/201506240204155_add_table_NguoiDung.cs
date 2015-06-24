namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class add_table_NguoiDung : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.NGUOIDUNG",
                c => new
                    {
                        TaiKhoan = c.String(nullable: false, maxLength: 20, unicode: false),
                        MatKhau = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaNhanVien = c.String(nullable: false, maxLength: 20, unicode: false),
                    })
                .PrimaryKey(t => t.TaiKhoan)
                .ForeignKey("dbo.NHANVIEN", t => t.MaNhanVien, cascadeDelete: true)
                .Index(t => t.MaNhanVien);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.NGUOIDUNG", "MaNhanVien", "dbo.NHANVIEN");
            DropIndex("dbo.NGUOIDUNG", new[] { "MaNhanVien" });
            DropTable("dbo.NGUOIDUNG");
        }
    }
}
