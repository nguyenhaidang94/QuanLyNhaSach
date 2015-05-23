namespace QuanLyNhaSach.DTO
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
            DSSach = new HashSet<Sach>();
            DSTacGia = new HashSet<TacGia>();
        }

        [Key]
        [StringLength(20)]
        public string MaDauSach { get; set; }

        [Required]
        [StringLength(20)]
        public string MaTheLoai { get; set; }

        [StringLength(50)]
        public string TenDauSach { get; set; }

        public virtual TheLoaiSach TheLoaiSach { get; set; }

        public virtual ICollection<Sach> DSSach { get; set; }

        public virtual ICollection<TacGia> DSTacGia { get; set; }
    }
}
