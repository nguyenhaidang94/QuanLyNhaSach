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
    public partial class GUIQuanLyNhapKho : DevComponents.DotNetBar.OfficeForm
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
        ///chức năng:
        ///mô tả:
        public GUIQuanLyNhapKho(FORMSTATE state)
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

                    pnlChiTietPhieuNhapKho.Visible = false;
                    pnlLapPhieuNhapKho.Visible = false;
                    pnlDSPhieuNhapKho.Visible = true;

                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">DANH SÁCH PHIẾU NHẬP KHO</font></font></b>";

                    break;
                case FORMSTATE.ADD_SATE:
                    btnThem.Enabled = false;
                    btnXoa.Enabled = false;
                    btnLuu.Enabled = true;
                    btnTimKiem.Enabled = false;
                    btnXemChiTiet.Enabled = false;
                    btnTroLai.Enabled = true;

                    pnlDSPhieuNhapKho.Visible = false;
                    pnlLapPhieuNhapKho.Visible = true;
                    pnlChiTietPhieuNhapKho.Visible = false;

                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">LẬP PHIẾU NHẬP KHO</font></font></b>";

                    break;
                case FORMSTATE.DETAILED_STATE:
                    btnThem.Enabled = false;
                    btnXoa.Enabled = false;
                    btnLuu.Enabled = false;
                    btnTimKiem.Enabled = false;
                    btnXemChiTiet.Enabled = false;
                    btnTroLai.Enabled = true;

                    pnlDSPhieuNhapKho.Visible = false;
                    pnlLapPhieuNhapKho.Visible = false;
                    pnlChiTietPhieuNhapKho.Visible = true;

                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">CHI TIẾT PHIẾU NHẬP KHO</font></font></b>";

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
                    if (!_IsListLoaded)
                        LoadDSPhieuNhapKho();
                    break;
                case FORMSTATE.ADD_SATE:
                    break;
                case FORMSTATE.DETAILED_STATE:
                    break;
                default:
                    break;
            }
        }

        ///hàm load ds hóa đơn
        ///chức năng: load ds hóa đơn cho dgwDSHoaDon
        ///mô tả:
        private void LoadDSPhieuNhapKho()
        {
            //BLLPhieuNhapKho bll = new BLLPhieuNhapKho();
            //List<PhieuNhapKho> dsPhieuNhapKho = bll.GetList();
            //if (dsPhieuNhapKho == null)
            //    MessageBox.Show("Không có phiếu nhập kho nào.");
            //else
            //{
            //    for (int i = 0; i < dsPhieuNhapKho.Count; i++)
            //    {
            //        dgwDSPhieuNhapKho.Rows.Add(dsPhieuNhapKho[i].MaPhieuNhap, dsPhieuNhapKho[i].MaPhieuDatMua,
            //            dsPhieuNhapKho[i].MaNhanVien, dsPhieuNhapKho[i].NgayNhap, dsPhieuNhapKho[i].TongSoLuong);
            //    }
            //}
            //_IsListLoaded = true;
        }

        ///sự kiện click load form
        ///chức năng: load components và dữ liệu cho form
        ///mô tả:
        private void GUIQuanLyNhapKho_Load(object sender, EventArgs e)
        {
            LoadComponent();
            LoadData();
        }

        ///sự kiện click button Thêm
        ///chức năng: Chuyển sang màn hình lập phiếu nhập kho
        ///mô tả:
        private void btnThem_Click(object sender, EventArgs e)
        {
            _State = FORMSTATE.ADD_SATE;
            LoadComponent();
        }

        ///sự kiện click button Trở lại
        ///chức năng: Chuyển sang màn hình Ql ds phiếu nhập kho
        ///mô tả:
        private void btnTroLai_Click(object sender, EventArgs e)
        {
            switch (_State)
            {
                case FORMSTATE.LIST_STATE:
                    break;
                case FORMSTATE.ADD_SATE:
                    txt2MaNhanVien.Clear();
                    txt2TongSoLuong.Clear();
                    dt2NgayDatMua.Value = new DateTime();
                    try
                    {
                        dgw2DSSanPham.Rows.Clear();
                    }
                    catch (Exception ex)
                    {
                        Debug.WriteLine(ex.Message);
                    }
                    break;
                case FORMSTATE.DETAILED_STATE:
                    txt3MaPhieuNhapKho.Clear();
                    txt3MaNhanVien.Clear();
                    txt3MaPhieuDatMua.Clear();
                    txt3TongSoLuong.Clear();
                    dt3NgayNhapKho.Value = new DateTime();
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
        ///chức năng: Lấy thông tin 1 phiếu nhập kho và hiển thị chi tiết phiếu nhập đó
        ///mô tả:
        private void btnXemChiTiet_Click(object sender, EventArgs e)
        {
            _State = FORMSTATE.DETAILED_STATE;
            LoadComponent();
        }

        ///sự kiện click button Thoát
        ///chức năng: Thoát màn hình
        ///mô tả:
        private void btnThoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn thoát không?", "Nhắc nhở", MessageBoxButtons.YesNo)
                == System.Windows.Forms.DialogResult.Yes)
                this.Close();
        }
    }
}