namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Drop_ManytoMany : DbMigration
    {
        public override void Up()
        {
            //RenameTable(name: "dbo.CT_DAUSACH", newName: "TacGiaDauSaches");
            //RenameColumn(table: "dbo.TacGiaDauSaches", name: "MaDauSach", newName: "DauSach_MaDauSach");
            //RenameColumn(table: "dbo.TacGiaDauSaches", name: "MaTacGia", newName: "TacGia_MaTacGia");
            //RenameIndex(table: "dbo.TacGiaDauSaches", name: "IX_MaTacGia", newName: "IX_TacGia_MaTacGia");
            //RenameIndex(table: "dbo.TacGiaDauSaches", name: "IX_MaDauSach", newName: "IX_DauSach_MaDauSach");
            //DropPrimaryKey("dbo.TacGiaDauSaches");
            //AddPrimaryKey("dbo.TacGiaDauSaches", new[] { "TacGia_MaTacGia", "DauSach_MaDauSach" });
        }
        
        public override void Down()
        {
            DropPrimaryKey("dbo.TacGiaDauSaches");
            AddPrimaryKey("dbo.TacGiaDauSaches", new[] { "MaDauSach", "MaTacGia" });
            RenameIndex(table: "dbo.TacGiaDauSaches", name: "IX_DauSach_MaDauSach", newName: "IX_MaDauSach");
            RenameIndex(table: "dbo.TacGiaDauSaches", name: "IX_TacGia_MaTacGia", newName: "IX_MaTacGia");
            RenameColumn(table: "dbo.TacGiaDauSaches", name: "TacGia_MaTacGia", newName: "MaTacGia");
            RenameColumn(table: "dbo.TacGiaDauSaches", name: "DauSach_MaDauSach", newName: "MaDauSach");
            RenameTable(name: "dbo.TacGiaDauSaches", newName: "CT_DAUSACH");
        }
    }
}
