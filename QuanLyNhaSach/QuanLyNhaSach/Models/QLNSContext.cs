namespace QuanLyNhaSach.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class QLNSContext : DbContext
    {
        public QLNSContext()
            : base("name=QLNSContext")
        {
        }

        #region Database Set
        public virtual DbSet<BangChamCong> DbBangChamCong { get; set; }
        public virtual DbSet<CaLamViec> DbCaLamViec { get; set; }
        public virtual DbSet<ChucVu> DbChucVu { get; set; }
        public virtual DbSet<CT_HDBanHang> DbCT_HDBanHang { get; set; }
        public virtual DbSet<CT_PhieuNhapKho> DbCT_PhieuNhapKho { get; set; }
        public virtual DbSet<CT_PhieuXuatKho> DbCT_PhieuXuatKho { get; set; }
        public virtual DbSet<CT_TKBanHang> DbCT_TKBanHang { get; set; }
        public virtual DbSet<DauSach> DbDauSach { get; set; }
        public virtual DbSet<DonViTinh> DbDonViTinh { get; set; }
        public virtual DbSet<HoaDonBanHang> DbHoaDonBanHang { get; set; }
        public virtual DbSet<LoaiDDHT> DbLoaiDDHT { get; set; }
        public virtual DbSet<LoaiSanPham> DbLoaiSanPham { get; set; }
        public virtual DbSet<NhaCungCap> DbNhaCungCap { get; set; }
        public virtual DbSet<NhanVien> DbNhanVien { get; set; }
        public virtual DbSet<NhaSanXuat> DbNhaSanXuat { get; set; }
        public virtual DbSet<NhaXuatBan> DbNhaXuatBan { get; set; }
        public virtual DbSet<PhieuChiKhac> DbPhieuChiKhac { get; set; }
        public virtual DbSet<PhieuNhapKho> DbPhieuNhapKho { get; set; }
        public virtual DbSet<PhieuThuKhac> DbPhieuThuKhac { get; set; }
        public virtual DbSet<PhieuXuatKho> DbPhieuXuatKho { get; set; }
        public virtual DbSet<QuayHang> DbQuayHang { get; set; }
        public virtual DbSet<SanPham> DbSanPham { get; set; }
        public virtual DbSet<TacGia> DbTacGia { get; set; }
        public virtual DbSet<TheLoaiSach> DbTheLoaiSach { get; set; }
        public virtual DbSet<ThongKeBanHang> DbThongKeBanHang { get; set; }
        public virtual DbSet<ThueSuat> DbThueSuat { get; set; }
        public virtual DbSet<BoDem> DbBoDem { get; set; }
        #endregion

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Sach>().ToTable("SACH");
            modelBuilder.Entity<DoDungHocTap>().ToTable("DODUNGHOCTAP");

            modelBuilder.Entity<BoDem>().HasKey(x => new { x.BangChamCong, x.CaLamViec, x.ChucVu, x.DauSach, x.DonViTinh,
            x.HoaDonBanHang, x.LoaiDDHT, x.LoaiSanPham, x.NhaCungCap, x.NhanVien, x.NhaSanXuat, x.NhaXuatBan, x.PhieuChiKhac,
            x.PhieuNhapKho, x.PhieuThuKhac, x.PhieuXuatKho, x.QuayHang, x.SanPham, x.TacGia, x.TheLoaiSach, x.ThueSuat});

            modelBuilder.Entity<TacGia>().MapToStoredProcedures();
            modelBuilder.Entity<BangChamCong>().MapToStoredProcedures();
            modelBuilder.Entity<BoDem>().MapToStoredProcedures();
            modelBuilder.Entity<CaLamViec>().MapToStoredProcedures();
            modelBuilder.Entity<ChucVu>().MapToStoredProcedures();
            modelBuilder.Entity<CT_HDBanHang>().MapToStoredProcedures();
            modelBuilder.Entity<CT_PhieuNhapKho>().MapToStoredProcedures();
            modelBuilder.Entity<CT_PhieuXuatKho>().MapToStoredProcedures();
            modelBuilder.Entity<CT_TKBanHang>().MapToStoredProcedures();
            modelBuilder.Entity<DauSach>().MapToStoredProcedures();
            modelBuilder.Entity<DoDungHocTap>().MapToStoredProcedures();
            modelBuilder.Entity<DonViTinh>().MapToStoredProcedures();
            modelBuilder.Entity<HoaDonBanHang>().MapToStoredProcedures();
            modelBuilder.Entity<LoaiDDHT>().MapToStoredProcedures();
            modelBuilder.Entity<LoaiSanPham>().MapToStoredProcedures();
            modelBuilder.Entity<NhaCungCap>().MapToStoredProcedures();
            modelBuilder.Entity<NhanVien>().MapToStoredProcedures();
            modelBuilder.Entity<NhaSanXuat>().MapToStoredProcedures();
            modelBuilder.Entity<NhaXuatBan>().MapToStoredProcedures();
            modelBuilder.Entity<PhieuChiKhac>().MapToStoredProcedures();
            modelBuilder.Entity<PhieuNhapKho>().MapToStoredProcedures();
            modelBuilder.Entity<PhieuThuKhac>().MapToStoredProcedures();
            modelBuilder.Entity<PhieuXuatKho>().MapToStoredProcedures();
            modelBuilder.Entity<QuayHang>().MapToStoredProcedures();
            modelBuilder.Entity<Sach>().MapToStoredProcedures();
            modelBuilder.Entity<SanPham>().MapToStoredProcedures();
            modelBuilder.Entity<TheLoaiSach>().MapToStoredProcedures();
            modelBuilder.Entity<ThongKeBanHang>().MapToStoredProcedures();
            modelBuilder.Entity<ThueSuat>().MapToStoredProcedures();

            modelBuilder.Entity<BangChamCong>()
                .Property(e => e.MaBCC)
                .IsUnicode(false);

            modelBuilder.Entity<BangChamCong>()
                .Property(e => e.MaCaLamViec)
                .IsUnicode(false);

            modelBuilder.Entity<BangChamCong>()
                .Property(e => e.NguoiChamCong)
                .IsUnicode(false);

            modelBuilder.Entity<BangChamCong>()
                .HasMany(e => e.NHANVIENs)
                .WithMany(e => e.BANGCHAMCONGs1)
                .Map(m => m.ToTable("CT_BANGCHAMCONG").MapLeftKey("MaBCC").MapRightKey("MaNhanVien"));

            modelBuilder.Entity<CaLamViec>()
                .Property(e => e.MaCaLamViec)
                .IsUnicode(false);

            modelBuilder.Entity<CaLamViec>()
                .Property(e => e.LuongCLV)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CaLamViec>()
                .HasMany(e => e.BANGCHAMCONGs)
                .WithRequired(e => e.CALAMVIEC)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ChucVu>()
                .Property(e => e.MaChucVu)
                .IsUnicode(false);

            modelBuilder.Entity<ChucVu>()
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

            modelBuilder.Entity<DauSach>()
                .Property(e => e.MaDauSach)
                .IsUnicode(false);

            modelBuilder.Entity<DauSach>()
                .Property(e => e.MaTheLoai)
                .IsUnicode(false);

            modelBuilder.Entity<DauSach>()
                .HasMany(e => e.TACGIAs)
                .WithMany(e => e.DAUSACHes)
                .Map(m => m.ToTable("CT_DAUSACH").MapLeftKey("MaDauSach").MapRightKey("MaTacGia"));

            modelBuilder.Entity<DonViTinh>()
                .Property(e => e.MaDVT)
                .IsUnicode(false);

            modelBuilder.Entity<DonViTinh>()
                .HasMany(e => e.SANPHAMs)
                .WithRequired(e => e.DONVITINH)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<HoaDonBanHang>()
                .Property(e => e.MaHoaDon)
                .IsUnicode(false);

            modelBuilder.Entity<HoaDonBanHang>()
                .Property(e => e.MaNhanVien)
                .IsUnicode(false);

            modelBuilder.Entity<HoaDonBanHang>()
                .Property(e => e.TongThanhTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<HoaDonBanHang>()
                .HasMany(e => e.CT_HDBANHANG)
                .WithRequired(e => e.HOADONBANHANG)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<LoaiDDHT>()
                .Property(e => e.MaLoaiDDHT)
                .IsUnicode(false);

            modelBuilder.Entity<LoaiSanPham>()
                .Property(e => e.MaLoaiSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<LoaiSanPham>()
                .HasMany(e => e.SANPHAMs)
                .WithRequired(e => e.LOAISANPHAM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhaCungCap>()
                .Property(e => e.MaNhaCungCap)
                .IsUnicode(false);

            modelBuilder.Entity<NhaCungCap>()
                .Property(e => e.SoDienThoai)
                .IsUnicode(false);

            modelBuilder.Entity<NhaCungCap>()
                .HasMany(e => e.SANPHAMs)
                .WithRequired(e => e.NHACUNGCAP)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhanVien>()
                .Property(e => e.MaNhanVien)
                .IsUnicode(false);

            modelBuilder.Entity<NhanVien>()
                .Property(e => e.MaChucVu)
                .IsUnicode(false);

            modelBuilder.Entity<NhanVien>()
                .Property(e => e.DienThoai)
                .IsUnicode(false);

            modelBuilder.Entity<NhanVien>()
                .Property(e => e.LuongNhanVien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<NhanVien>()
                .HasMany(e => e.BANGCHAMCONGs)
                .WithRequired(e => e.NHANVIEN)
                .HasForeignKey(e => e.NguoiChamCong)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhanVien>()
                .HasMany(e => e.PHIEUCHIKHACs)
                .WithRequired(e => e.NHANVIEN)
                .HasForeignKey(e => e.MaNhanVienChi)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhanVien>()
                .HasMany(e => e.PHIEUNHAPKHOes)
                .WithRequired(e => e.NHANVIEN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhanVien>()
                .HasMany(e => e.PHIEUTHUKHACs)
                .WithRequired(e => e.NHANVIEN)
                .HasForeignKey(e => e.MaNhanVienThu)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhanVien>()
                .HasMany(e => e.PHIEUXUATKHOes)
                .WithRequired(e => e.NHANVIEN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhaSanXuat>()
                .Property(e => e.MaNhaSanXuat)
                .IsUnicode(false);

            modelBuilder.Entity<NhaXuatBan>()
                .Property(e => e.MaNhaXuatBan)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuChiKhac>()
                .Property(e => e.MaPhieuChiKhac)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuChiKhac>()
                .Property(e => e.MaNhanVienChi)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuChiKhac>()
                .Property(e => e.SoTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<PhieuNhapKho>()
                .Property(e => e.MaPhieuNhap)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuNhapKho>()
                .Property(e => e.MaNhanVien)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuNhapKho>()
                .Property(e => e.MaNhaCungCap)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuNhapKho>()
                .HasMany(e => e.CT_PHIEUNHAPKHO)
                .WithRequired(e => e.PHIEUNHAPKHO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PhieuThuKhac>()
                .Property(e => e.MaPhieuThuKhac)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuThuKhac>()
                .Property(e => e.MaNhanVienThu)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuThuKhac>()
                .Property(e => e.SoTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<PhieuXuatKho>()
                .Property(e => e.MaPhieuXuat)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuXuatKho>()
                .Property(e => e.MaNhanVien)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuXuatKho>()
                .HasMany(e => e.CT_PHIEUXUATKHO)
                .WithRequired(e => e.PHIEUXUATKHO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<QuayHang>()
                .Property(e => e.MaQuay)
                .IsUnicode(false);

            modelBuilder.Entity<QuayHang>()
                .Property(e => e.ViTri)
                .IsUnicode(false);

            modelBuilder.Entity<QuayHang>()
                .HasMany(e => e.SANPHAMs)
                .WithRequired(e => e.QUAYHANG)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SanPham>()
                .Property(e => e.MaSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<SanPham>()
                .Property(e => e.MaLoaiSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<SanPham>()
                .Property(e => e.MaNhaCungCap)
                .IsUnicode(false);

            modelBuilder.Entity<SanPham>()
                .Property(e => e.MaQuay)
                .IsUnicode(false);

            modelBuilder.Entity<SanPham>()
                .Property(e => e.MaDVT)
                .IsUnicode(false);

            modelBuilder.Entity<SanPham>()
                .Property(e => e.DonGia)
                .HasPrecision(19, 4);

            modelBuilder.Entity<SanPham>()
                .HasMany(e => e.CT_HDBANHANG)
                .WithRequired(e => e.SANPHAM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SanPham>()
                .HasMany(e => e.CT_PHIEUNHAPKHO)
                .WithRequired(e => e.SANPHAM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SanPham>()
                .HasMany(e => e.CT_PHIEUXUATKHO)
                .WithRequired(e => e.SANPHAM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SanPham>()
                .HasMany(e => e.CT_TKBANHANG)
                .WithRequired(e => e.SANPHAM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TacGia>()
                .Property(e => e.MaTacGia)
                .IsUnicode(false);

            modelBuilder.Entity<TheLoaiSach>()
                .Property(e => e.MaTheLoaiSach)
                .IsUnicode(false);

            modelBuilder.Entity<TheLoaiSach>()
                .HasMany(e => e.DAUSACHes)
                .WithRequired(e => e.THELOAISACH)
                .HasForeignKey(e => e.MaTheLoai)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ThongKeBanHang>()
                .Property(e => e.TongTienNhap)
                .HasPrecision(19, 4);

            modelBuilder.Entity<ThongKeBanHang>()
                .Property(e => e.TongTienBan)
                .HasPrecision(19, 4);

            modelBuilder.Entity<ThongKeBanHang>()
                .HasMany(e => e.CT_TKBANHANG)
                .WithRequired(e => e.THONGKEBANHANG)
                .HasForeignKey(e => new { e.Thang, e.Nam })
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ThueSuat>()
                .Property(e => e.MaSoThue)
                .IsUnicode(false);

            modelBuilder.Entity<ThueSuat>()
                .HasMany(e => e.CT_HDBANHANG)
                .WithRequired(e => e.THUESUAT)
                .WillCascadeOnDelete(false);
        }
    }
}
