namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NHASANXUAT")]
    public partial class NhaSanXuat
    {
        public NhaSanXuat()
        {
            DSDoDungHocTap = new HashSet<DoDungHocTap>();
        }

        [Key]
        [StringLength(20)]
        public string MaNhaSanXuat { get; set; }

        [StringLength(50)]
        public string TenNhaSanXuat { get; set; }

        public virtual ICollection<DoDungHocTap> DSDoDungHocTap { get; set; }
    }
}
