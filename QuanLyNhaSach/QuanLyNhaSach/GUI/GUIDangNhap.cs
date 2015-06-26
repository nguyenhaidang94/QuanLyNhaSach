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
        ///khai báo sự kiện bật/tắt tính năng của firm Main
        ///chức năng:
        ///mô tả:
        public delegate void TurnOffFeatureEventHandler(CHUCVU sender);
        public event TurnOffFeatureEventHandler TurnOffEvent;

        public delegate void TurnOnFeatureEventHandler(CHUCVU sender);
        public event TurnOnFeatureEventHandler TurnOnEvent;

        ///constructor
        ///chức năng: khởi tạo cho các components
        ///mô tả:
        public GUIDangNhap()
        {
            InitializeComponent();
        }

        ///ném sự kiện TurnOff
        ///chức năng:
        ///mô tả: kiểm tra trước khi ném
        private void FireTurnOffEvent(CHUCVU sender)
        {
            if (TurnOffEvent != null)
                TurnOffEvent(sender);
        }

        ///ném sự kiện TurnOn
        ///chức năng:
        ///mô tả: kiểm tra trước khi ném
        private void FireTurnOnEvent(CHUCVU sender)
        {
            if (TurnOnEvent != null)
                TurnOnEvent(sender);
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

            this.Cursor = Cursors.WaitCursor;
            NguoiDung newUser = BLLNguoiDung.Instance.LayThongTin(_txtTaiKhoan.Text, Utilities.Instance.MaHoa(_txtMatKhau.Text));
            if (newUser != null)
            {
                MessageBox.Show("Đăng nhập thành công");
                UserManager.User = newUser;
                if (lastUser != null)
                {
                    CHUCVU chucvucu = BLLNguoiDung.Instance.LayLoaiNguoiDung(lastUser.TaiKhoan);
                    FireTurnOffEvent(chucvucu);
                }
                CHUCVU chucvumoi = BLLNguoiDung.Instance.LayLoaiNguoiDung(newUser.TaiKhoan);
                FireTurnOnEvent(chucvumoi);
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
