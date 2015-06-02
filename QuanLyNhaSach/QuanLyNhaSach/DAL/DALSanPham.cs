using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.SqlHelper;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;

namespace QuanLyNhaSach.DAL
{
    public partial class DALSanPham
    {
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
    }
}
