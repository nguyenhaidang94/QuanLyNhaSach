namespace QuanLyNhaSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PHIEUXUATKHO")]
    public partial class PhieuXuatKho
    {
        public PhieuXuatKho()
        {
            CT_PHIEUXUATKHO = new HashSet<CT_PhieuXuatKho>();
        }

        [Key]
        [StringLength(20)]
        public string MaPhieuXuat { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayXuat { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhanVien { get; set; }

        public int? TongSoLuong { get; set; }

        public virtual ICollection<CT_PhieuXuatKho> CT_PHIEUXUATKHO { get; set; }

        public virtual NhanVien NHANVIEN { get; set; }
    }
}
