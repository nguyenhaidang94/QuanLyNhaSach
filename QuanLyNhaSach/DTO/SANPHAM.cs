namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SANPHAM")]
    public partial class SANPHAM
    {
        public SANPHAM()
        {
            CT_HDBanHang = new HashSet<CT_HDBanHang>();
            CT_PHIEUDATMUA = new HashSet<CT_PHIEUDATMUA>();
            CT_PhieuNhapKho = new HashSet<CT_PhieuNhapKho>();
            CT_PhieuXuatKho = new HashSet<CT_PhieuXuatKho>();
            CT_TKBanHang = new HashSet<CT_TKBanHang>();
        }

        [Key]
        [StringLength(20)]
        public string MaSanPham { get; set; }

        [Required]
        [StringLength(20)]
        public string MaLoaiSanPham { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhaCungCap { get; set; }

        [Required]
        [StringLength(20)]
        public string MaQuay { get; set; }

        [Required]
        [StringLength(20)]
        public string MaDVT { get; set; }

        [StringLength(50)]
        public string TenSanPham { get; set; }

        [Column(TypeName = "money")]
        public decimal? DonGia { get; set; }

        public int? SoLuong { get; set; }

        public bool? TinhTrang { get; set; }

        public virtual ICollection<CT_HDBanHang> CT_HDBanHang { get; set; }

        public virtual ICollection<CT_PHIEUDATMUA> CT_PHIEUDATMUA { get; set; }

        public virtual ICollection<CT_PhieuNhapKho> CT_PhieuNhapKho { get; set; }

        public virtual ICollection<CT_PhieuXuatKho> CT_PhieuXuatKho { get; set; }

        public virtual ICollection<CT_TKBanHang> CT_TKBanHang { get; set; }

        public virtual DONVITINH DONVITINH { get; set; }

        public virtual LOAISANPHAM LOAISANPHAM { get; set; }

        public virtual NHACUNGCAP NHACUNGCAP { get; set; }

        public virtual QUAYHANG QUAYHANG { get; set; }

    }
}
