namespace QuanLyNhaSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("THONGKEBANHANG")]
    public partial class ThongKeBanHang
    {
        public ThongKeBanHang()
        {
            CT_TKBANHANG = new HashSet<CT_TKBanHang>();
        }

        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Thang { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Nam { get; set; }

        public int? TongTonDau { get; set; }

        public int? TongSoLuongNhap { get; set; }

        [Column(TypeName = "money")]
        public decimal? TongTienNhap { get; set; }

        public int? TongSoLuongXuat { get; set; }

        public int? TongTonCuoi { get; set; }

        public int? TongSoLuongBan { get; set; }

        [Column(TypeName = "money")]
        public decimal? TongTienBan { get; set; }

        public virtual ICollection<CT_TKBanHang> CT_TKBANHANG { get; set; }
    }
}
