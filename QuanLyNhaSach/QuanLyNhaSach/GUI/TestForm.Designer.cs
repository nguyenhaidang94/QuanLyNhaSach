namespace QuanLyNhaSach.GUI
{
    partial class TestForm
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.pnlLapHoaDon = new System.Windows.Forms.Panel();
            this.txt2TongTien = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.dt2NgayLap = new DevComponents.Editors.DateTimeAdv.DateTimeInput();
            this.dgwDSSanPham = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.cl2MaSanPham = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cl2GiaBan = new DevComponents.DotNetBar.Controls.DataGridViewDoubleInputColumn();
            this.cl2SoLuong = new DevComponents.DotNetBar.Controls.DataGridViewIntegerInputColumn();
            this.cl2ThanhTien = new DevComponents.DotNetBar.Controls.DataGridViewDoubleInputColumn();
            this.txt2TenKhachHang = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.txt2NhanVien = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.lbl2NgayLap = new DevComponents.DotNetBar.LabelX();
            this.lbl2TenKhachHang = new DevComponents.DotNetBar.LabelX();
            this.lbl2TongTien = new DevComponents.DotNetBar.LabelX();
            this.lbl2NhanVien = new DevComponents.DotNetBar.LabelX();
            this.pnlLapHoaDon.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dt2NgayLap)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgwDSSanPham)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlLapHoaDon
            // 
            this.pnlLapHoaDon.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(194)))), ((int)(((byte)(217)))), ((int)(((byte)(247)))));
            this.pnlLapHoaDon.Controls.Add(this.txt2TongTien);
            this.pnlLapHoaDon.Controls.Add(this.dt2NgayLap);
            this.pnlLapHoaDon.Controls.Add(this.dgwDSSanPham);
            this.pnlLapHoaDon.Controls.Add(this.txt2TenKhachHang);
            this.pnlLapHoaDon.Controls.Add(this.txt2NhanVien);
            this.pnlLapHoaDon.Controls.Add(this.lbl2NgayLap);
            this.pnlLapHoaDon.Controls.Add(this.lbl2TenKhachHang);
            this.pnlLapHoaDon.Controls.Add(this.lbl2TongTien);
            this.pnlLapHoaDon.Controls.Add(this.lbl2NhanVien);
            this.pnlLapHoaDon.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlLapHoaDon.Location = new System.Drawing.Point(0, 0);
            this.pnlLapHoaDon.Name = "pnlLapHoaDon";
            this.pnlLapHoaDon.Size = new System.Drawing.Size(784, 561);
            this.pnlLapHoaDon.TabIndex = 17;
            this.pnlLapHoaDon.Visible = false;
            // 
            // txt2TongTien
            // 
            // 
            // 
            // 
            this.txt2TongTien.Border.Class = "TextBoxBorder";
            this.txt2TongTien.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txt2TongTien.ButtonCustom.Tooltip = "";
            this.txt2TongTien.ButtonCustom2.Tooltip = "";
            this.txt2TongTien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt2TongTien.Location = new System.Drawing.Point(570, 27);
            this.txt2TongTien.Name = "txt2TongTien";
            this.txt2TongTien.PreventEnterBeep = true;
            this.txt2TongTien.ReadOnly = true;
            this.txt2TongTien.Size = new System.Drawing.Size(200, 26);
            this.txt2TongTien.TabIndex = 15;
            // 
            // dt2NgayLap
            // 
            this.dt2NgayLap.AllowEmptyState = false;
            // 
            // 
            // 
            this.dt2NgayLap.BackgroundStyle.Class = "DateTimeInputBackground";
            this.dt2NgayLap.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dt2NgayLap.ButtonClear.Tooltip = "";
            this.dt2NgayLap.ButtonCustom.Tooltip = "";
            this.dt2NgayLap.ButtonCustom2.Tooltip = "";
            this.dt2NgayLap.ButtonDropDown.Shortcut = DevComponents.DotNetBar.eShortcut.AltDown;
            this.dt2NgayLap.ButtonDropDown.Tooltip = "";
            this.dt2NgayLap.ButtonFreeText.Tooltip = "";
            this.dt2NgayLap.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dt2NgayLap.IsInputReadOnly = true;
            this.dt2NgayLap.IsPopupCalendarOpen = false;
            this.dt2NgayLap.Location = new System.Drawing.Point(570, 70);
            // 
            // 
            // 
            this.dt2NgayLap.MonthCalendar.AnnuallyMarkedDates = new System.DateTime[0];
            // 
            // 
            // 
            this.dt2NgayLap.MonthCalendar.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dt2NgayLap.MonthCalendar.CalendarDimensions = new System.Drawing.Size(1, 1);
            this.dt2NgayLap.MonthCalendar.ClearButtonVisible = true;
            // 
            // 
            // 
            this.dt2NgayLap.MonthCalendar.CommandsBackgroundStyle.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.BarBackground2;
            this.dt2NgayLap.MonthCalendar.CommandsBackgroundStyle.BackColorGradientAngle = 90;
            this.dt2NgayLap.MonthCalendar.CommandsBackgroundStyle.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.BarBackground;
            this.dt2NgayLap.MonthCalendar.CommandsBackgroundStyle.BorderTop = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.dt2NgayLap.MonthCalendar.CommandsBackgroundStyle.BorderTopColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.BarDockedBorder;
            this.dt2NgayLap.MonthCalendar.CommandsBackgroundStyle.BorderTopWidth = 1;
            this.dt2NgayLap.MonthCalendar.CommandsBackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dt2NgayLap.MonthCalendar.DisplayMonth = new System.DateTime(2015, 5, 1, 0, 0, 0, 0);
            this.dt2NgayLap.MonthCalendar.FirstDayOfWeek = System.DayOfWeek.Monday;
            this.dt2NgayLap.MonthCalendar.MarkedDates = new System.DateTime[0];
            this.dt2NgayLap.MonthCalendar.MonthlyMarkedDates = new System.DateTime[0];
            // 
            // 
            // 
            this.dt2NgayLap.MonthCalendar.NavigationBackgroundStyle.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground2;
            this.dt2NgayLap.MonthCalendar.NavigationBackgroundStyle.BackColorGradientAngle = 90;
            this.dt2NgayLap.MonthCalendar.NavigationBackgroundStyle.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground;
            this.dt2NgayLap.MonthCalendar.NavigationBackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dt2NgayLap.MonthCalendar.TodayButtonVisible = true;
            this.dt2NgayLap.MonthCalendar.WeeklyMarkedDays = new System.DayOfWeek[0];
            this.dt2NgayLap.Name = "dt2NgayLap";
            this.dt2NgayLap.Size = new System.Drawing.Size(200, 26);
            this.dt2NgayLap.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.dt2NgayLap.TabIndex = 14;
            this.dt2NgayLap.Value = new System.DateTime(2015, 5, 25, 23, 57, 23, 651);
            // 
            // dgwDSSanPham
            // 
            this.dgwDSSanPham.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgwDSSanPham.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgwDSSanPham.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dgwDSSanPham.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.cl2MaSanPham,
            this.cl2GiaBan,
            this.cl2SoLuong,
            this.cl2ThanhTien});
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgwDSSanPham.DefaultCellStyle = dataGridViewCellStyle2;
            this.dgwDSSanPham.EnableHeadersVisualStyles = false;
            this.dgwDSSanPham.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dgwDSSanPham.Location = new System.Drawing.Point(10, 120);
            this.dgwDSSanPham.Name = "dgwDSSanPham";
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgwDSSanPham.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.dgwDSSanPham.Size = new System.Drawing.Size(746, 320);
            this.dgwDSSanPham.TabIndex = 12;
            // 
            // cl2MaSanPham
            // 
            this.cl2MaSanPham.HeaderText = "Mã Sản Phẩm";
            this.cl2MaSanPham.Name = "cl2MaSanPham";
            this.cl2MaSanPham.ReadOnly = true;
            // 
            // cl2GiaBan
            // 
            // 
            // 
            // 
            this.cl2GiaBan.BackgroundStyle.BackColor = System.Drawing.SystemColors.Window;
            this.cl2GiaBan.BackgroundStyle.Class = "DataGridViewNumericBorder";
            this.cl2GiaBan.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.cl2GiaBan.BackgroundStyle.TextColor = System.Drawing.SystemColors.WindowText;
            this.cl2GiaBan.ButtonClear.Tooltip = "";
            this.cl2GiaBan.ButtonCustom.Tooltip = "";
            this.cl2GiaBan.ButtonCustom2.Tooltip = "";
            this.cl2GiaBan.ButtonDropDown.Tooltip = "";
            this.cl2GiaBan.ButtonFreeText.Tooltip = "";
            this.cl2GiaBan.HeaderText = "Giá Bán";
            this.cl2GiaBan.Increment = 1D;
            this.cl2GiaBan.InputHorizontalAlignment = DevComponents.Editors.eHorizontalAlignment.Left;
            this.cl2GiaBan.Name = "cl2GiaBan";
            this.cl2GiaBan.ReadOnly = true;
            this.cl2GiaBan.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // cl2SoLuong
            // 
            // 
            // 
            // 
            this.cl2SoLuong.BackgroundStyle.BackColor = System.Drawing.SystemColors.Window;
            this.cl2SoLuong.BackgroundStyle.Class = "DataGridViewNumericBorder";
            this.cl2SoLuong.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.cl2SoLuong.BackgroundStyle.TextColor = System.Drawing.SystemColors.WindowText;
            this.cl2SoLuong.ButtonClear.Tooltip = "";
            this.cl2SoLuong.ButtonCustom.Tooltip = "";
            this.cl2SoLuong.ButtonCustom2.Tooltip = "";
            this.cl2SoLuong.ButtonDropDown.Tooltip = "";
            this.cl2SoLuong.ButtonFreeText.Tooltip = "";
            this.cl2SoLuong.HeaderText = "Số Lượng";
            this.cl2SoLuong.InputHorizontalAlignment = DevComponents.Editors.eHorizontalAlignment.Left;
            this.cl2SoLuong.Name = "cl2SoLuong";
            this.cl2SoLuong.ReadOnly = true;
            this.cl2SoLuong.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // cl2ThanhTien
            // 
            // 
            // 
            // 
            this.cl2ThanhTien.BackgroundStyle.BackColor = System.Drawing.SystemColors.Window;
            this.cl2ThanhTien.BackgroundStyle.Class = "DataGridViewNumericBorder";
            this.cl2ThanhTien.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.cl2ThanhTien.BackgroundStyle.TextColor = System.Drawing.SystemColors.WindowText;
            this.cl2ThanhTien.ButtonClear.Tooltip = "";
            this.cl2ThanhTien.ButtonCustom.Tooltip = "";
            this.cl2ThanhTien.ButtonCustom2.Tooltip = "";
            this.cl2ThanhTien.ButtonDropDown.Tooltip = "";
            this.cl2ThanhTien.ButtonFreeText.Tooltip = "";
            this.cl2ThanhTien.HeaderText = "Thành Tiền";
            this.cl2ThanhTien.Increment = 1D;
            this.cl2ThanhTien.InputHorizontalAlignment = DevComponents.Editors.eHorizontalAlignment.Left;
            this.cl2ThanhTien.Name = "cl2ThanhTien";
            this.cl2ThanhTien.ReadOnly = true;
            this.cl2ThanhTien.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // txt2TenKhachHang
            // 
            // 
            // 
            // 
            this.txt2TenKhachHang.Border.Class = "TextBoxBorder";
            this.txt2TenKhachHang.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txt2TenKhachHang.ButtonCustom.Tooltip = "";
            this.txt2TenKhachHang.ButtonCustom2.Tooltip = "";
            this.txt2TenKhachHang.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt2TenKhachHang.Location = new System.Drawing.Point(179, 67);
            this.txt2TenKhachHang.Name = "txt2TenKhachHang";
            this.txt2TenKhachHang.PreventEnterBeep = true;
            this.txt2TenKhachHang.Size = new System.Drawing.Size(200, 26);
            this.txt2TenKhachHang.TabIndex = 10;
            // 
            // txt2NhanVien
            // 
            // 
            // 
            // 
            this.txt2NhanVien.Border.Class = "TextBoxBorder";
            this.txt2NhanVien.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txt2NhanVien.ButtonCustom.Tooltip = "";
            this.txt2NhanVien.ButtonCustom2.Tooltip = "";
            this.txt2NhanVien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt2NhanVien.Location = new System.Drawing.Point(179, 27);
            this.txt2NhanVien.Name = "txt2NhanVien";
            this.txt2NhanVien.PreventEnterBeep = true;
            this.txt2NhanVien.Size = new System.Drawing.Size(200, 26);
            this.txt2NhanVien.TabIndex = 8;
            // 
            // lbl2NgayLap
            // 
            // 
            // 
            // 
            this.lbl2NgayLap.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lbl2NgayLap.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl2NgayLap.Location = new System.Drawing.Point(435, 73);
            this.lbl2NgayLap.Name = "lbl2NgayLap";
            this.lbl2NgayLap.Size = new System.Drawing.Size(129, 23);
            this.lbl2NgayLap.TabIndex = 3;
            this.lbl2NgayLap.Text = "Ngày Lập:";
            // 
            // lbl2TenKhachHang
            // 
            // 
            // 
            // 
            this.lbl2TenKhachHang.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lbl2TenKhachHang.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl2TenKhachHang.Location = new System.Drawing.Point(44, 70);
            this.lbl2TenKhachHang.Name = "lbl2TenKhachHang";
            this.lbl2TenKhachHang.Size = new System.Drawing.Size(129, 23);
            this.lbl2TenKhachHang.TabIndex = 2;
            this.lbl2TenKhachHang.Text = "Tên Khách Hàng:";
            // 
            // lbl2TongTien
            // 
            // 
            // 
            // 
            this.lbl2TongTien.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lbl2TongTien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl2TongTien.Location = new System.Drawing.Point(435, 30);
            this.lbl2TongTien.Name = "lbl2TongTien";
            this.lbl2TongTien.Size = new System.Drawing.Size(129, 23);
            this.lbl2TongTien.TabIndex = 1;
            this.lbl2TongTien.Text = "Tổng Tiền:";
            // 
            // lbl2NhanVien
            // 
            // 
            // 
            // 
            this.lbl2NhanVien.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lbl2NhanVien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl2NhanVien.Location = new System.Drawing.Point(44, 30);
            this.lbl2NhanVien.Name = "lbl2NhanVien";
            this.lbl2NhanVien.Size = new System.Drawing.Size(129, 23);
            this.lbl2NhanVien.TabIndex = 0;
            this.lbl2NhanVien.Text = "Nhân Viên:";
            // 
            // TestForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(784, 561);
            this.Controls.Add(this.pnlLapHoaDon);
            this.DoubleBuffered = true;
            this.Name = "TestForm";
            this.Text = "TestForm";
            this.pnlLapHoaDon.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dt2NgayLap)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgwDSSanPham)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlLapHoaDon;
        private DevComponents.DotNetBar.Controls.TextBoxX txt2TongTien;
        private DevComponents.Editors.DateTimeAdv.DateTimeInput dt2NgayLap;
        private DevComponents.DotNetBar.Controls.DataGridViewX dgwDSSanPham;
        private System.Windows.Forms.DataGridViewTextBoxColumn cl2MaSanPham;
        private DevComponents.DotNetBar.Controls.DataGridViewDoubleInputColumn cl2GiaBan;
        private DevComponents.DotNetBar.Controls.DataGridViewIntegerInputColumn cl2SoLuong;
        private DevComponents.DotNetBar.Controls.DataGridViewDoubleInputColumn cl2ThanhTien;
        private DevComponents.DotNetBar.Controls.TextBoxX txt2TenKhachHang;
        private DevComponents.DotNetBar.Controls.TextBoxX txt2NhanVien;
        private DevComponents.DotNetBar.LabelX lbl2NgayLap;
        private DevComponents.DotNetBar.LabelX lbl2TenKhachHang;
        private DevComponents.DotNetBar.LabelX lbl2TongTien;
        private DevComponents.DotNetBar.LabelX lbl2NhanVien;

    }
}