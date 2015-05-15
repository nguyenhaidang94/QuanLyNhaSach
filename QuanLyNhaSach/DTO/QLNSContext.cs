namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Data.Entity;
    using System.Diagnostics;
    using System.Linq;

    public class QLNSContext : DbContext
    {
        public QLNSContext()
            :base("QLNSContext")
        {
            Debug.WriteLine(this.Database.Log);
        }

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

        public virtual DbSet<BangChamCong> DbBangChamCong { get; set; }
        public virtual DbSet<CaLamViec> DbCaLamViec { get; set; }
        public virtual DbSet<ChucVu> DbChucVu { get; set; }
        public virtual DbSet<CT_HDBanHang> DbCT_HDBanHang { get; set; }
        public virtual DbSet<CT_PhieuDatMua> DbCT_PhieuDatMua { get; set; }
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
        public virtual DbSet<PhieuChi> DbPhieuChi { get; set; }
        public virtual DbSet<PhieuDatMua> DbPhieuDatMua { get; set; }
        public virtual DbSet<PhieuNhapKho> DbPhieuNhapKho { get; set; }
        public virtual DbSet<PhieuThu> DbPhieuThu { get; set; }
        public virtual DbSet<PhieuXuatKho> DbPhieuXuatKho { get; set; }
        public virtual DbSet<QuayHang> DbQuayHang { get; set; }
        public virtual DbSet<SanPham> DbSanPham { get; set; }
        public virtual DbSet<TacGia> DbTacGia { get; set; }
        public virtual DbSet<TheLoaiSach> DbTheLoaiSach { get; set; }
        public virtual DbSet<ThongKeBanHang> DbThongKeBanHang { get; set; }
        public virtual DbSet<ThueSuat> DbThueSuat { get; set; }
        public virtual DbSet<BoDem> DbBoDem { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Sach>().ToTable("SACH");
            modelBuilder.Entity<DoDungHocTap>().ToTable("DODUNGHOCTAP");
            modelBuilder.Entity<BoDem>().HasKey(x => new
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
                .HasMany(e => e.DSNhanVien)
                .WithMany(e => e.DSBangCC)
                .Map(m => m.ToTable("CT_BANGCHAMCONG").MapLeftKey("MaBCC").MapRightKey("MaNhanVien"));

            modelBuilder.Entity<CaLamViec>()
                .Property(e => e.MaCaLamViec)
                .IsUnicode(false);

            modelBuilder.Entity<CaLamViec>()
                .Property(e => e.LuongCLV)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CaLamViec>()
                .HasMany(e => e.DSBangCC)
                .WithRequired(e => e.CaLamViec)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ChucVu>()
                .Property(e => e.MaChucVu)
                .IsUnicode(false);

            modelBuilder.Entity<ChucVu>()
                .HasMany(e => e.DSNhanVien)
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

            modelBuilder.Entity<CT_PhieuDatMua>()
                .Property(e => e.MaPhieuDatMua)
                .IsUnicode(false);

            modelBuilder.Entity<CT_PhieuDatMua>()
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

            modelBuilder.Entity<DauSach>()
                .Property(e => e.MaDauSach)
                .IsUnicode(false);

            modelBuilder.Entity<DauSach>()
                .Property(e => e.MaTheLoai)
                .IsUnicode(false);

            modelBuilder.Entity<DauSach>()
                .HasMany(e => e.DSTacGia)
                .WithMany(e => e.DSDauSach)
                .Map(m => m.ToTable("CT_DAUSACH").MapLeftKey("MaDauSach").MapRightKey("MaTacGia"));

            modelBuilder.Entity<DoDungHocTap>()
                .Property(e => e.MaSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<DoDungHocTap>()
                .Property(e => e.MaLoaiDDHT)
                .IsUnicode(false);

            modelBuilder.Entity<DoDungHocTap>()
                .Property(e => e.MaNhaSanXuat)
                .IsUnicode(false);

            modelBuilder.Entity<DonViTinh>()
                .Property(e => e.MaDVT)
                .IsUnicode(false);

            modelBuilder.Entity<DonViTinh>()
                .HasMany(e => e.DSSanPham)
                .WithRequired(e => e.DonViTinh)
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
                .HasMany(e => e.DSCT_HDBanHang)
                .WithRequired(e => e.HoaDonBanHang)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<LoaiDDHT>()
                .Property(e => e.MaLoaiDDHT)
                .IsUnicode(false);

            modelBuilder.Entity<LoaiSanPham>()
                .Property(e => e.MaLoaiSanPham)
                .IsUnicode(false);

            modelBuilder.Entity<LoaiSanPham>()
                .HasMany(e => e.DSSanPham)
                .WithRequired(e => e.LoaiSanPham)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhaCungCap>()
                .Property(e => e.MaNhaCungCap)
                .IsUnicode(false);

            modelBuilder.Entity<NhaCungCap>()
                .Property(e => e.SoDienThoai)
                .IsUnicode(false);

            modelBuilder.Entity<NhaCungCap>()
                .HasMany(e => e.DSSanPham)
                .WithRequired(e => e.NhaCungCap)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhaCungCap>()
                .HasMany(e => e.DSPhieuDatMua)
                .WithRequired(e => e.NhaCungCap)
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
                .WithRequired(e => e.NhanVienCC)
                .HasForeignKey(e => e.NguoiChamCong)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhanVien>()
                .HasMany(e => e.DSPhieuChi)
                .WithRequired(e => e.NhanVien)
                .HasForeignKey(e => e.MaNhanVienChi)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhanVien>()
                .HasMany(e => e.DSPhieuNhapKho)
                .WithRequired(e => e.NhanVien)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhanVien>()
                .HasMany(e => e.DSPhieuThu)
                .WithRequired(e => e.NhanVien)
                .HasForeignKey(e => e.MaNhanVienThu)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhanVien>()
                .HasMany(e => e.DSPhieuXuatKho)
                .WithRequired(e => e.NhanVien)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhanVien>()
                .HasMany(e => e.DSPhieuDatMua)
                .WithRequired(e => e.NhanVien)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhaSanXuat>()
                .Property(e => e.MaNhaSanXuat)
                .IsUnicode(false);

            modelBuilder.Entity<NhaXuatBan>()
                .Property(e => e.MaNhaXuatBan)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuChi>()
                .Property(e => e.MaPhieuChi)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuChi>()
                .Property(e => e.MaNhanVienChi)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuChi>()
                .Property(e => e.SoTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<PhieuDatMua>()
                .Property(e => e.MaPhieuDatMua)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuDatMua>()
                .Property(e => e.MaNhanVien)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuDatMua>()
                .Property(e => e.MaNhaCungCap)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuDatMua>()
                .HasMany(e => e.DSCT_PhieuDatMua)
                .WithRequired(e => e.PhieuDatMua)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PhieuDatMua>()
                .HasMany(e => e.DSPhieuNhapKho)
                .WithRequired(e => e.PhieuDatMua)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PhieuNhapKho>()
                .Property(e => e.MaPhieuNhap)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuNhapKho>()
                .Property(e => e.MaNhanVien)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuNhapKho>()
                .Property(e => e.MaPhieuDatMua)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuNhapKho>()
                .HasMany(e => e.DSCT_PhieuNhapKho)
                .WithRequired(e => e.PhieuNhapKho)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PhieuThu>()
                .Property(e => e.MaPhieuThu)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuThu>()
                .Property(e => e.MaNhanVienThu)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuThu>()
                .Property(e => e.SoTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<PhieuXuatKho>()
                .Property(e => e.MaPhieuXuat)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuXuatKho>()
                .Property(e => e.MaNhanVien)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuXuatKho>()
                .HasMany(e => e.DSCT_PhieuXuatKho)
                .WithRequired(e => e.PhieuXuatKho)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<QuayHang>()
                .Property(e => e.MaQuay)
                .IsUnicode(false);

            modelBuilder.Entity<QuayHang>()
                .Property(e => e.ViTri)
                .IsUnicode(false);

            modelBuilder.Entity<QuayHang>()
                .HasMany(e => e.DSSanPham)
                .WithRequired(e => e.QuayHang)
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
                .HasMany(e => e.DSCT_HDBanHang)
                .WithRequired(e => e.SanPham)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SanPham>()
                .HasMany(e => e.DSCT_PHIEUDATMUA)
                .WithRequired(e => e.SanPham)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SanPham>()
                .HasMany(e => e.DSCT_PhieuNhapKho)
                .WithRequired(e => e.SanPham)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SanPham>()
                .HasMany(e => e.DSCT_PhieuXuatKho)
                .WithRequired(e => e.SanPham)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SanPham>()
                .HasMany(e => e.DSCT_TKBanHang)
                .WithRequired(e => e.SanPham)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TacGia>()
                .Property(e => e.MaTacGia)
                .IsUnicode(false);

            modelBuilder.Entity<TheLoaiSach>()
                .Property(e => e.MaTheLoaiSach)
                .IsUnicode(false);

            modelBuilder.Entity<TheLoaiSach>()
                .HasMany(e => e.DSDauSach)
                .WithRequired(e => e.TheLoaiSach)
                .HasForeignKey(e => e.MaTheLoai)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ThongKeBanHang>()
                .Property(e => e.TongTienNhap)
                .HasPrecision(19, 4);

            modelBuilder.Entity<ThongKeBanHang>()
                .Property(e => e.TongTienBan)
                .HasPrecision(19, 4);

            modelBuilder.Entity<ThongKeBanHang>()
                .HasMany(e => e.DSCT_TKBanHang)
                .WithRequired(e => e.ThongKeBanHang)
                .HasForeignKey(e => new { e.Thang, e.Nam })
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ThueSuat>()
                .Property(e => e.MaSoThue)
                .IsUnicode(false);

            modelBuilder.Entity<ThueSuat>()
                .HasMany(e => e.DSCT_HDBanHang)
                .WithRequired(e => e.ThueSuat)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<BangChamCong>().MapToStoredProcedures();
            modelBuilder.Entity<BoDem>().MapToStoredProcedures();
            modelBuilder.Entity<CaLamViec>().MapToStoredProcedures();
            modelBuilder.Entity<ChucVu>().MapToStoredProcedures();
            modelBuilder.Entity<CT_HDBanHang>().MapToStoredProcedures();
            modelBuilder.Entity<CT_PhieuDatMua>().MapToStoredProcedures();
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
            modelBuilder.Entity<PhieuChi>().MapToStoredProcedures();
            modelBuilder.Entity<PhieuDatMua>().MapToStoredProcedures();
            modelBuilder.Entity<PhieuNhapKho>().MapToStoredProcedures();
            modelBuilder.Entity<PhieuThu>().MapToStoredProcedures();
            modelBuilder.Entity<PhieuXuatKho>().MapToStoredProcedures();
            modelBuilder.Entity<QuayHang>().MapToStoredProcedures();
            modelBuilder.Entity<Sach>().MapToStoredProcedures();
            modelBuilder.Entity<SanPham>().MapToStoredProcedures();
            modelBuilder.Entity<TacGia>().MapToStoredProcedures();
            modelBuilder.Entity<TheLoaiSach>().MapToStoredProcedures();
            modelBuilder.Entity<ThongKeBanHang>().MapToStoredProcedures();
            modelBuilder.Entity<ThueSuat>().MapToStoredProcedures();
        }
    }
}