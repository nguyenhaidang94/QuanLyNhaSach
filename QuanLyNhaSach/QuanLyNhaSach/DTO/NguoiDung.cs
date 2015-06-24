using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyNhaSach.DTO
{
    [Table("NGUOIDUNG")]
    public partial class NguoiDung
    {
        [Key]
        [StringLength(20)]
        public string TaiKhoan { get; set; }

        [Required]
        [StringLength(32)]
        public string MatKhau { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhanVien { get; set; }

        public virtual NhanVien NhanVien { get; set; }
    }
}
