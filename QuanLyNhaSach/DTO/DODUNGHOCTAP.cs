namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DODUNGHOCTAP")]
    public partial class DODUNGHOCTAP : SANPHAM
    {
        [Key]
        [StringLength(20)]
        public string MaSanPham { get; set; }

        [StringLength(20)]
        public string MaDDHT { get; set; }

        [Required]
        [StringLength(20)]
        public string MaLoaiDDHT { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhaSanXuat { get; set; }

        public int? NamSanXuat { get; set; }

        public virtual LOAIDDHT LOAIDDHT { get; set; }

        public virtual NHASANXUAT NHASANXUAT { get; set; }
    }
}
