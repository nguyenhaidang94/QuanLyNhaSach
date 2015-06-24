using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DTO;
using Settings = QuanLyNhaSach.Properties.Settings;
using System.Diagnostics;

namespace QuanLyNhaSach.DAL
{
    public partial class DALLoaiSanPham
    {
        ///sự kiện click Load Form
        ///chức năng: thêm các dữ liệu mặc định
        ///mô tả:
        public List<LoaiSanPham> GetList()
        {
            try
            {
                using (QLNSContext db = new QLNSContext(Settings.Default.EntityConnectionString))
                {               
                    return db.DbLoaiSanPham.ToList();
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                return null;
            }
        }
    }
}
