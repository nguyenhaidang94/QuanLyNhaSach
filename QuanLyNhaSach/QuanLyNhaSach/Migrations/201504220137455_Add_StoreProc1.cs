namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Add_StoreProc1 : DbMigration
    {
        public override void Up()
        {
            //DropStoredProcedure("dbo.TacGia_ThemTacGia");
            //DropStoredProcedure("dbo.TACGIA_Update");
            //DropStoredProcedure("dbo.TACGIA_Delete");
        }
        
        public override void Down()
        {
            throw new NotSupportedException("Scaffolding create or alter procedure operations is not supported in down methods.");
        }
    }
}
