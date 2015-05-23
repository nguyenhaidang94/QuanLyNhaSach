namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DODUNGHOCTAP")]
    public partial class DoDungHocTap : SanPham
    {
        [Key]
        [StringLength(20)]
        public string MaSanPham { get; set; }

        [Required]
        [StringLength(20)]
        public string MaLoaiDDHT { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhaSanXuat { get; set; }

        public int? NamSanXuat { get; set; }

        public virtual LoaiDDHT LoaiDDHT { get; set; }

        public virtual NhaSanXuat NhaSanXuat { get; set; }
    }
}
