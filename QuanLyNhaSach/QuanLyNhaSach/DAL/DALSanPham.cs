using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.SqlHelper;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;
using Settings = QuanLyNhaSach.Properties.Settings;
using QuanLyNhaSach.DTO;

namespace QuanLyNhaSach.DAL
{
    public partial class DALSanPham
    {
        private static DALSanPham _Instance = null;
        public static DALSanPham Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new DALSanPham();
                return DALSanPham._Instance;
            }
        }

        ///tìm kiếm sản phẩm
        ///chức năng:
        ///mô tả: chạy stored procedure và lấy dữ liệu
        public DataTable Search(string maSanPham, string tenSanPham, string maLoai, double? donGiaMin, double? donGiaMax)
        {
            if (DatabaseManager.DbConnection == null)
                return null;
            else
            {
                string spName = "[dbo].[SanPham_Search]";
                SqlParameter sqlprMaSanPham = new SqlParameter("@MaSanPham", SqlDbType.VarChar, 20) { Value = maSanPham };
                SqlParameter sqlprTenSanPham = new SqlParameter("@TenSanPham", SqlDbType.NVarChar, 50) { Value = tenSanPham };
                SqlParameter sqlprMaLoaiSanPham = new SqlParameter("@MaLoaiSanPham", SqlDbType.VarChar, 20) { Value = maLoai };
                SqlParameter sqlprDonGiaMin = new SqlParameter("@DonGiaMin", SqlDbType.Money) { Value = donGiaMin };
                SqlParameter sqlprDonGiaMax = new SqlParameter("@DonGiaMax", SqlDbType.Money) { Value = donGiaMax };
                SqlParameter sqlprTrongKho = new SqlParameter("@TrongKho", SqlDbType.Bit){ Value = 1};
                return DatabaseManager.DbConnection.ExecuteStoredProcedure(spName, sqlprMaSanPham, sqlprTenSanPham,
                    sqlprMaLoaiSanPham, sqlprDonGiaMin, sqlprDonGiaMax, sqlprTrongKho);
               
            }
        }

        ///tìm kiếm sản phẩm theo mã
        ///chức năng:
        ///mô tả: truy vấn linq để lấy dữ liệu
        public SanPham Search(string maSanPham)
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
                {
                    return db.DbSanPham.Find(maSanPham);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                return null;
            }
        }

        ///lấy số lượng sản phẩm theo mã
        ///chức năng:
        ///mô tả: truy vấn linq để lấy dữ liệu
        public int? LaySoLuong(string maSanPham) 
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
                {
                    SanPham sp = db.DbSanPham.Find(maSanPham);
                    if (sp != null)
                        return sp.SoLuong;
                    else
                        return null;
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
