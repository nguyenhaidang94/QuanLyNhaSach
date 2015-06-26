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
    public partial class GUIQuanLyXuatKho : DevComponents.DotNetBar.Office2007Form
    {
        ///biến xác định trạng thái hiển thị của form
        ///chức năng:
        ///mô tả:
        private FORMSTATE _State;

        ///biến xác định ds phiếu xuất kho đã đc load chưa
        ///chức năng:
        ///mô tả:
        private bool _IsListLoaded;

        ///biến tạm lưu số lượng dùng cho sửa đổi số lượng trên dòng
        ///chức năng:
        ///mô tả:
        private int _Temp;

        ///constructor
        ///chức năng:
        ///mô tả:
        public GUIQuanLyXuatKho(FORMSTATE state)
        {
            InitializeComponent();
            _State = state;
            _IsListLoaded = false;
            _Temp = 0;
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

                    pnlChiTietPhieuXuatKho.Visible = false;
                    pnlLapPhieuXuatKho.Visible = false;
                    pnlDSPhieuXuatKho.Visible = true;

                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">DANH SÁCH PHIẾU XUẤT KHO</font></font></b>";

                    break;
                case FORMSTATE.ADD_SATE:
                    btnThem.Enabled = false;
                    btnXoa.Enabled = false;
                    btnLuu.Enabled = true;
                    btnTimKiem.Enabled = false;
                    btnXemChiTiet.Enabled = false;
                    btnTroLai.Enabled = true;

                    pnlDSPhieuXuatKho.Visible = false;
                    pnlLapPhieuXuatKho.Visible = true;
                    pnlChiTietPhieuXuatKho.Visible = false;

                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">LẬP PHIẾU XUẤT KHO</font></font></b>";

                    break;
                case FORMSTATE.DETAILED_STATE:
                    btnThem.Enabled = false;
                    btnXoa.Enabled = false;
                    btnLuu.Enabled = false;
                    btnTimKiem.Enabled = false;
                    btnXemChiTiet.Enabled = false;
                    btnTroLai.Enabled = true;

                    pnlDSPhieuXuatKho.Visible = false;
                    pnlLapPhieuXuatKho.Visible = false;
                    pnlChiTietPhieuXuatKho.Visible = true;

                    lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">CHI TIẾT PHIẾU XUẤT KHO</font></font></b>";

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
                        LoadDSPhieuXuatKho();
                    break;
                case FORMSTATE.ADD_SATE:
                    txt2MaNhanVien.Text = UserManager.User.MaNhanVien;
                    break;
                case FORMSTATE.DETAILED_STATE:
                    break;
                default:
                    break;
            }
        }

        ///hàm load ds phiếu xuất kho
        ///chức năng:
        ///mô tả:
        private void LoadDSPhieuXuatKho()
        {
            List<PhieuXuatKho> dsPhieuXuatKho = BLLPhieuXuatKho.Instance.GetList();
            if (dsPhieuXuatKho == null)
                MessageBox.Show("Không có phiếu xuất kho nào");
            else
            {
                for (int i = 0; i < dsPhieuXuatKho.Count; i++)
                {
                    dgwDSPhieuXuatKho.Rows.Add(dsPhieuXuatKho[i].MaPhieuXuat, dsPhieuXuatKho[i].MaNhanVien
                        ,dsPhieuXuatKho[i].NgayXuat, dsPhieuXuatKho[i].TongSoLuong);
                }
            }
            _IsListLoaded = true;
        }

        ///sự kiện click load form
        ///chức năng: load components và dữ liệu cho form
        ///mô tả:
        private void GUIQuanLyXuatKho_Load(object sender, EventArgs e)
        {
            LoadComponent();
            LoadData();
        }

        ///sự kiện click button Thêm
        ///chức năng: Chuyển sang màn hình lập phiếu xuất kho
        ///mô tả:
        private void btnThem_Click(object sender, EventArgs e)
        {
            _State = FORMSTATE.ADD_SATE;
            LoadComponent();
            LoadData();
        }

        ///sự kiện click button Thoát
        ///chức năng: Thoát màn hình
        ///mô tả:
        private void btnThoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn thoát không?", "Nhăc nhở", MessageBoxButtons.YesNo)
                == System.Windows.Forms.DialogResult.Yes)
                this.Close();
        }

        ///sự kiện click button Chi tiết
        ///chức năng: Lấy thông tin 1 phiếu xuất kho và hiển thị chi tiết phiếu xuất kho đó
        ///mô tả:
        private void btnXemChiTiet_Click(object sender, EventArgs e)
        {
            if (dgwDSPhieuXuatKho.SelectedRows.Count <= 0 && dgwDSPhieuXuatKho.SelectedCells.Count <= 0)
                MessageBox.Show("Bạn chưa chọn phiếu xuất kho để xem");
            else
            {
                int index;
                if (dgwDSPhieuXuatKho.SelectedRows.Count > 0)
                    index = dgwDSPhieuXuatKho.SelectedRows[0].Index;
                else
                    index = dgwDSPhieuXuatKho.SelectedCells[0].RowIndex;

                String maPhieuXuatKho = null;
                try
                {
                    maPhieuXuatKho = (String)dgwDSPhieuXuatKho.Rows[index].Cells[0].Value;
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex.Message);
                }
                if (String.IsNullOrEmpty(maPhieuXuatKho))
                    MessageBox.Show("Dòng này không có dữ liệu");
                else
                {
                    PhieuXuatKho phieuxuat = BLLPhieuXuatKho.Instance.LayPhieuXuatKho(maPhieuXuatKho);
                    if (phieuxuat == null)
                        MessageBox.Show("Phiếu xuất kho không tồn tại");
                    else
                    {
                        txt3MaNhanVien.Text = phieuxuat.MaNhanVien;
                        txt3MaPhieuXuatKho.Text = phieuxuat.MaPhieuXuat;
                        txt3TongSoLuong.Text = phieuxuat.TongSoLuong.ToString();
                        dt3NgayXuatKho.Value = phieuxuat.NgayXuat.Value;

                        foreach (var ctphieuxuat in phieuxuat.DSCT_PhieuXuatKho)
                            dgw3DSSanPham.Rows.Add(ctphieuxuat.SanPham.TenSanPham, ctphieuxuat.SoLuong);

                        _State = FORMSTATE.DETAILED_STATE;
                        LoadComponent();
                    }
                    
                }
            }

           
        }

        ///sự kiện click button Trở lại
        ///chức năng: Chuyển sang màn hình Ql ds phiếu xuất kho
        ///mô tả:
        private void btnTroLai_Click(object sender, EventArgs e)
        {
            switch (_State)
            {
                case FORMSTATE.LIST_STATE:
                    break;
                case FORMSTATE.ADD_SATE:
                    txt2MaNhanVien.Clear();
                    txt2TongSoLuong.Value = 0;
                    dt2NgayXuatKho.Value = new DateTime();
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
                    txt3MaPhieuXuatKho.Clear();
                    txt3MaNhanVien.Clear();
                    txt3TongSoLuong.Clear();
                    dt3NgayXuatKho.Value = new DateTime();
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
        ///chức năng: Lưu phiếu xuất kho
        ///mô tả:
        private void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {
                PhieuXuatKho phieuxuat = new PhieuXuatKho();
                phieuxuat.MaNhanVien = txt2MaNhanVien.Text;
                phieuxuat.NgayXuat = dt2NgayXuatKho.Value;
                phieuxuat.TongSoLuong = txt2TongSoLuong.Value;

                List<CT_PhieuXuatKho> dsCTPhieuXuat = new List<CT_PhieuXuatKho>();
                foreach (DataGridViewRow row in dgw2DSSanPham.Rows)
                {
                    if (row != null && !String.IsNullOrEmpty(row.Cells[0].Value.ToString()))
                    {
                        CT_PhieuXuatKho ctPhieuXuat = new CT_PhieuXuatKho();
                        ctPhieuXuat.MaSanPham = row.Cells[0].Value.ToString();
                        ctPhieuXuat.SoLuong = (int)row.Cells[2].Value;
                        dsCTPhieuXuat.Add(ctPhieuXuat);
                    }
                }
                if (dsCTPhieuXuat.Count <= 0)
                    MessageBox.Show("Không có sản phẩm nào hợp lệ");
                else
                {
                    if (BLLPhieuXuatKho.Instance.LapPhieuXuatKho(phieuxuat, dsCTPhieuXuat))
                    {
                        MessageBox.Show("Lập phiếu xuất kho thành công");
                        dgwDSPhieuXuatKho.Rows.Add(phieuxuat.MaPhieuXuat, phieuxuat.MaNhanVien, phieuxuat.NgayXuat);
                        dgw2DSSanPham.Rows.Clear();
                        txt2TongSoLuong.Value = 0;
                    }
                    else
                        MessageBox.Show("Lập phiếu xuất kho thất bại");
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                MessageBox.Show("Có lỗi trong quá trình lập Phiếu xuất kho");
            }
        }

        ///kiểm tra sản phẩm đã được chọn chưa
        ///chức năng:
        ///mô tả:
        private bool KiemTraTonTai(string maSanPham)
        {
            for (int i = 0; i < dgw2DSSanPham.Rows.Count; i++)
            {
                if (dgw2DSSanPham.Rows[i].Cells[0].Value != null
                    && dgw2DSSanPham.Rows[i].Cells[0].Value.ToString().Equals(maSanPham))
                    return true;
            }
            return false;
        }

        ///xử lý sự kiện select sản phẩm
        ///chức năng: Lưu phiếu xuất kho
        ///mô tả:
        private void SelectEvent_Handler(Object sender)
        {
            List<String> selectedProducts = (List<String>)sender;
            foreach (var maSanPham in selectedProducts)
            {
                SanPham sanpham = BLLSanPham.Instance.Search(maSanPham);
                if (sanpham != null && !KiemTraTonTai(sanpham.MaSanPham) && sanpham.SoLuong > 0)
                {
                    try
                    {
                        dgw2DSSanPham.Rows.Add(sanpham.MaSanPham, sanpham.TenSanPham, 1);
                        txt2TongSoLuong.Value = txt2TongSoLuong.Value + 1;
                    }
                    catch (Exception ex)
                    {
                        Debug.WriteLine(ex.Message);
                    }
                }
            }
        }

        ///sự kiện click nút Chọn Sản Phẩm
        ///chức năng: Hiển thị màn hình tìm kiếm sản phẩm
        ///mô tả:
        private void btnChonSanPham_Click(object sender, EventArgs e)
        {
            GUITimKiemSanPham formTimKiem = new GUITimKiemSanPham(TIMKIEM_STATE.PRODUCT);
            formTimKiem.Show();
            formTimKiem.SelectEvent += new GUITimKiemSanPham.SelectProductEventHandler(SelectEvent_Handler);
        }

        ///sự kiện kết thúc thay đổi dữ liệu của ô
        ///chức năng:
        ///mô tả:
        private void dgw2DSSanPham_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (e.ColumnIndex == 2)
                {
                    if (_Temp >= 0)
                    {
                        int? soluongtoida = BLLSanPham.Instance.LaySoLuong(dgw2DSSanPham.Rows[e.RowIndex].Cells[0].Value.ToString());
                        if (soluongtoida != null)
                        {
                            int soluongnhap = (int)(dgw2DSSanPham[2, e.RowIndex].Value);
                            if (soluongnhap > soluongtoida)
                            {
                                dgw2DSSanPham[e.ColumnIndex, e.RowIndex].Value = soluongtoida.Value;
                                txt2TongSoLuong.Value += soluongtoida.Value - _Temp;
                                MessageBox.Show("Sản phẩm này chỉ còn lại " + soluongtoida + " sản phẩm");
                            }
                            else
                            {
                                if (soluongnhap == 0)
                                {
                                    MessageBox.Show("Số lượng tối thiểu là 1 sản phẩm");
                                    dgw2DSSanPham[e.ColumnIndex, e.RowIndex].Value = 1;
                                }
                                txt2TongSoLuong.Value += (int)dgw2DSSanPham[e.ColumnIndex, e.RowIndex].Value - _Temp;
                            }
                        }
                        else
                        {
                            dgw2DSSanPham[e.ColumnIndex, e.RowIndex].Value = 0;
                            txt2TongSoLuong.Value -= _Temp;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
        }

        ///sự kiện bắt đầu thay đổi dữ liệu của ô
        ///chức năng:
        ///mô tả:
        private void dgw2DSSanPham_CellBeginEdit(object sender, DataGridViewCellCancelEventArgs e)
        {
            try
            {
                if (e.ColumnIndex == 2)
                {
                    if (String.IsNullOrEmpty(dgw2DSSanPham.Rows[e.RowIndex].Cells[0].Value.ToString()))
                        _Temp = -1;
                    else
                        _Temp = (int)(dgw2DSSanPham[2, e.RowIndex].Value);
                }
            }
            catch(Exception ex)
            {
                Debug.WriteLine(ex.Message);
                _Temp = -1;
            }
        }
    }
}
