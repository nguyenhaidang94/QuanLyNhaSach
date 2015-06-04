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
        ///phương thức lấy danh sách phiếu Nhập Kho
        ///chức năng:
        ///mô tả:
        public List<PhieuNhapKho> GetList()
        {
            DALPhieuNhapKho dal = new DALPhieuNhapKho();
            return dal.GetList();
        }

        ///phương thức lấy thông tin 1 phiếu nhập kho
        ///chức năng:
        ///mô tả:
        public PhieuNhapKho GetReceipts(String maPhieuNhapKho)
        {
            DALPhieuNhapKho dal = new DALPhieuNhapKho();
            return dal.GetReceiptsWithDetailedProducts(maPhieuNhapKho);
        }
    }
}
