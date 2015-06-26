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
    public class DALNguoiDung
    {
        private static DALNguoiDung _Instance = null;
        public static DALNguoiDung Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new DALNguoiDung();
                return DALNguoiDung._Instance;
            }
        }

        ///lấy thông tin người dùng theo tài khoản và mật khẩu
        ///chức năng:
        ///mô tả:
        public NguoiDung LayThongTin(string taikhoan, string matkhau)
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
                {
                    return db.DbNguoiDung
                        .Where(e => (e.TaiKhoan.Equals(taikhoan) && e.MatKhau.Equals(matkhau)))
                        .First();
                }
            }
            catch (Exception ex)
            {
                return null;
                Debug.WriteLine(ex.Message);
            }
        }

        ///lấy mã chức vụ theo tài khoản người dùng
        ///chức năng:
        ///mô tả:
        public string LayMaChucVu(string taikhoan)
        {
            try
            {
                using (var db = new QLNSContext(Settings.Default.EntityConnectionString))
                {
                    NguoiDung nguoidung = db.DbNguoiDung.Find(taikhoan);
                    if (nguoidung == null)
                        return null;
                    else
                    {
                        db.Entry(nguoidung).Reference(e => e.NhanVien).Load();
                        if (nguoidung.NhanVien != null)
                            return nguoidung.NhanVien.MaChucVu;
                        else
                            return null;
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
