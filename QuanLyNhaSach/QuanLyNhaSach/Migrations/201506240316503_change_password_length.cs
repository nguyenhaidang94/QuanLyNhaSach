namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class change_password_length : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.NGUOIDUNG", "MatKhau", c => c.String(nullable: false, maxLength: 32, unicode: false));
            AlterStoredProcedure(
                "dbo.NguoiDung_Insert",
                p => new
                    {
                        TaiKhoan = p.String(maxLength: 20, unicode: false),
                        MatKhau = p.String(maxLength: 32, unicode: false),
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"INSERT [dbo].[NGUOIDUNG]([TaiKhoan], [MatKhau], [MaNhanVien])
                      VALUES (@TaiKhoan, @MatKhau, @MaNhanVien)"
            );
            
            AlterStoredProcedure(
                "dbo.NguoiDung_Update",
                p => new
                    {
                        TaiKhoan = p.String(maxLength: 20, unicode: false),
                        MatKhau = p.String(maxLength: 32, unicode: false),
                        MaNhanVien = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"UPDATE [dbo].[NGUOIDUNG]
                      SET [MatKhau] = @MatKhau, [MaNhanVien] = @MaNhanVien
                      WHERE ([TaiKhoan] = @TaiKhoan)"
            );
            
        }
        
        public override void Down()
        {
            AlterColumn("dbo.NGUOIDUNG", "MatKhau", c => c.String(nullable: false, maxLength: 20, unicode: false));
            throw new NotSupportedException("Scaffolding create or alter procedure operations is not supported in down methods.");
        }
    }
}
