using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyNhaSach.GUI
{
    public enum FORMSTATE
    {
        LIST_STATE,
        ADD_SATE,
        MODIFIER_STATE,
        DETAILED_STATE,
    }

    public partial class GUIQuanLyNhaSach : DevComponents.DotNetBar.Office2007RibbonForm
    {
        public GUIQuanLyNhaSach()
        {
            InitializeComponent();
        }

        ///sự kiện click lable Thoát
        ///chức năng: Thoát phần mềm
        ///mô tả:
        private void lblThoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn thoát không?", null, MessageBoxButtons.YesNo)
                == System.Windows.Forms.DialogResult.Yes)
                this.Close();
        }

        ///sự kiện click button Danh Sách Hóa Đơn
        ///chức năng: Hiển thị màn hình Ql ds Hóa đơn
        ///mô tả:
        private void btnDSHoaDon_Click(object sender, EventArgs e)
        {
            new GUIQuanLyHoaDon(FORMSTATE.LIST_STATE).Show();
        }

        ///sự kiện click button Lập Hóa Đơn
        ///chức năng: Hiển thị màn hình Lập Hóa đơn
        ///mô tả:
        private void btnLapHoaDon_Click(object sender, EventArgs e)
        {
            new GUIQuanLyHoaDon(FORMSTATE.ADD_SATE).Show();
        }

        ///sự kiện click button Sản Phẩm
        ///chức năng: Hiển thị màn hình Tìm kiếm sản phẩm
        ///mô tả:
        private void btnSanPham_Click(object sender, EventArgs e)
        {
            new GUITimKiemSanPham().Show();
        }
    }
}
