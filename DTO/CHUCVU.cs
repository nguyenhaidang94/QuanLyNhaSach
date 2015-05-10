namespace DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CHUCVU")]
    public partial class CHUCVU
    {
        public CHUCVU()
        {
            NHANVIENs = new HashSet<NHANVIEN>();
        }

        [Key]
        [StringLength(20)]
        public string MaChucVu { get; set; }

        [StringLength(50)]
        public string TenChucVu { get; set; }

        [StringLength(50)]
        public string TrachNhiem { get; set; }

        public virtual ICollection<NHANVIEN> NHANVIENs { get; set; }
    }
}
