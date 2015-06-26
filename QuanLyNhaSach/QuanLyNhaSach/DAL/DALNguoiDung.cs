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
                using (var db = new QLNSContext())
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
    }
}
