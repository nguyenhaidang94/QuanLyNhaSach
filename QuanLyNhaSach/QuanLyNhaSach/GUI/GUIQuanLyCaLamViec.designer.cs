namespace QuanLyNhaSach.GUI
{
    partial class GUIQuanLyCaLamViec
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
            this.pnlDSCaLamViec = new System.Windows.Forms.Panel();
            this.dgwDSCaLamViec = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new DevComponents.DotNetBar.Controls.DataGridViewIntegerInputColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txt1MaCaLamViec = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.chbMaCaLamViec = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.lbl1MaCaLamViec = new DevComponents.DotNetBar.LabelX();
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
            this.pnlDSCaLamViec.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgwDSCaLamViec)).BeginInit();
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
            this.pnlTile.Size = new System.Drawing.Size(786, 70);
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
            this.lblTitle.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitle.Location = new System.Drawing.Point(0, 0);
            this.lblTitle.Name = "lblTitle";
            this.lblTitle.Size = new System.Drawing.Size(786, 70);
            this.lblTitle.TabIndex = 0;
            this.lblTitle.Text = "<b><font size=\"+20\"><font color=\"#B02B2C\">Title</font></font></b>";
            // 
            // pnlCenter
            // 
            this.pnlCenter.Controls.Add(this.pnlDSCaLamViec);
            this.pnlCenter.Controls.Add(this.pnlButton);
            this.pnlCenter.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlCenter.Location = new System.Drawing.Point(0, 70);
            this.pnlCenter.Name = "pnlCenter";
            this.pnlCenter.Size = new System.Drawing.Size(786, 481);
            this.pnlCenter.TabIndex = 6;
            // 
            // pnlDSCaLamViec
            // 
            this.pnlDSCaLamViec.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(194)))), ((int)(((byte)(217)))), ((int)(((byte)(247)))));
            this.pnlDSCaLamViec.Controls.Add(this.dgwDSCaLamViec);
            this.pnlDSCaLamViec.Controls.Add(this.txt1MaCaLamViec);
            this.pnlDSCaLamViec.Controls.Add(this.chbMaCaLamViec);
            this.pnlDSCaLamViec.Controls.Add(this.lbl1MaCaLamViec);
            this.pnlDSCaLamViec.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlDSCaLamViec.Location = new System.Drawing.Point(0, 64);
            this.pnlDSCaLamViec.Name = "pnlDSCaLamViec";
            this.pnlDSCaLamViec.Size = new System.Drawing.Size(786, 417);
            this.pnlDSCaLamViec.TabIndex = 5;
            // 
            // dgwDSCaLamViec
            // 
            this.dgwDSCaLamViec.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgwDSCaLamViec.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgwDSCaLamViec.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dgwDSCaLamViec.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4,
            this.Column5});
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgwDSCaLamViec.DefaultCellStyle = dataGridViewCellStyle2;
            this.dgwDSCaLamViec.EnableHeadersVisualStyles = false;
            this.dgwDSCaLamViec.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dgwDSCaLamViec.Location = new System.Drawing.Point(10, 75);
            this.dgwDSCaLamViec.MultiSelect = false;
            this.dgwDSCaLamViec.Name = "dgwDSCaLamViec";
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgwDSCaLamViec.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.dgwDSCaLamViec.Size = new System.Drawing.Size(768, 339);
            this.dgwDSCaLamViec.TabIndex = 12;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Mã Ca Làm Việc";
            this.Column1.Name = "Column1";
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Thời gian bắt đầu";
            this.Column2.Name = "Column2";
            // 
            // Column3
            // 
            this.Column3.HeaderText = "Thời gian kết thúc";
            this.Column3.Name = "Column3";
            // 
            // Column4
            // 
            // 
            // 
            // 
            this.Column4.BackgroundStyle.BackColor = System.Drawing.SystemColors.Window;
            this.Column4.BackgroundStyle.Class = "DataGridViewNumericBorder";
            this.Column4.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.Column4.BackgroundStyle.TextColor = System.Drawing.SystemColors.WindowText;
            this.Column4.ButtonClear.Tooltip = "";
            this.Column4.ButtonCustom.Tooltip = "";
            this.Column4.ButtonCustom2.Tooltip = "";
            this.Column4.ButtonDropDown.Tooltip = "";
            this.Column4.ButtonFreeText.Tooltip = "";
            this.Column4.HeaderText = "Lương ca làm việc";
            this.Column4.InputHorizontalAlignment = DevComponents.Editors.eHorizontalAlignment.Left;
            this.Column4.Name = "Column4";
            this.Column4.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // Column5
            // 
            this.Column5.HeaderText = "Mô tả";
            this.Column5.Name = "Column5";
            // 
            // txt1MaCaLamViec
            // 
            // 
            // 
            // 
            this.txt1MaCaLamViec.Border.Class = "TextBoxBorder";
            this.txt1MaCaLamViec.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txt1MaCaLamViec.ButtonCustom.Tooltip = "";
            this.txt1MaCaLamViec.ButtonCustom2.Tooltip = "";
            this.txt1MaCaLamViec.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt1MaCaLamViec.Location = new System.Drawing.Point(208, 27);
            this.txt1MaCaLamViec.Name = "txt1MaCaLamViec";
            this.txt1MaCaLamViec.PreventEnterBeep = true;
            this.txt1MaCaLamViec.Size = new System.Drawing.Size(186, 26);
            this.txt1MaCaLamViec.TabIndex = 8;
            // 
            // chbMaCaLamViec
            // 
            // 
            // 
            // 
            this.chbMaCaLamViec.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.chbMaCaLamViec.CheckSignSize = new System.Drawing.Size(15, 15);
            this.chbMaCaLamViec.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chbMaCaLamViec.Location = new System.Drawing.Point(20, 30);
            this.chbMaCaLamViec.Name = "chbMaCaLamViec";
            this.chbMaCaLamViec.Size = new System.Drawing.Size(18, 23);
            this.chbMaCaLamViec.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.chbMaCaLamViec.TabIndex = 4;
            // 
            // lbl1MaCaLamViec
            // 
            // 
            // 
            // 
            this.lbl1MaCaLamViec.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lbl1MaCaLamViec.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl1MaCaLamViec.Location = new System.Drawing.Point(44, 30);
            this.lbl1MaCaLamViec.Name = "lbl1MaCaLamViec";
            this.lbl1MaCaLamViec.Size = new System.Drawing.Size(158, 23);
            this.lbl1MaCaLamViec.TabIndex = 0;
            this.lbl1MaCaLamViec.Text = "Mã Ca Làm Việc:";
            // 
            // pnlButton
            // 
            this.pnlButton.Controls.Add(this.ribButton);
            this.pnlButton.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlButton.Location = new System.Drawing.Point(0, 0);
            this.pnlButton.Name = "pnlButton";
            this.pnlButton.Size = new System.Drawing.Size(786, 64);
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
            this.ribButton.Size = new System.Drawing.Size(786, 64);
            this.ribButton.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.ribButton.TabIndex = 1;
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
            // GUIQuanLyCaLamViec
            // 
            this.ClientSize = new System.Drawing.Size(786, 551);
            this.Controls.Add(this.pnlCenter);
            this.Controls.Add(this.pnlTile);
            this.DoubleBuffered = true;
            this.Name = "GUIQuanLyCaLamViec";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "QUẢN LÝ CA LÀM VIỆC";
            this.pnlTile.ResumeLayout(false);
            this.pnlCenter.ResumeLayout(false);
            this.pnlDSCaLamViec.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgwDSCaLamViec)).EndInit();
            this.pnlButton.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlTile;
        private DevComponents.DotNetBar.Controls.ReflectionLabel lblTitle;
        private System.Windows.Forms.Panel pnlCenter;
        private System.Windows.Forms.Panel pnlDSCaLamViec;
        private DevComponents.DotNetBar.Controls.DataGridViewX dgwDSCaLamViec;
        private DevComponents.DotNetBar.Controls.TextBoxX txt1MaCaLamViec;
        private DevComponents.DotNetBar.Controls.CheckBoxX chbMaCaLamViec;
        private DevComponents.DotNetBar.LabelX lbl1MaCaLamViec;
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
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private DevComponents.DotNetBar.Controls.DataGridViewIntegerInputColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
    }
}