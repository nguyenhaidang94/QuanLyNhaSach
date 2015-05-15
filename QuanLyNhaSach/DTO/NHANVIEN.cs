namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NHANVIEN")]
    public partial class NhanVien
    {
        public NhanVien()
        {
            BANGCHAMCONGs = new HashSet<BangChamCong>();
            DSPhieuChi = new HashSet<PhieuChi>();
            DSPhieuNhapKho = new HashSet<PhieuNhapKho>();
            DSPhieuThu = new HashSet<PhieuThu>();
            DSPhieuXuatKho = new HashSet<PhieuXuatKho>();
            DSPhieuDatMua = new HashSet<PhieuDatMua>();
            DSBangCC = new HashSet<BangChamCong>();
        }

        [Key]
        [StringLength(20)]
        public string MaNhanVien { get; set; }

        [Required]
        [StringLength(20)]
        public string MaChucVu { get; set; }

        [StringLength(50)]
        public string TenNhanVien { get; set; }

        [StringLength(100)]
        public string DiaChi { get; set; }

        [StringLength(20)]
        public string DienThoai { get; set; }

        [Column(TypeName = "money")]
        public decimal? LuongNhanVien { get; set; }

        public virtual ICollection<BangChamCong> BANGCHAMCONGs { get; set; }

        public virtual ChucVu CHUCVU { get; set; }

        public virtual ICollection<PhieuChi> DSPhieuChi { get; set; }

        public virtual ICollection<PhieuNhapKho> DSPhieuNhapKho { get; set; }

        public virtual ICollection<PhieuThu> DSPhieuThu { get; set; }

        public virtual ICollection<PhieuXuatKho> DSPhieuXuatKho { get; set; }

        public virtual ICollection<PhieuDatMua> DSPhieuDatMua { get; set; }

        public virtual ICollection<BangChamCong> DSBangCC { get; set; }
    }
}
