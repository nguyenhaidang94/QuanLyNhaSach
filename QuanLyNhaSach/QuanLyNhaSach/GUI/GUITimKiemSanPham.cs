﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLyNhaSach.BLL;
using QuanLyNhaSach.DTO;
using System.Diagnostics;

namespace QuanLyNhaSach.GUI
{
    public partial class GUITimKiemSanPham : DevComponents.DotNetBar.Office2007Form
    {
        ///constructor
        ///chức năng:
        ///mô tả:
        public GUITimKiemSanPham()
        {
            InitializeComponent();
        }

        ///hiển thị danh sách sản phẩm lên list view
        ///chức năng:
        ///mô tả:
        private void DisplayProduct(DataTable data)
        {
            try
            {
                lvwSanPham.Columns.Add("STT", 50, HorizontalAlignment.Left);
                lvwSanPham.Columns.Add("Mã Sản Phẩm", 100, HorizontalAlignment.Left);
                lvwSanPham.Columns.Add("Tên Sản Phẩm", 200, HorizontalAlignment.Left);
                lvwSanPham.Columns.Add("Loại Sản Phẩm", 100, HorizontalAlignment.Left);
                lvwSanPham.Columns.Add("Nhà Cung Cấp", 200, HorizontalAlignment.Left);
                lvwSanPham.Columns.Add("Đơn Vị Tính", 100, HorizontalAlignment.Left);
                lvwSanPham.Columns.Add("Đơn Giá", 100, HorizontalAlignment.Right);
                lvwSanPham.Columns.Add("Số Lượng", 100, HorizontalAlignment.Right);
                int i = 0;
                foreach (DataRow row in data.Rows)
                {
                    ListViewItem item = new ListViewItem((i++).ToString());
                    item.SubItems.Add(row["MaSanPham"].ToString());
                    item.SubItems.Add(row["TenSanPham"].ToString());
                    item.SubItems.Add(row["TenLoaiSanPham"].ToString());
                    item.SubItems.Add(row["TenNhaCungCap"].ToString());
                    item.SubItems.Add(row["TenDVT"].ToString());
                    item.SubItems.Add(row["DonGia"].ToString());
                    item.SubItems.Add(row["SoLuong"].ToString());
                    lvwSanPham.Items.Add(item);
                }
                lvwSanPham.Show();
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
        }

        ///hiển thị danh sách CT_SanPham lên list view
        ///chức năng:
        ///mô tả:
        private void DisplayDetailedProduct(DataTable data)
        {
            try
            {
                lvwSanPham.Columns.Add("STT", 50, HorizontalAlignment.Left);
                lvwSanPham.Columns.Add("Mã CT Sản Phẩm", 100, HorizontalAlignment.Left);
                lvwSanPham.Columns.Add("Tên Sản Phẩm", 200, HorizontalAlignment.Left);
                lvwSanPham.Columns.Add("Quầy Hàng", 100, HorizontalAlignment.Left);
                lvwSanPham.Columns.Add("Loại Sản Phẩm", 100, HorizontalAlignment.Left);
                lvwSanPham.Columns.Add("Nhà Cung Cấp", 200, HorizontalAlignment.Left);
                lvwSanPham.Columns.Add("Đơn Vị Tính", 100, HorizontalAlignment.Left);
                lvwSanPham.Columns.Add("Đơn Giá", 100, HorizontalAlignment.Right);
                lvwSanPham.Columns.Add("Số Lượng", 100, HorizontalAlignment.Right);
                int i = 0;
                foreach (DataRow row in data.Rows)
                {
                    ListViewItem item = new ListViewItem((i++).ToString());
                    item.SubItems.Add(row["MaCTSanPham"].ToString());
                    item.SubItems.Add(row["TenSanPham"].ToString());
                    item.SubItems.Add(row["TenQuay"].ToString());
                    item.SubItems.Add(row["TenLoaiSanPham"].ToString());
                    item.SubItems.Add(row["TenNhaCungCap"].ToString());
                    item.SubItems.Add(row["TenDVT"].ToString());
                    item.SubItems.Add(row["DonGia"].ToString());
                    item.SubItems.Add(row["SoLuong"].ToString());
                    lvwSanPham.Items.Add(item);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
        }

        ///sự kiện click btnTimLuot
        ///chức năng: tìm kiếm sản phẩm và hiển thị lên list view
        ///mô tả:
        private void btnTimLuot_Click(object sender, EventArgs e)
        {
            string maSanPham;
            string tenSanPham;
            string maLoai;
            double? donGiaMin = null;
            double? donGiaMax = null;

            //lấy mã sản phẩm
            if (chb1MaSanPham.Checked)
                maSanPham = txt1MaSanPham.Text;
            else
                maSanPham = null;

            //lấy tên sản phẩm
            if (chb1TenSanPham.Checked)
                tenSanPham = txt1TenSanPham.Text;
            else
                tenSanPham = null;

            //lấy loại sản phẩm
            if (chb1LoaiSanPham.Checked)
            {
                try
                {
                    maLoai = (cbo1LoaiSanPham.SelectedItem as LoaiSanPham).MaLoaiSanPham;
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex.Message);
                    maLoai = null;
                }
            }
            else
                maLoai = null;

            //lấy đơn giá
            if (chb1DonGia.Checked)
            {
                try
                {
                    switch (cbo1DonGia.SelectedIndex)
                    {
                        case 0:
                            donGiaMin = 0.0f;
                            donGiaMax = 100000.0f;
                            break;
                        case 1:
                            donGiaMin = 100000.0f;
                            donGiaMax = 500000.0f;
                            break;
                        case 2:
                            donGiaMin = 500000.0f;
                            donGiaMax = null;
                            break;
                        default:
                            donGiaMin = null;
                            donGiaMax = null;
                            break;
                    }
                }
                catch (Exception ex)
                {
                    donGiaMin = null;
                    donGiaMax = null;
                    Debug.WriteLine(ex.Message);
                }
            }
            else
            {
                donGiaMin = null;
                donGiaMax = null;
            }

            lvwSanPham.Clear();
            //tìm kiếm trong kho
            if (rbtn1TrongKho.Checked)
            {
                BLLSanPham bllSanPham = new BLLSanPham();
                DataTable data = bllSanPham.Search(maSanPham, tenSanPham, maLoai, donGiaMin, donGiaMax);
                if (data == null)
                    MessageBox.Show("Có lỗi xảy ra trong quá trình truy vấn dữ liệu.", "Thông báo");
                else if (data.Rows.Count == 0)
                    MessageBox.Show("Không tìm thấy sản phẩm phù hợp.", "Thông báo");
                else
                    DisplayProduct(data);
            }
            //tìm kiếm trên quầy
            else
            {
                BLLCT_SanPham bllCtSanPham = new BLLCT_SanPham();
                DataTable data = bllCtSanPham.Search(maSanPham, tenSanPham, maLoai, donGiaMin, donGiaMax);
                if (data == null)
                    MessageBox.Show("Có lỗi xảy ra trong quá trình truy vấn dữ liệu.", "Thông báo");
                else if (data.Rows.Count == 0)
                    MessageBox.Show("Không tìm thấy sản phẩm phù hợp.", "Thông báo");
                else
                    DisplayDetailedProduct(data);
            }
        }

        ///sự kiện click Load Form
        ///chức năng: thêm các dữ liệu mặc định
        ///mô tả:
        private void GUITimKiemSanPham_Load(object sender, EventArgs e)
        {
            BLLLoaiSanPham bll = new BLLLoaiSanPham();
            List<LoaiSanPham> dsLoaiSP = bll.GetList();

            try
            {
                for (int i = 0; i < dsLoaiSP.Count; i++)
                    cbo1LoaiSanPham.Items.Add(dsLoaiSP[i]);
                cbo1LoaiSanPham.SelectedIndex = 0;
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }

            try
            {
                cbo1DonGia.Items.Add("0----100.000");
                cbo1DonGia.Items.Add("100.000----500.000");
                cbo1DonGia.Items.Add("500.000 trở lên");
                cbo1DonGia.SelectedIndex = 0;
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
        }

        ///sự kiện click btnClose
        ///chức năng: đóng Form
        ///mô tả:
        private void btnClose_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có đồng ý thoát không?", "Nhắc nhở", MessageBoxButtons.YesNo) == System.Windows.Forms.DialogResult.Yes)
                this.Close();
        }
    }
}