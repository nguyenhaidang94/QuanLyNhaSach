using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace QuanLyNhaSach.Models
{
    [Table("DODUNGHOCTAP")]
    public partial class DoDungHocTap: SanPham
    {
        [Key]
        [StringLength(20)]
        public string MaDDHT { get; set; }

        [Required]
        [StringLength(20)]
        public string MaLoaiDDHT { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhaSanXuat { get; set; }

        public int? NamSanXuat { get; set; }

        public virtual LoaiDDHT LOAIDDHT { get; set; }

        public virtual NhaSanXuat NHASANXUAT { get; set; }
    }
}