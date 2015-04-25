namespace QuanLyNhaSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LOAIDDHT")]
    public partial class LoaiDDHT
    {
        public LoaiDDHT()
        {
            DODUNGHOCTAPs = new HashSet<DoDungHocTap>();
        }

        [Key]
        [StringLength(20)]
        public string MaLoaiDDHT { get; set; }

        [StringLength(50)]
        public string TenLoaiDDHT { get; set; }

        public virtual ICollection<DoDungHocTap> DODUNGHOCTAPs { get; set; }
    }
}
