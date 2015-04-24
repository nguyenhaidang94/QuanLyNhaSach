namespace QuanLyNhaSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DAUSACH")]
    public partial class DauSach
    {
        public DauSach()
        {
            TACGIAs = new HashSet<TacGia>();
            SACHes = new HashSet<Sach>();
        }

        [Key]
        [StringLength(20)]
        public string MaDauSach { get; set; }

        [Required]
        [StringLength(20)]
        public string MaTheLoai { get; set; }

        [StringLength(50)]
        public string TenDauSach { get; set; }

        public virtual TheLoaiSach THELOAISACH { get; set; }

        public virtual ICollection<TacGia> TACGIAs { get; set; }

        public virtual ICollection<Sach> SACHes { get; set; }
    }
}
