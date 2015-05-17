namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("THUESUAT")]
    public partial class ThueSuat
    {
        public ThueSuat()
        {
            DSCT_HDBanHang = new HashSet<CT_HDBanHang>();
        }

        [Key]
        [StringLength(20)]
        public string MaSoThue { get; set; }

        [StringLength(50)]
        public string TenThue { get; set; }

        public double? GiaTri { get; set; }

        public virtual ICollection<CT_HDBanHang> DSCT_HDBanHang { get; set; }
    }
}
