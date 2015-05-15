namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CT_PHIEUDATMUA
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(20)]
        public string MaPhieuDatMua { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(20)]
        public string MaSanPham { get; set; }

        public double? DonGia { get; set; }

        public double? SoLuong { get; set; }

        public bool? TinhTrang { get; set; }

        public virtual PHIEUDATMUA PHIEUDATMUA { get; set; }

        public virtual SANPHAM SANPHAM { get; set; }
    }
}
