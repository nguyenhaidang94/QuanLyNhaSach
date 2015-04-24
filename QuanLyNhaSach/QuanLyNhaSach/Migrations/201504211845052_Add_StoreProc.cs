namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Add_StoreProc : DbMigration
    {
        public override void Up()
        {
            /*CreateStoredProcedure(
                "dbo.TacGia_ThemTacGia",
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
                "dbo.TACGIA_Update",
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
                "dbo.TACGIA_Delete",
                p => new
                    {
                        MaTacGia = p.String(maxLength: 20, unicode: false),
                    },
                body:
                    @"DELETE [dbo].[TACGIA]
                      WHERE ([MaTacGia] = @MaTacGia)"
            );*/
            
        }
        
        public override void Down()
        {
            /*DropStoredProcedure("dbo.TACGIA_Delete");
            DropStoredProcedure("dbo.TACGIA_Update");
            DropStoredProcedure("dbo.TacGia_ThemTacGia");*/
        }
    }
}
