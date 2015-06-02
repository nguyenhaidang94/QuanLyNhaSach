using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DTO;
using Settings = QuanLyNhaSach.Properties.Settings;
using System.Diagnostics;
using System.Data;
using QuanLyNhaSach.SqlHelper;
using System.Data.SqlClient;

namespace QuanLyNhaSach.DAL
{
    public partial class DALCT_SanPham
    {
        ///lấy ct sản phẩm dựa vào mã sản phẩm
        ///chức năng:
        ///mô tả:
        public CT_SanPham GetDetailedProducts(String maCTSanPham)
        {
            using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
            {
                try
                {
                    CT_SanPham ctSanPham = db.DbCT_SanPham.Find(maCTSanPham);
                    if (ctSanPham != null)
                    {
                        db.Entry(ctSanPham).Reference(e => e.SanPham).Load();
                        return ctSanPham;
                    }
                    else
                        return null;
                }
                catch(Exception ex)
                {
                    Debug.WriteLine(ex.Message);
                    return null;
                }
            }
        }

        ///tìm kiếm chi tiết sản phẩm
        ///chức năng:
        ///mô tả: chạy stored procedure và lấy dữ liệu
        public DataTable Search(string maCtSanPham, string tenSanPham, string maLoai, double? donGiaMin, double? donGiaMax)
        {
            if (DatabaseManager.DbConnection == null)
                return null;
            else
            {
                string spName = "[dbo].[SanPham_Search]";
                SqlParameter sqlprMaSanPham = new SqlParameter("@MaSanPham", SqlDbType.VarChar, 20) { Value = maCtSanPham };
                SqlParameter sqlprTenSanPham = new SqlParameter("@TenSanPham", SqlDbType.NVarChar, 50) { Value = tenSanPham };
                SqlParameter sqlprMaLoaiSanPham = new SqlParameter("@MaLoaiSanPham", SqlDbType.VarChar, 20) { Value = maLoai };
                SqlParameter sqlprDonGiaMin = new SqlParameter("@DonGiaMin", SqlDbType.Money) { Value = donGiaMin };
                SqlParameter sqlprDonGiaMax = new SqlParameter("@DonGiaMax", SqlDbType.Money) { Value = donGiaMax };
                SqlParameter sqlprTrongKho = new SqlParameter("@TrongKho", SqlDbType.Bit) { Value = 0 };
                return DatabaseManager.DbConnection.ExecuteStoredProcedure(spName, sqlprMaSanPham, sqlprTenSanPham,
                    sqlprMaLoaiSanPham, sqlprDonGiaMin, sqlprDonGiaMax, sqlprTrongKho);
            }
        }
    }
}
