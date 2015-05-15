namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NHAXUATBAN")]
    public partial class NHAXUATBAN
    {
        public NHAXUATBAN()
        {
            SACHes = new HashSet<SACH>();
        }

        [Key]
        [StringLength(20)]
        public string MaNhaXuatBan { get; set; }

        [StringLength(50)]
        public string TenNhaXuatBan { get; set; }

        public virtual ICollection<SACH> SACHes { get; set; }
    }
}
