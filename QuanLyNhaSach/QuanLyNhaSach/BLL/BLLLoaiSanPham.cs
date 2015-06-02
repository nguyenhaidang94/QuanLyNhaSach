using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DAL;
using QuanLyNhaSach.DTO;

namespace QuanLyNhaSach.BLL
{
    public partial class BLLLoaiSanPham
    {
        ///lấy danh sách loại sản phẩm
        ///chức năng: 
        ///mô tả: gọi đến hàm GetList ở lớp DALLoaiSanPham
        public List<LoaiSanPham> GetList()
        {
            DALLoaiSanPham dal = new DALLoaiSanPham();
            return dal.GetList();
        }
    }
}
