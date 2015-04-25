namespace QuanLyNhaSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CT_PhieuXuatKho
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(20)]
        public string MaPhieuXuat { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(20)]
        public string MaSanPham { get; set; }

        public int? SoLuong { get; set; }

        public virtual PhieuXuatKho PHIEUXUATKHO { get; set; }

        public virtual SanPham SANPHAM { get; set; }
    }
}
