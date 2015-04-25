namespace QuanLyNhaSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BANGCHAMCONG")]
    public partial class BangChamCong
    {
        public BangChamCong()
        {
            NHANVIENs = new HashSet<NhanVien>();
        }

        [Key]
        [StringLength(20)]
        public string MaBCC { get; set; }

        [Required]
        [StringLength(20)]
        public string MaCaLamViec { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayChamCong { get; set; }

        [Required]
        [StringLength(20)]
        public string NguoiChamCong { get; set; }

        public virtual CaLamViec CALAMVIEC { get; set; }

        public virtual NhanVien NHANVIEN { get; set; }

        public virtual ICollection<NhanVien> NHANVIENs { get; set; }
    }
}
