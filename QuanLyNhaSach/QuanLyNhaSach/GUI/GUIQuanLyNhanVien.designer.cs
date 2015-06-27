namespace QuanLyNhaSach.GUI
{
    partial class GUIQuanLyNhanVien
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.pnlTile = new System.Windows.Forms.Panel();
            this.lblTitle = new DevComponents.DotNetBar.Controls.ReflectionLabel();
            this.pnlCenter = new System.Windows.Forms.Panel();
            this.pnlDSNhanVien = new System.Windows.Forms.Panel();
            this.cbo1ChucVu = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.dgwDSNhanVien = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.cl1MaNhanVien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cl1TenNhanVien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cl1ChucVu = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cl1DiaChi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cl1DienThoai = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cl1Luong = new DevComponents.DotNetBar.Controls.DataGridViewIntegerInputColumn();
            this.txt1TenNhanVien = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.txt1MaNhanVien = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.cbhTenNhanVien = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.chbChucVu = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.chbMaNhanVien = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.lbl1TenNhanVien = new DevComponents.DotNetBar.LabelX();
            this.lbl1ChucVu = new DevComponents.DotNetBar.LabelX();
            this.lbl1MaNhanVien = new DevComponents.DotNetBar.LabelX();
            this.pnlButton = new System.Windows.Forms.Panel();
            this.ribButton = new DevComponents.DotNetBar.RibbonBar();
            this.btnThem = new DevComponents.DotNetBar.ButtonItem();
            this.btnChinhSua = new DevComponents.DotNetBar.ButtonItem();
            this.btnXoa = new DevComponents.DotNetBar.ButtonItem();
            this.btnLuu = new DevComponents.DotNetBar.ButtonItem();
            this.btnTimKiem = new DevComponents.DotNetBar.ButtonItem();
            this.btnXemChiTiet = new DevComponents.DotNetBar.ButtonItem();
            this.btnTroLai = new DevComponents.DotNetBar.ButtonItem();
            this.btnThoat = new DevComponents.DotNetBar.ButtonItem();
            this.pnlTile.SuspendLayout();
            this.pnlCenter.SuspendLayout();
            this.pnlDSNhanVien.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgwDSNhanVien)).BeginInit();
            this.pnlButton.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnlTile
            // 
            this.pnlTile.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(194)))), ((int)(((byte)(217)))), ((int)(((byte)(247)))));
            this.pnlTile.Controls.Add(this.lblTitle);
            this.pnlTile.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlTile.Location = new System.Drawing.Point(0, 0);
            this.pnlTile.Name = "pnlTile";
            this.pnlTile.Size = new System.Drawing.Size(784, 70);
            this.pnlTile.TabIndex = 0;
            // 
            // lblTitle
            // 
            // 
            // 
            // 
            this.lblTitle.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lblTitle.BackgroundStyle.TextAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Center;
            this.lblTitle.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblTitle.Location = new System.Drawing.Point(0, 0);
            this.lblTitle.Name = "lblTitle";
            this.lblTitle.Size = new System.Drawing.Size(784, 70);
            this.lblTitle.TabIndex = 0;
            this.lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">Title</font></font></b>";
            // 
            // pnlCenter
            // 
            this.pnlCenter.Controls.Add(this.pnlDSNhanVien);
            this.pnlCenter.Controls.Add(this.pnlButton);
            this.pnlCenter.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlCenter.Location = new System.Drawing.Point(0, 70);
            this.pnlCenter.MinimumSize = new System.Drawing.Size(800, 600);
            this.pnlCenter.Name = "pnlCenter";
            this.pnlCenter.Size = new System.Drawing.Size(800, 600);
            this.pnlCenter.TabIndex = 2;
            // 
            // pnlDSNhanVien
            // 
            this.pnlDSNhanVien.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(194)))), ((int)(((byte)(217)))), ((int)(((byte)(247)))));
            this.pnlDSNhanVien.Controls.Add(this.cbo1ChucVu);
            this.pnlDSNhanVien.Controls.Add(this.dgwDSNhanVien);
            this.pnlDSNhanVien.Controls.Add(this.txt1TenNhanVien);
            this.pnlDSNhanVien.Controls.Add(this.txt1MaNhanVien);
            this.pnlDSNhanVien.Controls.Add(this.cbhTenNhanVien);
            this.pnlDSNhanVien.Controls.Add(this.chbChucVu);
            this.pnlDSNhanVien.Controls.Add(this.chbMaNhanVien);
            this.pnlDSNhanVien.Controls.Add(this.lbl1TenNhanVien);
            this.pnlDSNhanVien.Controls.Add(this.lbl1ChucVu);
            this.pnlDSNhanVien.Controls.Add(this.lbl1MaNhanVien);
            this.pnlDSNhanVien.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlDSNhanVien.Location = new System.Drawing.Point(0, 64);
            this.pnlDSNhanVien.Name = "pnlDSNhanVien";
            this.pnlDSNhanVien.Size = new System.Drawing.Size(800, 536);
            this.pnlDSNhanVien.TabIndex = 23;
            // 
            // cbo1ChucVu
            // 
            this.cbo1ChucVu.DisplayMember = "Text";
            this.cbo1ChucVu.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cbo1ChucVu.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbo1ChucVu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbo1ChucVu.FormattingEnabled = true;
            this.cbo1ChucVu.ItemHeight = 20;
            this.cbo1ChucVu.Location = new System.Drawing.Point(570, 27);
            this.cbo1ChucVu.Name = "cbo1ChucVu";
            this.cbo1ChucVu.Size = new System.Drawing.Size(200, 26);
            this.cbo1ChucVu.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.cbo1ChucVu.TabIndex = 13;
            // 
            // dgwDSNhanVien
            // 
            this.dgwDSNhanVien.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgwDSNhanVien.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgwDSNhanVien.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.dgwDSNhanVien.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.cl1MaNhanVien,
            this.cl1TenNhanVien,
            this.cl1ChucVu,
            this.cl1DiaChi,
            this.cl1DienThoai,
            this.cl1Luong});
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle5.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgwDSNhanVien.DefaultCellStyle = dataGridViewCellStyle5;
            this.dgwDSNhanVien.EnableHeadersVisualStyles = false;
            this.dgwDSNhanVien.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dgwDSNhanVien.Location = new System.Drawing.Point(10, 120);
            this.dgwDSNhanVien.MultiSelect = false;
            this.dgwDSNhanVien.Name = "dgwDSNhanVien";
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle6.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgwDSNhanVien.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
            this.dgwDSNhanVien.Size = new System.Drawing.Size(762, 436);
            this.dgwDSNhanVien.TabIndex = 12;
            // 
            // cl1MaNhanVien
            // 
            this.cl1MaNhanVien.HeaderText = "Mã nhân viên";
            this.cl1MaNhanVien.Name = "cl1MaNhanVien";
            this.cl1MaNhanVien.ReadOnly = true;
            // 
            // cl1TenNhanVien
            // 
            this.cl1TenNhanVien.HeaderText = "Tên nhân viên";
            this.cl1TenNhanVien.Name = "cl1TenNhanVien";
            this.cl1TenNhanVien.ReadOnly = true;
            // 
            // cl1ChucVu
            // 
            this.cl1ChucVu.HeaderText = "Chức vụ";
            this.cl1ChucVu.Name = "cl1ChucVu";
            this.cl1ChucVu.ReadOnly = true;
            // 
            // cl1DiaChi
            // 
            this.cl1DiaChi.HeaderText = "Địa chỉ";
            this.cl1DiaChi.Name = "cl1DiaChi";
            this.cl1DiaChi.ReadOnly = true;
            // 
            // cl1DienThoai
            // 
            this.cl1DienThoai.HeaderText = "Điện thoại";
            this.cl1DienThoai.Name = "cl1DienThoai";
            // 
            // cl1Luong
            // 
            // 
            // 
            // 
            this.cl1Luong.BackgroundStyle.BackColor = System.Drawing.SystemColors.Window;
            this.cl1Luong.BackgroundStyle.Class = "DataGridViewNumericBorder";
            this.cl1Luong.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.cl1Luong.BackgroundStyle.TextColor = System.Drawing.SystemColors.WindowText;
            this.cl1Luong.ButtonClear.Tooltip = "";
            this.cl1Luong.ButtonCustom.Tooltip = "";
            this.cl1Luong.ButtonCustom2.Tooltip = "";
            this.cl1Luong.ButtonDropDown.Tooltip = "";
            this.cl1Luong.ButtonFreeText.Tooltip = "";
            this.cl1Luong.HeaderText = "Lương";
            this.cl1Luong.InputHorizontalAlignment = DevComponents.Editors.eHorizontalAlignment.Left;
            this.cl1Luong.Name = "cl1Luong";
            // 
            // txt1TenNhanVien
            // 
            // 
            // 
            // 
            this.txt1TenNhanVien.Border.Class = "TextBoxBorder";
            this.txt1TenNhanVien.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txt1TenNhanVien.ButtonCustom.Tooltip = "";
            this.txt1TenNhanVien.ButtonCustom2.Tooltip = "";
            this.txt1TenNhanVien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt1TenNhanVien.Location = new System.Drawing.Point(217, 70);
            this.txt1TenNhanVien.Name = "txt1TenNhanVien";
            this.txt1TenNhanVien.PreventEnterBeep = true;
            this.txt1TenNhanVien.Size = new System.Drawing.Size(162, 26);
            this.txt1TenNhanVien.TabIndex = 8;
            // 
            // txt1MaNhanVien
            // 
            // 
            // 
            // 
            this.txt1MaNhanVien.Border.Class = "TextBoxBorder";
            this.txt1MaNhanVien.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txt1MaNhanVien.ButtonCustom.Tooltip = "";
            this.txt1MaNhanVien.ButtonCustom2.Tooltip = "";
            this.txt1MaNhanVien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt1MaNhanVien.Location = new System.Drawing.Point(217, 27);
            this.txt1MaNhanVien.Name = "txt1MaNhanVien";
            this.txt1MaNhanVien.PreventEnterBeep = true;
            this.txt1MaNhanVien.Size = new System.Drawing.Size(162, 26);
            this.txt1MaNhanVien.TabIndex = 8;
            // 
            // cbhTenNhanVien
            // 
            // 
            // 
            // 
            this.cbhTenNhanVien.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.cbhTenNhanVien.CheckSignSize = new System.Drawing.Size(15, 15);
            this.cbhTenNhanVien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbhTenNhanVien.Location = new System.Drawing.Point(20, 70);
            this.cbhTenNhanVien.Name = "cbhTenNhanVien";
            this.cbhTenNhanVien.Size = new System.Drawing.Size(18, 23);
            this.cbhTenNhanVien.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.cbhTenNhanVien.TabIndex = 6;
            // 
            // chbChucVu
            // 
            // 
            // 
            // 
            this.chbChucVu.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.chbChucVu.CheckSignSize = new System.Drawing.Size(15, 15);
            this.chbChucVu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chbChucVu.Location = new System.Drawing.Point(411, 30);
            this.chbChucVu.Name = "chbChucVu";
            this.chbChucVu.Size = new System.Drawing.Size(18, 23);
            this.chbChucVu.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.chbChucVu.TabIndex = 5;
            // 
            // chbMaNhanVien
            // 
            // 
            // 
            // 
            this.chbMaNhanVien.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.chbMaNhanVien.CheckSignSize = new System.Drawing.Size(15, 15);
            this.chbMaNhanVien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chbMaNhanVien.Location = new System.Drawing.Point(20, 30);
            this.chbMaNhanVien.Name = "chbMaNhanVien";
            this.chbMaNhanVien.Size = new System.Drawing.Size(18, 23);
            this.chbMaNhanVien.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.chbMaNhanVien.TabIndex = 4;
            // 
            // lbl1TenNhanVien
            // 
            // 
            // 
            // 
            this.lbl1TenNhanVien.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lbl1TenNhanVien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl1TenNhanVien.Location = new System.Drawing.Point(44, 70);
            this.lbl1TenNhanVien.Name = "lbl1TenNhanVien";
            this.lbl1TenNhanVien.Size = new System.Drawing.Size(184, 23);
            this.lbl1TenNhanVien.TabIndex = 2;
            this.lbl1TenNhanVien.Text = "Tên Nhân Viên:";
            // 
            // lbl1ChucVu
            // 
            // 
            // 
            // 
            this.lbl1ChucVu.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lbl1ChucVu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl1ChucVu.Location = new System.Drawing.Point(435, 30);
            this.lbl1ChucVu.Name = "lbl1ChucVu";
            this.lbl1ChucVu.Size = new System.Drawing.Size(129, 23);
            this.lbl1ChucVu.TabIndex = 1;
            this.lbl1ChucVu.Text = "Chức Vụ:";
            // 
            // lbl1MaNhanVien
            // 
            // 
            // 
            // 
            this.lbl1MaNhanVien.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lbl1MaNhanVien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl1MaNhanVien.Location = new System.Drawing.Point(44, 30);
            this.lbl1MaNhanVien.Name = "lbl1MaNhanVien";
            this.lbl1MaNhanVien.Size = new System.Drawing.Size(167, 23);
            this.lbl1MaNhanVien.TabIndex = 0;
            this.lbl1MaNhanVien.Text = "Mã Nhân Viên:";
            // 
            // pnlButton
            // 
            this.pnlButton.Controls.Add(this.ribButton);
            this.pnlButton.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlButton.Location = new System.Drawing.Point(0, 0);
            this.pnlButton.Name = "pnlButton";
            this.pnlButton.Size = new System.Drawing.Size(800, 64);
            this.pnlButton.TabIndex = 0;
            // 
            // ribButton
            // 
            this.ribButton.AutoOverflowEnabled = true;
            this.ribButton.BackgroundHoverEnabled = false;
            // 
            // 
            // 
            this.ribButton.BackgroundMouseOverStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            // 
            // 
            // 
            this.ribButton.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.ribButton.ContainerControlProcessDialogKey = true;
            this.ribButton.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ribButton.DragDropSupport = true;
            this.ribButton.Items.AddRange(new DevComponents.DotNetBar.BaseItem[] {
            this.btnThem,
            this.btnChinhSua,
            this.btnXoa,
            this.btnLuu,
            this.btnTimKiem,
            this.btnXemChiTiet,
            this.btnTroLai,
            this.btnThoat});
            this.ribButton.Location = new System.Drawing.Point(0, 0);
            this.ribButton.Name = "ribButton";
            this.ribButton.Size = new System.Drawing.Size(800, 64);
            this.ribButton.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.ribButton.TabIndex = 0;
            // 
            // 
            // 
            this.ribButton.TitleStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            // 
            // 
            // 
            this.ribButton.TitleStyleMouseOver.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.ribButton.VerticalItemAlignment = DevComponents.DotNetBar.eVerticalItemsAlignment.Middle;
            // 
            // btnThem
            // 
            this.btnThem.Enabled = false;
            this.btnThem.FixedSize = new System.Drawing.Size(64, 64);
            this.btnThem.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnThem.Name = "btnThem";
            this.btnThem.SubItemsExpandWidth = 14;
            this.btnThem.Text = "Thêm";
            // 
            // btnChinhSua
            // 
            this.btnChinhSua.Enabled = false;
            this.btnChinhSua.FixedSize = new System.Drawing.Size(64, 64);
            this.btnChinhSua.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnChinhSua.Name = "btnChinhSua";
            this.btnChinhSua.SubItemsExpandWidth = 14;
            this.btnChinhSua.Text = "Chỉnh Sửa";
            this.btnChinhSua.Visible = false;
            // 
            // btnXoa
            // 
            this.btnXoa.Enabled = false;
            this.btnXoa.FixedSize = new System.Drawing.Size(64, 64);
            this.btnXoa.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.SubItemsExpandWidth = 14;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.Visible = false;
            // 
            // btnLuu
            // 
            this.btnLuu.Enabled = false;
            this.btnLuu.FixedSize = new System.Drawing.Size(64, 64);
            this.btnLuu.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.SubItemsExpandWidth = 14;
            this.btnLuu.Text = "Lưu";
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.Enabled = false;
            this.btnTimKiem.FixedSize = new System.Drawing.Size(64, 64);
            this.btnTimKiem.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.SubItemsExpandWidth = 14;
            this.btnTimKiem.Text = "Tìm Kiếm";
            // 
            // btnXemChiTiet
            // 
            this.btnXemChiTiet.Enabled = false;
            this.btnXemChiTiet.FixedSize = new System.Drawing.Size(64, 64);
            this.btnXemChiTiet.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnXemChiTiet.Name = "btnXemChiTiet";
            this.btnXemChiTiet.SubItemsExpandWidth = 14;
            this.btnXemChiTiet.Text = "Chi Tiết";
            // 
            // btnTroLai
            // 
            this.btnTroLai.Enabled = false;
            this.btnTroLai.FixedSize = new System.Drawing.Size(64, 64);
            this.btnTroLai.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnTroLai.Name = "btnTroLai";
            this.btnTroLai.SubItemsExpandWidth = 14;
            this.btnTroLai.Text = "Trở Lại";
            // 
            // btnThoat
            // 
            this.btnThoat.FixedSize = new System.Drawing.Size(64, 64);
            this.btnThoat.ImagePosition = DevComponents.DotNetBar.eImagePosition.Top;
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.SubItemsExpandWidth = 14;
            this.btnThoat.Text = "Thoát";
            // 
            // GUIQuanLyNhanVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Window;
            this.ClientSize = new System.Drawing.Size(784, 561);
            this.Controls.Add(this.pnlCenter);
            this.Controls.Add(this.pnlTile);
            this.DoubleBuffered = true;
            this.Name = "GUIQuanLyNhanVien";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "QUẢN LÝ NHÂN VIÊN";
            this.pnlTile.ResumeLayout(false);
            this.pnlCenter.ResumeLayout(false);
            this.pnlDSNhanVien.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgwDSNhanVien)).EndInit();
            this.pnlButton.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlTile;
        private System.Windows.Forms.Panel pnlCenter;
        private System.Windows.Forms.Panel pnlButton;
        private DevComponents.DotNetBar.RibbonBar ribButton;
        private DevComponents.DotNetBar.ButtonItem btnThem;
        private DevComponents.DotNetBar.ButtonItem btnChinhSua;
        private DevComponents.DotNetBar.ButtonItem btnXoa;
        private DevComponents.DotNetBar.ButtonItem btnLuu;
        private DevComponents.DotNetBar.ButtonItem btnTimKiem;
        private DevComponents.DotNetBar.ButtonItem btnXemChiTiet;
        private DevComponents.DotNetBar.ButtonItem btnThoat;
        private DevComponents.DotNetBar.Controls.ReflectionLabel lblTitle;
        private DevComponents.DotNetBar.ButtonItem btnTroLai;
        private System.Windows.Forms.Panel pnlDSNhanVien;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cbo1ChucVu;
        private DevComponents.DotNetBar.Controls.DataGridViewX dgwDSNhanVien;
        private DevComponents.DotNetBar.Controls.TextBoxX txt1MaNhanVien;
        private DevComponents.DotNetBar.Controls.CheckBoxX cbhTenNhanVien;
        private DevComponents.DotNetBar.Controls.CheckBoxX chbChucVu;
        private DevComponents.DotNetBar.Controls.CheckBoxX chbMaNhanVien;
        private DevComponents.DotNetBar.LabelX lbl1TenNhanVien;
        private DevComponents.DotNetBar.LabelX lbl1ChucVu;
        private DevComponents.DotNetBar.LabelX lbl1MaNhanVien;
        private DevComponents.DotNetBar.Controls.TextBoxX txt1TenNhanVien;
        private System.Windows.Forms.DataGridViewTextBoxColumn cl1MaNhanVien;
        private System.Windows.Forms.DataGridViewTextBoxColumn cl1TenNhanVien;
        private System.Windows.Forms.DataGridViewTextBoxColumn cl1ChucVu;
        private System.Windows.Forms.DataGridViewTextBoxColumn cl1DiaChi;
        private System.Windows.Forms.DataGridViewTextBoxColumn cl1DienThoai;
        private DevComponents.DotNetBar.Controls.DataGridViewIntegerInputColumn cl1Luong;

    }
}