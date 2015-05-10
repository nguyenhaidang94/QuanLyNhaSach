namespace DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CT_TKBanHang
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Thang { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Nam { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(20)]
        public string MaSanPham { get; set; }

        public int? TonDau { get; set; }

        public int? SoLuongNhap { get; set; }

        [Column(TypeName = "money")]
        public decimal? TienNhap { get; set; }

        public int? SoLuongXuat { get; set; }

        public int? TonCuoi { get; set; }

        public int? SoLuongBan { get; set; }

        [Column(TypeName = "money")]
        public decimal? TienBan { get; set; }

        public virtual SANPHAM SANPHAM { get; set; }

        public virtual THONGKEBANHANG THONGKEBANHANG { get; set; }
    }
}
