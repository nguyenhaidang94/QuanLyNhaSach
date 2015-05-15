namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PHIEUCHI")]
    public partial class PhieuChi
    {
        [Key]
        [StringLength(20)]
        public string MaPhieuChi { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhanVienChi { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayChi { get; set; }

        [StringLength(50)]
        public string NguoiNhan { get; set; }

        [Column(TypeName = "money")]
        public decimal? SoTien { get; set; }

        [StringLength(50)]
        public string LyDo { get; set; }

        public virtual NhanVien NhanVien { get; set; }
    }
}
