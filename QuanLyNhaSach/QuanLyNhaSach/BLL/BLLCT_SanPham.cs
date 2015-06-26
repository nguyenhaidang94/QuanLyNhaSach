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
        private static BLLCT_SanPham _Instance = null;
        public static BLLCT_SanPham Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new BLLCT_SanPham();
                return BLLCT_SanPham._Instance;
            }
        }

        ///lấy chi tiết sản phẩm dựa theo mã
        ///chức năng:
        ///mô tả: gọi đến hàm lấy sản phẩm ở lớp DAL_CTSanPham
        public CT_SanPham GetDetailedProducts(String maCTSanPham)
        {
            return DALCT_SanPham.Instance.GetDetailedProducts(maCTSanPham);
        }

        ///tìm kiếm chi tiết sản phẩm
        ///chức năng:
        ///mô tả: gọi đến hàm tìm kiếm của lớp DALCT_SanPham
        public DataTable Search(string maCtSanPham, string tenSanPham, string maLoai, double? donGiaMin, double? donGiaMax)
        {
            return DALCT_SanPham.Instance.Search(maCtSanPham, tenSanPham, maLoai, donGiaMin, donGiaMax);
        }

        ///tìm kiếm ct sản phẩm theo mã CTSanPham
        ///chức năng:
        ///mô tả: gọi đến hàm tìm kiếm của lớp DALCT_SanPham
        public CT_SanPham Search(string maCTSanPham)
        {
            return DALCT_SanPham.Instance.Search(maCTSanPham);
        }
    }
}
