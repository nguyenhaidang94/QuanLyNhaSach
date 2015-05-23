namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Confirm_Changes : DbMigration
    {
        public override void Up()
        {
//            DropForeignKey("dbo.CT_PhieuDatMua", "CT_SanPham_MaCTSanPham", "dbo.CT_SANPHAM");
//            DropForeignKey("dbo.CT_PhieuNhapKho", "CT_SanPham_MaCTSanPham", "dbo.CT_SANPHAM");
//            DropForeignKey("dbo.CT_PhieuXuatKho", "CT_SanPham_MaCTSanPham", "dbo.CT_SANPHAM");
//            DropForeignKey("dbo.CT_TKBanHang", "CT_SanPham_MaCTSanPham", "dbo.CT_SANPHAM");
//            DropForeignKey("dbo.CT_PhieuXuatKho", "MaSanPham", "dbo.SANPHAM");
//            DropIndex("dbo.CT_PhieuDatMua", new[] { "CT_SanPham_MaCTSanPham" });
//            DropIndex("dbo.CT_PhieuNhapKho", new[] { "CT_SanPham_MaCTSanPham" });
//            DropIndex("dbo.CT_PhieuXuatKho", new[] { "CT_SanPham_MaCTSanPham" });
//            DropIndex("dbo.CT_TKBanHang", new[] { "CT_SanPham_MaCTSanPham" });
//            AddForeignKey("dbo.CT_PhieuXuatKho", "MaSanPham", "dbo.SANPHAM", "MaSanPham", cascadeDelete: true);
//            DropColumn("dbo.CT_PhieuDatMua", "CT_SanPham_MaCTSanPham");
//            DropColumn("dbo.CT_PhieuNhapKho", "CT_SanPham_MaCTSanPham");
//            DropColumn("dbo.CT_PhieuXuatKho", "CT_SanPham_MaCTSanPham");
//            DropColumn("dbo.CT_TKBanHang", "CT_SanPham_MaCTSanPham");
//            DropTable("dbo.THUESUAT");
//            AlterStoredProcedure(
//                "dbo.CT_PhieuDatMua_Insert",
//                p => new
//                    {
//                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
//                        MaSanPham = p.String(maxLength: 20, unicode: false),
//                        DonGia = p.Double(),
//                        SoLuong = p.Double(),
//                        TinhTrang = p.Boolean(),
//                    },
//                body:
//                    @"INSERT [dbo].[CT_PhieuDatMua]([MaPhieuDatMua], [MaSanPham], [DonGia], [SoLuong], [TinhTrang])
//                      VALUES (@MaPhieuDatMua, @MaSanPham, @DonGia, @SoLuong, @TinhTrang)"
//            );
            
//            AlterStoredProcedure(
//                "dbo.CT_PhieuDatMua_Update",
//                p => new
//                    {
//                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
//                        MaSanPham = p.String(maxLength: 20, unicode: false),
//                        DonGia = p.Double(),
//                        SoLuong = p.Double(),
//                        TinhTrang = p.Boolean(),
//                    },
//                body:
//                    @"UPDATE [dbo].[CT_PhieuDatMua]
//                      SET [DonGia] = @DonGia, [SoLuong] = @SoLuong, [TinhTrang] = @TinhTrang
//                      WHERE (([MaPhieuDatMua] = @MaPhieuDatMua) AND ([MaSanPham] = @MaSanPham))"
//            );
            
//            AlterStoredProcedure(
//                "dbo.CT_PhieuDatMua_Delete",
//                p => new
//                    {
//                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
//                        MaSanPham = p.String(maxLength: 20, unicode: false),
//                    },
//                body:
//                    @"DELETE [dbo].[CT_PhieuDatMua]
//                      WHERE (([MaPhieuDatMua] = @MaPhieuDatMua) AND ([MaSanPham] = @MaSanPham))"
//            );
            
//            AlterStoredProcedure(
//                "dbo.CT_PhieuNhapKho_Insert",
//                p => new
//                    {
//                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
//                        MaSanPham = p.String(maxLength: 20, unicode: false),
//                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
//                        SoLuong = p.Int(),
//                    },
//                body:
//                    @"INSERT [dbo].[CT_PhieuNhapKho]([MaPhieuNhap], [MaSanPham], [DonGia], [SoLuong])
//                      VALUES (@MaPhieuNhap, @MaSanPham, @DonGia, @SoLuong)"
//            );
            
//            AlterStoredProcedure(
//                "dbo.CT_PhieuNhapKho_Update",
//                p => new
//                    {
//                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
//                        MaSanPham = p.String(maxLength: 20, unicode: false),
//                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
//                        SoLuong = p.Int(),
//                    },
//                body:
//                    @"UPDATE [dbo].[CT_PhieuNhapKho]
//                      SET [DonGia] = @DonGia, [SoLuong] = @SoLuong
//                      WHERE (([MaPhieuNhap] = @MaPhieuNhap) AND ([MaSanPham] = @MaSanPham))"
//            );
            
//            AlterStoredProcedure(
//                "dbo.CT_PhieuNhapKho_Delete",
//                p => new
//                    {
//                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
//                        MaSanPham = p.String(maxLength: 20, unicode: false),
//                    },
//                body:
//                    @"DELETE [dbo].[CT_PhieuNhapKho]
//                      WHERE (([MaPhieuNhap] = @MaPhieuNhap) AND ([MaSanPham] = @MaSanPham))"
//            );
            
//            AlterStoredProcedure(
//                "dbo.CT_PhieuXuatKho_Insert",
//                p => new
//                    {
//                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
//                        MaSanPham = p.String(maxLength: 20, unicode: false),
//                        SoLuong = p.Int(),
//                    },
//                body:
//                    @"INSERT [dbo].[CT_PhieuXuatKho]([MaPhieuXuat], [MaSanPham], [SoLuong])
//                      VALUES (@MaPhieuXuat, @MaSanPham, @SoLuong)"
//            );
            
//            AlterStoredProcedure(
//                "dbo.CT_PhieuXuatKho_Update",
//                p => new
//                    {
//                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
//                        MaSanPham = p.String(maxLength: 20, unicode: false),
//                        SoLuong = p.Int(),
//                    },
//                body:
//                    @"UPDATE [dbo].[CT_PhieuXuatKho]
//                      SET [SoLuong] = @SoLuong
//                      WHERE (([MaPhieuXuat] = @MaPhieuXuat) AND ([MaSanPham] = @MaSanPham))"
//            );
            
//            AlterStoredProcedure(
//                "dbo.CT_PhieuXuatKho_Delete",
//                p => new
//                    {
//                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
//                        MaSanPham = p.String(maxLength: 20, unicode: false),
//                    },
//                body:
//                    @"DELETE [dbo].[CT_PhieuXuatKho]
//                      WHERE (([MaPhieuXuat] = @MaPhieuXuat) AND ([MaSanPham] = @MaSanPham))"
//            );
            
//            AlterStoredProcedure(
//                "dbo.CT_TKBanHang_Insert",
//                p => new
//                    {
//                        Thang = p.Int(),
//                        Nam = p.Int(),
//                        MaSanPham = p.String(maxLength: 20, unicode: false),
//                        TonDau = p.Int(),
//                        SoLuongNhap = p.Int(),
//                        TienNhap = p.Decimal(precision: 19, scale: 4, storeType: "money"),
//                        SoLuongXuat = p.Int(),
//                        TonCuoi = p.Int(),
//                        SoLuongBan = p.Int(),
//                        TienBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
//                    },
//                body:
//                    @"INSERT [dbo].[CT_TKBanHang]([Thang], [Nam], [MaSanPham], [TonDau], [SoLuongNhap], [TienNhap], [SoLuongXuat], [TonCuoi], [SoLuongBan], [TienBan])
//                      VALUES (@Thang, @Nam, @MaSanPham, @TonDau, @SoLuongNhap, @TienNhap, @SoLuongXuat, @TonCuoi, @SoLuongBan, @TienBan)"
//            );
            
//            AlterStoredProcedure(
//                "dbo.CT_TKBanHang_Update",
//                p => new
//                    {
//                        Thang = p.Int(),
//                        Nam = p.Int(),
//                        MaSanPham = p.String(maxLength: 20, unicode: false),
//                        TonDau = p.Int(),
//                        SoLuongNhap = p.Int(),
//                        TienNhap = p.Decimal(precision: 19, scale: 4, storeType: "money"),
//                        SoLuongXuat = p.Int(),
//                        TonCuoi = p.Int(),
//                        SoLuongBan = p.Int(),
//                        TienBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
//                    },
//                body:
//                    @"UPDATE [dbo].[CT_TKBanHang]
//                      SET [TonDau] = @TonDau, [SoLuongNhap] = @SoLuongNhap, [TienNhap] = @TienNhap, [SoLuongXuat] = @SoLuongXuat, [TonCuoi] = @TonCuoi, [SoLuongBan] = @SoLuongBan, [TienBan] = @TienBan
//                      WHERE ((([Thang] = @Thang) AND ([Nam] = @Nam)) AND ([MaSanPham] = @MaSanPham))"
//            );
            
//            AlterStoredProcedure(
//                "dbo.CT_TKBanHang_Delete",
//                p => new
//                    {
//                        Thang = p.Int(),
//                        Nam = p.Int(),
//                        MaSanPham = p.String(maxLength: 20, unicode: false),
//                    },
//                body:
//                    @"DELETE [dbo].[CT_TKBanHang]
//                      WHERE ((([Thang] = @Thang) AND ([Nam] = @Nam)) AND ([MaSanPham] = @MaSanPham))"
//            );
            
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.THUESUAT",
                c => new
                    {
                        MaSoThue = c.String(nullable: false, maxLength: 20, unicode: false),
                        TenThue = c.String(maxLength: 50),
                        GiaTri = c.Double(),
                    })
                .PrimaryKey(t => t.MaSoThue);
            
            AddColumn("dbo.CT_TKBanHang", "CT_SanPham_MaCTSanPham", c => c.String(maxLength: 20));
            AddColumn("dbo.CT_PhieuXuatKho", "CT_SanPham_MaCTSanPham", c => c.String(maxLength: 20));
            AddColumn("dbo.CT_PhieuNhapKho", "CT_SanPham_MaCTSanPham", c => c.String(maxLength: 20));
            AddColumn("dbo.CT_PhieuDatMua", "CT_SanPham_MaCTSanPham", c => c.String(maxLength: 20));
            DropForeignKey("dbo.CT_PhieuXuatKho", "MaSanPham", "dbo.SANPHAM");
            CreateIndex("dbo.CT_TKBanHang", "CT_SanPham_MaCTSanPham");
            CreateIndex("dbo.CT_PhieuXuatKho", "CT_SanPham_MaCTSanPham");
            CreateIndex("dbo.CT_PhieuNhapKho", "CT_SanPham_MaCTSanPham");
            CreateIndex("dbo.CT_PhieuDatMua", "CT_SanPham_MaCTSanPham");
            AddForeignKey("dbo.CT_PhieuXuatKho", "MaSanPham", "dbo.SANPHAM", "MaSanPham");
            AddForeignKey("dbo.CT_TKBanHang", "CT_SanPham_MaCTSanPham", "dbo.CT_SANPHAM", "MaCTSanPham");
            AddForeignKey("dbo.CT_PhieuXuatKho", "CT_SanPham_MaCTSanPham", "dbo.CT_SANPHAM", "MaCTSanPham");
            AddForeignKey("dbo.CT_PhieuNhapKho", "CT_SanPham_MaCTSanPham", "dbo.CT_SANPHAM", "MaCTSanPham");
            AddForeignKey("dbo.CT_PhieuDatMua", "CT_SanPham_MaCTSanPham", "dbo.CT_SANPHAM", "MaCTSanPham");
            throw new NotSupportedException("Scaffolding create or alter procedure operations is not supported in down methods.");
        }
    }
}
