﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

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
        public GUIQuanLyNhaSach()
        {
            InitializeComponent();
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
    }
}
