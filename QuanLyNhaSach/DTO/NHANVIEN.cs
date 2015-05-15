namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NHANVIEN")]
    public partial class NHANVIEN
    {
        public NHANVIEN()
        {
            BANGCHAMCONGs = new HashSet<BANGCHAMCONG>();
            PHIEUCHIs = new HashSet<PHIEUCHI>();
            PHIEUNHAPKHOes = new HashSet<PHIEUNHAPKHO>();
            PHIEUTHUs = new HashSet<PHIEUTHU>();
            PHIEUXUATKHOes = new HashSet<PHIEUXUATKHO>();
            PHIEUDATMUAs = new HashSet<PHIEUDATMUA>();
            BANGCHAMCONGs1 = new HashSet<BANGCHAMCONG>();
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

        public virtual ICollection<BANGCHAMCONG> BANGCHAMCONGs { get; set; }

        public virtual CHUCVU CHUCVU { get; set; }

        public virtual ICollection<PHIEUCHI> PHIEUCHIs { get; set; }

        public virtual ICollection<PHIEUNHAPKHO> PHIEUNHAPKHOes { get; set; }

        public virtual ICollection<PHIEUTHU> PHIEUTHUs { get; set; }

        public virtual ICollection<PHIEUXUATKHO> PHIEUXUATKHOes { get; set; }

        public virtual ICollection<PHIEUDATMUA> PHIEUDATMUAs { get; set; }

        public virtual ICollection<BANGCHAMCONG> BANGCHAMCONGs1 { get; set; }
    }
}
