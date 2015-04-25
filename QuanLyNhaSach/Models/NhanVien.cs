namespace QuanLyNhaSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NHANVIEN")]
    public partial class NhanVien
    {
        public NhanVien()
        {
            BANGCHAMCONGs = new HashSet<BangChamCong>();
            PHIEUCHIKHACs = new HashSet<PhieuChiKhac>();
            PHIEUNHAPKHOes = new HashSet<PhieuNhapKho>();
            PHIEUTHUKHACs = new HashSet<PhieuThuKhac>();
            PHIEUXUATKHOes = new HashSet<PhieuXuatKho>();
            BANGCHAMCONGs1 = new HashSet<BangChamCong>();
        }

        [Key]
        [StringLength(20)]
        public string MaNhanVien { get; set; }

        [Required]
        [StringLength(20)]
        public string MaChucVu { get; set; }

        [StringLength(50)]
        public string TenNhanVien { get; set; }

        [StringLength(100)]
        public string DiaChi { get; set; }

        [StringLength(20)]
        public string DienThoai { get; set; }

        [Column(TypeName = "money")]
        public decimal? LuongNhanVien { get; set; }

        public virtual ICollection<BangChamCong> BANGCHAMCONGs { get; set; }

        public virtual ChucVu CHUCVU { get; set; }

        public virtual ICollection<PhieuChiKhac> PHIEUCHIKHACs { get; set; }

        public virtual ICollection<PhieuNhapKho> PHIEUNHAPKHOes { get; set; }

        public virtual ICollection<PhieuThuKhac> PHIEUTHUKHACs { get; set; }

        public virtual ICollection<PhieuXuatKho> PHIEUXUATKHOes { get; set; }

        public virtual ICollection<BangChamCong> BANGCHAMCONGs1 { get; set; }
    }
}
