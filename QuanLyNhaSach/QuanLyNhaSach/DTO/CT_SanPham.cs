using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyNhaSach.DTO
{
    [Table("CT_SANPHAM")]
    public partial class CT_SanPham
    {
        public CT_SanPham()
        {
            DSCT_HDBanHang = new HashSet<CT_HDBanHang>();
            //DSCT_PhieuDatMua = new HashSet<CT_PhieuDatMua>();
            //DSCT_PhieuNhapKho = new HashSet<CT_PhieuNhapKho>();
            //DSCT_PhieuXuatKho = new HashSet<CT_PhieuXuatKho>();
            //DSCT_TKBanHang = new HashSet<CT_TKBanHang>();
        }

        [Key]
        [StringLength(20)]
        public string MaCTSanPham { get; set; }

        [Required]
        [StringLength(20)]
        public string MaSanPham { get; set; }

        [StringLength(20)]
        public string MaQuay { get; set; }

        public bool? TinhTrang { get; set; }

        public virtual ICollection<CT_HDBanHang> DSCT_HDBanHang { get; set; }

        //public virtual ICollection<CT_PhieuDatMua> DSCT_PhieuDatMua { get; set; }

        //public virtual ICollection<CT_PhieuNhapKho> DSCT_PhieuNhapKho { get; set; }

        //public virtual ICollection<CT_PhieuXuatKho> DSCT_PhieuXuatKho { get; set; }

        //public virtual ICollection<CT_TKBanHang> DSCT_TKBanHang { get; set; }

        public virtual QuayHang QuayHang { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
