namespace DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HOADONBANHANG")]
    public partial class HOADONBANHANG
    {
        public HOADONBANHANG()
        {
            CT_HDBanHang = new HashSet<CT_HDBanHang>();
        }

        [Key]
        [StringLength(20)]
        public string MaHoaDon { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayBan { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhanVien { get; set; }

        [StringLength(50)]
        public string TenKhachHang { get; set; }

        [Column(TypeName = "money")]
        public decimal? TongThanhTien { get; set; }

        public virtual ICollection<CT_HDBanHang> CT_HDBanHang { get; set; }
    }
}
