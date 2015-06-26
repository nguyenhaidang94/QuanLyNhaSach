using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DTO;
using System.Diagnostics;
using Settings = QuanLyNhaSach.Properties.Settings;
using QuanLyNhaSach.SqlHelper;
using System.Data.SqlClient;
using System.Data;
using System.Data.Entity.Validation;

namespace QuanLyNhaSach.DAL
{
    public class DALHoaDonBanHang
    {
        private static DALHoaDonBanHang _Instance = null;
        public static DALHoaDonBanHang Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new DALHoaDonBanHang();
                return DALHoaDonBanHang._Instance;
            }
        }

        ///phương thức lấy danh sách HoaDon
        ///chức năng:
        ///mô tả:
        public List<HoaDonBanHang> GetList() 
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
                {                
                    return db.DbHoaDonBanHang.ToList<HoaDonBanHang>();               
                }
            }
            catch(Exception ex)
            {
                Debug.WriteLine(ex.Message);
                return null;
            }
        }

        ///phương thức lấy thông tin 1 hóa đơn
        ///chức năng:
        ///mô tả:
        public HoaDonBanHang GetReceiptsWithDetailedProducts(String maHoaDon) 
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
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
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                return null;
            }
        }

        ///phương thức phát sinh mã hóa đơn
        ///chức năng:
        ///mô tả: thực thi storeprocedure để phát sinh mã
        public string PhatSinhMa()
        {
            try
            {
                if (DatabaseManager.DbConnection == null)
                    return null;
                else
                {
                    string spName = "[dbo].[HoaDonBanHang_PhatSinhMa]";
                    SqlParameter sqlPrMaHoaDon = new SqlParameter("@MaHoadon", SqlDbType.VarChar, 20);
                    if (DatabaseManager.DbConnection.ExecuteOutputStoredProcedure(spName, sqlPrMaHoaDon))
                        return (sqlPrMaHoaDon.Value as string);
                    else
                        return null;
                }
            }
            catch (Exception ex)
            {
                return null;
                Debug.WriteLine(ex.Message);
            }
        }

        ///phương thức lưu hóa đơn
        ///chức năng:
        ///mô tả: 
        public bool LuuHoaDon(HoaDonBanHang hoadon, List<CT_HDBanHang> dsCTHoaDon)
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
                {
                    db.DbHoaDonBanHang.Add(hoadon);
                    for (int i = 0; i < dsCTHoaDon.Count; i++)
                        hoadon.DSCT_HDBanHang.Add(dsCTHoaDon[i]);
                    db.SaveChanges();
                    return true;
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
