namespace QuanLyNhaSach.GUI
{
    partial class GUIQuanLyHoaDon
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.pnlTile = new System.Windows.Forms.Panel();
            this.pnlLeft = new System.Windows.Forms.Panel();
            this.pnlRight = new System.Windows.Forms.Panel();
            this.pnlButton = new System.Windows.Forms.Panel();
            this.pnlDSHoaDon = new System.Windows.Forms.Panel();
            this.rbarButton = new DevComponents.DotNetBar.RibbonBar();
            this.btnThem = new DevComponents.DotNetBar.ButtonItem();
            this.btnChinhSua = new DevComponents.DotNetBar.ButtonItem();
            this.btnXoa = new DevComponents.DotNetBar.ButtonItem();
            this.btnCapNhat = new DevComponents.DotNetBar.ButtonItem();
            this.btnTimKiem = new DevComponents.DotNetBar.ButtonItem();
            this.btnXemChiTiet = new DevComponents.DotNetBar.ButtonItem();
            this.lblMaHoaDon = new DevComponents.DotNetBar.LabelX();
            this.lblNhanVienLap = new DevComponents.DotNetBar.LabelX();
            this.lblTenKhachHang = new DevComponents.DotNetBar.LabelX();
            this.labelX1 = new DevComponents.DotNetBar.LabelX();
            this.chbMaHoaDon = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.chbNhanVienLap = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.cbhTenKhachHang = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.chbNgayLap = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.txtMaHoaDon = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.txtTenKhachHang = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.dgwDSHoaDon = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.clMaHoaDon = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clNgayLap = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clNhanVien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clKhachHang = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clThanhTien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnThoat = new DevComponents.DotNetBar.ButtonItem();
            this.cboNhanVienLap = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.dtNgayLap = new DevComponents.Editors.DateTimeAdv.DateTimeInput();
            this.pnlRight.SuspendLayout();
            this.pnlButton.SuspendLayout();
            this.pnlDSHoaDon.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgwDSHoaDon)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtNgayLap)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlTile
            // 
            this.pnlTile.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlTile.Location = new System.Drawing.Point(0, 0);
            this.pnlTile.Name = "pnlTile";
            this.pnlTile.Size = new System.Drawing.Size(784, 70);
            this.pnlTile.TabIndex = 0;
            // 
            // pnlLeft
            // 
            this.pnlLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnlLeft.Location = new System.Drawing.Point(0, 70);
            this.pnlLeft.Name = "pnlLeft";
            this.pnlLeft.Size = new System.Drawing.Size(200, 491);
            this.pnlLeft.TabIndex = 1;
            // 
            // pnlRight
            // 
            this.pnlRight.Controls.Add(this.pnlDSHoaDon);
            this.pnlRight.Controls.Add(this.pnlButton);
            this.pnlRight.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlRight.Location = new System.Drawing.Point(200, 70);
            this.pnlRight.Name = "pnlRight";
            this.pnlRight.Size = new System.Drawing.Size(584, 491);
            this.pnlRight.TabIndex = 2;
            // 
            // pnlButton
            // 
            this.pnlButton.Controls.Add(this.rbarButton);
            this.pnlButton.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlButton.Location = new System.Drawing.Point(0, 0);
            this.pnlButton.Name = "pnlButton";
            this.pnlButton.Size = new System.Drawing.Size(584, 64);
            this.pnlButton.TabIndex = 0;
            // 
            // pnlDSHoaDon
            // 
            this.pnlDSHoaDon.Controls.Add(this.dtNgayLap);
            this.pnlDSHoaDon.Controls.Add(this.cboNhanVienLap);
            this.pnlDSHoaDon.Controls.Add(this.dgwDSHoaDon);
            this.pnlDSHoaDon.Controls.Add(this.txtTenKhachHang);
            this.pnlDSHoaDon.Controls.Add(this.txtMaHoaDon);
            this.pnlDSHoaDon.Controls.Add(this.chbNgayLap);
            this.pnlDSHoaDon.Controls.Add(this.cbhTenKhachHang);
            this.pnlDSHoaDon.Controls.Add(this.chbNhanVienLap);
            this.pnlDSHoaDon.Controls.Add(this.chbMaHoaDon);
            this.pnlDSHoaDon.Controls.Add(this.labelX1);
            this.pnlDSHoaDon.Controls.Add(this.lblTenKhachHang);
            this.pnlDSHoaDon.Controls.Add(this.lblNhanVienLap);
            this.pnlDSHoaDon.Controls.Add(this.lblMaHoaDon);
            this.pnlDSHoaDon.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlDSHoaDon.Location = new System.Drawing.Point(0, 64);
            this.pnlDSHoaDon.Name = "pnlDSHoaDon";
            this.pnlDSHoaDon.Size = new System.Drawing.Size(584, 427);
            this.pnlDSHoaDon.TabIndex = 1;
            // 
            // rbarButton
            // 
            this.rbarButton.AutoOverflowEnabled = true;
            // 
            // 
            // 
            this.rbarButton.BackgroundMouseOverStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            // 
            // 
            // 
            this.rbarButton.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.rbarButton.ContainerControlProcessDialogKey = true;
            this.rbarButton.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rbarButton.DragDropSupport = true;
            this.rbarButton.HorizontalItemAlignment = DevComponents.DotNetBar.eHorizontalItemsAlignment.Center;
            this.rbarButton.Items.AddRange(new DevComponents.DotNetBar.BaseItem[] {
            this.btnThem,
            this.btnChinhSua,
            this.btnXoa,
            this.btnCapNhat,
            this.btnTimKiem,
            this.btnXemChiTiet,
            this.btnThoat});
            this.rbarButton.Location = new System.Drawing.Point(0, 0);
            this.rbarButton.Name = "rbarButton";
            this.rbarButton.Size = new System.Drawing.Size(584, 64);
            this.rbarButton.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.rbarButton.TabIndex = 0;
            // 
            // 
            // 
            this.rbarButton.TitleStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            // 
            // 
            // 
            this.rbarButton.TitleStyleMouseOver.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.rbarButton.VerticalItemAlignment = DevComponents.DotNetBar.eVerticalItemsAlignment.Middle;
            // 
            // btnThem
            // 
            this.btnThem.FixedSize = new System.Drawing.Size(64, 64);
            this.btnThem.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnThem.Name = "btnThem";
            this.btnThem.SubItemsExpandWidth = 14;
            this.btnThem.Text = "Thêm";
            // 
            // btnChinhSua
            // 
            this.btnChinhSua.FixedSize = new System.Drawing.Size(64, 64);
            this.btnChinhSua.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnChinhSua.Name = "btnChinhSua";
            this.btnChinhSua.SubItemsExpandWidth = 14;
            this.btnChinhSua.Text = "Chỉnh Sửa";
            // 
            // btnXoa
            // 
            this.btnXoa.FixedSize = new System.Drawing.Size(64, 64);
            this.btnXoa.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.SubItemsExpandWidth = 14;
            this.btnXoa.Text = "Xóa";
            // 
            // btnCapNhat
            // 
            this.btnCapNhat.FixedSize = new System.Drawing.Size(64, 64);
            this.btnCapNhat.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnCapNhat.Name = "btnCapNhat";
            this.btnCapNhat.SubItemsExpandWidth = 14;
            this.btnCapNhat.Text = "Cập Nhật";
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.FixedSize = new System.Drawing.Size(64, 64);
            this.btnTimKiem.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.SubItemsExpandWidth = 14;
            this.btnTimKiem.Text = "Tìm Kiếm";
            // 
            // btnXemChiTiet
            // 
            this.btnXemChiTiet.FixedSize = new System.Drawing.Size(64, 64);
            this.btnXemChiTiet.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnXemChiTiet.Name = "btnXemChiTiet";
            this.btnXemChiTiet.SubItemsExpandWidth = 14;
            this.btnXemChiTiet.Text = "Chi Tiết";
            // 
            // lblMaHoaDon
            // 
            // 
            // 
            // 
            this.labelX1.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lblMaHoaDon.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMaHoaDon.Location = new System.Drawing.Point(80, 30);
            this.lblMaHoaDon.Name = "lblMaHoaDon";
            this.lblMaHoaDon.Size = new System.Drawing.Size(129, 23);
            this.lblMaHoaDon.TabIndex = 0;
            this.lblMaHoaDon.Text = "Mã Hóa Đơn:";
            // 
            // lblNhanVienLap
            // 
            // 
            // 
            // 
            this.labelX1.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lblNhanVienLap.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNhanVienLap.Location = new System.Drawing.Point(80, 59);
            this.lblNhanVienLap.Name = "lblNhanVienLap";
            this.lblNhanVienLap.Size = new System.Drawing.Size(129, 23);
            this.lblNhanVienLap.TabIndex = 1;
            this.lblNhanVienLap.Text = "Nhân Viên Lập:";
            // 
            // lblTenKhachHang
            // 
            // 
            // 
            // 
            this.lblTenKhachHang.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lblTenKhachHang.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTenKhachHang.Location = new System.Drawing.Point(80, 88);
            this.lblTenKhachHang.Name = "lblTenKhachHang";
            this.lblTenKhachHang.Size = new System.Drawing.Size(129, 23);
            this.lblTenKhachHang.TabIndex = 2;
            this.lblTenKhachHang.Text = "Tên Khách Hàng:";
            // 
            // labelX1
            // 
            // 
            // 
            // 
            this.labelX1.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.labelX1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelX1.Location = new System.Drawing.Point(80, 117);
            this.labelX1.Name = "labelX1";
            this.labelX1.Size = new System.Drawing.Size(129, 23);
            this.labelX1.TabIndex = 3;
            this.labelX1.Text = "Ngày Lập:";
            // 
            // chbMaHoaDon
            // 
            // 
            // 
            // 
            this.chbMaHoaDon.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.chbMaHoaDon.CheckSignSize = new System.Drawing.Size(15, 15);
            this.chbMaHoaDon.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chbMaHoaDon.Location = new System.Drawing.Point(56, 30);
            this.chbMaHoaDon.Name = "chbMaHoaDon";
            this.chbMaHoaDon.Size = new System.Drawing.Size(18, 23);
            this.chbMaHoaDon.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.chbMaHoaDon.TabIndex = 4;
            // 
            // chbNhanVienLap
            // 
            // 
            // 
            // 
            this.chbNhanVienLap.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.chbNhanVienLap.CheckSignSize = new System.Drawing.Size(15, 15);
            this.chbNhanVienLap.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chbNhanVienLap.Location = new System.Drawing.Point(56, 59);
            this.chbNhanVienLap.Name = "chbNhanVienLap";
            this.chbNhanVienLap.Size = new System.Drawing.Size(18, 23);
            this.chbNhanVienLap.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.chbNhanVienLap.TabIndex = 5;
            // 
            // cbhTenKhachHang
            // 
            // 
            // 
            // 
            this.cbhTenKhachHang.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.cbhTenKhachHang.CheckSignSize = new System.Drawing.Size(15, 15);
            this.cbhTenKhachHang.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbhTenKhachHang.Location = new System.Drawing.Point(56, 88);
            this.cbhTenKhachHang.Name = "cbhTenKhachHang";
            this.cbhTenKhachHang.Size = new System.Drawing.Size(18, 23);
            this.cbhTenKhachHang.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.cbhTenKhachHang.TabIndex = 6;
            // 
            // chbNgayLap
            // 
            // 
            // 
            // 
            this.chbNgayLap.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.chbNgayLap.CheckSignSize = new System.Drawing.Size(15, 15);
            this.chbNgayLap.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chbNgayLap.Location = new System.Drawing.Point(56, 117);
            this.chbNgayLap.Name = "chbNgayLap";
            this.chbNgayLap.Size = new System.Drawing.Size(18, 23);
            this.chbNgayLap.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.chbNgayLap.TabIndex = 7;
            // 
            // txtMaHoaDon
            // 
            // 
            // 
            // 
            this.txtMaHoaDon.Border.Class = "TextBoxBorder";
            this.txtMaHoaDon.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txtMaHoaDon.ButtonCustom.Tooltip = "";
            this.txtMaHoaDon.ButtonCustom2.Tooltip = "";
            this.txtMaHoaDon.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaHoaDon.Location = new System.Drawing.Point(215, 27);
            this.txtMaHoaDon.Name = "txtMaHoaDon";
            this.txtMaHoaDon.PreventEnterBeep = true;
            this.txtMaHoaDon.Size = new System.Drawing.Size(200, 26);
            this.txtMaHoaDon.TabIndex = 8;
            // 
            // txtTenKhachHang
            // 
            // 
            // 
            // 
            this.txtTenKhachHang.Border.Class = "TextBoxBorder";
            this.txtTenKhachHang.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txtTenKhachHang.ButtonCustom.Tooltip = "";
            this.txtTenKhachHang.ButtonCustom2.Tooltip = "";
            this.txtTenKhachHang.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTenKhachHang.Location = new System.Drawing.Point(215, 85);
            this.txtTenKhachHang.Name = "txtTenKhachHang";
            this.txtTenKhachHang.PreventEnterBeep = true;
            this.txtTenKhachHang.Size = new System.Drawing.Size(200, 26);
            this.txtTenKhachHang.TabIndex = 10;
            // 
            // dgwDSHoaDon
            // 
            this.dgwDSHoaDon.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgwDSHoaDon.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgwDSHoaDon.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgwDSHoaDon.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgwDSHoaDon.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.clMaHoaDon,
            this.clNgayLap,
            this.clNhanVien,
            this.clKhachHang,
            this.clThanhTien});
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgwDSHoaDon.DefaultCellStyle = dataGridViewCellStyle1;
            this.dgwDSHoaDon.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dgwDSHoaDon.Location = new System.Drawing.Point(10, 160);
            this.dgwDSHoaDon.Name = "dgwDSHoaDon";
            this.dgwDSHoaDon.Size = new System.Drawing.Size(562, 255);
            this.dgwDSHoaDon.TabIndex = 12;
            // 
            // clMaHoaDon
            // 
            this.clMaHoaDon.HeaderText = "Mã Hóa Đơn";
            this.clMaHoaDon.Name = "clMaHoaDon";
            this.clMaHoaDon.ReadOnly = true;
            // 
            // clNgayLap
            // 
            this.clNgayLap.HeaderText = "Ngày Lập";
            this.clNgayLap.Name = "clNgayLap";
            this.clNgayLap.ReadOnly = true;
            // 
            // clNhanVien
            // 
            this.clNhanVien.HeaderText = "Tên Nhân Viên";
            this.clNhanVien.Name = "clNhanVien";
            this.clNhanVien.ReadOnly = true;
            // 
            // clKhachHang
            // 
            this.clKhachHang.HeaderText = "Tên Khách Hàng";
            this.clKhachHang.Name = "clKhachHang";
            this.clKhachHang.ReadOnly = true;
            // 
            // clThanhTien
            // 
            this.clThanhTien.HeaderText = "Thành Tiền";
            this.clThanhTien.Name = "clThanhTien";
            this.clThanhTien.ReadOnly = true;
            // 
            // btnThoat
            // 
            this.btnThoat.FixedSize = new System.Drawing.Size(64, 64);
            this.btnThoat.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.SubItemsExpandWidth = 14;
            this.btnThoat.Text = "Thoát";
            // 
            // cboNhanVienLap
            // 
            this.cboNhanVienLap.DisplayMember = "Text";
            this.cboNhanVienLap.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cboNhanVienLap.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboNhanVienLap.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboNhanVienLap.FormattingEnabled = true;
            this.cboNhanVienLap.ItemHeight = 20;
            this.cboNhanVienLap.Location = new System.Drawing.Point(215, 56);
            this.cboNhanVienLap.Name = "cboNhanVienLap";
            this.cboNhanVienLap.Size = new System.Drawing.Size(200, 26);
            this.cboNhanVienLap.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.cboNhanVienLap.TabIndex = 13;
            // 
            // dtNgayLap
            // 
            this.dtNgayLap.AllowEmptyState = false;
            // 
            // 
            // 
            this.dtNgayLap.BackgroundStyle.Class = "DateTimeInputBackground";
            this.dtNgayLap.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dtNgayLap.ButtonClear.Tooltip = "";
            this.dtNgayLap.ButtonCustom.Tooltip = "";
            this.dtNgayLap.ButtonCustom2.Tooltip = "";
            this.dtNgayLap.ButtonDropDown.Shortcut = DevComponents.DotNetBar.eShortcut.AltDown;
            this.dtNgayLap.ButtonDropDown.Tooltip = "";
            this.dtNgayLap.ButtonDropDown.Visible = true;
            this.dtNgayLap.ButtonFreeText.Tooltip = "";
            this.dtNgayLap.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtNgayLap.IsPopupCalendarOpen = false;
            this.dtNgayLap.Location = new System.Drawing.Point(215, 114);
            // 
            // 
            // 
            this.dtNgayLap.MonthCalendar.AnnuallyMarkedDates = new System.DateTime[0];
            // 
            // 
            // 
            this.dtNgayLap.MonthCalendar.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dtNgayLap.MonthCalendar.CalendarDimensions = new System.Drawing.Size(1, 1);
            this.dtNgayLap.MonthCalendar.ClearButtonVisible = true;
            // 
            // 
            // 
            this.dtNgayLap.MonthCalendar.CommandsBackgroundStyle.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.BarBackground2;
            this.dtNgayLap.MonthCalendar.CommandsBackgroundStyle.BackColorGradientAngle = 90;
            this.dtNgayLap.MonthCalendar.CommandsBackgroundStyle.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.BarBackground;
            this.dtNgayLap.MonthCalendar.CommandsBackgroundStyle.BorderTop = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.dtNgayLap.MonthCalendar.CommandsBackgroundStyle.BorderTopColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.BarDockedBorder;
            this.dtNgayLap.MonthCalendar.CommandsBackgroundStyle.BorderTopWidth = 1;
            this.dtNgayLap.MonthCalendar.CommandsBackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dtNgayLap.MonthCalendar.DisplayMonth = new System.DateTime(2015, 5, 1, 0, 0, 0, 0);
            this.dtNgayLap.MonthCalendar.FirstDayOfWeek = System.DayOfWeek.Monday;
            this.dtNgayLap.MonthCalendar.MarkedDates = new System.DateTime[0];
            this.dtNgayLap.MonthCalendar.MonthlyMarkedDates = new System.DateTime[0];
            // 
            // 
            // 
            this.dtNgayLap.MonthCalendar.NavigationBackgroundStyle.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground2;
            this.dtNgayLap.MonthCalendar.NavigationBackgroundStyle.BackColorGradientAngle = 90;
            this.dtNgayLap.MonthCalendar.NavigationBackgroundStyle.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground;
            this.dtNgayLap.MonthCalendar.NavigationBackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dtNgayLap.MonthCalendar.TodayButtonVisible = true;
            this.dtNgayLap.MonthCalendar.WeeklyMarkedDays = new System.DayOfWeek[0];
            this.dtNgayLap.Name = "dtNgayLap";
            this.dtNgayLap.Size = new System.Drawing.Size(200, 26);
            this.dtNgayLap.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.dtNgayLap.TabIndex = 14;
            // 
            // GUIQuanLyHoaDon
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Window;
            this.ClientSize = new System.Drawing.Size(784, 561);
            this.Controls.Add(this.pnlRight);
            this.Controls.Add(this.pnlLeft);
            this.Controls.Add(this.pnlTile);
            this.DoubleBuffered = true;
            this.Name = "GUIQuanLyHoaDon";
            this.Text = "QUẢN LÝ HÓA ĐƠN";
            this.pnlRight.ResumeLayout(false);
            this.pnlButton.ResumeLayout(false);
            this.pnlDSHoaDon.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgwDSHoaDon)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtNgayLap)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlTile;
        private System.Windows.Forms.Panel pnlLeft;
        private System.Windows.Forms.Panel pnlRight;
        private System.Windows.Forms.Panel pnlButton;
        private System.Windows.Forms.Panel pnlDSHoaDon;
        private DevComponents.DotNetBar.RibbonBar rbarButton;
        private DevComponents.DotNetBar.ButtonItem btnThem;
        private DevComponents.DotNetBar.ButtonItem btnChinhSua;
        private DevComponents.DotNetBar.ButtonItem btnXoa;
        private DevComponents.DotNetBar.ButtonItem btnCapNhat;
        private DevComponents.DotNetBar.ButtonItem btnTimKiem;
        private DevComponents.DotNetBar.ButtonItem btnXemChiTiet;
        private DevComponents.DotNetBar.LabelX lblMaHoaDon;
        private DevComponents.DotNetBar.LabelX lblNhanVienLap;
        private DevComponents.DotNetBar.LabelX lblTenKhachHang;
        private DevComponents.DotNetBar.LabelX labelX1;
        private DevComponents.DotNetBar.Controls.CheckBoxX chbMaHoaDon;
        private DevComponents.DotNetBar.Controls.CheckBoxX chbNgayLap;
        private DevComponents.DotNetBar.Controls.CheckBoxX cbhTenKhachHang;
        private DevComponents.DotNetBar.Controls.CheckBoxX chbNhanVienLap;
        private DevComponents.DotNetBar.Controls.TextBoxX txtMaHoaDon;
        private DevComponents.DotNetBar.Controls.TextBoxX txtTenKhachHang;
        private DevComponents.DotNetBar.Controls.DataGridViewX dgwDSHoaDon;
        private System.Windows.Forms.DataGridViewTextBoxColumn clMaHoaDon;
        private System.Windows.Forms.DataGridViewTextBoxColumn clNgayLap;
        private System.Windows.Forms.DataGridViewTextBoxColumn clNhanVien;
        private System.Windows.Forms.DataGridViewTextBoxColumn clKhachHang;
        private System.Windows.Forms.DataGridViewTextBoxColumn clThanhTien;
        private DevComponents.DotNetBar.ButtonItem btnThoat;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cboNhanVienLap;
        private DevComponents.Editors.DateTimeAdv.DateTimeInput dtNgayLap;

    }
}