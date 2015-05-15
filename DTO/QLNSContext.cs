namespace DTO
{
    using System;
    using System.Data.Entity;
    using System.Linq;
    using System.Diagnostics;

    public class QLNSContext : DbContext
    {
        
        public QLNSContext(String connectionString)
            : base("name=QLNSContext")
        {
            Debug.WriteLine(this.Database.Log);
            try
            {
                this.Database.Connection.ConnectionString = connectionString;
            }
            catch(InvalidOperationException ex)
            {
                Debug.WriteLine(ex.StackTrace);   
            }    
        }

        public virtual DbSet<BANGCHAMCONG> BANGCHAMCONGs { get; set; }
        public virtual DbSet<CALAMVIEC> CALAMVIECs { get; set; }
        public virtual DbSet<CHUCVU> CHUCVUs { get; set; }
        public virtual DbSet<CT_HDBanHang> CT_HDBanHang { get; set; }
        public virtual DbSet<CT_PHIEUDATMUA> CT_PHIEUDATMUA { get; set; }
        public virtual DbSet<CT_PhieuNhapKho> CT_PhieuNhapKho { get; set; }
        public virtual DbSet<CT_PhieuXuatKho> CT_PhieuXuatKho { get; set; }
        public virtual DbSet<CT_TKBanHang> CT_TKBanHang { get; set; }
        public virtual DbSet<DAUSACH> DAUSACHes { get; set; }
        public virtual DbSet<DONVITINH> DONVITINHs { get; set; }
        public virtual DbSet<HOADONBANHANG> HOADONBANHANGs { get; set; }
        public virtual DbSet<LOAIDDHT> LOAIDDHTs { get; set; }
        public virtual DbSet<LOAISANPHAM> LOAISANPHAMs { get; set; }
        public virtual DbSet<NHACUNGCAP> NHACUNGCAPs { get; set; }
        public virtual DbSet<NHANVIEN> NHANVIENs { get; set; }
        public virtual DbSet<NHASANXUAT> NHASANXUATs { get; set; }
        public virtual DbSet<NHAXUATBAN> NHAXUATBANs { get; set; }
        public virtual DbSet<PHIEUCHI> PHIEUCHIs { get; set; }
        public virtual DbSet<PHIEUDATMUA> PHIEUDATMUAs { get; set; }
        public virtual DbSet<PHIEUNHAPKHO> PHIEUNHAPKHOes { get; set; }
        public virtual DbSet<PHIEUTHU> PHIEUTHUs { get; set; }
        public virtual DbSet<PHIEUXUATKHO> PHIEUXUATKHOes { get; set; }
        public virtual DbSet<QUAYHANG> QUAYHANGs { get; set; }
        public virtual DbSet<SANPHAM> SANPHAMs { get; set; }
        public virtual DbSet<TACGIA> TACGIAs { get; set; }
        public virtual DbSet<THELOAISACH> THELOAISACHes { get; set; }
        public virtual DbSet<THONGKEBANHANG> THONGKEBANHANGs { get; set; }
        public virtual DbSet<THUESUAT> THUESUATs { get; set; }
        public virtual DbSet<BODEM> BODEMs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<SACH>().ToTable("SACH");
            modelBuilder.Entity<DODUNGHOCTAP>().ToTable("DODUNGHOCTAP");
            modelBuilder.Entity<BODEM>().HasKey(x => new
            {
                #region atributes
                x.BangChamCong,
                x.CaLamViec,
                x.ChucVu,
                x.DauSach,
                x.DonViTinh,
                x.HoaDonBanHang,
                x.LoaiDDHT,
                x.LoaiSanPham,
                x.NhaCungCap,
                x.NhanVien,
                x.NhaSanXuat,
                x.NhaXuatBan,
                x.PhieuChiKhac,
                x.PhieuNhapKho,
                x.PhieuThuKhac,
                x.PhieuXuatKho,
                x.QuayHang,
                x.SanPham,
                x.TacGia,
                x.TheLoaiSach,
                x.ThueSuat
                #endregion
            });

            modelBuilder.Entity<BANGCHAMCONG>()
                .Property(e => e.MaBCC)
                .IsUnicode(false);

            modelBuilder.Entity<BANGCHAMCONG>()
                .Property(e => e.MaCaLamViec)
                .IsUnicode(false);

            modelBuilder.Entity<BANGCHAMCONG>()
                .Property(e => e.NguoiChamCong)
                .IsUnicode(false);

            modelBuilder.Entity<BANGCHAMCONG>()
                .HasMany(e => e.NHANVIENs)
                .WithMany(e => e.BANGCHAMCONGs1)
                .Map(m => m.ToTable("CT_BANGCHAMCONG").MapLeftKey("MaBCC").MapRightKey("MaNhanVien"));

            modelBuilder.Entity<CALAMVIEC>()
                .Property(e => e.MaCaLamViec)
                .IsUnicode(false);

            modelBuilder.Entity<CALAMVIEC>()
                .Property(e => e.LuongCLV)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CALAMVIEC>()
                .HasMany(e => e.BANGCHAMCONGs)
                .WithRequired(e => e.CALAMVIEC)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CHUCVU>()
                .Property(e => e.MaChucVu)
                .IsUnicode(false);

            modelBuilder.Entity<CHUCVU>()
                .HasMany(e => e.NHANVIENs)
                .WithRequired(e => e.CHUCVU)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CT_HDBanHang>()
                .Property(e => e.MaHoaDon)
                .IsUnicode(false);

            modelBuilder.Entity<CT_HDBanHang>()
                .Property(e => e.MaSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<CT_HDBanHang>()
                .Property(e => e.MaSoThue)
                .IsUnicode(false);

            modelBuilder.Entity<CT_HDBanHang>()
                .Property(e => e.GiaBan)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_PHIEUDATMUA>()
                .Property(e => e.MaPhieuDatMua)
                .IsUnicode(false);

            modelBuilder.Entity<CT_PHIEUDATMUA>()
                .Property(e => e.MaSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<CT_PhieuNhapKho>()
                .Property(e => e.MaPhieuNhap)
                .IsUnicode(false);

            modelBuilder.Entity<CT_PhieuNhapKho>()
                .Property(e => e.MaSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<CT_PhieuNhapKho>()
                .Property(e => e.DonGia)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_PhieuXuatKho>()
                .Property(e => e.MaPhieuXuat)
                .IsUnicode(false);

            modelBuilder.Entity<CT_PhieuXuatKho>()
                .Property(e => e.MaSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<CT_TKBanHang>()
                .Property(e => e.MaSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<CT_TKBanHang>()
                .Property(e => e.TienNhap)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_TKBanHang>()
                .Property(e => e.TienBan)
                .HasPrecision(19, 4);

            modelBuilder.Entity<DAUSACH>()
                .Property(e => e.MaDauSach)
                .IsUnicode(false);

            modelBuilder.Entity<DAUSACH>()
                .Property(e => e.MaTheLoai)
                .IsUnicode(false);

            modelBuilder.Entity<DAUSACH>()
                .HasMany(e => e.TACGIAs)
                .WithMany(e => e.DAUSACHes)
                .Map(m => m.ToTable("CT_DAUSACH").MapLeftKey("MaDauSach").MapRightKey("MaTacGia"));

            modelBuilder.Entity<DODUNGHOCTAP>()
                .Property(e => e.MaSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<DODUNGHOCTAP>()
                .Property(e => e.MaLoaiDDHT)
                .IsUnicode(false);

            modelBuilder.Entity<DODUNGHOCTAP>()
                .Property(e => e.MaNhaSanXuat)
                .IsUnicode(false);

            modelBuilder.Entity<DONVITINH>()
                .Property(e => e.MaDVT)
                .IsUnicode(false);

            modelBuilder.Entity<DONVITINH>()
                .HasMany(e => e.SANPHAMs)
                .WithRequired(e => e.DONVITINH)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<HOADONBANHANG>()
                .Property(e => e.MaHoaDon)
                .IsUnicode(false);

            modelBuilder.Entity<HOADONBANHANG>()
                .Property(e => e.MaNhanVien)
                .IsUnicode(false);

            modelBuilder.Entity<HOADONBANHANG>()
                .Property(e => e.TongThanhTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<HOADONBANHANG>()
                .HasMany(e => e.CT_HDBanHang)
                .WithRequired(e => e.HOADONBANHANG)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<LOAIDDHT>()
                .Property(e => e.MaLoaiDDHT)
                .IsUnicode(false);

            modelBuilder.Entity<LOAISANPHAM>()
                .Property(e => e.MaLoaiSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<LOAISANPHAM>()
                .HasMany(e => e.SANPHAMs)
                .WithRequired(e => e.LOAISANPHAM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHACUNGCAP>()
                .Property(e => e.MaNhaCungCap)
                .IsUnicode(false);

            modelBuilder.Entity<NHACUNGCAP>()
                .Property(e => e.SoDienThoai)
                .IsUnicode(false);

            modelBuilder.Entity<NHACUNGCAP>()
                .HasMany(e => e.SANPHAMs)
                .WithRequired(e => e.NHACUNGCAP)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHACUNGCAP>()
                .HasMany(e => e.PHIEUDATMUAs)
                .WithRequired(e => e.NHACUNGCAP)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHANVIEN>()
                .Property(e => e.MaNhanVien)
                .IsUnicode(false);

            modelBuilder.Entity<NHANVIEN>()
                .Property(e => e.MaChucVu)
                .IsUnicode(false);

            modelBuilder.Entity<NHANVIEN>()
                .Property(e => e.DienThoai)
                .IsUnicode(false);

            modelBuilder.Entity<NHANVIEN>()
                .Property(e => e.LuongNhanVien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<NHANVIEN>()
                .HasMany(e => e.BANGCHAMCONGs)
                .WithRequired(e => e.NHANVIEN)
                .HasForeignKey(e => e.NguoiChamCong)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHANVIEN>()
                .HasMany(e => e.PHIEUCHIs)
                .WithRequired(e => e.NHANVIEN)
                .HasForeignKey(e => e.MaNhanVienChi)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHANVIEN>()
                .HasMany(e => e.PHIEUNHAPKHOes)
                .WithRequired(e => e.NHANVIEN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHANVIEN>()
                .HasMany(e => e.PHIEUTHUs)
                .WithRequired(e => e.NHANVIEN)
                .HasForeignKey(e => e.MaNhanVienThu)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHANVIEN>()
                .HasMany(e => e.PHIEUXUATKHOes)
                .WithRequired(e => e.NHANVIEN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHANVIEN>()
                .HasMany(e => e.PHIEUDATMUAs)
                .WithRequired(e => e.NHANVIEN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHASANXUAT>()
                .Property(e => e.MaNhaSanXuat)
                .IsUnicode(false);

            modelBuilder.Entity<NHAXUATBAN>()
                .Property(e => e.MaNhaXuatBan)
                .IsUnicode(false);

            modelBuilder.Entity<PHIEUCHI>()
                .Property(e => e.MaPhieuChi)
                .IsUnicode(false);

            modelBuilder.Entity<PHIEUCHI>()
                .Property(e => e.MaNhanVienChi)
                .IsUnicode(false);

            modelBuilder.Entity<PHIEUCHI>()
                .Property(e => e.SoTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<PHIEUDATMUA>()
                .Property(e => e.MaPhieuDatMua)
                .IsUnicode(false);

            modelBuilder.Entity<PHIEUDATMUA>()
                .Property(e => e.MaNhanVien)
                .IsUnicode(false);

            modelBuilder.Entity<PHIEUDATMUA>()
                .Property(e => e.MaNhaCungCap)
                .IsUnicode(false);

            modelBuilder.Entity<PHIEUDATMUA>()
                .HasMany(e => e.CT_PHIEUDATMUA)
                .WithRequired(e => e.PHIEUDATMUA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PHIEUDATMUA>()
                .HasMany(e => e.PHIEUNHAPKHOes)
                .WithRequired(e => e.PHIEUDATMUA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PHIEUNHAPKHO>()
                .Property(e => e.MaPhieuNhap)
                .IsUnicode(false);

            modelBuilder.Entity<PHIEUNHAPKHO>()
                .Property(e => e.MaNhanVien)
                .IsUnicode(false);

            modelBuilder.Entity<PHIEUNHAPKHO>()
                .Property(e => e.MaPhieuDatMua)
                .IsUnicode(false);

            modelBuilder.Entity<PHIEUNHAPKHO>()
                .HasMany(e => e.CT_PhieuNhapKho)
                .WithRequired(e => e.PHIEUNHAPKHO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PHIEUTHU>()
                .Property(e => e.MaPhieuThu)
                .IsUnicode(false);

            modelBuilder.Entity<PHIEUTHU>()
                .Property(e => e.MaNhanVienThu)
                .IsUnicode(false);

            modelBuilder.Entity<PHIEUTHU>()
                .Property(e => e.SoTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<PHIEUXUATKHO>()
                .Property(e => e.MaPhieuXuat)
                .IsUnicode(false);

            modelBuilder.Entity<PHIEUXUATKHO>()
                .Property(e => e.MaNhanVien)
                .IsUnicode(false);

            modelBuilder.Entity<PHIEUXUATKHO>()
                .HasMany(e => e.CT_PhieuXuatKho)
                .WithRequired(e => e.PHIEUXUATKHO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<QUAYHANG>()
                .Property(e => e.MaQuay)
                .IsUnicode(false);

            modelBuilder.Entity<QUAYHANG>()
                .Property(e => e.ViTri)
                .IsUnicode(false);

            modelBuilder.Entity<QUAYHANG>()
                .HasMany(e => e.SANPHAMs)
                .WithRequired(e => e.QUAYHANG)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SANPHAM>()
                .Property(e => e.MaSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<SANPHAM>()
                .Property(e => e.MaLoaiSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<SANPHAM>()
                .Property(e => e.MaNhaCungCap)
                .IsUnicode(false);

            modelBuilder.Entity<SANPHAM>()
                .Property(e => e.MaQuay)
                .IsUnicode(false);

            modelBuilder.Entity<SANPHAM>()
                .Property(e => e.MaDVT)
                .IsUnicode(false);

            modelBuilder.Entity<SANPHAM>()
                .Property(e => e.DonGia)
                .HasPrecision(19, 4);

            modelBuilder.Entity<SANPHAM>()
                .HasMany(e => e.CT_HDBanHang)
                .WithRequired(e => e.SANPHAM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SANPHAM>()
                .HasMany(e => e.CT_PHIEUDATMUA)
                .WithRequired(e => e.SANPHAM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SANPHAM>()
                .HasMany(e => e.CT_PhieuNhapKho)
                .WithRequired(e => e.SANPHAM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SANPHAM>()
                .HasMany(e => e.CT_PhieuXuatKho)
                .WithRequired(e => e.SANPHAM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SANPHAM>()
                .HasMany(e => e.CT_TKBanHang)
                .WithRequired(e => e.SANPHAM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TACGIA>()
                .Property(e => e.MaTacGia)
                .IsUnicode(false);

            modelBuilder.Entity<THELOAISACH>()
                .Property(e => e.MaTheLoaiSach)
                .IsUnicode(false);

            modelBuilder.Entity<THELOAISACH>()
                .HasMany(e => e.DAUSACHes)
                .WithRequired(e => e.THELOAISACH)
                .HasForeignKey(e => e.MaTheLoai)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<THONGKEBANHANG>()
                .Property(e => e.TongTienNhap)
                .HasPrecision(19, 4);

            modelBuilder.Entity<THONGKEBANHANG>()
                .Property(e => e.TongTienBan)
                .HasPrecision(19, 4);

            modelBuilder.Entity<THONGKEBANHANG>()
                .HasMany(e => e.CT_TKBanHang)
                .WithRequired(e => e.THONGKEBANHANG)
                .HasForeignKey(e => new { e.Thang, e.Nam })
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<THUESUAT>()
                .Property(e => e.MaSoThue)
                .IsUnicode(false);

            modelBuilder.Entity<THUESUAT>()
                .HasMany(e => e.CT_HDBanHang)
                .WithRequired(e => e.THUESUAT)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<BANGCHAMCONG>().MapToStoredProcedures();
            modelBuilder.Entity<BODEM>().MapToStoredProcedures();
            modelBuilder.Entity<CALAMVIEC>().MapToStoredProcedures();
            modelBuilder.Entity<CHUCVU>().MapToStoredProcedures();
            modelBuilder.Entity<CT_HDBanHang>().MapToStoredProcedures();
            modelBuilder.Entity<CT_PHIEUDATMUA>().MapToStoredProcedures();
            modelBuilder.Entity<CT_PhieuNhapKho>().MapToStoredProcedures();
            modelBuilder.Entity<CT_PhieuXuatKho>().MapToStoredProcedures();
            modelBuilder.Entity<CT_TKBanHang>().MapToStoredProcedures();
            modelBuilder.Entity<DAUSACH>().MapToStoredProcedures();
            modelBuilder.Entity<DODUNGHOCTAP>().MapToStoredProcedures();
            modelBuilder.Entity<DONVITINH>().MapToStoredProcedures();
            modelBuilder.Entity<HOADONBANHANG>().MapToStoredProcedures();
            modelBuilder.Entity<LOAIDDHT>().MapToStoredProcedures();
            modelBuilder.Entity<LOAISANPHAM>().MapToStoredProcedures();
            modelBuilder.Entity<NHACUNGCAP>().MapToStoredProcedures();
            modelBuilder.Entity<NHANVIEN>().MapToStoredProcedures();
            modelBuilder.Entity<NHASANXUAT>().MapToStoredProcedures();
            modelBuilder.Entity<NHAXUATBAN>().MapToStoredProcedures();
            modelBuilder.Entity<PHIEUCHI>().MapToStoredProcedures();
            modelBuilder.Entity<PHIEUDATMUA>().MapToStoredProcedures();
            modelBuilder.Entity<PHIEUNHAPKHO>().MapToStoredProcedures();
            modelBuilder.Entity<PHIEUTHU>().MapToStoredProcedures();
            modelBuilder.Entity<PHIEUXUATKHO>().MapToStoredProcedures();
            modelBuilder.Entity<QUAYHANG>().MapToStoredProcedures();
            modelBuilder.Entity<SACH>().MapToStoredProcedures();
            modelBuilder.Entity<SANPHAM>().MapToStoredProcedures();
            modelBuilder.Entity<TACGIA>().MapToStoredProcedures();
            modelBuilder.Entity<THELOAISACH>().MapToStoredProcedures();
            modelBuilder.Entity<THONGKEBANHANG>().MapToStoredProcedures();
            modelBuilder.Entity<THUESUAT>().MapToStoredProcedures();
        }
    }

    
}