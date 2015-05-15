namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LOAIDDHT")]
    public partial class LOAIDDHT
    {
        public LOAIDDHT()
        {
            DODUNGHOCTAPs = new HashSet<DODUNGHOCTAP>();
        }

        [Key]
        [StringLength(20)]
        public string MaLoaiDDHT { get; set; }

        [StringLength(50)]
        public string TenLoaiDDHT { get; set; }

        public virtual ICollection<DODUNGHOCTAP> DODUNGHOCTAPs { get; set; }
    }
}
