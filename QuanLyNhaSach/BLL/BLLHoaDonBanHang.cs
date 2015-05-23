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
        public List<HoaDonBanHang> GetList()
        {
            DALHoaDonBanHang dal = new DALHoaDonBanHang();
            return dal.GetList();
        }
    }
}
