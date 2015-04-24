namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Delete_StoreProc : DbMigration
    {
        public override void Up()
        {
            DropStoredProcedure("dbo.TACGIA_Insert");
            //DropStoredProcedure("dbo.TACGIA_Update");
            //DropStoredProcedure("dbo.TACGIA_Delete");
        }
        
        public override void Down()
        {
            throw new NotSupportedException("Scaffolding create or alter procedure operations is not supported in down methods.");
        }
    }
}
