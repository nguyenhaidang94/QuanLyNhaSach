namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SACH")]
    public partial class Sach : SanPham
    {
        [Key]
        [StringLength(20)]
        public string MaSanPham { get; set; }

        [StringLength(20)]
        public string MaSach { get; set; }

        [Required]
        [StringLength(20)]
        public string MaDauSach { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhaXuatBan { get; set; }

        public int? NamXuatBan { get; set; }

        public virtual DauSach DauSach { get; set; }

        public virtual NhaXuatBan NhaXuatBan { get; set; }
    }
}
