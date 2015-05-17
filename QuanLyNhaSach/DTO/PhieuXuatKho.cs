namespace QuanLyNhaSach.DTO
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
            DSCT_PhieuXuatKho = new HashSet<CT_PhieuXuatKho>();
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

        public virtual ICollection<CT_PhieuXuatKho> DSCT_PhieuXuatKho { get; set; }

        public virtual NhanVien NhanVien { get; set; }
    }
}
