namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Modify_Database : DbMigration
    {
        public override void Up()
        {
            /*CreateStoredProcedure(
                "dbo.TacGia_Insert",
                p => new
                    {
                        MaTacGia = p.String(maxLength: 20, unicode: false),
                        TenTacGia = p.String(maxLength: 50),
                    },
                body:
                    @"INSERT [dbo].[TACGIA]([MaTacGia], [TenTacGia])
                      VALUES (@MaTacGia, @TenTacGia)"
            );
            
            CreateStoredProcedure(
                "dbo.TacGia_Update",
                p => new
                    {
                        MaTacGia = p.String(maxLength: 20, unicode: false),
                        TenTacGia = p.String(maxLength: 50),
                    },
                body:
                    @"UPDATE [dbo].[TACGIA]
                      SET [TenTacGia] = @TenTacGia
                      WHERE ([MaTacGia] = @MaTacGia)"
            );
            
            CreateStoredProcedure(
                "dbo.TacGia_Delete",
                p => new
                    {
                        MaTacGia = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[TACGIA]
                      WHERE ([MaTacGia] = @MaTacGia)"
            );
            
            DropStoredProcedure("dbo.TACGIA_Insert");
            DropStoredProcedure("dbo.TACGIA_Update");
            DropStoredProcedure("dbo.TACGIA_Delete");*/
        }
        
        public override void Down()
        {
            DropStoredProcedure("dbo.TacGia_Delete");
            DropStoredProcedure("dbo.TacGia_Update");
            DropStoredProcedure("dbo.TacGia_Insert");
            throw new NotSupportedException("Scaffolding create or alter procedure operations is not supported in down methods.");
        }
    }
}
