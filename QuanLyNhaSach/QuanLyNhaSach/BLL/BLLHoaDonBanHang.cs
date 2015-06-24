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
        public HoaDonBanHang GetReceipts(String maHoaDon) 
        {
            DALHoaDonBanHang dal = new DALHoaDonBanHang();
            return dal.GetReceiptsWithDetailedProducts(maHoaDon);
        }

        ///lập hóa đơn
        ///chức năng:
        ///mô tả:
        public bool LapHoaDon(HoaDonBanHang hoadon, List<CT_HDBanHang> dsCTHoaDon)
        {
            DALHoaDonBanHang dalHoaDon = new DALHoaDonBanHang();
            DALCT_SanPham dalCT_SanPham = new DALCT_SanPham();
            hoadon.MaHoaDon = dalHoaDon.PhatSinhMa();
            if (hoadon.MaHoaDon == null)
                return false;
            else
                return dalHoaDon.LuuHoaDon(hoadon, dsCTHoaDon);
        }
    }
}
