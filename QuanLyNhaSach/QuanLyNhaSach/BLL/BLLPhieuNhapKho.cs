using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DTO;
using QuanLyNhaSach.DAL;


namespace QuanLyNhaSach.BLL
{
    class BLLPhieuNhapKho
    {
        private static BLLPhieuNhapKho _Instance = null;
        public static BLLPhieuNhapKho Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new BLLPhieuNhapKho();
                return BLLPhieuNhapKho._Instance;
            }
        }

        ///phương thức lấy danh sách phiếu Nhập Kho
        ///chức năng:
        ///mô tả:
        public List<PhieuNhapKho> GetList()
        {
            return DALPhieuNhapKho.Instance.GetList();
        }

    }
}
