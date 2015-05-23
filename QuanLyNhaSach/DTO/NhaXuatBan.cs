namespace QuanLyNhaSach.DTO
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
            DSSach = new HashSet<Sach>();
        }

        [Key]
        [StringLength(20)]
        public string MaNhaXuatBan { get; set; }

        [StringLength(50)]
        public string TenNhaXuatBan { get; set; }

        public virtual ICollection<Sach> DSSach { get; set; }
    }
}
