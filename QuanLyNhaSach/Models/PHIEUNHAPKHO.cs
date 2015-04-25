namespace QuanLyNhaSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PHIEUNHAPKHO")]
    public partial class PhieuNhapKho
    {
        public PhieuNhapKho()
        {
            CT_PHIEUNHAPKHO = new HashSet<CT_PhieuNhapKho>();
        }

        [Key]
        [StringLength(20)]
        public string MaPhieuNhap { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayNhap { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhanVien { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhaCungCap { get; set; }

        public int? TongSoLuong { get; set; }

        public virtual ICollection<CT_PhieuNhapKho> CT_PHIEUNHAPKHO { get; set; }

        public virtual NhanVien NHANVIEN { get; set; }
    }
}
