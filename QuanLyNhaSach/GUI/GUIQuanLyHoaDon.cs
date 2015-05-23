using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLyNhaSach.DTO;
using QuanLyNhaSach.BLL;

namespace QuanLyNhaSach.GUI
{
    public partial class GUIQuanLyHoaDon : DevComponents.DotNetBar.Office2007Form
    {
        public GUIQuanLyHoaDon()
        {
            InitializeComponent();
        }

        ///sự kiện click button Thoát
        ///chức năng: Thoát màn hình
        ///mô tả:
        private void btnThoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn thoát không?", null, MessageBoxButtons.YesNo)
                == System.Windows.Forms.DialogResult.Yes)
                this.Close();
        }

        ///sự kiện click load form
        ///chức năng: load dữ liệu cho datagridview
        ///mô tả:
        private void GUIQuanLyHoaDon_Load(object sender, EventArgs e)
        {
            BLLHoaDonBanHang bll = new BLLHoaDonBanHang();
            List<HoaDonBanHang> dsHoaDon = bll.GetList();
            if (dsHoaDon == null)
                MessageBox.Show("Không có hóa đơn nào.");
            else
            {
                for (int i = 0; i < dsHoaDon.Count; i++)
                {
                    dgwDSHoaDon.Rows.Add(dsHoaDon[i].MaHoaDon, dsHoaDon[i].NgayBan,
                        dsHoaDon[i].MaNhanVien, dsHoaDon[i].TenKhachHang, dsHoaDon[i].TongThanhTien);
                }
            }
        }
    }
}
