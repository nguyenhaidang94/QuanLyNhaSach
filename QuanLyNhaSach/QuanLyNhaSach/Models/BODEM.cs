using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace QuanLyNhaSach.Models
{
    [Table("BODEM")]
    public class BoDem
    {
        [Required]
        public int BangChamCong { get; set; }

        [Required]
        public int CaLamViec { get; set; }

        [Required]
        public int ChucVu { get; set; }

        [Required]
        public int DauSach { get; set; }

        [Required]
        public int DonViTinh { get; set; }

        [Required]
        public int HoaDonBanHang { get; set; }

        [Required]
        public int LoaiDDHT { get; set; }

        [Required]
        public int LoaiSanPham { get; set; }

        [Required]
        public int NhaCungCap { get; set; }

        [Required]
        public int NhanVien { get; set; }

        [Required]
        public int NhaSanXuat { get; set; }

        [Required]
        public int NhaXuatBan { get; set; }

        [Required]
        public int PhieuChiKhac { get; set; }

        [Required]
        public int PhieuNhapKho { get; set; }

        [Required]
        public int PhieuThuKhac { get; set; }

        [Required]
        public int PhieuXuatKho { get; set; }

        [Required]
        public int QuayHang { get; set; }

        [Required]
        public int SanPham { get; set; }

        [Required]
        public int TacGia { get; set; }

        [Required]
        public int TheLoaiSach { get; set; }

        [Required]
        public int ThueSuat { get; set; }
    }
}