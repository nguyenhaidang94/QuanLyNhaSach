namespace DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CT_PhieuNhapKho
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(20)]
        public string MaPhieuNhap { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(20)]
        public string MaSanPham { get; set; }

        [Column(TypeName = "money")]
        public decimal? DonGia { get; set; }

        public int? SoLuong { get; set; }

        public virtual PHIEUNHAPKHO PHIEUNHAPKHO { get; set; }

        public virtual SANPHAM SANPHAM { get; set; }
    }
}
