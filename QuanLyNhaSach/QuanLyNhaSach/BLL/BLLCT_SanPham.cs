using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DTO;
using QuanLyNhaSach.DAL;
using System.Data;

namespace QuanLyNhaSach.BLL
{
    public partial class BLLCT_SanPham
    {
        ///lấy chi tiết sản phẩm dựa theo mã
        ///chức năng:
        ///mô tả: gọi đến hàm lấy sản phẩm ở lớp DAL_CTSanPham
        public CT_SanPham GetDetailedProducts(String maCTSanPham)
        {
            DALCT_SanPham dal = new DALCT_SanPham();
            return dal.GetDetailedProducts(maCTSanPham);
        }

        ///tìm kiếm chi tiết sản phẩm
        ///chức năng:
        ///mô tả: gọi đến hàm tìm kiếm của lớp DALCT_SanPham
        public DataTable Search(string maCtSanPham, string tenSanPham, string maLoai, double? donGiaMin, double? donGiaMax)
        {
            DALCT_SanPham dal = new DALCT_SanPham();
            return dal.Search(maCtSanPham, tenSanPham, maLoai, donGiaMin, donGiaMax);
        }
    }
}
