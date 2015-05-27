using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DTO;
using QuanLyNhaSach.DAL;

namespace QuanLyNhaSach.BLL
{
    public partial class BLLCT_SanPham
    {
        public CT_SanPham LayCTSanPham(String maCTSanPham)
        {
            DALCT_SanPham dal = new DALCT_SanPham();
            return dal.LayCTSanPham(maCTSanPham);
        }
    }
}
