namespace QuanLyNhaSach.GUI
{
    partial class GUIQuanLyThu
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
            this.pnlTile = new System.Windows.Forms.Panel();
            this.lblTitle = new DevComponents.DotNetBar.Controls.ReflectionLabel();
            this.pnlCenter = new System.Windows.Forms.Panel();
            this.pnlLapPhieuThu = new System.Windows.Forms.Panel();
            this.txt1MaSanPham = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.txt2SoTien = new DevComponents.Editors.DoubleInput();
            this.txt2MaNhanVien = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.dt2NgayLap = new DevComponents.Editors.DateTimeAdv.DateTimeInput();
            this.lb2LyDo = new DevComponents.DotNetBar.LabelX();
            this.lbl2NgayLap = new DevComponents.DotNetBar.LabelX();
            this.lbl2SoTien = new DevComponents.DotNetBar.LabelX();
            this.lbl2MaNhanVien = new DevComponents.DotNetBar.LabelX();
            this.pnlDSPhieuThu = new System.Windows.Forms.Panel();
            this.dgw1DSPhieuThu = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewDoubleInputColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewDoubleInputColumn2 = new DevComponents.DotNetBar.Controls.DataGridViewDateTimeInputColumn();
            this.Column1 = new DevComponents.DotNetBar.Controls.DataGridViewIntegerInputColumn();
            this.dataGridViewIntegerInputColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.chbSoTien = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.chbNgayThu = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.chbNhanVienThu = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.chbMaPhieuThu = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.dt1NgayThu = new DevComponents.Editors.DateTimeAdv.DateTimeInput();
            this.lbl1NgayThu = new DevComponents.DotNetBar.LabelX();
            this.lbl1SoTien = new DevComponents.DotNetBar.LabelX();
            this.cbo1NhanVienThu = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.lb1NhanVienThu = new DevComponents.DotNetBar.LabelX();
            this.txt1SoTien = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.txt1MaPhieuThu = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.lbl1MaPhieuThu = new DevComponents.DotNetBar.LabelX();
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
            this.pnlLapPhieuThu.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txt2SoTien)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dt2NgayLap)).BeginInit();
            this.pnlDSPhieuThu.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgw1DSPhieuThu)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dt1NgayThu)).BeginInit();
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
            this.pnlTile.TabIndex = 5;
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
            this.pnlCenter.Controls.Add(this.pnlLapPhieuThu);
            this.pnlCenter.Controls.Add(this.pnlDSPhieuThu);
            this.pnlCenter.Controls.Add(this.pnlButton);
            this.pnlCenter.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlCenter.Location = new System.Drawing.Point(0, 70);
            this.pnlCenter.Name = "pnlCenter";
            this.pnlCenter.Size = new System.Drawing.Size(784, 491);
            this.pnlCenter.TabIndex = 6;
            // 
            // pnlLapPhieuThu
            // 
            this.pnlLapPhieuThu.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(194)))), ((int)(((byte)(217)))), ((int)(((byte)(247)))));
            this.pnlLapPhieuThu.Controls.Add(this.txt1MaSanPham);
            this.pnlLapPhieuThu.Controls.Add(this.txt2SoTien);
            this.pnlLapPhieuThu.Controls.Add(this.txt2MaNhanVien);
            this.pnlLapPhieuThu.Controls.Add(this.dt2NgayLap);
            this.pnlLapPhieuThu.Controls.Add(this.lb2LyDo);
            this.pnlLapPhieuThu.Controls.Add(this.lbl2NgayLap);
            this.pnlLapPhieuThu.Controls.Add(this.lbl2SoTien);
            this.pnlLapPhieuThu.Controls.Add(this.lbl2MaNhanVien);
            this.pnlLapPhieuThu.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlLapPhieuThu.Location = new System.Drawing.Point(0, 64);
            this.pnlLapPhieuThu.Name = "pnlLapPhieuThu";
            this.pnlLapPhieuThu.Size = new System.Drawing.Size(784, 427);
            this.pnlLapPhieuThu.TabIndex = 24;
            // 
            // txt1MaSanPham
            // 
            // 
            // 
            // 
            this.txt1MaSanPham.Border.Class = "TextBoxBorder";
            this.txt1MaSanPham.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txt1MaSanPham.ButtonCustom.Tooltip = "";
            this.txt1MaSanPham.ButtonCustom2.Tooltip = "";
            this.txt1MaSanPham.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt1MaSanPham.Location = new System.Drawing.Point(174, 155);
            this.txt1MaSanPham.Name = "txt1MaSanPham";
            this.txt1MaSanPham.PreventEnterBeep = true;
            this.txt1MaSanPham.Size = new System.Drawing.Size(200, 26);
            this.txt1MaSanPham.TabIndex = 27;
            // 
            // txt2SoTien
            // 
            // 
            // 
            // 
            this.txt2SoTien.BackgroundStyle.Class = "DateTimeInputBackground";
            this.txt2SoTien.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txt2SoTien.ButtonCalculator.Tooltip = "";
            this.txt2SoTien.ButtonClear.Tooltip = "";
            this.txt2SoTien.ButtonCustom.Tooltip = "";
            this.txt2SoTien.ButtonCustom2.Tooltip = "";
            this.txt2SoTien.ButtonDropDown.Tooltip = "";
            this.txt2SoTien.ButtonFreeText.Shortcut = DevComponents.DotNetBar.eShortcut.F2;
            this.txt2SoTien.ButtonFreeText.Tooltip = "";
            this.txt2SoTien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt2SoTien.Increment = 1D;
            this.txt2SoTien.IsInputReadOnly = true;
            this.txt2SoTien.Location = new System.Drawing.Point(174, 110);
            this.txt2SoTien.MinValue = 0D;
            this.txt2SoTien.Name = "txt2SoTien";
            this.txt2SoTien.Size = new System.Drawing.Size(200, 26);
            this.txt2SoTien.TabIndex = 25;
            // 
            // txt2MaNhanVien
            // 
            // 
            // 
            // 
            this.txt2MaNhanVien.Border.Class = "TextBoxBorder";
            this.txt2MaNhanVien.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txt2MaNhanVien.ButtonCustom.Tooltip = "";
            this.txt2MaNhanVien.ButtonCustom2.Tooltip = "";
            this.txt2MaNhanVien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt2MaNhanVien.Location = new System.Drawing.Point(174, 27);
            this.txt2MaNhanVien.Name = "txt2MaNhanVien";
            this.txt2MaNhanVien.PreventEnterBeep = true;
            this.txt2MaNhanVien.ReadOnly = true;
            this.txt2MaNhanVien.Size = new System.Drawing.Size(200, 26);
            this.txt2MaNhanVien.TabIndex = 24;
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
            this.dt2NgayLap.Location = new System.Drawing.Point(174, 67);
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
            this.dt2NgayLap.TabIndex = 18;
            this.dt2NgayLap.Value = new System.DateTime(2015, 6, 4, 22, 54, 22, 133);
            // 
            // lb2LyDo
            // 
            // 
            // 
            // 
            this.lb2LyDo.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lb2LyDo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb2LyDo.Location = new System.Drawing.Point(30, 158);
            this.lb2LyDo.Name = "lb2LyDo";
            this.lb2LyDo.Size = new System.Drawing.Size(138, 23);
            this.lb2LyDo.TabIndex = 15;
            this.lb2LyDo.Text = "Lý do:";
            // 
            // lbl2NgayLap
            // 
            // 
            // 
            // 
            this.lbl2NgayLap.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lbl2NgayLap.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl2NgayLap.Location = new System.Drawing.Point(32, 70);
            this.lbl2NgayLap.Name = "lbl2NgayLap";
            this.lbl2NgayLap.Size = new System.Drawing.Size(138, 23);
            this.lbl2NgayLap.TabIndex = 17;
            this.lbl2NgayLap.Text = "Ngày Lập:";
            // 
            // lbl2SoTien
            // 
            // 
            // 
            // 
            this.lbl2SoTien.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lbl2SoTien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl2SoTien.Location = new System.Drawing.Point(30, 113);
            this.lbl2SoTien.Name = "lbl2SoTien";
            this.lbl2SoTien.Size = new System.Drawing.Size(138, 23);
            this.lbl2SoTien.TabIndex = 15;
            this.lbl2SoTien.Text = "Số Tiền:";
            // 
            // lbl2MaNhanVien
            // 
            // 
            // 
            // 
            this.lbl2MaNhanVien.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lbl2MaNhanVien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl2MaNhanVien.Location = new System.Drawing.Point(30, 30);
            this.lbl2MaNhanVien.Name = "lbl2MaNhanVien";
            this.lbl2MaNhanVien.Size = new System.Drawing.Size(138, 23);
            this.lbl2MaNhanVien.TabIndex = 13;
            this.lbl2MaNhanVien.Text = "Mã Nhân Viên:";
            // 
            // pnlDSPhieuThu
            // 
            this.pnlDSPhieuThu.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(194)))), ((int)(((byte)(217)))), ((int)(((byte)(247)))));
            this.pnlDSPhieuThu.Controls.Add(this.dgw1DSPhieuThu);
            this.pnlDSPhieuThu.Controls.Add(this.chbSoTien);
            this.pnlDSPhieuThu.Controls.Add(this.chbNgayThu);
            this.pnlDSPhieuThu.Controls.Add(this.chbNhanVienThu);
            this.pnlDSPhieuThu.Controls.Add(this.chbMaPhieuThu);
            this.pnlDSPhieuThu.Controls.Add(this.dt1NgayThu);
            this.pnlDSPhieuThu.Controls.Add(this.lbl1NgayThu);
            this.pnlDSPhieuThu.Controls.Add(this.lbl1SoTien);
            this.pnlDSPhieuThu.Controls.Add(this.cbo1NhanVienThu);
            this.pnlDSPhieuThu.Controls.Add(this.lb1NhanVienThu);
            this.pnlDSPhieuThu.Controls.Add(this.txt1SoTien);
            this.pnlDSPhieuThu.Controls.Add(this.txt1MaPhieuThu);
            this.pnlDSPhieuThu.Controls.Add(this.lbl1MaPhieuThu);
            this.pnlDSPhieuThu.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlDSPhieuThu.Location = new System.Drawing.Point(0, 64);
            this.pnlDSPhieuThu.Name = "pnlDSPhieuThu";
            this.pnlDSPhieuThu.Size = new System.Drawing.Size(784, 427);
            this.pnlDSPhieuThu.TabIndex = 8;
            this.pnlDSPhieuThu.Visible = false;
            // 
            // dgw1DSPhieuThu
            // 
            this.dgw1DSPhieuThu.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgw1DSPhieuThu.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgw1DSPhieuThu.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dgw1DSPhieuThu.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewDoubleInputColumn1,
            this.dataGridViewDoubleInputColumn2,
            this.Column1,
            this.dataGridViewIntegerInputColumn1});
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgw1DSPhieuThu.DefaultCellStyle = dataGridViewCellStyle2;
            this.dgw1DSPhieuThu.EnableHeadersVisualStyles = false;
            this.dgw1DSPhieuThu.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dgw1DSPhieuThu.Location = new System.Drawing.Point(12, 110);
            this.dgw1DSPhieuThu.Name = "dgw1DSPhieuThu";
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgw1DSPhieuThu.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.dgw1DSPhieuThu.Size = new System.Drawing.Size(756, 314);
            this.dgw1DSPhieuThu.TabIndex = 23;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.HeaderText = "Mã phiếu thu";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.ReadOnly = true;
            // 
            // dataGridViewDoubleInputColumn1
            // 
            this.dataGridViewDoubleInputColumn1.HeaderText = "Mã nhân viên thu";
            this.dataGridViewDoubleInputColumn1.Name = "dataGridViewDoubleInputColumn1";
            this.dataGridViewDoubleInputColumn1.ReadOnly = true;
            this.dataGridViewDoubleInputColumn1.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // dataGridViewDoubleInputColumn2
            // 
            // 
            // 
            // 
            this.dataGridViewDoubleInputColumn2.BackgroundStyle.BackColor = System.Drawing.SystemColors.Window;
            this.dataGridViewDoubleInputColumn2.BackgroundStyle.Class = "DataGridViewDateTimeBorder";
            this.dataGridViewDoubleInputColumn2.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dataGridViewDoubleInputColumn2.BackgroundStyle.TextColor = System.Drawing.SystemColors.WindowText;
            this.dataGridViewDoubleInputColumn2.ButtonClear.Tooltip = "";
            this.dataGridViewDoubleInputColumn2.ButtonCustom.Tooltip = "";
            this.dataGridViewDoubleInputColumn2.ButtonCustom2.Tooltip = "";
            this.dataGridViewDoubleInputColumn2.ButtonDropDown.Tooltip = "";
            this.dataGridViewDoubleInputColumn2.ButtonFreeText.Tooltip = "";
            this.dataGridViewDoubleInputColumn2.HeaderText = "Ngày thu";
            this.dataGridViewDoubleInputColumn2.InputHorizontalAlignment = DevComponents.Editors.eHorizontalAlignment.Left;
            // 
            // 
            // 
            this.dataGridViewDoubleInputColumn2.MonthCalendar.AnnuallyMarkedDates = new System.DateTime[0];
            // 
            // 
            // 
            this.dataGridViewDoubleInputColumn2.MonthCalendar.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dataGridViewDoubleInputColumn2.MonthCalendar.CalendarDimensions = new System.Drawing.Size(1, 1);
            // 
            // 
            // 
            this.dataGridViewDoubleInputColumn2.MonthCalendar.CommandsBackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dataGridViewDoubleInputColumn2.MonthCalendar.DisplayMonth = new System.DateTime(2015, 6, 1, 0, 0, 0, 0);
            this.dataGridViewDoubleInputColumn2.MonthCalendar.MarkedDates = new System.DateTime[0];
            this.dataGridViewDoubleInputColumn2.MonthCalendar.MonthlyMarkedDates = new System.DateTime[0];
            // 
            // 
            // 
            this.dataGridViewDoubleInputColumn2.MonthCalendar.NavigationBackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dataGridViewDoubleInputColumn2.MonthCalendar.WeeklyMarkedDays = new System.DayOfWeek[0];
            this.dataGridViewDoubleInputColumn2.Name = "dataGridViewDoubleInputColumn2";
            this.dataGridViewDoubleInputColumn2.ReadOnly = true;
            this.dataGridViewDoubleInputColumn2.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // Column1
            // 
            // 
            // 
            // 
            this.Column1.BackgroundStyle.BackColor = System.Drawing.SystemColors.Window;
            this.Column1.BackgroundStyle.Class = "DataGridViewNumericBorder";
            this.Column1.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.Column1.BackgroundStyle.TextColor = System.Drawing.SystemColors.WindowText;
            this.Column1.ButtonClear.Tooltip = "";
            this.Column1.ButtonCustom.Tooltip = "";
            this.Column1.ButtonCustom2.Tooltip = "";
            this.Column1.ButtonDropDown.Tooltip = "";
            this.Column1.ButtonFreeText.Tooltip = "";
            this.Column1.HeaderText = "Số tiền";
            this.Column1.InputHorizontalAlignment = DevComponents.Editors.eHorizontalAlignment.Left;
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            this.Column1.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // dataGridViewIntegerInputColumn1
            // 
            this.dataGridViewIntegerInputColumn1.HeaderText = "Lý do";
            this.dataGridViewIntegerInputColumn1.Name = "dataGridViewIntegerInputColumn1";
            this.dataGridViewIntegerInputColumn1.ReadOnly = true;
            this.dataGridViewIntegerInputColumn1.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // chbSoTien
            // 
            // 
            // 
            // 
            this.chbSoTien.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.chbSoTien.CheckSignSize = new System.Drawing.Size(15, 15);
            this.chbSoTien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chbSoTien.Location = new System.Drawing.Point(409, 35);
            this.chbSoTien.Name = "chbSoTien";
            this.chbSoTien.Size = new System.Drawing.Size(15, 15);
            this.chbSoTien.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.chbSoTien.TabIndex = 22;
            // 
            // chbNgayThu
            // 
            // 
            // 
            // 
            this.chbNgayThu.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.chbNgayThu.CheckSignSize = new System.Drawing.Size(15, 15);
            this.chbNgayThu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chbNgayThu.Location = new System.Drawing.Point(409, 74);
            this.chbNgayThu.Name = "chbNgayThu";
            this.chbNgayThu.Size = new System.Drawing.Size(15, 15);
            this.chbNgayThu.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.chbNgayThu.TabIndex = 21;
            // 
            // chbNhanVienThu
            // 
            // 
            // 
            // 
            this.chbNhanVienThu.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.chbNhanVienThu.CheckSignSize = new System.Drawing.Size(15, 15);
            this.chbNhanVienThu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chbNhanVienThu.Location = new System.Drawing.Point(19, 74);
            this.chbNhanVienThu.Name = "chbNhanVienThu";
            this.chbNhanVienThu.Size = new System.Drawing.Size(15, 15);
            this.chbNhanVienThu.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.chbNhanVienThu.TabIndex = 20;
            // 
            // chbMaPhieuThu
            // 
            // 
            // 
            // 
            this.chbMaPhieuThu.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.chbMaPhieuThu.CheckSignSize = new System.Drawing.Size(15, 15);
            this.chbMaPhieuThu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chbMaPhieuThu.Location = new System.Drawing.Point(19, 35);
            this.chbMaPhieuThu.Name = "chbMaPhieuThu";
            this.chbMaPhieuThu.Size = new System.Drawing.Size(15, 15);
            this.chbMaPhieuThu.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.chbMaPhieuThu.TabIndex = 19;
            // 
            // dt1NgayThu
            // 
            this.dt1NgayThu.AllowEmptyState = false;
            // 
            // 
            // 
            this.dt1NgayThu.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dt1NgayThu.ButtonClear.Tooltip = "";
            this.dt1NgayThu.ButtonCustom.Tooltip = "";
            this.dt1NgayThu.ButtonCustom2.Tooltip = "";
            this.dt1NgayThu.ButtonDropDown.Shortcut = DevComponents.DotNetBar.eShortcut.AltDown;
            this.dt1NgayThu.ButtonDropDown.Tooltip = "";
            this.dt1NgayThu.ButtonDropDown.Visible = true;
            this.dt1NgayThu.ButtonFreeText.Tooltip = "";
            this.dt1NgayThu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dt1NgayThu.IsPopupCalendarOpen = false;
            this.dt1NgayThu.Location = new System.Drawing.Point(572, 67);
            // 
            // 
            // 
            this.dt1NgayThu.MonthCalendar.AnnuallyMarkedDates = new System.DateTime[0];
            // 
            // 
            // 
            this.dt1NgayThu.MonthCalendar.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            // 
            // 
            // 
            this.dt1NgayThu.MonthCalendar.CommandsBackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dt1NgayThu.MonthCalendar.DisplayMonth = new System.DateTime(2015, 6, 1, 0, 0, 0, 0);
            this.dt1NgayThu.MonthCalendar.MarkedDates = new System.DateTime[0];
            this.dt1NgayThu.MonthCalendar.MonthlyMarkedDates = new System.DateTime[0];
            // 
            // 
            // 
            this.dt1NgayThu.MonthCalendar.NavigationBackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dt1NgayThu.MonthCalendar.WeeklyMarkedDays = new System.DayOfWeek[0];
            this.dt1NgayThu.Name = "dt1NgayThu";
            this.dt1NgayThu.Size = new System.Drawing.Size(200, 26);
            this.dt1NgayThu.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.dt1NgayThu.TabIndex = 18;
            this.dt1NgayThu.Value = new System.DateTime(2015, 6, 4, 22, 42, 55, 368);
            // 
            // lbl1NgayThu
            // 
            // 
            // 
            // 
            this.lbl1NgayThu.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lbl1NgayThu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl1NgayThu.Location = new System.Drawing.Point(430, 70);
            this.lbl1NgayThu.Name = "lbl1NgayThu";
            this.lbl1NgayThu.Size = new System.Drawing.Size(138, 23);
            this.lbl1NgayThu.TabIndex = 17;
            this.lbl1NgayThu.Text = "Ngày Thu:";
            // 
            // lbl1SoTien
            // 
            // 
            // 
            // 
            this.lbl1SoTien.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lbl1SoTien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl1SoTien.Location = new System.Drawing.Point(430, 30);
            this.lbl1SoTien.Name = "lbl1SoTien";
            this.lbl1SoTien.Size = new System.Drawing.Size(138, 23);
            this.lbl1SoTien.TabIndex = 15;
            this.lbl1SoTien.Text = "Số Tiền:";
            // 
            // cbo1NhanVienThu
            // 
            this.cbo1NhanVienThu.DisplayMember = "Text";
            this.cbo1NhanVienThu.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cbo1NhanVienThu.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbo1NhanVienThu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbo1NhanVienThu.FormattingEnabled = true;
            this.cbo1NhanVienThu.ItemHeight = 20;
            this.cbo1NhanVienThu.Location = new System.Drawing.Point(184, 67);
            this.cbo1NhanVienThu.Name = "cbo1NhanVienThu";
            this.cbo1NhanVienThu.Size = new System.Drawing.Size(200, 26);
            this.cbo1NhanVienThu.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.cbo1NhanVienThu.TabIndex = 14;
            // 
            // lb1NhanVienThu
            // 
            // 
            // 
            // 
            this.lb1NhanVienThu.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lb1NhanVienThu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb1NhanVienThu.Location = new System.Drawing.Point(40, 70);
            this.lb1NhanVienThu.Name = "lb1NhanVienThu";
            this.lb1NhanVienThu.Size = new System.Drawing.Size(138, 23);
            this.lb1NhanVienThu.TabIndex = 13;
            this.lb1NhanVienThu.Text = "Nhân Viên Thu:";
            // 
            // txt1SoTien
            // 
            // 
            // 
            // 
            this.txt1SoTien.Border.Class = "TextBoxBorder";
            this.txt1SoTien.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txt1SoTien.ButtonCustom.Tooltip = "";
            this.txt1SoTien.ButtonCustom2.Tooltip = "";
            this.txt1SoTien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt1SoTien.Location = new System.Drawing.Point(572, 30);
            this.txt1SoTien.Name = "txt1SoTien";
            this.txt1SoTien.PreventEnterBeep = true;
            this.txt1SoTien.Size = new System.Drawing.Size(200, 26);
            this.txt1SoTien.TabIndex = 12;
            // 
            // txt1MaPhieuThu
            // 
            // 
            // 
            // 
            this.txt1MaPhieuThu.Border.Class = "TextBoxBorder";
            this.txt1MaPhieuThu.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txt1MaPhieuThu.ButtonCustom.Tooltip = "";
            this.txt1MaPhieuThu.ButtonCustom2.Tooltip = "";
            this.txt1MaPhieuThu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt1MaPhieuThu.Location = new System.Drawing.Point(184, 27);
            this.txt1MaPhieuThu.Name = "txt1MaPhieuThu";
            this.txt1MaPhieuThu.PreventEnterBeep = true;
            this.txt1MaPhieuThu.Size = new System.Drawing.Size(200, 26);
            this.txt1MaPhieuThu.TabIndex = 12;
            // 
            // lbl1MaPhieuThu
            // 
            // 
            // 
            // 
            this.lbl1MaPhieuThu.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lbl1MaPhieuThu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl1MaPhieuThu.Location = new System.Drawing.Point(40, 30);
            this.lbl1MaPhieuThu.Name = "lbl1MaPhieuThu";
            this.lbl1MaPhieuThu.Size = new System.Drawing.Size(138, 23);
            this.lbl1MaPhieuThu.TabIndex = 11;
            this.lbl1MaPhieuThu.Text = "Mã PhiếuThu:";
            // 
            // pnlButton
            // 
            this.pnlButton.Controls.Add(this.ribButton);
            this.pnlButton.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlButton.Location = new System.Drawing.Point(0, 0);
            this.pnlButton.Name = "pnlButton";
            this.pnlButton.Size = new System.Drawing.Size(784, 64);
            this.pnlButton.TabIndex = 6;
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
            this.ribButton.Size = new System.Drawing.Size(784, 64);
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
            // GUIQuanLyThu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(784, 561);
            this.Controls.Add(this.pnlCenter);
            this.Controls.Add(this.pnlTile);
            this.DoubleBuffered = true;
            this.Name = "GUIQuanLyThu";
            this.Text = "QUẢN LÝ THU";
            this.pnlTile.ResumeLayout(false);
            this.pnlCenter.ResumeLayout(false);
            this.pnlLapPhieuThu.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.txt2SoTien)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dt2NgayLap)).EndInit();
            this.pnlDSPhieuThu.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgw1DSPhieuThu)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dt1NgayThu)).EndInit();
            this.pnlButton.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlTile;
        private DevComponents.DotNetBar.Controls.ReflectionLabel lblTitle;
        private System.Windows.Forms.Panel pnlCenter;
        private System.Windows.Forms.Panel pnlButton;
        private DevComponents.DotNetBar.RibbonBar ribButton;
        private DevComponents.DotNetBar.ButtonItem btnThem;
        private DevComponents.DotNetBar.ButtonItem btnChinhSua;
        private DevComponents.DotNetBar.ButtonItem btnXoa;
        private DevComponents.DotNetBar.ButtonItem btnLuu;
        private DevComponents.DotNetBar.ButtonItem btnTimKiem;
        private DevComponents.DotNetBar.ButtonItem btnXemChiTiet;
        private DevComponents.DotNetBar.ButtonItem btnTroLai;
        private DevComponents.DotNetBar.ButtonItem btnThoat;
        private System.Windows.Forms.Panel pnlDSPhieuThu;
        private DevComponents.DotNetBar.Controls.DataGridViewX dgw1DSPhieuThu;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewDoubleInputColumn1;
        private DevComponents.DotNetBar.Controls.DataGridViewDateTimeInputColumn dataGridViewDoubleInputColumn2;
        private DevComponents.DotNetBar.Controls.DataGridViewIntegerInputColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewIntegerInputColumn1;
        private DevComponents.DotNetBar.Controls.CheckBoxX chbSoTien;
        private DevComponents.DotNetBar.Controls.CheckBoxX chbNgayThu;
        private DevComponents.DotNetBar.Controls.CheckBoxX chbNhanVienThu;
        private DevComponents.DotNetBar.Controls.CheckBoxX chbMaPhieuThu;
        private DevComponents.Editors.DateTimeAdv.DateTimeInput dt1NgayThu;
        private DevComponents.DotNetBar.LabelX lbl1NgayThu;
        private DevComponents.DotNetBar.LabelX lbl1SoTien;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cbo1NhanVienThu;
        private DevComponents.DotNetBar.LabelX lb1NhanVienThu;
        private DevComponents.DotNetBar.Controls.TextBoxX txt1SoTien;
        private DevComponents.DotNetBar.Controls.TextBoxX txt1MaPhieuThu;
        private DevComponents.DotNetBar.LabelX lbl1MaPhieuThu;
        private System.Windows.Forms.Panel pnlLapPhieuThu;
        private DevComponents.DotNetBar.Controls.TextBoxX txt2MaNhanVien;
        private DevComponents.Editors.DateTimeAdv.DateTimeInput dt2NgayLap;
        private DevComponents.DotNetBar.LabelX lbl2NgayLap;
        private DevComponents.DotNetBar.LabelX lbl2SoTien;
        private DevComponents.DotNetBar.LabelX lbl2MaNhanVien;
        private DevComponents.Editors.DoubleInput txt2SoTien;
        private DevComponents.DotNetBar.LabelX lb2LyDo;
        private DevComponents.DotNetBar.Controls.TextBoxX txt1MaSanPham;
    }
}