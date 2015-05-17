namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LOAISANPHAM")]
    public partial class LoaiSanPham
    {
        public LoaiSanPham()
        {
            DSSanPham = new HashSet<SanPham>();
        }

        [Key]
        [StringLength(20)]
        public string MaLoaiSanPham { get; set; }

        [StringLength(50)]
        public string TenLoaiSanPham { get; set; }

        public virtual ICollection<SanPham> DSSanPham { get; set; }
    }
}
