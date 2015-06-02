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
    public class DALHoaDonBanHang
    {
        ///phương thức lấy danh sách HoaDon
        ///chức năng:
        ///mô tả:
        public List<HoaDonBanHang> GetList() 
        { 
            using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
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

        ///phương thức lấy thông tin 1 hóa đơn
        ///chức năng:
        ///mô tả:
        public HoaDonBanHang GetReceiptsWithDetailedProducts(String maHoaDon) 
        {
            using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
            {
                try
                {
                    HoaDonBanHang hoadon = db.DbHoaDonBanHang.Find(maHoaDon);
                    if (hoadon != null)
                    {
                        //sử dụng kỹ thuật implicit loading
                        db.Entry(hoadon).Collection(e => e.DSCT_HDBanHang).Load();
                        foreach (var ctHoaDon in hoadon.DSCT_HDBanHang)
                        {
                            if (!db.Entry(ctHoaDon).Reference(e => e.CT_SanPham).IsLoaded)
                            {
                                db.Entry(ctHoaDon).Reference(e => e.CT_SanPham).Load();
                                if (!db.Entry(ctHoaDon.CT_SanPham).Reference(e => e.SanPham).IsLoaded)
                                    db.Entry(ctHoaDon.CT_SanPham).Reference(e => e.SanPham).Load();
                            }
                        }
                    }
                    return hoadon;
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex.Message);
                    return null;
                }
            }
        }
    }
}
