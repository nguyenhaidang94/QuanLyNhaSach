﻿using System;
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
using QuanLyNhaSach.DTO;

namespace QuanLyNhaSach.DAL
{
    public class DALCT_SanPham
    {
        private static DALCT_SanPham _Instance = null;
        public static DALCT_SanPham Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new DALCT_SanPham();
                return DALCT_SanPham._Instance; 
            }
        }

        ///lấy ct sản phẩm dựa vào mã ct sản phẩm
        ///chức năng:
        ///mô tả:
        public CT_SanPham GetDetailedProducts(String maCTSanPham)
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
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
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                return null;
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

        ///tìm kiếm ct sản phẩm theo mã CTSanPham
        ///chức năng:
        ///mô tả:
        public CT_SanPham Search(string maCTSanPham)
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
                {
                
                    CT_SanPham ctSanPham = db.DbCT_SanPham.Find(maCTSanPham);
                    if (ctSanPham == null)
                        return null;
                    else
                    {
                        db.Entry(ctSanPham).Reference(e => e.SanPham).Load();
                        return ctSanPham;
                    }
                
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
