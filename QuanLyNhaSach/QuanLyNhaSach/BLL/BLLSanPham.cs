using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DAL;
using QuanLyNhaSach.DTO;

namespace QuanLyNhaSach.BLL
{
    public partial class BLLSanPham
    {
        private static BLLSanPham _Instance = null;
        public static BLLSanPham Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new BLLSanPham();
                return BLLSanPham._Instance;
            }
        }

        ///tìm kiếm sản phẩm
        ///chức năng:
        ///mô tả: gọi đến hàm tìm kiếm của lớp DALSanPham
        public DataTable Search(string maSanPham, string tenSanPham, string maLoai, double? donGiaMin, double? donGiaMax)
        {
            return DALSanPham.Instance.Search(maSanPham, tenSanPham, maLoai, donGiaMin, donGiaMax);
        }

        ///tìm kiếm sản phẩm theo mã
        ///chức năng:
        ///mô tả: gọi đến hàm tìm kiếm của lớp DALSanPham
        public SanPham Search(string maSanPham)
        {
            return DALSanPham.Instance.Search(maSanPham);
        }

        ///lấy số lượng sản phẩm theo mã
        ///chức năng:
        ///mô tả: gọi đến hàm lấy số lượng của lớp DALSanPham
        public int? LaySoLuong(string maSanPham)
        {
            return DALSanPham.Instance.LaySoLuong(maSanPham);
        }
    }
}
