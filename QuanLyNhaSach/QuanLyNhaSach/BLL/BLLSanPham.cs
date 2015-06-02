using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DAL;

namespace QuanLyNhaSach.BLL
{
    public partial class BLLSanPham
    {
        ///tìm kiếm sản phẩm
        ///chức năng:
        ///mô tả: gọi đến hàm tìm kiếm của lớp DALSanPham
        public DataTable Search(string maSanPham, string tenSanPham, string maLoai, double? donGiaMin, double? donGiaMax)
        {
            DALSanPham dal = new DALSanPham();
            return dal.Search(maSanPham, tenSanPham, maLoai, donGiaMin, donGiaMax);
        }
    }
}
