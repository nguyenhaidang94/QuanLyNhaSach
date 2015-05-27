namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class delete_attribute_cthoadonbanhang : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.CT_HDBanHang", "GiaBan");
            DropColumn("dbo.CT_HDBanHang", "SoLuong");
            DropColumn("dbo.CT_HDBanHang", "ThanhTien");
            AlterStoredProcedure(
                "dbo.CT_HDBanHang_Insert",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"INSERT [dbo].[CT_HDBanHang]([MaHoaDon], [MaCTSanPham])
                      VALUES (@MaHoaDon, @MaCTSanPham)"
            );
            
            AlterStoredProcedure(
                "dbo.CT_HDBanHang_Update",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"RETURN"
            );
            
        }
        
        public override void Down()
        {
            AddColumn("dbo.CT_HDBanHang", "ThanhTien", c => c.Decimal(storeType: "money"));
            AddColumn("dbo.CT_HDBanHang", "SoLuong", c => c.Int());
            AddColumn("dbo.CT_HDBanHang", "GiaBan", c => c.Decimal(storeType: "money"));
            throw new NotSupportedException("Scaffolding create or alter procedure operations is not supported in down methods.");
        }
    }
}
