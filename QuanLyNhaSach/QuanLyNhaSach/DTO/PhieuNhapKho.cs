namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PHIEUNHAPKHO")]
    public partial class PhieuNhapKho
    {
        public PhieuNhapKho()
        {
            DSCT_PhieuNhapKho = new HashSet<CT_PhieuNhapKho>();
        }

        [Key]
        [StringLength(20)]
        public string MaPhieuNhap { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayNhap { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhanVien { get; set; }

        [Required]
        [StringLength(20)]
        public string MaPhieuDatMua { get; set; }

        public int? TongSoLuong { get; set; }

        public virtual ICollection<CT_PhieuNhapKho> DSCT_PhieuNhapKho { get; set; }

        public virtual NhanVien NhanVien { get; set; }

        public virtual PhieuDatMua PhieuDatMua { get; set; }
    }
}
