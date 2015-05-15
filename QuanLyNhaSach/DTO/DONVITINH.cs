namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DONVITINH")]
    public partial class DONVITINH
    {
        public DONVITINH()
        {
            SANPHAMs = new HashSet<SANPHAM>();
        }

        [Key]
        [StringLength(20)]
        public string MaDVT { get; set; }

        [StringLength(50)]
        public string TenDVT { get; set; }

        public virtual ICollection<SANPHAM> SANPHAMs { get; set; }
    }
}
