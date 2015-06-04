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
    public partial class GUIQuanLyHoaDon : DevComponents.DotNetBar.Office2007Form
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
        public GUIQuanLyHoaDon(FORMSTATE state)
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

                    pnlChiTietHD.Visible = false;
                    pnlLapHoaDon.Visible = false;
                    pnlDSHoaDon.Visible = true;
                    pnlLapHoaDon.Visible = false;
                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">DANH SÁCH HÓA ĐƠN</font></font></b>";
                    break;
                case FORMSTATE.ADD_SATE:
                    btnThem.Enabled = false;
                    btnXoa.Enabled = false;
                    btnLuu.Enabled = true;
                    btnTimKiem.Enabled = false;
                    btnXemChiTiet.Enabled = false;
                    btnTroLai.Enabled = true;

                    pnlDSHoaDon.Visible = false;
                    pnlLapHoaDon.Visible = true;
                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">LẬP HÓA ĐƠN</font></font></b>";
                    break;
                case FORMSTATE.DETAILED_STATE:
                    btnThem.Enabled = false;
                    btnXoa.Enabled = false;
                    btnLuu.Enabled = false;
                    btnTimKiem.Enabled = false;
                    btnXemChiTiet.Enabled = false;
                    btnTroLai.Enabled = true;

                    pnlDSHoaDon.Visible = false;
                    pnlLapHoaDon.Visible = false;
                    pnlChiTietHD.Visible = true;
                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">CHI TIẾT HÓA ĐƠN</font></font></b>";
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
                        LoadDSHoaDon();
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
        private void LoadDSHoaDon()
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
            _IsListLoaded = true;
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
        private void GUIQuanLyHoaDon_Load(object sender, EventArgs e)
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
                    txt2NhanVien.Clear();
                    txt2TenKhachHang.Clear();
                    txt2TongTien.Clear();
                    dt2NgayLap.Value = new DateTime();
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
                    txt3NhanVien.Clear();
                    txt3TenKhachHang.Clear();
                    txt3TongTien.Clear();
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

        ///sự kiện click button Lưu
        ///chức năng: Lấy thông tin hóa đơn và lưu lại
        ///mô tả:
        private void btnLuu_Click(object sender, EventArgs e)
        {

        }

        ///sự kiện click button Chi tiết
        ///chức năng: Lấy thông tin 1 hóa đơn và hiển thị chi tiết hóa đơn
        ///mô tả:
        private void btnXemChiTiet_Click(object sender, EventArgs e)
        {
            if (dgwDSHoaDon.SelectedRows.Count <= 0 && dgwDSHoaDon.SelectedCells.Count <= 0)
                MessageBox.Show("Bạn chưa chọn hóa đơn để xem");
            else
            {
                int index;
                if (dgwDSHoaDon.SelectedRows.Count > 0)
                    index = dgwDSHoaDon.SelectedRows[0].Index;
                else
                    index = dgwDSHoaDon.SelectedCells[0].RowIndex;
                String maHoaDon = null;
                try
                {
                    maHoaDon = (String)dgwDSHoaDon.Rows[index].Cells[0].Value;
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex.Message);
                }               
                if (String.IsNullOrEmpty(maHoaDon))
                    MessageBox.Show("Dòng này không có dữ liệu");
                else
                {
                    BLLHoaDonBanHang bll = new BLLHoaDonBanHang();
                    HoaDonBanHang hoadon = bll.GetReceipts(maHoaDon);
                    if (hoadon == null)
                        MessageBox.Show("Hóa đơn không tồn tại");
                    else
                    {
                        txt3NhanVien.Text = hoadon.MaNhanVien;
                        txt3TenKhachHang.Text = hoadon.TenKhachHang;
                        try
                        {
                            dt3NgayLap.Value = (DateTime)hoadon.NgayBan;
                        }
                        catch (Exception ex)
                        {
                            Debug.WriteLine(ex.Message);
                        }
                        txt3TongTien.Text = hoadon.TongThanhTien.ToString();

                        foreach (var ctHoaDon in hoadon.DSCT_HDBanHang)
                        {
                            try
                            {
                                bool existed = false;
                                foreach (DataGridViewRow row in dgw3DSSanPham.Rows)
                                {
                                    if (ctHoaDon.CT_SanPham.MaSanPham.Equals(row.Cells[0].Value as String))
                                    {
                                        existed = true;
                                        row.Cells[2].Value = (int)row.Cells[2].Value + 1;
                                        row.Cells[3].Value = (Decimal)row.Cells[1].Value * (int)row.Cells[2].Value;
                                        break;
                                    }
                                }
                                if (!existed)
                                {
                                    dgw3DSSanPham.Rows.Add(ctHoaDon.CT_SanPham.MaSanPham, ctHoaDon.CT_SanPham.SanPham.DonGia,
                                        1, ctHoaDon.CT_SanPham.SanPham.DonGia);
                                }
                            }
                            catch (Exception ex)
                            {
                                Debug.WriteLine(ex.Message);
                            }
                        }
                        _State = FORMSTATE.DETAILED_STATE;
                        LoadComponent();
                    }
                }
            }
        }

        ///sự kiện click button Tìm sản phẩm
        ///chức năng: Hiện form tìm sản phẩm
        ///mô tả:
        private void btnTimSanPham_Click(object sender, EventArgs e)
        {

        }

        ///sự kiện khi kết thúc nhập dữ liệu cho ô
        ///chức năng: cập nhật lại thông tin dòng
        ///mô tả:
        private void dgw2DSSanPham_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            //switch (e.ColumnIndex)
            //{ 
            //    case 0:
            //        String maCTSanPham = null;
            //        try
            //        {
            //            maCTSanPham = dgw2DSSanPham.Rows[e.RowIndex].Cells[e.ColumnIndex].Value
            //                as String;                       
            //        }
            //        catch(Exception ex)
            //        {
            //            Debug.WriteLine(ex.Message);
            //        }
            //        if (!String.IsNullOrEmpty(maCTSanPham))
            //        {
            //            BLLCT_SanPham bll = new BLLCT_SanPham();
            //            CT_SanPham ctSanPham = bll.LayCTSanPham(maCTSanPham);
            //            if (ctSanPham == null)
            //            {
            //                MessageBox.Show("Sản phẩm không tồn tại");
            //                dgw2DSSanPham.Rows[e.RowIndex].Cells[e.ColumnIndex].Value = "";
            //            }
            //            else
            //            {
            //                if (ctSanPham.TinhTrang != true)
            //                {
            //                    MessageBox.Show("Sản phẩm đã bán");
            //                    dgw2DSSanPham.Rows[e.RowIndex].Cells[e.ColumnIndex].Value = "";
            //                }
            //                else
            //                {
            //                    try
            //                    {
            //                        dgw2DSSanPham.Rows[e.RowIndex].Cells[1].Value = ctSanPham.SanPham.DonGia;
            //                        dgw2DSSanPham.Rows[e.RowIndex].Cells[3].Value = ctSanPham.SanPham.DonGia
            //                            * (int)dgw2DSSanPham.Rows[e.RowIndex].Cells[2].Value;
            //                    }
            //                    catch (Exception ex)
            //                    {
            //                        Debug.WriteLine(ex.Message);
            //                    }
            //                }
            //            }
                        
            //        }
            //        break;
            //    case 2:
            //        try
            //        {
            //            dgw2DSSanPham.Rows[e.RowIndex].Cells[3].Value =
            //                (Double)dgw2DSSanPham.Rows[e.RowIndex].Cells[1].Value
            //                * (int)dgw2DSSanPham.Rows[e.RowIndex].Cells[2].Value;
            //        }
            //        catch (Exception ex)
            //        {
            //            Debug.WriteLine(ex.Message);
            //        }
            //        break;
            //    default:
            //        break;
            //}
        }
    }
}
