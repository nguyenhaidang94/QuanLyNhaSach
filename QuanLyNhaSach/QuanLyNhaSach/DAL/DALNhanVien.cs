using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;
using Settings = QuanLyNhaSach.Properties.Settings;
using QuanLyNhaSach.DTO;

namespace QuanLyNhaSach.DAL
{
    public class DALNhanVien
    {
        ///kiểm tra tồn tại mã nhân viên
        ///chức năng:
        ///mô tả:
        public bool KiemTraTonTai(string maNhanVien)
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
                {
                    if (db.DbNhanVien.Find(maNhanVien) != null)
                        return true;
                    else
                        return false;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                return false;
            }
        }
    }
}
