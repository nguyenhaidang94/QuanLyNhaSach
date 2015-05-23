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
        ///chức năng: Thoát phần mềm
        ///mô tả:
        private void btnDSHoaDon_Click(object sender, EventArgs e)
        {
            new GUIQuanLyHoaDon().Show();
        }
    }
}
