namespace QuanLyNhaSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NHAXUATBAN")]
    public partial class NhaXuatBan
    {
        public NhaXuatBan()
        {
            SACHes = new HashSet<Sach>();
        }

        [Key]
        [StringLength(20)]
        public string MaNhaXuatBan { get; set; }

        [StringLength(50)]
        public string TenNhaXuatBan { get; set; }

        public virtual ICollection<Sach> SACHes { get; set; }
    }
}
