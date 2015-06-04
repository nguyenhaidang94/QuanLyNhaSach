using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyNhaSach.GUI
{
    public partial class GUIQuanLyDatMua : DevComponents.DotNetBar.Office2007Form
    {
        ///biến xác định trạng thái hiển thị của form
        ///chức năng:
        ///mô tả:
        private FORMSTATE _State;

        ///biến xác định ds hóa đơn đã đc load chưa
        ///chức năng:
        ///mô tả:
        private bool _IsListLoaded;

        ///constructor
        ///chức năng: load các components
        ///mô tả:
        public GUIQuanLyDatMua(FORMSTATE state)
        {
            InitializeComponent();
            _State = state;
            _IsListLoaded = false;
        }

        ///hàm load components
        ///chức năng: load các components theo form_sate
        ///mô tả:
        private void LoadComponent()
        {
            switch (_State)
            { 
                case FORMSTATE.LIST_STATE:
                    btnThem.Enabled = true;
                    btnXoa.Enabled = true;
                    btnLuu.Enabled = false;
                    btnTimKiem.Enabled = true;
                    btnXemChiTiet.Enabled = true;
                    btnTroLai.Enabled = false;

                    pnlDSPhieuDatMua.Visible = true;
                    pnlLapPhieuDatMua.Visible = false;
                    pnlChiTietDatMua.Visible = false;
                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">DANH SÁCH PHIẾU ĐẶT MUA</font></font></b>";
                    break;
                case FORMSTATE.ADD_SATE:
                    btnThem.Enabled = false;
                    btnXoa.Enabled = false;
                    btnLuu.Enabled = true;
                    btnTimKiem.Enabled = false;
                    btnXemChiTiet.Enabled = false;
                    btnTroLai.Enabled = true;

                    pnlDSPhieuDatMua.Visible = false;
                    pnlLapPhieuDatMua.Visible = true;
                    pnlChiTietDatMua.Visible = false;
                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">LẬP PHIẾU ĐẶT MUA</font></font></b>";
                    break;
                case FORMSTATE.DETAILED_STATE:
                    btnThem.Enabled = false;
                    btnXoa.Enabled = false;
                    btnLuu.Enabled = false;
                    btnTimKiem.Enabled = false;
                    btnXemChiTiet.Enabled = false;
                    btnTroLai.Enabled = true;

                    pnlDSPhieuDatMua.Visible = false;
                    pnlLapPhieuDatMua.Visible = false;
                    pnlChiTietDatMua.Visible = true;
                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">CHI TIẾT PHIẾU ĐẶT MUA</font></font></b>";
                    break;
                default:
                    break;
            }
        }

        ///hàm load data
        ///chức năng: load dữ liệu theo form_state
        ///mô tả:
        private void LoadData() 
        {
            switch (_State)
            { 
                case FORMSTATE.LIST_STATE:
                    break;
                case FORMSTATE.ADD_SATE:
                    break;
                case FORMSTATE.DETAILED_STATE:
                    break;
                default:
                    break;
            }
        }

        ///hàm danh sách phiếu đặt mua
        ///chức năng: load danh sách phiếu đặt mua và hiển thị lên lưới
        ///mô tả:
        private void LoadDSDatMua()
        {
            
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
        ///chức năng: load components và dữ liệu cho form
        ///mô tả:
        private void GUIQuanLyDatMua_Load(object sender, EventArgs e)
        {
            LoadComponent();
            LoadData();
        }

        ///sự kiện click button Thêm
        ///chức năng: Chuyển sang màn hình lập hóa đơn
        ///mô tả:
        private void btnThem_Click(object sender, EventArgs e)
        {
            _State = FORMSTATE.ADD_SATE;
            LoadComponent();
        }

        ///sự kiện click button Trở lại
        ///chức năng: Chuyển sang màn hình Ql ds Hóa đơn
        ///mô tả:
        private void btnTroLai_Click(object sender, EventArgs e)
        {
            switch (_State)
            { 
                case FORMSTATE.LIST_STATE:
                    break;
                case FORMSTATE.ADD_SATE:
                    txt2MaNhanVien.Clear();
                    dt2NgayLap.Value = new DateTime();
                    try
                    {
                        dgw2DSSanPham.Rows.Clear();
                        cbo2NhaCungCap.SelectedIndex = 0;
                    }
                    catch (Exception ex)
                    {
                        Debug.WriteLine(ex.Message);
                    }
                    break;
                case FORMSTATE.DETAILED_STATE:
                    txt3MaPhieuDatMua.Clear();
                    txt3NhaCungCap.Clear();
                    txt3NhanVienLap.Clear();
                    dt3NgayLap.Value = new DateTime();
                    try
                    {
                        dgw3DSSanPham.Rows.Clear();
                    }
                    catch (Exception ex)
                    {
                        Debug.WriteLine(ex.Message);
                    }
                    break;
            }
            _State = FORMSTATE.LIST_STATE;
            LoadComponent();
            LoadData();
        }

        ///sự kiện click button Chi tiết
        ///chức năng: Lấy thông tin 1 hóa đơn và hiển thị chi tiết hóa đơn
        ///mô tả:
        private void btnXemChiTiet_Click(object sender, EventArgs e)
        {
            _State = FORMSTATE.DETAILED_STATE;
            LoadComponent();
        }
    }
}
