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

namespace QuanLyNhaSach.DAL
{
    public class DALPhieuXuatKho
    {
        private static DALPhieuXuatKho _Instance = null;
        public static DALPhieuXuatKho Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new DALPhieuXuatKho();
                return DALPhieuXuatKho._Instance;
            }
        }

        ///lấy danh sách phiếu xuất kho
        ///chức năng:
        ///mô tả:
        public List<PhieuXuatKho> GetList()
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
                {
                    return db.DbPhieuXuatKho.ToList();
                }
            }
            catch(Exception ex)
            {
                Debug.WriteLine(ex.Message);
                return null;
            }
        }

        ///lấy phiếu xuất kho theo mã
        ///chức năng:
        ///mô tả:
        public PhieuXuatKho LayPhieuXuatKho(string maPhieu)
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
                {
                    PhieuXuatKho phieuxuat = db.DbPhieuXuatKho.Find(maPhieu);
                    if (phieuxuat != null)
                    {
                        db.Entry(phieuxuat).Reference(e => e.NhanVien).Load();
                        db.Entry(phieuxuat).Collection(e => e.DSCT_PhieuXuatKho).Load();
                        foreach (var ctphieuxuat in phieuxuat.DSCT_PhieuXuatKho)
                        {
                            //if (!db.Entry(ctphieuxuat).Reference(e => e.QuayHang).IsLoaded)
                            //    db.Entry(ctphieuxuat).Reference(e => e.QuayHang).Load();
                            if (!db.Entry(ctphieuxuat).Reference(e => e.SanPham).IsLoaded)
                                db.Entry(ctphieuxuat).Reference(e => e.SanPham).Load();
                        }
                    }
                    return phieuxuat;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                return null;
            }
        }

        ///lưu phiếu xuất kho
        ///chức năng:
        ///mô tả:
        public bool LuuPhieuXuatKho(PhieuXuatKho phieuXuatKho, List<CT_PhieuXuatKho> dsCTPhieuXuatKho)
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
                {
                    db.DbPhieuXuatKho.Add(phieuXuatKho);
                    for (int i = 0; i < dsCTPhieuXuatKho.Count; i++)
                        phieuXuatKho.DSCT_PhieuXuatKho.Add(dsCTPhieuXuatKho[i]);
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

        ///phát sinh mã phiếu xuất kho
        ///chức năng:
        ///mô tả:
        public string PhatSinhMa()
        {
            try
            {
                if (DatabaseManager.DbConnection == null)
                    return null;
                else
                {
                    string spName = "[dbo].[PhieuXuatKho_PhatSinhMa]";
                    SqlParameter sqlPrMaPhieuXuat = new SqlParameter("@MaPhieuXuat", SqlDbType.VarChar, 20);
                    if (DatabaseManager.DbConnection.ExecuteOutputStoredProcedure(spName, sqlPrMaPhieuXuat))
                        return (sqlPrMaPhieuXuat.Value as string);
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
    }
}
