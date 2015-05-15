namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("THELOAISACH")]
    public partial class THELOAISACH
    {
        public THELOAISACH()
        {
            DAUSACHes = new HashSet<DAUSACH>();
        }

        [Key]
        [StringLength(20)]
        public string MaTheLoaiSach { get; set; }

        [StringLength(50)]
        public string TenTheLoaiSach { get; set; }

        public virtual ICollection<DAUSACH> DAUSACHes { get; set; }
    }
}
