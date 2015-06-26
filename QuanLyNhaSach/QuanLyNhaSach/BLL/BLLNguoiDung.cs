using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DTO;
using QuanLyNhaSach.DAL;

namespace QuanLyNhaSach.BLL
{
    public enum CHUCVU 
    { 
        NONE,
        BAN_HANG,
        KE_TOAN,
        THU_KHO,
        QUAN_LY,
        GIAM_DOC,
        QUAN_TRI
    }

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

        ///lấy loại người dùng theo tài khoản người dùng
        ///chức năng:
        ///mô tả: gọi đến hàm LayThongTin ở lớp DAL_NguoiDung
        public CHUCVU LayLoaiNguoiDung(string taikhoan)
        {
            string maChucVu = DALNguoiDung.Instance.LayMaChucVu(taikhoan);
            if (maChucVu == null)
                return CHUCVU.NONE;
            else
            {
                CHUCVU chucvu = CHUCVU.NONE;
                switch (maChucVu)
                {
                    case "CV01":
                        chucvu = CHUCVU.BAN_HANG;
                        break;
                    case "CV02":
                        chucvu = CHUCVU.QUAN_LY;
                        break;
                    case "CV03":
                        chucvu = CHUCVU.KE_TOAN;
                        break;
                    case "CV04":
                        chucvu = CHUCVU.THU_KHO;
                        break;
                    case "CV05":
                        chucvu = CHUCVU.GIAM_DOC;
                        break;
                    case "CV06":
                        chucvu = CHUCVU.QUAN_TRI;
                        break;
                    default:
                        break;
                }
                return chucvu;
            }
        }
    }
}
