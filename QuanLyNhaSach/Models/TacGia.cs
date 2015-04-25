namespace QuanLyNhaSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TACGIA")]
    public partial class TacGia
    {
        public TacGia()
        {
            DAUSACHes = new HashSet<DauSach>();
        }

        [Key]
        [StringLength(20)]
        public string MaTacGia { get; set; }

        [StringLength(50)]
        public string TenTacGia { get; set; }

        public virtual ICollection<DauSach> DAUSACHes { get; set; }
    }
}
