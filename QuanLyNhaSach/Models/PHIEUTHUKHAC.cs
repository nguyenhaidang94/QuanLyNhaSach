namespace QuanLyNhaSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PHIEUTHUKHAC")]
    public partial class PhieuThuKhac
    {
        [Key]
        [StringLength(20)]
        public string MaPhieuThuKhac { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhanVienThu { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayThu { get; set; }

        [Column(TypeName = "money")]
        public decimal? SoTien { get; set; }

        [StringLength(50)]
        public string LyDo { get; set; }

        public virtual NhanVien NHANVIEN { get; set; }
    }
}
