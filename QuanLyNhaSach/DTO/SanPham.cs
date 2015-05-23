namespace QuanLyNhaSach.DTO
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
            //DSCT_HDBanHang = new HashSet<CT_HDBanHang>();
            DSCT_PhieuDatMua = new HashSet<CT_PhieuDatMua>();
            DSCT_PhieuNhapKho = new HashSet<CT_PhieuNhapKho>();
            DSCT_PhieuXuatKho = new HashSet<CT_PhieuXuatKho>();
            DSCT_TKBanHang = new HashSet<CT_TKBanHang>();
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

        //[Required]
        //[StringLength(20)]
        //public string MaQuay { get; set; }

        [Required]
        [StringLength(20)]
        public string MaDVT { get; set; }

        [StringLength(50)]
        public string TenSanPham { get; set; }

        [Column(TypeName = "money")]
        public decimal? DonGia { get; set; }

        public int? SoLuong { get; set; }

        //public bool? TinhTrang { get; set; }

        //public virtual ICollection<CT_HDBanHang> DSCT_HDBanHang { get; set; }

        public virtual ICollection<CT_PhieuDatMua> DSCT_PhieuDatMua { get; set; }

        public virtual ICollection<CT_PhieuNhapKho> DSCT_PhieuNhapKho { get; set; }

        public virtual ICollection<CT_PhieuXuatKho> DSCT_PhieuXuatKho { get; set; }

        public virtual ICollection<CT_TKBanHang> DSCT_TKBanHang { get; set; }

        public virtual ICollection<CT_SanPham> DSCT_SanPham { get; set; }

        public virtual DonViTinh DonViTinh { get; set; }

        public virtual LoaiSanPham LoaiSanPham { get; set; }

        public virtual NhaCungCap NhaCungCap { get; set; }

        //public virtual QuayHang QuayHang { get; set; }

    }
}
