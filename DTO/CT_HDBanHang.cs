namespace DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CT_HDBanHang
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(20)]
        public string MaHoaDon { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(20)]
        public string MaSanPham { get; set; }

        [Required]
        [StringLength(20)]
        public string MaSoThue { get; set; }

        [Column(TypeName = "money")]
        public decimal? GiaBan { get; set; }

        public int? SoLuong { get; set; }

        public virtual HOADONBANHANG HOADONBANHANG { get; set; }

        public virtual SANPHAM SANPHAM { get; set; }

        public virtual THUESUAT THUESUAT { get; set; }
    }
}
