namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Add_New_Table : DbMigration
    {
        public override void Up()
        {
            /*DropForeignKey("dbo.CT_HDBanHang", "ThueSuat_MaSoThue", "dbo.THUESUAT");
            DropIndex("dbo.CT_HDBanHang", new[] { "ThueSuat_MaSoThue" });
            DropColumn("dbo.CT_HDBanHang", "ThueSuat_MaSoThue");
            AlterStoredProcedure(
                "dbo.CT_HDBanHang_Insert",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                        GiaBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[CT_HDBanHang]([MaHoaDon], [MaCTSanPham], [GiaBan], [SoLuong])
                      VALUES (@MaHoaDon, @MaCTSanPham, @GiaBan, @SoLuong)"
            );
            
            AlterStoredProcedure(
                "dbo.CT_HDBanHang_Update",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                        GiaBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[CT_HDBanHang]
                      SET [GiaBan] = @GiaBan, [SoLuong] = @SoLuong
                      WHERE (([MaHoaDon] = @MaHoaDon) AND ([MaCTSanPham] = @MaCTSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_HDBanHang_Delete",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"DELETE [dbo].[CT_HDBanHang]
                      WHERE (([MaHoaDon] = @MaHoaDon) AND ([MaCTSanPham] = @MaCTSanPham))"
            );*/
            
        }
        
        public override void Down()
        {
            /*AddColumn("dbo.CT_HDBanHang", "ThueSuat_MaSoThue", c => c.String(maxLength: 20, unicode: false));
            CreateIndex("dbo.CT_HDBanHang", "ThueSuat_MaSoThue");
            AddForeignKey("dbo.CT_HDBanHang", "ThueSuat_MaSoThue", "dbo.THUESUAT", "MaSoThue");
            throw new NotSupportedException("Scaffolding create or alter procedure operations is not supported in down methods.");*/
        }
    }
}
