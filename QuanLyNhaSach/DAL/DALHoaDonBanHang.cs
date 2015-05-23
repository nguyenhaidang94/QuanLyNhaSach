using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DTO;
using System.Diagnostics;

namespace QuanLyNhaSach.DAL
{
    class DALHoaDonBanHang
    {
        public List<HoaDonBanHang> GetList() 
        { 
            using (QLNSContext db = new QLNSContext())
            {
                try
                {
                    return db.DbHoaDonBanHang.ToList<HoaDonBanHang>();
                }
                catch(ArgumentNullException ex)
                {
                    Debug.WriteLine(ex.Message);
                    return null;
                }
            }
        }


    }
}
