using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DAL;
using QuanLyNhaSach.DTO;

namespace QuanLyNhaSach.BLL
{
    public partial class BLLLoaiSanPham
    {
        private static BLLLoaiSanPham _Instance = null;
        public static BLLLoaiSanPham Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new BLLLoaiSanPham();
                return BLLLoaiSanPham._Instance;
            }
        }

        ///lấy danh sách loại sản phẩm
        ///chức năng: 
        ///mô tả: gọi đến hàm GetList ở lớp DALLoaiSanPham
        public List<LoaiSanPham> GetList()
        {
            return DALLoaiSanPham.Instance.GetList();
        }
    }
}
