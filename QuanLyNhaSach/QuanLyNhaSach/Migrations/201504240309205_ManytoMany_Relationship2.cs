namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ManytoMany_Relationship2 : DbMigration
    {
        public override void Up()
        {
            //RenameTable(name: "dbo.TacGiaDauSaches", newName: "CT_DAUSACH");
            //RenameColumn(table: "dbo.CT_DAUSACH", name: "TacGia_MaTacGia", newName: "MaTacGia");
            //RenameColumn(table: "dbo.CT_DAUSACH", name: "DauSach_MaDauSach", newName: "MaDauSach");
            //RenameIndex(table: "dbo.CT_DAUSACH", name: "IX_DauSach_MaDauSach", newName: "IX_MaDauSach");
            //RenameIndex(table: "dbo.CT_DAUSACH", name: "IX_TacGia_MaTacGia", newName: "IX_MaTacGia");
            //DropPrimaryKey("dbo.CT_DAUSACH");
            //AddPrimaryKey("dbo.CT_DAUSACH", new[] { "MaDauSach", "MaTacGia" });
        }
        
        public override void Down()
        {
            DropPrimaryKey("dbo.CT_DAUSACH");
            AddPrimaryKey("dbo.CT_DAUSACH", new[] { "TacGia_MaTacGia", "DauSach_MaDauSach" });
            RenameIndex(table: "dbo.CT_DAUSACH", name: "IX_MaTacGia", newName: "IX_TacGia_MaTacGia");
            RenameIndex(table: "dbo.CT_DAUSACH", name: "IX_MaDauSach", newName: "IX_DauSach_MaDauSach");
            RenameColumn(table: "dbo.CT_DAUSACH", name: "MaDauSach", newName: "DauSach_MaDauSach");
            RenameColumn(table: "dbo.CT_DAUSACH", name: "MaTacGia", newName: "TacGia_MaTacGia");
            RenameTable(name: "dbo.CT_DAUSACH", newName: "TacGiaDauSaches");
        }
    }
}
