namespace DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PHIEUDATMUA")]
    public partial class PHIEUDATMUA
    {
        public PHIEUDATMUA()
        {
            CT_PHIEUDATMUA = new HashSet<CT_PHIEUDATMUA>();
            PHIEUNHAPKHOes = new HashSet<PHIEUNHAPKHO>();
        }

        [Key]
        [StringLength(20)]
        public string MaPhieuDatMua { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayDatMua { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhanVien { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhaCungCap { get; set; }

        public int? TongSoLuong { get; set; }

        public virtual ICollection<CT_PHIEUDATMUA> CT_PHIEUDATMUA { get; set; }

        public virtual NHACUNGCAP NHACUNGCAP { get; set; }

        public virtual NHANVIEN NHANVIEN { get; set; }

        public virtual ICollection<PHIEUNHAPKHO> PHIEUNHAPKHOes { get; set; }
    }
}
