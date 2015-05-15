namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("QUAYHANG")]
    public partial class QuayHang
    {
        public QuayHang()
        {
            DSSanPham = new HashSet<SanPham>();
        }

        [Key]
        [StringLength(20)]
        public string MaQuay { get; set; }

        [StringLength(50)]
        public string TenQuay { get; set; }

        [StringLength(20)]
        public string ViTri { get; set; }

        public virtual ICollection<SanPham> DSSanPham { get; set; }
    }
}
