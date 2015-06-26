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
        private static BLLHoaDonBanHang _Instance = null;
        public static BLLHoaDonBanHang Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new BLLHoaDonBanHang();
                return BLLHoaDonBanHang._Instance;
            }
        }

        ///phương thức lấy danh sách HoaDon
        ///chức năng:
        ///mô tả:
        public List<HoaDonBanHang> GetList()
        {
            return DALHoaDonBanHang.Instance.GetList();
        }

        ///phương thức lấy thông tin 1 hóa đơn
        ///chức năng:
        ///mô tả:
        public HoaDonBanHang GetReceipts(String maHoaDon) 
        {
            return DALHoaDonBanHang.Instance.GetReceiptsWithDetailedProducts(maHoaDon);
        }

        ///lập hóa đơn
        ///chức năng:
        ///mô tả:
        public bool LapHoaDon(HoaDonBanHang hoadon, List<CT_HDBanHang> dsCTHoaDon)
        {
            hoadon.MaHoaDon = DALHoaDonBanHang.Instance.PhatSinhMa();
            if (hoadon.MaHoaDon == null)
                return false;
            else
                return DALHoaDonBanHang.Instance.LuuHoaDon(hoadon, dsCTHoaDon);
        }
    }
}
