using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DTO;
using QuanLyNhaSach.DAL;

namespace QuanLyNhaSach.BLL
{
    public class BLLNguoiDung
    {
        private static BLLNguoiDung _Instance = null;
        public static BLLNguoiDung Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new BLLNguoiDung();
                return BLLNguoiDung._Instance;
            }
        }

        ///lấy thông tin người dùng theo tài khoản và mật khẩu
        ///chức năng:
        ///mô tả: gọi đến hàm LayThongTin ở lớp DAL_NguoiDung
        public NguoiDung LayThongTin(string taikhoan, string matkhau)
        {
            return DALNguoiDung.Instance.LayThongTin(taikhoan, matkhau);
        }
    }
}
