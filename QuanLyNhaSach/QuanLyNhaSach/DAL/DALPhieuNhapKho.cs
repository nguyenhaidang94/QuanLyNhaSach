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
    public class DALPhieuNhapKho
    {
        ///phương thức lấy danh sách phiếu nhập kho
        ///chức năng:
        ///mô tả:
        public List<PhieuNhapKho> GetList()
        {
            using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
            {
                try
                {
                    return db.DbPhieuNhapKho.ToList<PhieuNhapKho>();
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex.Message);
                    return null;
                }
            }
        }

        ///phương thức lấy thông tin 1 phiếu nhập kho
        ///chức năng:
        ///mô tả:
        public PhieuNhapKho GetReceiptsWithDetailedProducts(String maPhieuNhapKho)
        {
            using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
            {
                try
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
                catch (Exception ex)
                {
                    Debug.WriteLine(ex.Message);
                    return null;
                }
            }
        }
    }
}
