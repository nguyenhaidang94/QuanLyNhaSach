namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DAUSACH")]
    public partial class DAUSACH
    {
        public DAUSACH()
        {
            SACHes = new HashSet<SACH>();
            TACGIAs = new HashSet<TACGIA>();
        }

        [Key]
        [StringLength(20)]
        public string MaDauSach { get; set; }

        [Required]
        [StringLength(20)]
        public string MaTheLoai { get; set; }

        [StringLength(50)]
        public string TenDauSach { get; set; }

        public virtual THELOAISACH THELOAISACH { get; set; }

        public virtual ICollection<SACH> SACHes { get; set; }

        public virtual ICollection<TACGIA> TACGIAs { get; set; }
    }
}
