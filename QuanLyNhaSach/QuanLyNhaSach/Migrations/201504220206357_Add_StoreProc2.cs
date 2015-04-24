namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Add_StoreProc2 : DbMigration
    {
        public override void Up()
        {
            CreateStoredProcedure(
                "dbo.TacGia_Insert",
                p => new
                    {
                        TenTacGia = p.String(maxLength: 50),
                    },
                body:
                    @"set nocount on
	                declare @count int
	                set @count = (select TacGia from BODEM) + 1
	                insert into TACGIA values(@count, @TenTacGia)
	                update [BODEM] set TacGia = @count"
            );
            
            /*CreateStoredProcedure(
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
