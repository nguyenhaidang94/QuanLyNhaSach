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
using QuanLyNhaSach.SqlHelper;

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
                    if (UserManager.User != null)
                        txt2NhanVien.Text = UserManager.User.MaNhanVien;
                    dt2NgayLap.Value = DateTime.Today;
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
            List<HoaDonBanHang> dsHoaDon = BLLHoaDonBanHang.Instance.GetList();
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

        ///hàm kiểm tra sản phẩm
        ///chức năng: hàm kiểm tra sản phẩm đã có trong hóa đơn chưa
        ///mô tả: dùng cho chức năng lập hóa đơn
        private bool KiemTraTonTai(String maCTSanPham)
        {
            for (int i = 0; i < dgw2DSSanPham.Rows.Count; i++)
            {
                if (dgw2DSSanPham.Rows[i].Cells[0].Value != null
                    && dgw2DSSanPham.Rows[i].Cells[0].Value.ToString().Equals(maCTSanPham))
                    return true;
            }
            return false;
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
            LoadData();
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
                    txt2TongTien.Value = 0;
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
            try
            {
                if (String.IsNullOrEmpty(txt2TenKhachHang.Text))
                    MessageBox.Show("Chưa nhập tên khách hàng", "Nhắc nhở");
                else
                {
                    HoaDonBanHang hoadon = new HoaDonBanHang();
                    hoadon.NgayBan = dt2NgayLap.Value;
                    hoadon.MaNhanVien = txt2NhanVien.Text;
                    hoadon.TenKhachHang = txt2TenKhachHang.Text;
                    hoadon.TongThanhTien = Decimal.Parse(txt2TongTien.Text);

                    List<CT_HDBanHang> dsCTHoaDon = new List<CT_HDBanHang>();
                    foreach (DataGridViewRow row in dgw2DSSanPham.Rows)
                    {
                        if (row != null)
                        {
                            CT_HDBanHang cthoadon = new CT_HDBanHang();
                            cthoadon.MaCTSanPham = (row.Cells[0].Value as string);
                            if (cthoadon.MaCTSanPham != null)
                                dsCTHoaDon.Add(cthoadon);
                        }
                    }
                    if (dsCTHoaDon.Count <= 0)
                        MessageBox.Show("Chưa chọn sản phẩm");
                    else
                    {
                        if (BLLHoaDonBanHang.Instance.LapHoaDon(hoadon, dsCTHoaDon))
                        {
                            MessageBox.Show("Lập hóa đơn thành công");
                            dgwDSHoaDon.Rows.Add(hoadon.MaHoaDon, hoadon.NgayBan, hoadon.MaNhanVien,
                                hoadon.TenKhachHang, hoadon.TongThanhTien);
                            dgw2DSSanPham.Rows.Clear();
                            txt2TongTien.Value = 0;
                        }
                        else
                            MessageBox.Show("Lập hóa đơn thất bại");
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                MessageBox.Show("Có lỗi trong quá trình lập hóa đơn");
            }
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
                    HoaDonBanHang hoadon = BLLHoaDonBanHang.Instance.GetReceipts(maHoaDon);
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

        ///hàm xử lý sự kiện chọn sản phẩm từ form Tìm kiếm
        ///chức năng: hiển thị thông tin CTSanPham
        ///mô tả: dùng cho chức năng lập hóa đơn
        private void SelectEvent_Handler(Object sender)
        {
            List<String> selectedProducts = (List<String>)sender;
            foreach (var maCTSanPham in selectedProducts)
            {
                CT_SanPham ctSanPham = BLLCT_SanPham.Instance.Search(maCTSanPham);
                if (ctSanPham != null && !KiemTraTonTai(ctSanPham.MaCTSanPham) && ctSanPham.TinhTrang == true)
                {
                    try
                    {
                        dgw2DSSanPham.Rows.Add(ctSanPham.MaCTSanPham, ctSanPham.SanPham.TenSanPham, ctSanPham.SanPham.DonGia);
                        txt2TongTien.Value += Decimal.ToDouble(ctSanPham.SanPham.DonGia.Value);
                    }
                    catch (Exception ex)
                    {
                        Debug.WriteLine(ex.Message);
                    }
                }
            }
        }

        ///sự kiện click button Tìm sản phẩm
        ///chức năng: Hiện form tìm sản phẩm
        ///mô tả:
        private void btnTimSanPham_Click(object sender, EventArgs e)
        {
            GUITimKiemSanPham formTimKiem = new GUITimKiemSanPham(TIMKIEM_STATE.DETAIL_PRODUCT);
            formTimKiem.Show();
            formTimKiem.SelectDetailEvent += new GUITimKiemSanPham.SelectDetailProductEventHandler(SelectEvent_Handler);
        }

        ///sự kiện click button Tìm kiếm
        ///chức năng: Tìm kiếm hóa đơn và hiển thị lên lưới
        ///mô tả:
        private void btnTimKiem_Click(object sender, EventArgs e)
        {

        }
    }
}
