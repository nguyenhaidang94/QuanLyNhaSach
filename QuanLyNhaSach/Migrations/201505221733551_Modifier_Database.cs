namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Modifier_Database : DbMigration
    {
        public override void Up()
        {
            DropIndex("dbo.CT_PhieuDatMua", new[] { "MaCTSanPham" });
            DropIndex("dbo.CT_PhieuNhapKho", new[] { "MaCTSanPham" });
            DropIndex("dbo.CT_PhieuXuatKho", new[] { "MaCTSanPham" });
            DropIndex("dbo.CT_TKBanHang", new[] { "MaCTSanPham" });

            DropPrimaryKey("dbo.CT_PhieuDatMua");
            DropPrimaryKey("dbo.CT_PhieuNhapKho");
            DropPrimaryKey("dbo.CT_PhieuXuatKho");
            DropPrimaryKey("dbo.CT_TKBanHang");

            DropForeignKey("dbo.CT_TKBanHang", "MaCTSanPham", "dbo.CT_SANPHAM");
            DropForeignKey("dbo.CT_PhieuXuatKho", "MaCTSanPham", "dbo.CT_SANPHAM");
            DropForeignKey("dbo.CT_PhieuNhapKho", "MaCTSanPham", "dbo.CT_SANPHAM");
            DropForeignKey("dbo.CT_PhieuDatMua", "MaCTSanPham", "dbo.CT_SANPHAM");

            DropColumn("dbo.CT_TKBanHang", "MaCTSanPham");
            DropColumn("dbo.CT_PhieuXuatKho", "MaCTSanPham");
            DropColumn("dbo.CT_PhieuNhapKho", "MaCTSanPham");
            DropColumn("dbo.CT_PhieuDatMua", "MaCTSanPham");

            AddColumn("dbo.CT_PhieuDatMua", "MaSanPham", c => c.String(nullable: false, maxLength: 20, unicode: false));
            AddColumn("dbo.CT_PhieuNhapKho", "MaSanPham", c => c.String(nullable: false, maxLength: 20, unicode: false));
            AddColumn("dbo.CT_PhieuXuatKho", "MaSanPham", c => c.String(nullable: false, maxLength: 20, unicode: false));
            AddColumn("dbo.CT_TKBanHang", "MaSanPham", c => c.String(nullable: false, maxLength: 20, unicode: false));
            //AlterColumn("dbo.CT_PhieuDatMua", "CT_SanPham_MaCTSanPham", c => c.String(maxLength: 20));
            //AlterColumn("dbo.CT_PhieuNhapKho", "CT_SanPham_MaCTSanPham", c => c.String(maxLength: 20));
            //AlterColumn("dbo.CT_PhieuXuatKho", "CT_SanPham_MaCTSanPham", c => c.String(maxLength: 20));
            //AlterColumn("dbo.CT_TKBanHang", "CT_SanPham_MaCTSanPham", c => c.String(maxLength: 20));
            AddPrimaryKey("dbo.CT_PhieuDatMua", new[] { "MaPhieuDatMua", "MaSanPham" });
            AddPrimaryKey("dbo.CT_PhieuNhapKho", new[] { "MaPhieuNhap", "MaSanPham" });
            AddPrimaryKey("dbo.CT_PhieuXuatKho", new[] { "MaPhieuXuat", "MaSanPham" });
            AddPrimaryKey("dbo.CT_TKBanHang", new[] { "Thang", "Nam", "MaSanPham" });
            CreateIndex("dbo.CT_PhieuDatMua", "MaSanPham");
            //CreateIndex("dbo.CT_PhieuDatMua", "CT_SanPham_MaCTSanPham");
            CreateIndex("dbo.CT_PhieuNhapKho", "MaSanPham");
            //CreateIndex("dbo.CT_PhieuNhapKho", "CT_SanPham_MaCTSanPham");
            CreateIndex("dbo.CT_PhieuXuatKho", "MaSanPham");
            //CreateIndex("dbo.CT_PhieuXuatKho", "CT_SanPham_MaCTSanPham");
            CreateIndex("dbo.CT_TKBanHang", "MaSanPham");
            //CreateIndex("dbo.CT_TKBanHang", "CT_SanPham_MaCTSanPham");
            AddForeignKey("dbo.CT_PhieuDatMua", "MaSanPham", "dbo.SANPHAM", "MaSanPham");
            AddForeignKey("dbo.CT_PhieuNhapKho", "MaSanPham", "dbo.SANPHAM", "MaSanPham");
            AddForeignKey("dbo.CT_PhieuXuatKho", "MaSanPham", "dbo.SANPHAM", "MaSanPham");
            AddForeignKey("dbo.CT_TKBanHang", "MaSanPham", "dbo.SANPHAM", "MaSanPham");
            AlterStoredProcedure(
                "dbo.CT_PhieuDatMua_Insert",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        DonGia = p.Double(),
                        SoLuong = p.Double(),
                        TinhTrang = p.Boolean(),
                        //CT_SanPham_MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"INSERT [dbo].[CT_PhieuDatMua]([MaPhieuDatMua], [MaSanPham], [DonGia], [SoLuong], [TinhTrang])
                      VALUES (@MaPhieuDatMua, @MaSanPham, @DonGia, @SoLuong, @TinhTrang)"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuDatMua_Update",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        DonGia = p.Double(),
                        SoLuong = p.Double(),
                        TinhTrang = p.Boolean(),
                        //CT_SanPham_MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"UPDATE [dbo].[CT_PhieuDatMua]
                      SET [DonGia] = @DonGia, [SoLuong] = @SoLuong, [TinhTrang] = @TinhTrang
                      WHERE (([MaPhieuDatMua] = @MaPhieuDatMua) AND ([MaSanPham] = @MaSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuDatMua_Delete",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        //CT_SanPham_MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"DELETE [dbo].[CT_PhieuDatMua]
                      WHERE (([MaPhieuDatMua] = @MaPhieuDatMua) AND ([MaSanPham] = @MaSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuNhapKho_Insert",
                p => new
                    {
                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                        //CT_SanPham_MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"INSERT [dbo].[CT_PhieuNhapKho]([MaPhieuNhap], [MaSanPham], [DonGia], [SoLuong])
                      VALUES (@MaPhieuNhap, @MaSanPham, @DonGia, @SoLuong)"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuNhapKho_Update",
                p => new
                    {
                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                        //CT_SanPham_MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"UPDATE [dbo].[CT_PhieuNhapKho]
                      SET [DonGia] = @DonGia, [SoLuong] = @SoLuong
                      WHERE (([MaPhieuNhap] = @MaPhieuNhap) AND ([MaSanPham] = @MaSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuNhapKho_Delete",
                p => new
                    {
                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        //CT_SanPham_MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"DELETE [dbo].[CT_PhieuNhapKho]
                      WHERE (([MaPhieuNhap] = @MaPhieuNhap) AND ([MaSanPham] = @MaSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuXuatKho_Insert",
                p => new
                    {
                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        SoLuong = p.Int(),
                        //CT_SanPham_MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"INSERT [dbo].[CT_PhieuXuatKho]([MaPhieuXuat], [MaSanPham], [SoLuong])
                      VALUES (@MaPhieuXuat, @MaSanPham, @SoLuong)"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuXuatKho_Update",
                p => new
                    {
                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        SoLuong = p.Int(),
                        //CT_SanPham_MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"UPDATE [dbo].[CT_PhieuXuatKho]
                      SET [SoLuong] = @SoLuong
                      WHERE (([MaPhieuXuat] = @MaPhieuXuat) AND ([MaSanPham] = @MaSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuXuatKho_Delete",
                p => new
                    {
                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        //CT_SanPham_MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"DELETE [dbo].[CT_PhieuXuatKho]
                      WHERE (([MaPhieuXuat] = @MaPhieuXuat) AND ([MaSanPham] = @MaSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_TKBanHang_Insert",
                p => new
                    {
                        Thang = p.Int(),
                        Nam = p.Int(),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        TonDau = p.Int(),
                        SoLuongNhap = p.Int(),
                        TienNhap = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuongXuat = p.Int(),
                        TonCuoi = p.Int(),
                        SoLuongBan = p.Int(),
                        TienBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        //CT_SanPham_MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"INSERT [dbo].[CT_TKBanHang]([Thang], [Nam], [MaSanPham], [TonDau], [SoLuongNhap], [TienNhap], [SoLuongXuat], [TonCuoi], [SoLuongBan], [TienBan])
                      VALUES (@Thang, @Nam, @MaSanPham, @TonDau, @SoLuongNhap, @TienNhap, @SoLuongXuat, @TonCuoi, @SoLuongBan, @TienBan)"
            );
            
            AlterStoredProcedure(
                "dbo.CT_TKBanHang_Update",
                p => new
                    {
                        Thang = p.Int(),
                        Nam = p.Int(),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        TonDau = p.Int(),
                        SoLuongNhap = p.Int(),
                        TienNhap = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuongXuat = p.Int(),
                        TonCuoi = p.Int(),
                        SoLuongBan = p.Int(),
                        TienBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        //CT_SanPham_MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"UPDATE [dbo].[CT_TKBanHang]
                      SET [TonDau] = @TonDau, [SoLuongNhap] = @SoLuongNhap, [TienNhap] = @TienNhap, [SoLuongXuat] = @SoLuongXuat, [TonCuoi] = @TonCuoi, [SoLuongBan] = @SoLuongBan, [TienBan] = @TienBan
                      WHERE ((([Thang] = @Thang) AND ([Nam] = @Nam)) AND ([MaSanPham] = @MaSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_TKBanHang_Delete",
                p => new
                    {
                        Thang = p.Int(),
                        Nam = p.Int(),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        //CT_SanPham_MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"DELETE [dbo].[CT_TKBanHang]
                      WHERE ((([Thang] = @Thang) AND ([Nam] = @Nam)) AND ([MaSanPham] = @MaSanPham))"
            );
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CT_TKBanHang", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_PhieuXuatKho", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_PhieuNhapKho", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_PhieuDatMua", "MaSanPham", "dbo.SANPHAM");
            DropIndex("dbo.CT_TKBanHang", new[] { "CT_SanPham_MaCTSanPham" });
            DropIndex("dbo.CT_TKBanHang", new[] { "MaSanPham" });
            DropIndex("dbo.CT_PhieuXuatKho", new[] { "CT_SanPham_MaCTSanPham" });
            DropIndex("dbo.CT_PhieuXuatKho", new[] { "MaSanPham" });
            DropIndex("dbo.CT_PhieuNhapKho", new[] { "CT_SanPham_MaCTSanPham" });
            DropIndex("dbo.CT_PhieuNhapKho", new[] { "MaSanPham" });
            DropIndex("dbo.CT_PhieuDatMua", new[] { "CT_SanPham_MaCTSanPham" });
            DropIndex("dbo.CT_PhieuDatMua", new[] { "MaSanPham" });
            DropPrimaryKey("dbo.CT_TKBanHang");
            DropPrimaryKey("dbo.CT_PhieuXuatKho");
            DropPrimaryKey("dbo.CT_PhieuNhapKho");
            DropPrimaryKey("dbo.CT_PhieuDatMua");
            AlterColumn("dbo.CT_TKBanHang", "CT_SanPham_MaCTSanPham", c => c.String(nullable: false, maxLength: 20));
            AlterColumn("dbo.CT_PhieuXuatKho", "CT_SanPham_MaCTSanPham", c => c.String(nullable: false, maxLength: 20));
            AlterColumn("dbo.CT_PhieuNhapKho", "CT_SanPham_MaCTSanPham", c => c.String(nullable: false, maxLength: 20));
            AlterColumn("dbo.CT_PhieuDatMua", "CT_SanPham_MaCTSanPham", c => c.String(nullable: false, maxLength: 20));
            DropColumn("dbo.CT_TKBanHang", "MaSanPham");
            DropColumn("dbo.CT_PhieuXuatKho", "MaSanPham");
            DropColumn("dbo.CT_PhieuNhapKho", "MaSanPham");
            DropColumn("dbo.CT_PhieuDatMua", "MaSanPham");
            AddPrimaryKey("dbo.CT_TKBanHang", new[] { "Thang", "Nam", "MaCTSanPham" });
            AddPrimaryKey("dbo.CT_PhieuXuatKho", new[] { "MaPhieuXuat", "MaCTSanPham" });
            AddPrimaryKey("dbo.CT_PhieuNhapKho", new[] { "MaPhieuNhap", "MaCTSanPham" });
            AddPrimaryKey("dbo.CT_PhieuDatMua", new[] { "MaPhieuDatMua", "MaCTSanPham" });
            RenameColumn(table: "dbo.CT_TKBanHang", name: "CT_SanPham_MaCTSanPham", newName: "MaCTSanPham");
            RenameColumn(table: "dbo.CT_PhieuXuatKho", name: "CT_SanPham_MaCTSanPham", newName: "MaCTSanPham");
            RenameColumn(table: "dbo.CT_PhieuNhapKho", name: "CT_SanPham_MaCTSanPham", newName: "MaCTSanPham");
            RenameColumn(table: "dbo.CT_PhieuDatMua", name: "CT_SanPham_MaCTSanPham", newName: "MaCTSanPham");
            CreateIndex("dbo.CT_TKBanHang", "MaCTSanPham");
            CreateIndex("dbo.CT_PhieuXuatKho", "MaCTSanPham");
            CreateIndex("dbo.CT_PhieuNhapKho", "MaCTSanPham");
            CreateIndex("dbo.CT_PhieuDatMua", "MaCTSanPham");
            throw new NotSupportedException("Scaffolding create or alter procedure operations is not supported in down methods.");
        }
    }
}
