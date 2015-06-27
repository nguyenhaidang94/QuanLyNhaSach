using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLyNhaSach.BLL;
using System.Diagnostics;
using QuanLyNhaSach.SqlHelper;

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
        ///constructor 
        ///chức năng: khởi tạo cho các components
        ///mô tả:
        public GUIQuanLyNhaSach()
        {
            InitializeComponent();
        }

        #region BAT/TAT CHUC NANG

        ///tắt các hết các chức năng chính
        ///chức năng: ẩn một số control
        ///mô tả:
        private void TatHetChucNang()
        {
            rbarQuanTri.Enabled = false;
            lblPhanQuyen.Enabled = false;
            lblSaoLuuDL.Enabled = false;

            ribpnlBanHang.Enabled = false;

            ribpnlDatMua.Enabled = false;
            ribpnlNhapXuatKho.Enabled = false;

            ribpnlThuChi.Enabled = false;

            ribpnlNhanVien.Enabled = false;

            ribpnlBaoCao.Enabled = false;

            lblNguoiDangNhap.Text = "";
        }

        private void TatHetNghiepVu()
        {
            pnlNvBanHang.Enabled = false;
            pnlNghiepVuNhapXuatKho.Enabled = false;
            pnlNghiepVuNhanVien.Enabled = false;
            pnlNghiepVuBaoCao.Enabled = false;
        }

        ///show chức năng cho nv bán hàng
        ///chức năng:
        ///mô tả:
        private void ShowChucNangBanHang()
        {
            ribpnlBanHang.Enabled = true;
        }
        ///tắt chức năng cho nv bán hàng
        ///chức năng:
        ///mô tả:
        private void TatChucNangBanHang()
        {
            ribpnlBanHang.Enabled = false;
        }

        ///show chức năng cho nv kế toán
        ///chức năng:
        ///mô tả:
        private void ShowChucNangKeToan()
        {
            ribpnlThuChi.Enabled = true;
        }
        ///tắt chức năng cho nv kế toán
        ///chức năng:
        ///mô tả:
        private void TatChucNangKeToan()
        {
            ribpnlThuChi.Enabled = false;
        }

        ///show chức năng cho nv thủ kho
        ///chức năng:
        ///mô tả:
        private void ShowChucNangThuKho()
        {
            ribpnlDatMua.Enabled = true;
            ribpnlNhapXuatKho.Enabled = true;
        }
        ///tắt chức năng cho nv thủ kho
        ///chức năng:
        ///mô tả:
        private void TatChucNangThuKho()
        {
            ribpnlDatMua.Enabled = false;
            ribpnlNhapXuatKho.Enabled = false;
        }

        ///show chức năng cho nv quản lý
        ///chức năng:
        ///mô tả:
        private void ShowChucNangQuanLy()
        {
            ribpnlNhanVien.Enabled = true;
        }
        ///tắt chức năng cho nv quản lý
        ///chức năng:
        ///mô tả:
        private void TatChucNangQuanLy()
        {
            ribpnlNhanVien.Enabled = false;
        }

        ///show chức năng cho giám đốc
        ///chức năng:
        ///mô tả:
        private void ShowChucNangGiamDoc()
        {
            ribpnlBaoCao.Enabled = true;
        }
        ///tắt chức năng cho giám đốc
        ///chức năng:
        ///mô tả:
        private void TatChucNangGiamDoc()
        {
            ribpnlBaoCao.Enabled = false;
        }

        ///show chức năng cho quản trị
        ///chức năng:
        ///mô tả:
        private void ShowChucNangQuanTri()
        {
            rbarQuanTri.Enabled = true;

            lblSaoLuuDL.Enabled = true;
            lblPhanQuyen.Enabled = true;
        }
        ///tắt chức năng cho nv quản trị
        ///chức năng:
        ///mô tả:
        private void TatChucNangQuanTri()
        {
            rbarQuanTri.Enabled = false;

            lblSaoLuuDL.Enabled = false;
            lblPhanQuyen.Enabled = false;
        }

        #endregion

        ///tắt các chức năng của người dùng cũ
        ///chức năng:
        ///mô tả:
        private void TatChucNangCu(CHUCVU chucvu)
        {
            switch (chucvu)
            { 
                case CHUCVU.BAN_HANG:
                    TatChucNangBanHang();
                    pnlNvBanHang.Enabled = false;
                    break;
                case CHUCVU.KE_TOAN:
                    TatChucNangKeToan();
                    break;
                case CHUCVU.THU_KHO:
                    TatChucNangThuKho();
                    pnlNghiepVuNhapXuatKho.Enabled = false;
                    break;
                case CHUCVU.QUAN_LY:
                    TatChucNangQuanLy();
                    pnlNghiepVuNhanVien.Enabled = false;
                    break;
                case CHUCVU.GIAM_DOC:
                    TatChucNangGiamDoc();
                    pnlNghiepVuBaoCao.Enabled = false;
                    break;
                case CHUCVU.QUAN_TRI:
                    TatChucNangQuanTri();
                    break;
                default:
                    TatHetChucNang();
                    TatHetNghiepVu();
                    break;
            }
        }

        ///bật các chức năng cho người dùng mới
        ///chức năng:
        ///mô tả:
        private void BatChucNangMoi(CHUCVU chucvu)
        {
            if (chucvu != CHUCVU.NONE)
            {
                if (!rbtnDangXuat.Enabled)
                    rbtnDangXuat.Enabled = true;
                if (!lblDangXuat.Enabled)
                    lblDangXuat.Enabled = true;
                string tennguoidung = BLLNguoiDung.Instance.LayTenNguoiDung(UserManager.User.TaiKhoan);
                if (tennguoidung != null)
                    lblNguoiDangNhap.Text = "Tên Người Dùng: " + tennguoidung;
            }
            else
            {
                if (rbtnDangXuat.Enabled)
                    rbtnDangXuat.Enabled = false;
                if (lblDangXuat.Enabled)
                    lblDangXuat.Enabled = false;
                lblNguoiDangNhap.Text = "";
            }
            switch (chucvu)
            {
                case CHUCVU.BAN_HANG:
                    ShowChucNangBanHang();
                    pnlNvBanHang.Enabled = true;
                    break;
                case CHUCVU.KE_TOAN:
                    ShowChucNangKeToan();
                    break;
                case CHUCVU.THU_KHO:
                    ShowChucNangThuKho();
                    pnlNghiepVuNhapXuatKho.Enabled = true;
                    break;
                case CHUCVU.QUAN_LY:
                    ShowChucNangQuanLy();
                    pnlNghiepVuNhanVien.Enabled = true;
                    break;
                case CHUCVU.GIAM_DOC:
                    ShowChucNangGiamDoc();
                    pnlNghiepVuBaoCao.Enabled = true;
                    break;
                case CHUCVU.QUAN_TRI:
                    ShowChucNangQuanTri();
                    break;
                default:
                    break;
            }
        }

        private void ShowNghiepVuBanHang()
        {
            pnlNvBanHang.Visible = true;

            pnlNghiepVuNhapXuatKho.Visible = false;
            pnlNghiepVuNhanVien.Visible = false;
            pnlNghiepVuBaoCao.Visible = false;
            metropnlNghiepVu.Visible = false;
        }

        private void ShowNghiepVuNhapXuatKho()
        {
            pnlNghiepVuNhapXuatKho.Visible = true;

            pnlNvBanHang.Visible = false;
            pnlNghiepVuNhanVien.Visible = false;
            pnlNghiepVuBaoCao.Visible = false;
            metropnlNghiepVu.Visible = false;
        }

        private void ShowNghiepVuNhanVien()
        {
            pnlNghiepVuNhanVien.Visible = true;

            pnlNvBanHang.Visible = false;
            pnlNghiepVuNhapXuatKho.Visible = false;
            pnlNghiepVuBaoCao.Visible = false;
            metropnlNghiepVu.Visible = false;
        }

        private void ShowNghiepVuBaoCao()
        {
            pnlNghiepVuBaoCao.Visible = true;

            pnlNghiepVuNhanVien.Visible = false;
            pnlNvBanHang.Visible = false;
            pnlNghiepVuNhapXuatKho.Visible = false;
            metropnlNghiepVu.Visible = false;
        }

        private void ShowNghiepVu()
        {
            metropnlNghiepVu.Visible = true;

            pnlNghiepVuNhanVien.Visible = false;
            pnlNvBanHang.Visible = false;
            pnlNghiepVuNhapXuatKho.Visible = false;
            pnlNghiepVuBaoCao.Visible = false;
            
        }

        ///xử lý sự kiện TurnOff
        ///chức năng:
        ///mô tả:
        private void TurnOffEventHandler(CHUCVU sender)
        {
            try
            {
                TatChucNangCu(sender);
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                TatHetChucNang();
            }
        }

        ///xử lý sự kiện TurnOn
        ///chức năng:
        ///mô tả:
        private void TurnOnEventHandler(CHUCVU sender)
        {
            try
            {
                BatChucNangMoi(sender);
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
        }

        ///sự kiện click lable Thoát
        ///chức năng: Thoát phần mềm
        ///mô tả:
        private void lblThoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn thoát không?", "Nhắc nhở", MessageBoxButtons.YesNo)
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
            new GUITimKiemSanPham(TIMKIEM_STATE.NONE).Show();
        }

        ///sự kiện click button Ds phiếu nhập kho
        ///chức năng: Hiển thị màn hình Ql danh sách phiếu nhập kho
        ///mô tả:
        private void btnDSPhieuNhapKho_Click(object sender, EventArgs e)
        {
            new GUIQuanLyNhapKho(FORMSTATE.LIST_STATE).Show();
        }

        ///sự kiện click button Lập phiếu nhập kho
        ///chức năng: Hiển thị màn hình Lập phiếu nhập kho
        ///mô tả:
        private void btnLapPhieuNhapKho_Click(object sender, EventArgs e)
        {
            new GUIQuanLyNhapKho(FORMSTATE.ADD_SATE).Show();
        }

        ///sự kiện click button Ds phiếu đặt mua
        ///chức năng: Hiển thị màn hình Ql danh sách phiếu đặt mua
        ///mô tả:
        private void btnDSPhieuDatMua_Click(object sender, EventArgs e)
        {
            new GUIQuanLyDatMua(FORMSTATE.LIST_STATE).Show();
        }

        ///sự kiện click button Lập phiếu đặt mua
        ///chức năng: Hiển thị màn hình Lập phiếu đặt mua
        ///mô tả:
        private void btnLapPhieuDatMua_Click(object sender, EventArgs e)
        {
            new GUIQuanLyDatMua(FORMSTATE.ADD_SATE).Show();
        }

        ///sự kiện click button Đăng Nhập
        ///chức năng: Hiển thị màn hình Đăng Nhập
        ///mô tả:
        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            GUIDangNhap formDangNhap = new GUIDangNhap();
            formDangNhap.TurnOffEvent += new GUIDangNhap.TurnOffFeatureEventHandler(TurnOffEventHandler);
            formDangNhap.TurnOnEvent += new GUIDangNhap.TurnOnFeatureEventHandler(TurnOnEventHandler);
            formDangNhap.ShowDialog();
        }

        ///sự kiện click button Ds phiếu xuất kho
        ///chức năng: Hiển thị màn hình Ql danh sách phiếu xuất kho
        ///mô tả:
        private void btnDSPhieuXuatKho_Click(object sender, EventArgs e)
        {
            new GUIQuanLyXuatKho(FORMSTATE.LIST_STATE).Show();
        }

        ///sự kiện click nút Lập phiếu xuất kho
        ///chức năng: Hiển thị màn hình Lập phiếu xuất kho
        ///mô tả:
        private void btnLapPhieuXuatKho_Click(object sender, EventArgs e)
        {
            new GUIQuanLyXuatKho(FORMSTATE.ADD_SATE).Show();
        }

        ///sự kiện click nút Sao lưu, phục hồi dữ liệu
        ///chức năng: Hiển thị màn hình Sao lưu, phục hồi dữ liệu
        ///mô tả:
        private void btnSaoLuuPhucHoi_Click(object sender, EventArgs e)
        {
            new GUISaoLuuPhucHoi().Show();
        }

        ///sự kiện load form
        ///chức năng: tắt các chức năng chính
        ///mô tả:
        private void GUIQuanLyNhaSach_Load(object sender, EventArgs e)
        {
            TatHetChucNang();
            TatHetNghiepVu();
            rbtnDangXuat.Enabled = false;
            lblDangXuat.Enabled = false;
            lblNgayHienTai.Text = "Hôm nay là: " + DateTime.Today.ToShortDateString() + "              ";
            lblNguoiDangNhap.Text = "";
        }

        ///sự kiện click button Đăng Xuất
        ///chức năng: thoát tài khoản người dùng
        ///mô tả:
        private void rbtnDangXuat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn đăng xuất không?", "Nhắc nhở", MessageBoxButtons.YesNo)
                == System.Windows.Forms.DialogResult.Yes)
            if (UserManager.User != null)
            {
                CHUCVU chucvu = BLLNguoiDung.Instance.LayLoaiNguoiDung(UserManager.User.TaiKhoan);
                TatChucNangCu(chucvu);
                UserManager.User = null;
                rbtnDangXuat.Enabled = false;
                lblDangXuat.Enabled = false;
            }
        }

        ///sự kiện click button DsBangChamCong
        ///chức năng: Hiển thị màn hình Bảng chấm công
        ///mô tả:
        private void btnDsBangChamCong_Click(object sender, EventArgs e)
        {
            new GUIQuanLyChamCong(FORMSTATE.LIST_STATE).Show();
        }

        ///sự kiện click button LapBangChamCong
        ///chức năng: Hiển thị màn hình Lập Bảng chấm công
        ///mô tả:
        private void rbtnLapBangChamCong_Click(object sender, EventArgs e)
        {
            new GUIQuanLyChamCong(FORMSTATE.ADD_SATE).Show();
        }

        ///sự kiện click button LapPhieuThu
        ///chức năng: Hiển thị màn hình LapPhieuThu
        ///mô tả:
        private void rbtnLapPhieuThu_Click(object sender, EventArgs e)
        {
            new GUIQuanLyThu().Show();
        }

        ///sự kiện click button LapPhieuChi
        ///chức năng: Hiển thị màn hình LapPhieuChi
        ///mô tả:
        private void rbtnLapPhieuChi_Click(object sender, EventArgs e)
        {
            new GUIQuanLyChi().Show();
        }

        ///sự kiện click button DSNhanVien
        ///chức năng: Hiển thị màn hình DsNhanVein
        ///mô tả:
        private void rbtnDsNhanVien_Click(object sender, EventArgs e)
        {
            new GUIQuanLyNhanVien().Show();
        }

        ///sự kiện click button CaLamViec
        ///chức năng: Hiển thị màn hình DsCaLamViec
        ///mô tả:
        private void rbtnDsCaLamViec_Click(object sender, EventArgs e)
        {
            new GUIQuanLyCaLamViec().Show();
        }

        ///sự kiện click button ChucVu
        ///chức năng: Hiển thị màn hình DsChucVu
        ///mô tả:
        private void rbtnDsChucVu_Click(object sender, EventArgs e)
        {
            new GUIQuanLyChucVu().Show();
        }


        private void btnTrangChu_Click(object sender, EventArgs e)
        {
            ShowNghiepVu();
        }

        private void btnBanHang_Click(object sender, EventArgs e)
        {
            ShowNghiepVuBanHang();
        }

        private void btnNhapXuatKho_Click(object sender, EventArgs e)
        {
            ShowNghiepVuNhapXuatKho();
        }

        private void btnQLNhanVien_Click(object sender, EventArgs e)
        {
            ShowNghiepVuNhanVien();
        }

        private void btnBaoCao_Click(object sender, EventArgs e)
        {
            ShowNghiepVuBaoCao();
        }

    }
}
