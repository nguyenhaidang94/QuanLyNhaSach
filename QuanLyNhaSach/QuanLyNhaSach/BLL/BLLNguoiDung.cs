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
        ///lấy thông tin người dùng theo tài khoản và mật khẩu
        ///chức năng:
        ///mô tả: gọi đến hàm LayThongTin ở lớp DAL_NguoiDung
        public NguoiDung LayThongTin(string taikhoan, string matkhau)
        {
            DALNguoiDung dal = new DALNguoiDung();
            return dal.LayThongTin(taikhoan, matkhau);
        }
    }
}
