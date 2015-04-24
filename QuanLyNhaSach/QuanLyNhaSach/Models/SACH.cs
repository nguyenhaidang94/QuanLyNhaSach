using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace QuanLyNhaSach.Models
{
    [Table("SACH")]
    public partial class Sach: SanPham
    {
        [Key]
        [StringLength(20)]
        public string MaSach { get; set; }

        [Required]
        [StringLength(20)]
        public string MaDauSach { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhaXuatBan { get; set; }

        public int? NamXuatBan { get; set; }

        public virtual DauSach DAUSACH { get; set; }

        public virtual NhaXuatBan NHAXUATBAN { get; set; }
    }
}