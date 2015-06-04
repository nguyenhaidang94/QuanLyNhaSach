namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class add_attribute_tinhtrang_to_phieudatmua : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PHIEUDATMUA", "TinhTrang", c => c.Boolean());
            AlterStoredProcedure(
                "dbo.PhieuDatMua_Insert",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        NgayDatMua = p.DateTime(storeType: "date"),
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        TongSoLuong = p.Int(),
                        TinhTrang = p.Boolean(),
                    },
                body:
                    @"INSERT [dbo].[PHIEUDATMUA]([MaPhieuDatMua], [NgayDatMua], [MaNhanVien], [MaNhaCungCap], [TongSoLuong], [TinhTrang])
                      VALUES (@MaPhieuDatMua, @NgayDatMua, @MaNhanVien, @MaNhaCungCap, @TongSoLuong, @TinhTrang)"
            );
            
            AlterStoredProcedure(
                "dbo.PhieuDatMua_Update",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        NgayDatMua = p.DateTime(storeType: "date"),
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        TongSoLuong = p.Int(),
                        TinhTrang = p.Boolean(),
                    },
                body:
                    @"UPDATE [dbo].[PHIEUDATMUA]
                      SET [NgayDatMua] = @NgayDatMua, [MaNhanVien] = @MaNhanVien, [MaNhaCungCap] = @MaNhaCungCap, [TongSoLuong] = @TongSoLuong, [TinhTrang] = @TinhTrang
                      WHERE ([MaPhieuDatMua] = @MaPhieuDatMua)"
            );
            
        }
        
        public override void Down()
        {
            DropColumn("dbo.PHIEUDATMUA", "TinhTrang");
            throw new NotSupportedException("Scaffolding create or alter procedure operations is not supported in down methods.");
        }
    }
}
