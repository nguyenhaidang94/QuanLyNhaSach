namespace QuanLyNhaSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SANPHAM")]
    public partial class SanPham
    {
        public SanPham()
        {
            CT_HDBANHANG = new HashSet<CT_HDBanHang>();
            CT_PHIEUNHAPKHO = new HashSet<CT_PhieuNhapKho>();
            CT_PHIEUXUATKHO = new HashSet<CT_PhieuXuatKho>();
            CT_TKBANHANG = new HashSet<CT_TKBanHang>();
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

        public virtual ICollection<CT_HDBanHang> CT_HDBANHANG { get; set; }

        public virtual ICollection<CT_PhieuNhapKho> CT_PHIEUNHAPKHO { get; set; }

        public virtual ICollection<CT_PhieuXuatKho> CT_PHIEUXUATKHO { get; set; }

        public virtual ICollection<CT_TKBanHang> CT_TKBANHANG { get; set; }

        public virtual DonViTinh DONVITINH { get; set; }

        public virtual LoaiSanPham LOAISANPHAM { get; set; }

        public virtual NhaCungCap NHACUNGCAP { get; set; }

        public virtual QuayHang QUAYHANG { get; set; }
    }
}
