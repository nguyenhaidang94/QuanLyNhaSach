namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LOAISANPHAM")]
    public partial class LOAISANPHAM
    {
        public LOAISANPHAM()
        {
            SANPHAMs = new HashSet<SANPHAM>();
        }

        [Key]
        [StringLength(20)]
        public string MaLoaiSanPham { get; set; }

        [StringLength(50)]
        public string TenLoaiSanPham { get; set; }

        public virtual ICollection<SANPHAM> SANPHAMs { get; set; }
    }
}
