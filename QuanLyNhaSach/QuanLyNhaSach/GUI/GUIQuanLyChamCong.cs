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
using System.Diagnostics;

namespace QuanLyNhaSach.GUI
{
    public partial class GUIQuanLyChamCong : DevComponents.DotNetBar.Office2007Form
    {
        ///biến xác định trạng thái hiển thị của form
        ///chức năng:
        ///mô tả:
        private FORMSTATE _State;

        ///biến xác định ds chấm công đã đc load chưa
        ///chức năng:
        ///mô tả:
        private bool _IsListLoaded;

        ///constructor
        ///chức năng:
        ///mô tả:
        public GUIQuanLyChamCong(FORMSTATE state)
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

                    pnlChiTietBangChamCong.Visible = false;
                    pnlLapBangChamCong.Visible = false;
                    pnlDSChamCong.Visible = true;

                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">DANH SÁCH CHẤM CÔNG</font></font></b>";

                    break;
                case FORMSTATE.ADD_SATE:
                    btnThem.Enabled = false;
                    btnXoa.Enabled = false;
                    btnLuu.Enabled = true;
                    btnTimKiem.Enabled = false;
                    btnXemChiTiet.Enabled = false;
                    btnTroLai.Enabled = true;

                    pnlDSChamCong.Visible = false;
                    pnlLapBangChamCong.Visible = true;
                    pnlChiTietBangChamCong.Visible = false;

                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">LẬP BẢNG CHẤM CÔNG</font></font></b>";

                    break;
                case FORMSTATE.DETAILED_STATE:
                    btnThem.Enabled = false;
                    btnXoa.Enabled = false;
                    btnLuu.Enabled = false;
                    btnTimKiem.Enabled = false;
                    btnXemChiTiet.Enabled = false;
                    btnTroLai.Enabled = true;

                    pnlDSChamCong.Visible = false;
                    pnlLapBangChamCong.Visible = false;
                    pnlChiTietBangChamCong.Visible = true;

                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">CHI TIẾT BẢNG CHẤM CÔNG</font></font></b>";

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

        ///sự kiện click load form
        ///chức năng: load components và dữ liệu cho form
        ///mô tả:
        private void GUIQuanLyChamCong_Load(object sender, EventArgs e)
        {
            LoadComponent();
            LoadData();
        }

        ///sự kiện click button Thêm
        ///chức năng: Chuyển sang màn hình lập bảng chấm công
        ///mô tả:
        private void btnThem_Click(object sender, EventArgs e)
        {
            _State = FORMSTATE.ADD_SATE;
            LoadComponent();
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

        ///sự kiện click button Chi tiết
        ///chức năng: Lấy thông tin 1 bảng chấm công và hiển thị chi tiết bảng chấm công đó
        ///mô tả:
        private void btnXemChiTiet_Click(object sender, EventArgs e)
        {
            _State = FORMSTATE.DETAILED_STATE;
            LoadComponent();
        }

        ///sự kiện click button Trở lại
        ///chức năng: Chuyển sang màn hình Ql ds chấm công
        ///mô tả:
        private void btnTroLai_Click(object sender, EventArgs e)
        {
            switch (_State)
            {
                case FORMSTATE.LIST_STATE:
                    break;
                case FORMSTATE.ADD_SATE:
                    txt2NhanVienChamCong.Clear();
                    cbo2CaLamViec.Text = null;
                    dt2NgayChamCong.Value = new DateTime();
                    try
                    {
                        dgw2DSNhanVien.Rows.Clear();
                    }
                    catch (Exception ex)
                    {
                        Debug.WriteLine(ex.Message);
                    }
                    break;
                case FORMSTATE.DETAILED_STATE:
                    txt3MaBangChamCong.Clear();
                    txt3NhanVienChamCong.Clear();
                    txt3CaLamViec.Clear();
                    dt3NgayChamCong.Value = new DateTime();
                    try
                    {
                        dgw3DSNhanVien.Rows.Clear();
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
    }
}
