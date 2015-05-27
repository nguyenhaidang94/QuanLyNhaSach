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
    public partial class DALCT_SanPham
    {
        ///lấy ct sản phẩm dựa vào mã sản phẩm
        ///chức năng:
        ///mô tả:
        public CT_SanPham LayCTSanPham(String maCTSanPham)
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
    }
}
