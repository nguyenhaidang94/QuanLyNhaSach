namespace QuanLyNhaSach.DTO
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
            DSNhanVien = new HashSet<NhanVien>();
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

        public virtual CaLamViec CaLamViec { get; set; }

        public virtual NhanVien NhanVienCC { get; set; }

        public virtual ICollection<NhanVien> DSNhanVien { get; set; }
    }
}
