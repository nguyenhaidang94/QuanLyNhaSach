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
using QuanLyNhaSach.SqlHelper;
using QuanLyNhaSach.BLL;

namespace QuanLyNhaSach.GUI
{
    public partial class GUIDangNhap : DevComponents.DotNetBar.Office2007Form
    {
        ///constructor
        ///chức năng: khởi tạo cho các components
        ///mô tả:
        public GUIDangNhap()
        {
            InitializeComponent();
        }

        ///sự kiện click nút đăng nhập
        ///chức năng: kiểm tra thông tin đăng nhập
        ///mô tả:
        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(_txtTaiKhoan.Text))
            {
                MessageBox.Show("Chưa nhập tài khoản");
                _txtTaiKhoan.Focus();
                return;
            }

            if (String.IsNullOrEmpty(_txtMatKhau.Text))
            {
                MessageBox.Show("Chưa nhập mật khẩu");
                _txtMatKhau.Focus();
                return;
            }

            NguoiDung lastUser = null;
            if (UserManager.User != null && !String.IsNullOrEmpty(UserManager.User.TaiKhoan)
                && !String.IsNullOrEmpty(UserManager.User.MatKhau))
                lastUser = UserManager.User;

            BLLNguoiDung bllNguoiDung = new BLLNguoiDung();

            this.Cursor = Cursors.WaitCursor;
            NguoiDung newUser = bllNguoiDung.LayThongTin(_txtTaiKhoan.Text, Utilities.Instance.MaHoa(_txtMatKhau.Text));
            if (newUser != null)
            {
                MessageBox.Show("Đăng nhập thành công");
                UserManager.User = newUser;
                this.Close();
            }
            else
            {
                MessageBox.Show("Đăng nhập thất bại");
                if (lastUser != null)
                    UserManager.User = lastUser;
            }
            this.Cursor = Cursors.Arrow;
        }

        ///sự kiện check HienThiMatKhau
        ///chức năng: hiển thị/ẩn mật khẩu
        ///mô tả:
        private void chbHienMatKhau_CheckedChanged(object sender, EventArgs e)
        {
            if (_chbHienMatKhau.Checked)
                _txtMatKhau.UseSystemPasswordChar = false;
            else
                _txtMatKhau.UseSystemPasswordChar = true;
        }

        ///sự kiện click nút Thoát
        ///chức năng: Thoát form
        ///mô tả:
        private void btnThoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn thoát không?", "Nhắc nhở", MessageBoxButtons.YesNo)
                == System.Windows.Forms.DialogResult.Yes)
                this.Close();
        }
    }
}
