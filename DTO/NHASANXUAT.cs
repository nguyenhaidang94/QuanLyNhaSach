namespace DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NHASANXUAT")]
    public partial class NHASANXUAT
    {
        public NHASANXUAT()
        {
            DODUNGHOCTAPs = new HashSet<DODUNGHOCTAP>();
        }

        [Key]
        [StringLength(20)]
        public string MaNhaSanXuat { get; set; }

        [StringLength(50)]
        public string TenNhaSanXuat { get; set; }

        public virtual ICollection<DODUNGHOCTAP> DODUNGHOCTAPs { get; set; }
    }
}
