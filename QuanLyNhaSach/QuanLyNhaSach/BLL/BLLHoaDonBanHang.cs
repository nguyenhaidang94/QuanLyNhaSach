using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DTO;
using QuanLyNhaSach.DAL;

namespace QuanLyNhaSach.BLL
{
    class BLLHoaDonBanHang
    {
        ///phương thức lấy danh sách HoaDon
        ///chức năng:
        ///mô tả:
        public List<HoaDonBanHang> GetList()
        {
            DALHoaDonBanHang dal = new DALHoaDonBanHang();
            return dal.GetList();
        }

        ///phương thức lấy thông tin 1 hóa đơn
        ///chức năng:
        ///mô tả:
        public HoaDonBanHang LayHoaDon(String maHoaDon) 
        {
            DALHoaDonBanHang dal = new DALHoaDonBanHang();
            return dal.LayHoaDonVaSanPham(maHoaDon);
        }
    }
}
