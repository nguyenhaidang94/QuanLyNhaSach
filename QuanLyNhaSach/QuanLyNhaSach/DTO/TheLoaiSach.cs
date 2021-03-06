namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("THELOAISACH")]
    public partial class TheLoaiSach
    {
        public TheLoaiSach()
        {
            DSDauSach = new HashSet<DauSach>();
        }

        [Key]
        [StringLength(20)]
        public string MaTheLoaiSach { get; set; }

        [StringLength(50)]
        public string TenTheLoaiSach { get; set; }

        public virtual ICollection<DauSach> DSDauSach { get; set; }
    }
}
