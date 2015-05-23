namespace QuanLyNhaSach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Update_Database : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.CT_HDBanHang", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_PhieuDatMua", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_PhieuNhapKho", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_PhieuXuatKho", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_TKBanHang", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.SANPHAM", "MaQuay", "dbo.QUAYHANG");
            DropForeignKey("dbo.CT_HDBanHang", "MaSoThue", "dbo.THUESUAT");

            DropIndex("dbo.CT_PhieuDatMua", new[] { "MaSanPham" });
            DropIndex("dbo.SANPHAM", new[] { "MaQuay" });
            DropIndex("dbo.CT_HDBanHang", new[] { "MaSanPham" });
            DropIndex("dbo.CT_PhieuNhapKho", new[] { "MaSanPham" });
            DropIndex("dbo.CT_PhieuXuatKho", new[] { "MaSanPham" });
            DropIndex("dbo.CT_TKBanHang", new[] { "MaSanPham" });
            DropIndex("dbo.CT_HDBanHang", new[] { "MaSoThue" });
            

            //RenameColumn(table: "dbo.CT_HDBanHang", name: "MaSoThue", newName: "ThueSuat_MaSoThue");
            DropPrimaryKey("dbo.CT_PhieuDatMua");
            DropPrimaryKey("dbo.CT_HDBanHang");
            DropPrimaryKey("dbo.CT_PhieuNhapKho");
            DropPrimaryKey("dbo.CT_PhieuXuatKho");
            DropPrimaryKey("dbo.CT_TKBanHang");
            //DropPrimaryKey("dbo.BODEM");
            CreateTable(
                "dbo.CT_SANPHAM",
                c => new
                    {
                        MaCTSanPham = c.String(nullable: false, maxLength: 20),
                        MaSanPham = c.String(nullable: false, maxLength: 20, unicode: false),
                        MaQuay = c.String(nullable: false, maxLength: 20, unicode: false),
                        TinhTrang = c.Boolean(),
                    })
                .PrimaryKey(t => t.MaCTSanPham)
                .ForeignKey("dbo.QUAYHANG", t => t.MaQuay)
                .ForeignKey("dbo.SANPHAM", t => t.MaSanPham, cascadeDelete: true)
                .Index(t => t.MaSanPham)
                .Index(t => t.MaQuay);
            
            AddColumn("dbo.CT_PhieuDatMua", "MaCTSanPham", c => c.String(nullable: false, maxLength: 20));
            AddColumn("dbo.CT_HDBanHang", "MaCTSanPham", c => c.String(nullable: false, maxLength: 20));
            AddColumn("dbo.CT_PhieuNhapKho", "MaCTSanPham", c => c.String(nullable: false, maxLength: 20));
            AddColumn("dbo.CT_PhieuXuatKho", "MaCTSanPham", c => c.String(nullable: false, maxLength: 20));
            AddColumn("dbo.CT_TKBanHang", "MaCTSanPham", c => c.String(nullable: false, maxLength: 20));
            AddColumn("dbo.BODEM", "CT_SanPham", c => c.Int(nullable: false));

            //AlterColumn("dbo.CT_HDBanHang", "ThueSuat_MaSoThue", c => c.String(maxLength: 20, unicode: false));
            
            AddPrimaryKey("dbo.CT_PhieuDatMua", new[] { "MaPhieuDatMua", "MaCTSanPham" });
            AddPrimaryKey("dbo.CT_HDBanHang", new[] { "MaHoaDon", "MaCTSanPham" });
            AddPrimaryKey("dbo.CT_PhieuNhapKho", new[] { "MaPhieuNhap", "MaCTSanPham" });
            AddPrimaryKey("dbo.CT_PhieuXuatKho", new[] { "MaPhieuXuat", "MaCTSanPham" });
            AddPrimaryKey("dbo.CT_TKBanHang", new[] { "Thang", "Nam", "MaCTSanPham" });

            //AddPrimaryKey("dbo.BODEM", new[] { "BangChamCong", "CaLamViec", "ChucVu", "DauSach", "DonViTinh", "HoaDonBanHang", "LoaiDDHT", "LoaiSanPham", "NhaCungCap", "NhanVien", "NhaSanXuat", "NhaXuatBan", "PhieuChi", "PhieuDatMua", "PhieuNhapKho", "PhieuThu", "PhieuXuatKho", "QuayHang", "SanPham", "TacGia", "TheLoaiSach" });
            
            CreateIndex("dbo.CT_PhieuDatMua", "MaCTSanPham");
            CreateIndex("dbo.CT_HDBanHang", "MaCTSanPham");
            //CreateIndex("dbo.CT_HDBanHang", "ThueSuat_MaSoThue");
            CreateIndex("dbo.CT_PhieuNhapKho", "MaCTSanPham");
            CreateIndex("dbo.CT_PhieuXuatKho", "MaCTSanPham");
            CreateIndex("dbo.CT_TKBanHang", "MaCTSanPham");
            AddForeignKey("dbo.CT_HDBanHang", "MaCTSanPham", "dbo.CT_SANPHAM", "MaCTSanPham");
            AddForeignKey("dbo.CT_PhieuDatMua", "MaCTSanPham", "dbo.CT_SANPHAM", "MaCTSanPham");
            AddForeignKey("dbo.CT_PhieuNhapKho", "MaCTSanPham", "dbo.CT_SANPHAM", "MaCTSanPham");
            AddForeignKey("dbo.CT_PhieuXuatKho", "MaCTSanPham", "dbo.CT_SANPHAM", "MaCTSanPham");
            AddForeignKey("dbo.CT_TKBanHang", "MaCTSanPham", "dbo.CT_SANPHAM", "MaCTSanPham");
            
            DropColumn("dbo.CT_PhieuDatMua", "MaSanPham");
            DropColumn("dbo.SANPHAM", "MaQuay");
            DropColumn("dbo.SANPHAM", "TinhTrang");
            DropColumn("dbo.DODUNGHOCTAP", "MaDDHT");
            DropColumn("dbo.SACH", "MaSach");
            DropColumn("dbo.CT_HDBanHang", "MaSanPham");
            DropColumn("dbo.CT_PhieuNhapKho", "MaSanPham");
            DropColumn("dbo.CT_PhieuXuatKho", "MaSanPham");
            DropColumn("dbo.CT_TKBanHang", "MaSanPham");
            DropColumn("dbo.BODEM", "ThueSuat");
            CreateStoredProcedure(
                "dbo.CT_SanPham_Insert",
                p => new
                    {
                        MaCTSanPham = p.String(maxLength: 20),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaQuay = p.String(maxLength: 20, unicode: false),
                        TinhTrang = p.Boolean(),
                    },
                body:
                    @"INSERT [dbo].[CT_SANPHAM]([MaCTSanPham], [MaSanPham], [MaQuay], [TinhTrang])
                      VALUES (@MaCTSanPham, @MaSanPham, @MaQuay, @TinhTrang)"
            );
            
            CreateStoredProcedure(
                "dbo.CT_SanPham_Update",
                p => new
                    {
                        MaCTSanPham = p.String(maxLength: 20),
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaQuay = p.String(maxLength: 20, unicode: false),
                        TinhTrang = p.Boolean(),
                    },
                body:
                    @"UPDATE [dbo].[CT_SANPHAM]
                      SET [MaSanPham] = @MaSanPham, [MaQuay] = @MaQuay, [TinhTrang] = @TinhTrang
                      WHERE ([MaCTSanPham] = @MaCTSanPham)"
            );
            
            CreateStoredProcedure(
                "dbo.CT_SanPham_Delete",
                p => new
                    {
                        MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"DELETE [dbo].[CT_SANPHAM]
                      WHERE ([MaCTSanPham] = @MaCTSanPham)"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuDatMua_Insert",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                        DonGia = p.Double(),
                        SoLuong = p.Double(),
                        TinhTrang = p.Boolean(),
                    },
                body:
                    @"INSERT [dbo].[CT_PhieuDatMua]([MaPhieuDatMua], [MaCTSanPham], [DonGia], [SoLuong], [TinhTrang])
                      VALUES (@MaPhieuDatMua, @MaCTSanPham, @DonGia, @SoLuong, @TinhTrang)"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuDatMua_Update",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                        DonGia = p.Double(),
                        SoLuong = p.Double(),
                        TinhTrang = p.Boolean(),
                    },
                body:
                    @"UPDATE [dbo].[CT_PhieuDatMua]
                      SET [DonGia] = @DonGia, [SoLuong] = @SoLuong, [TinhTrang] = @TinhTrang
                      WHERE (([MaPhieuDatMua] = @MaPhieuDatMua) AND ([MaCTSanPham] = @MaCTSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuDatMua_Delete",
                p => new
                    {
                        MaPhieuDatMua = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"DELETE [dbo].[CT_PhieuDatMua]
                      WHERE (([MaPhieuDatMua] = @MaPhieuDatMua) AND ([MaCTSanPham] = @MaCTSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.SanPham_Insert",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        MaDVT = p.String(maxLength: 20, unicode: false),
                        TenSanPham = p.String(maxLength: 50),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong])
                      VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaDVT, @TenSanPham, @DonGia, @SoLuong)"
            );
            
            AlterStoredProcedure(
                "dbo.SanPham_Update",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        MaDVT = p.String(maxLength: 20, unicode: false),
                        TenSanPham = p.String(maxLength: 50),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[SANPHAM]
                      SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong
                      WHERE ([MaSanPham] = @MaSanPham)"
            );
            
            AlterStoredProcedure(
                "dbo.DoDungHocTap_Insert",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        MaDVT = p.String(maxLength: 20, unicode: false),
                        TenSanPham = p.String(maxLength: 50),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                        MaLoaiDDHT = p.String(maxLength: 20, unicode: false),
                        MaNhaSanXuat = p.String(maxLength: 20, unicode: false),
                        NamSanXuat = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong])
                      VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaDVT, @TenSanPham, @DonGia, @SoLuong)
                      
                      INSERT [dbo].[DODUNGHOCTAP]([MaSanPham], [MaLoaiDDHT], [MaNhaSanXuat], [NamSanXuat])
                      VALUES (@MaSanPham, @MaLoaiDDHT, @MaNhaSanXuat, @NamSanXuat)"
            );
            
            AlterStoredProcedure(
                "dbo.DoDungHocTap_Update",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        MaDVT = p.String(maxLength: 20, unicode: false),
                        TenSanPham = p.String(maxLength: 50),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                        MaLoaiDDHT = p.String(maxLength: 20, unicode: false),
                        MaNhaSanXuat = p.String(maxLength: 20, unicode: false),
                        NamSanXuat = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[DODUNGHOCTAP]
                      SET [MaLoaiDDHT] = @MaLoaiDDHT, [MaNhaSanXuat] = @MaNhaSanXuat, [NamSanXuat] = @NamSanXuat
                      WHERE ([MaSanPham] = @MaSanPham)
                      
                      UPDATE [dbo].[SANPHAM]
                      SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong
                      WHERE ([MaSanPham] = @MaSanPham)
                      AND @@ROWCOUNT > 0"
            );
            
            AlterStoredProcedure(
                "dbo.Sach_Insert",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        MaDVT = p.String(maxLength: 20, unicode: false),
                        TenSanPham = p.String(maxLength: 50),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                        MaDauSach = p.String(maxLength: 20, unicode: false),
                        MaNhaXuatBan = p.String(maxLength: 20, unicode: false),
                        NamXuatBan = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[SANPHAM]([MaSanPham], [MaLoaiSanPham], [MaNhaCungCap], [MaDVT], [TenSanPham], [DonGia], [SoLuong])
                      VALUES (@MaSanPham, @MaLoaiSanPham, @MaNhaCungCap, @MaDVT, @TenSanPham, @DonGia, @SoLuong)
                      
                      INSERT [dbo].[SACH]([MaSanPham], [MaDauSach], [MaNhaXuatBan], [NamXuatBan])
                      VALUES (@MaSanPham, @MaDauSach, @MaNhaXuatBan, @NamXuatBan)"
            );
            
            AlterStoredProcedure(
                "dbo.Sach_Update",
                p => new
                    {
                        MaSanPham = p.String(maxLength: 20, unicode: false),
                        MaLoaiSanPham = p.String(maxLength: 20, unicode: false),
                        MaNhaCungCap = p.String(maxLength: 20, unicode: false),
                        MaDVT = p.String(maxLength: 20, unicode: false),
                        TenSanPham = p.String(maxLength: 50),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                        MaDauSach = p.String(maxLength: 20, unicode: false),
                        MaNhaXuatBan = p.String(maxLength: 20, unicode: false),
                        NamXuatBan = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[SACH]
                      SET [MaDauSach] = @MaDauSach, [MaNhaXuatBan] = @MaNhaXuatBan, [NamXuatBan] = @NamXuatBan
                      WHERE ([MaSanPham] = @MaSanPham)
                      
                      UPDATE [dbo].[SANPHAM]
                      SET [MaLoaiSanPham] = @MaLoaiSanPham, [MaNhaCungCap] = @MaNhaCungCap, [MaDVT] = @MaDVT, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong
                      WHERE ([MaSanPham] = @MaSanPham)
                      AND @@ROWCOUNT > 0"
            );
            
            AlterStoredProcedure(
                "dbo.CT_HDBanHang_Insert",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                        GiaBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[CT_HDBanHang]([MaHoaDon], [MaCTSanPham], [GiaBan], [SoLuong])
                      VALUES (@MaHoaDon, @MaCTSanPham, @GiaBan, @SoLuong)"
            );
            
            AlterStoredProcedure(
                "dbo.CT_HDBanHang_Update",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                        GiaBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[CT_HDBanHang]
                      SET [GiaBan] = @GiaBan, [SoLuong] = @SoLuong
                      WHERE (([MaHoaDon] = @MaHoaDon) AND ([MaCTSanPham] = @MaCTSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_HDBanHang_Delete",
                p => new
                    {
                        MaHoaDon = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"DELETE [dbo].[CT_HDBanHang]
                      WHERE (([MaHoaDon] = @MaHoaDon) AND ([MaCTSanPham] = @MaCTSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuNhapKho_Insert",
                p => new
                    {
                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[CT_PhieuNhapKho]([MaPhieuNhap], [MaCTSanPham], [DonGia], [SoLuong])
                      VALUES (@MaPhieuNhap, @MaCTSanPham, @DonGia, @SoLuong)"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuNhapKho_Update",
                p => new
                    {
                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                        DonGia = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuong = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[CT_PhieuNhapKho]
                      SET [DonGia] = @DonGia, [SoLuong] = @SoLuong
                      WHERE (([MaPhieuNhap] = @MaPhieuNhap) AND ([MaCTSanPham] = @MaCTSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuNhapKho_Delete",
                p => new
                    {
                        MaPhieuNhap = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"DELETE [dbo].[CT_PhieuNhapKho]
                      WHERE (([MaPhieuNhap] = @MaPhieuNhap) AND ([MaCTSanPham] = @MaCTSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuXuatKho_Insert",
                p => new
                    {
                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                        SoLuong = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[CT_PhieuXuatKho]([MaPhieuXuat], [MaCTSanPham], [SoLuong])
                      VALUES (@MaPhieuXuat, @MaCTSanPham, @SoLuong)"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuXuatKho_Update",
                p => new
                    {
                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                        SoLuong = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[CT_PhieuXuatKho]
                      SET [SoLuong] = @SoLuong
                      WHERE (([MaPhieuXuat] = @MaPhieuXuat) AND ([MaCTSanPham] = @MaCTSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_PhieuXuatKho_Delete",
                p => new
                    {
                        MaPhieuXuat = p.String(maxLength: 20, unicode: false),
                        MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"DELETE [dbo].[CT_PhieuXuatKho]
                      WHERE (([MaPhieuXuat] = @MaPhieuXuat) AND ([MaCTSanPham] = @MaCTSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_TKBanHang_Insert",
                p => new
                    {
                        Thang = p.Int(),
                        Nam = p.Int(),
                        MaCTSanPham = p.String(maxLength: 20),
                        TonDau = p.Int(),
                        SoLuongNhap = p.Int(),
                        TienNhap = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuongXuat = p.Int(),
                        TonCuoi = p.Int(),
                        SoLuongBan = p.Int(),
                        TienBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                    },
                body:
                    @"INSERT [dbo].[CT_TKBanHang]([Thang], [Nam], [MaCTSanPham], [TonDau], [SoLuongNhap], [TienNhap], [SoLuongXuat], [TonCuoi], [SoLuongBan], [TienBan])
                      VALUES (@Thang, @Nam, @MaCTSanPham, @TonDau, @SoLuongNhap, @TienNhap, @SoLuongXuat, @TonCuoi, @SoLuongBan, @TienBan)"
            );
            
            AlterStoredProcedure(
                "dbo.CT_TKBanHang_Update",
                p => new
                    {
                        Thang = p.Int(),
                        Nam = p.Int(),
                        MaCTSanPham = p.String(maxLength: 20),
                        TonDau = p.Int(),
                        SoLuongNhap = p.Int(),
                        TienNhap = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                        SoLuongXuat = p.Int(),
                        TonCuoi = p.Int(),
                        SoLuongBan = p.Int(),
                        TienBan = p.Decimal(precision: 19, scale: 4, storeType: "money"),
                    },
                body:
                    @"UPDATE [dbo].[CT_TKBanHang]
                      SET [TonDau] = @TonDau, [SoLuongNhap] = @SoLuongNhap, [TienNhap] = @TienNhap, [SoLuongXuat] = @SoLuongXuat, [TonCuoi] = @TonCuoi, [SoLuongBan] = @SoLuongBan, [TienBan] = @TienBan
                      WHERE ((([Thang] = @Thang) AND ([Nam] = @Nam)) AND ([MaCTSanPham] = @MaCTSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.CT_TKBanHang_Delete",
                p => new
                    {
                        Thang = p.Int(),
                        Nam = p.Int(),
                        MaCTSanPham = p.String(maxLength: 20),
                    },
                body:
                    @"DELETE [dbo].[CT_TKBanHang]
                      WHERE ((([Thang] = @Thang) AND ([Nam] = @Nam)) AND ([MaCTSanPham] = @MaCTSanPham))"
            );
            
            AlterStoredProcedure(
                "dbo.BoDem_Insert",
                p => new
                    {
                        BangChamCong = p.Int(),
                        CaLamViec = p.Int(),
                        ChucVu = p.Int(),
                        DauSach = p.Int(),
                        DonViTinh = p.Int(),
                        HoaDonBanHang = p.Int(),
                        LoaiDDHT = p.Int(),
                        LoaiSanPham = p.Int(),
                        NhaCungCap = p.Int(),
                        NhanVien = p.Int(),
                        NhaSanXuat = p.Int(),
                        NhaXuatBan = p.Int(),
                        PhieuChi = p.Int(),
                        PhieuDatMua = p.Int(),
                        PhieuNhapKho = p.Int(),
                        PhieuThu = p.Int(),
                        PhieuXuatKho = p.Int(),
                        QuayHang = p.Int(),
                        SanPham = p.Int(),
                        TacGia = p.Int(),
                        TheLoaiSach = p.Int(),
                        CT_SanPham = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[BODEM]([BangChamCong], [CaLamViec], [ChucVu], [DauSach], [DonViTinh], [HoaDonBanHang], [LoaiDDHT], [LoaiSanPham], [NhaCungCap], [NhanVien], [NhaSanXuat], [NhaXuatBan], [PhieuChi], [PhieuDatMua], [PhieuNhapKho], [PhieuThu], [PhieuXuatKho], [QuayHang], [SanPham], [TacGia], [TheLoaiSach], [CT_SanPham])
                      VALUES (@BangChamCong, @CaLamViec, @ChucVu, @DauSach, @DonViTinh, @HoaDonBanHang, @LoaiDDHT, @LoaiSanPham, @NhaCungCap, @NhanVien, @NhaSanXuat, @NhaXuatBan, @PhieuChi, @PhieuDatMua, @PhieuNhapKho, @PhieuThu, @PhieuXuatKho, @QuayHang, @SanPham, @TacGia, @TheLoaiSach, @CT_SanPham)"
            );
            
            AlterStoredProcedure(
                "dbo.BoDem_Update",
                p => new
                    {
                        BangChamCong = p.Int(),
                        CaLamViec = p.Int(),
                        ChucVu = p.Int(),
                        DauSach = p.Int(),
                        DonViTinh = p.Int(),
                        HoaDonBanHang = p.Int(),
                        LoaiDDHT = p.Int(),
                        LoaiSanPham = p.Int(),
                        NhaCungCap = p.Int(),
                        NhanVien = p.Int(),
                        NhaSanXuat = p.Int(),
                        NhaXuatBan = p.Int(),
                        PhieuChi = p.Int(),
                        PhieuDatMua = p.Int(),
                        PhieuNhapKho = p.Int(),
                        PhieuThu = p.Int(),
                        PhieuXuatKho = p.Int(),
                        QuayHang = p.Int(),
                        SanPham = p.Int(),
                        TacGia = p.Int(),
                        TheLoaiSach = p.Int(),
                        CT_SanPham = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[BODEM]
                      SET [CT_SanPham] = @CT_SanPham
                      WHERE ((((((((((((((((((((([BangChamCong] = @BangChamCong) AND ([CaLamViec] = @CaLamViec)) AND ([ChucVu] = @ChucVu)) AND ([DauSach] = @DauSach)) AND ([DonViTinh] = @DonViTinh)) AND ([HoaDonBanHang] = @HoaDonBanHang)) AND ([LoaiDDHT] = @LoaiDDHT)) AND ([LoaiSanPham] = @LoaiSanPham)) AND ([NhaCungCap] = @NhaCungCap)) AND ([NhanVien] = @NhanVien)) AND ([NhaSanXuat] = @NhaSanXuat)) AND ([NhaXuatBan] = @NhaXuatBan)) AND ([PhieuChi] = @PhieuChi)) AND ([PhieuDatMua] = @PhieuDatMua)) AND ([PhieuNhapKho] = @PhieuNhapKho)) AND ([PhieuThu] = @PhieuThu)) AND ([PhieuXuatKho] = @PhieuXuatKho)) AND ([QuayHang] = @QuayHang)) AND ([SanPham] = @SanPham)) AND ([TacGia] = @TacGia)) AND ([TheLoaiSach] = @TheLoaiSach))"
            );
            
            AlterStoredProcedure(
                "dbo.BoDem_Delete",
                p => new
                    {
                        BangChamCong = p.Int(),
                        CaLamViec = p.Int(),
                        ChucVu = p.Int(),
                        DauSach = p.Int(),
                        DonViTinh = p.Int(),
                        HoaDonBanHang = p.Int(),
                        LoaiDDHT = p.Int(),
                        LoaiSanPham = p.Int(),
                        NhaCungCap = p.Int(),
                        NhanVien = p.Int(),
                        NhaSanXuat = p.Int(),
                        NhaXuatBan = p.Int(),
                        PhieuChi = p.Int(),
                        PhieuDatMua = p.Int(),
                        PhieuNhapKho = p.Int(),
                        PhieuThu = p.Int(),
                        PhieuXuatKho = p.Int(),
                        QuayHang = p.Int(),
                        SanPham = p.Int(),
                        TacGia = p.Int(),
                        TheLoaiSach = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[BODEM]
                      WHERE ((((((((((((((((((((([BangChamCong] = @BangChamCong) AND ([CaLamViec] = @CaLamViec)) AND ([ChucVu] = @ChucVu)) AND ([DauSach] = @DauSach)) AND ([DonViTinh] = @DonViTinh)) AND ([HoaDonBanHang] = @HoaDonBanHang)) AND ([LoaiDDHT] = @LoaiDDHT)) AND ([LoaiSanPham] = @LoaiSanPham)) AND ([NhaCungCap] = @NhaCungCap)) AND ([NhanVien] = @NhanVien)) AND ([NhaSanXuat] = @NhaSanXuat)) AND ([NhaXuatBan] = @NhaXuatBan)) AND ([PhieuChi] = @PhieuChi)) AND ([PhieuDatMua] = @PhieuDatMua)) AND ([PhieuNhapKho] = @PhieuNhapKho)) AND ([PhieuThu] = @PhieuThu)) AND ([PhieuXuatKho] = @PhieuXuatKho)) AND ([QuayHang] = @QuayHang)) AND ([SanPham] = @SanPham)) AND ([TacGia] = @TacGia)) AND ([TheLoaiSach] = @TheLoaiSach))"
            );
            
            DropStoredProcedure("dbo.ThueSuat_Insert");
            DropStoredProcedure("dbo.ThueSuat_Update");
            DropStoredProcedure("dbo.ThueSuat_Delete");
        }
        
        public override void Down()
        {
            DropStoredProcedure("dbo.CT_SanPham_Delete");
            DropStoredProcedure("dbo.CT_SanPham_Update");
            DropStoredProcedure("dbo.CT_SanPham_Insert");
            AddColumn("dbo.BODEM", "ThueSuat", c => c.Int(nullable: false));
            AddColumn("dbo.CT_TKBanHang", "MaSanPham", c => c.String(nullable: false, maxLength: 20, unicode: false));
            AddColumn("dbo.CT_PhieuXuatKho", "MaSanPham", c => c.String(nullable: false, maxLength: 20, unicode: false));
            AddColumn("dbo.CT_PhieuNhapKho", "MaSanPham", c => c.String(nullable: false, maxLength: 20, unicode: false));
            AddColumn("dbo.CT_HDBanHang", "MaSanPham", c => c.String(nullable: false, maxLength: 20, unicode: false));
            AddColumn("dbo.SACH", "MaSach", c => c.String(maxLength: 20));
            AddColumn("dbo.DODUNGHOCTAP", "MaDDHT", c => c.String(maxLength: 20));
            AddColumn("dbo.SANPHAM", "TinhTrang", c => c.Boolean());
            AddColumn("dbo.SANPHAM", "MaQuay", c => c.String(nullable: false, maxLength: 20, unicode: false));
            AddColumn("dbo.CT_PhieuDatMua", "MaSanPham", c => c.String(nullable: false, maxLength: 20, unicode: false));
            DropForeignKey("dbo.CT_SANPHAM", "MaSanPham", "dbo.SANPHAM");
            DropForeignKey("dbo.CT_SANPHAM", "MaQuay", "dbo.QUAYHANG");
            DropForeignKey("dbo.CT_TKBanHang", "MaCTSanPham", "dbo.CT_SANPHAM");
            DropForeignKey("dbo.CT_PhieuXuatKho", "MaCTSanPham", "dbo.CT_SANPHAM");
            DropForeignKey("dbo.CT_PhieuNhapKho", "MaCTSanPham", "dbo.CT_SANPHAM");
            DropForeignKey("dbo.CT_PhieuDatMua", "MaCTSanPham", "dbo.CT_SANPHAM");
            DropForeignKey("dbo.CT_HDBanHang", "MaCTSanPham", "dbo.CT_SANPHAM");
            DropIndex("dbo.CT_TKBanHang", new[] { "MaCTSanPham" });
            DropIndex("dbo.CT_PhieuXuatKho", new[] { "MaCTSanPham" });
            DropIndex("dbo.CT_PhieuNhapKho", new[] { "MaCTSanPham" });
            DropIndex("dbo.CT_HDBanHang", new[] { "MaCTSanPham" });
            DropIndex("dbo.CT_SANPHAM", new[] { "MaQuay" });
            DropIndex("dbo.CT_SANPHAM", new[] { "MaSanPham" });
            DropIndex("dbo.CT_PhieuDatMua", new[] { "MaCTSanPham" });
            DropPrimaryKey("dbo.BODEM");
            DropPrimaryKey("dbo.CT_TKBanHang");
            DropPrimaryKey("dbo.CT_PhieuXuatKho");
            DropPrimaryKey("dbo.CT_PhieuNhapKho");
            DropPrimaryKey("dbo.CT_HDBanHang");
            DropPrimaryKey("dbo.CT_PhieuDatMua");
            DropColumn("dbo.BODEM", "CT_SanPham");
            DropColumn("dbo.CT_TKBanHang", "MaCTSanPham");
            DropColumn("dbo.CT_PhieuXuatKho", "MaCTSanPham");
            DropColumn("dbo.CT_PhieuNhapKho", "MaCTSanPham");
            DropColumn("dbo.CT_HDBanHang", "MaCTSanPham");
            DropColumn("dbo.CT_PhieuDatMua", "MaCTSanPham");
            DropTable("dbo.CT_SANPHAM");
            AddPrimaryKey("dbo.BODEM", new[] { "BangChamCong", "CaLamViec", "ChucVu", "DauSach", "DonViTinh", "HoaDonBanHang", "LoaiDDHT", "LoaiSanPham", "NhaCungCap", "NhanVien", "NhaSanXuat", "NhaXuatBan", "PhieuChi", "PhieuDatMua", "PhieuNhapKho", "PhieuThu", "PhieuXuatKho", "QuayHang", "SanPham", "TacGia", "TheLoaiSach", "ThueSuat" });
            AddPrimaryKey("dbo.CT_TKBanHang", new[] { "Thang", "Nam", "MaSanPham" });
            AddPrimaryKey("dbo.CT_PhieuXuatKho", new[] { "MaPhieuXuat", "MaSanPham" });
            AddPrimaryKey("dbo.CT_PhieuNhapKho", new[] { "MaPhieuNhap", "MaSanPham" });
            AddPrimaryKey("dbo.CT_HDBanHang", new[] { "MaHoaDon", "MaSanPham" });
            AddPrimaryKey("dbo.CT_PhieuDatMua", new[] { "MaPhieuDatMua", "MaSanPham" });
            CreateIndex("dbo.CT_TKBanHang", "MaSanPham");
            CreateIndex("dbo.CT_PhieuXuatKho", "MaSanPham");
            CreateIndex("dbo.CT_PhieuNhapKho", "MaSanPham");
            CreateIndex("dbo.CT_HDBanHang", "MaSoThue");
            CreateIndex("dbo.CT_HDBanHang", "MaSanPham");
            CreateIndex("dbo.SANPHAM", "MaQuay");
            CreateIndex("dbo.CT_PhieuDatMua", "MaSanPham");
            AddForeignKey("dbo.SANPHAM", "MaQuay", "dbo.QUAYHANG", "MaQuay");
            AddForeignKey("dbo.CT_TKBanHang", "MaSanPham", "dbo.SANPHAM", "MaSanPham");
            AddForeignKey("dbo.CT_PhieuXuatKho", "MaSanPham", "dbo.SANPHAM", "MaSanPham");
            AddForeignKey("dbo.CT_PhieuNhapKho", "MaSanPham", "dbo.SANPHAM", "MaSanPham");
            AddForeignKey("dbo.CT_PhieuDatMua", "MaSanPham", "dbo.SANPHAM", "MaSanPham");
            AddForeignKey("dbo.CT_HDBanHang", "MaSanPham", "dbo.SANPHAM", "MaSanPham");
            throw new NotSupportedException("Scaffolding create or alter procedure operations is not supported in down methods.");
        }
    }
}
