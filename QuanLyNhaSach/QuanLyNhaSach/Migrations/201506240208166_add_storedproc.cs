namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class add_storedproc : DbMigration
    {
        public override void Up()
        {
            CreateStoredProcedure(
                "dbo.NguoiDung_Insert",
                p => new
                    {
                        TaiKhoan = p.String(maxLength: 20, unicode: false),
                        MatKhau = p.String(maxLength: 20, unicode: false),
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"INSERT [dbo].[NGUOIDUNG]([TaiKhoan], [MatKhau], [MaNhanVien])
                      VALUES (@TaiKhoan, @MatKhau, @MaNhanVien)"
            );
            
            CreateStoredProcedure(
                "dbo.NguoiDung_Update",
                p => new
                    {
                        TaiKhoan = p.String(maxLength: 20, unicode: false),
                        MatKhau = p.String(maxLength: 20, unicode: false),
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"UPDATE [dbo].[NGUOIDUNG]
                      SET [MatKhau] = @MatKhau, [MaNhanVien] = @MaNhanVien
                      WHERE ([TaiKhoan] = @TaiKhoan)"
            );
            
            CreateStoredProcedure(
                "dbo.NguoiDung_Delete",
                p => new
                    {
                        TaiKhoan = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[NGUOIDUNG]
                      WHERE ([TaiKhoan] = @TaiKhoan)"
            );
            
        }
        
        public override void Down()
        {
            DropStoredProcedure("dbo.NguoiDung_Delete");
            DropStoredProcedure("dbo.NguoiDung_Update");
            DropStoredProcedure("dbo.NguoiDung_Insert");
        }
    }
}
