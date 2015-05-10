namespace DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BANGCHAMCONG")]
    public partial class BANGCHAMCONG
    {
        public BANGCHAMCONG()
        {
            NHANVIENs = new HashSet<NHANVIEN>();
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

        public virtual CALAMVIEC CALAMVIEC { get; set; }

        public virtual NHANVIEN NHANVIEN { get; set; }

        public virtual ICollection<NHANVIEN> NHANVIENs { get; set; }
    }
}
