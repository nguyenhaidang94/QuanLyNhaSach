using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DTO;
using System.Diagnostics;
using Settings = QuanLyNhaSach.Properties.Settings;

namespace QuanLyNhaSach.DAL
{
    class DALHoaDonBanHang
    {
        public List<HoaDonBanHang> GetList() 
        { 
            using (QLNSContext db = new QLNSContext(Settings.Default.EntityConnectionString))
            {
                try
                {
                    return db.DbHoaDonBanHang.ToList<HoaDonBanHang>();
                }
                catch(Exception ex)
                {
                    Debug.WriteLine(ex.Message);
                    return null;
                }
            }
        }


    }
}
