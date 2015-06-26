using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DAL;
using QuanLyNhaSach.DTO;

namespace QuanLyNhaSach.BLL
{
    public class BLLPhieuXuatKho
    {
        private static BLLPhieuXuatKho _Instance = null;
        public static BLLPhieuXuatKho Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new BLLPhieuXuatKho();
                return BLLPhieuXuatKho._Instance;
            }
        }

        ///phương thức lấy danh sách phiếu xuất Kho
        ///chức năng:
        ///mô tả:
        public List<PhieuXuatKho> GetList()
        {
            return DALPhieuXuatKho.Instance.GetList();
        }

        ///phương thức lấy phiếu xuất Kho theo mã phiếu
        ///chức năng:
        ///mô tả:
        public PhieuXuatKho LayPhieuXuatKho(string maPhieu)
        {
            return DALPhieuXuatKho.Instance.LayPhieuXuatKho(maPhieu);
        }

        ///phương thức lập phiếu xuất Kho
        ///chức năng:
        ///mô tả:
        public bool LapPhieuXuatKho(PhieuXuatKho phieuXuat, List<CT_PhieuXuatKho> dsCTPhieuXuatKho) 
        {
            phieuXuat.MaPhieuXuat = DALPhieuXuatKho.Instance.PhatSinhMa();
            if (phieuXuat.MaPhieuXuat == null)
                return false;
            else
                return DALPhieuXuatKho.Instance.LuuPhieuXuatKho(phieuXuat, dsCTPhieuXuatKho);
        }
    }
}
