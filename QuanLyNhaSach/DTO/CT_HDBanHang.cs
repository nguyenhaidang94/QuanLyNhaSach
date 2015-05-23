namespace QuanLyNhaSach.DTO
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
        public string MaCTSanPham { get; set; }

        //[Required]
        //[StringLength(20)]
        //public string MaSoThue { get; set; }

        [Column(TypeName = "money")]
        public decimal? GiaBan { get; set; }

        public int? SoLuong { get; set; }

        public virtual HoaDonBanHang HoaDonBanHang { get; set; }

        public virtual CT_SanPham CT_SanPham { get; set; }

        //public virtual ThueSuat ThueSuat { get; set; }
    }
}
