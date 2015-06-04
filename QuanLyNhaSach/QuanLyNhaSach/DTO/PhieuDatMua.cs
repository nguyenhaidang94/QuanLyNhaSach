namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PHIEUDATMUA")]
    public partial class PhieuDatMua
    {
        public PhieuDatMua()
        {
            DSCT_PhieuDatMua = new HashSet<CT_PhieuDatMua>();
            DSPhieuNhapKho = new HashSet<PhieuNhapKho>();
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

        public bool? TinhTrang { get; set; }

        public virtual ICollection<CT_PhieuDatMua> DSCT_PhieuDatMua { get; set; }

        public virtual NhaCungCap NhaCungCap { get; set; }

        public virtual NhanVien NhanVien { get; set; }

        public virtual ICollection<PhieuNhapKho> DSPhieuNhapKho { get; set; }
    }
}
