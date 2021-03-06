﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DTO;
using System.Diagnostics;
using Settings = QuanLyNhaSach.Properties.Settings;

namespace QuanLyNhaSach.DAL
{
    public class DALPhieuNhapKho
    {
        private static DALPhieuNhapKho _Instance = null;
        public static DALPhieuNhapKho Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new DALPhieuNhapKho();
                return DALPhieuNhapKho._Instance;
            }
        }

        ///phương thức lấy danh sách phiếu nhập kho
        ///chức năng:
        ///mô tả:
        public List<PhieuNhapKho> GetList()
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
                {               
                        return db.DbPhieuNhapKho.ToList<PhieuNhapKho>();               
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                return null;
            }
        }

        ///phương thức lấy thông tin 1 phiếu nhập kho
        ///chức năng:
        ///mô tả:
        public PhieuNhapKho LayPhieuNhap(String maPhieuNhapKho)
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
                {                
                    PhieuNhapKho phieuNhapKho = db.DbPhieuNhapKho.Find(maPhieuNhapKho);
                    if (phieuNhapKho != null)
                    {
                        //sử dụng kỹ thuật implicit loading
                        db.Entry(phieuNhapKho).Collection(e => e.DSCT_PhieuNhapKho).Load();
                        foreach (var ctPhieuNhapKho in phieuNhapKho.DSCT_PhieuNhapKho)
                        {
                            if (!db.Entry(ctPhieuNhapKho).Reference(e => e.SanPham).IsLoaded)
                            {
                                db.Entry(ctPhieuNhapKho).Reference(e => e.SanPham).Load();
                            }
                        }
                    }
                    return phieuNhapKho;              
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
