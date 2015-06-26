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
        }

        [Key]
        [StringLength(20)]
        public string MaCTSanPham { get; set; }

        [Required]
        [StringLength(20)]
        public string MaSanPham { get; set; }

        public bool? TinhTrang { get; set; }

        public virtual ICollection<CT_HDBanHang> DSCT_HDBanHang { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
