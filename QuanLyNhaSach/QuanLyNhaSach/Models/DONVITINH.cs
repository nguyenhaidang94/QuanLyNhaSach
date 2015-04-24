namespace QuanLyNhaSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DONVITINH")]
    public partial class DonViTinh
    {
        public DonViTinh()
        {
            SANPHAMs = new HashSet<SanPham>();
        }

        [Key]
        [StringLength(20)]
        public string MaDVT { get; set; }

        [StringLength(50)]
        public string TenDVT { get; set; }

        public virtual ICollection<SanPham> SANPHAMs { get; set; }
    }
}
