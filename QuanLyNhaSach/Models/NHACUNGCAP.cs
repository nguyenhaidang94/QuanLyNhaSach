namespace QuanLyNhaSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NHACUNGCAP")]
    public partial class NhaCungCap
    {
        public NhaCungCap()
        {
            SANPHAMs = new HashSet<SanPham>();
        }

        [Key]
        [StringLength(20)]
        public string MaNhaCungCap { get; set; }

        [StringLength(50)]
        public string TenNhaCungCap { get; set; }

        [StringLength(100)]
        public string DiaChi { get; set; }

        [StringLength(20)]
        public string SoDienThoai { get; set; }

        public virtual ICollection<SanPham> SANPHAMs { get; set; }
    }
}
