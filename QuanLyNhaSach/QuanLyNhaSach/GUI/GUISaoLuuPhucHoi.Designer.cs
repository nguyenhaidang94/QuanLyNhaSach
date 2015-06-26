namespace QuanLyNhaSach.GUI
{
    partial class GUISaoLuuPhucHoi
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
            this.btnClose = new DevComponents.DotNetBar.ButtonX();
            this.btnPhucHoi = new DevComponents.DotNetBar.ButtonX();
            this.btnDuongDanPhucHoi = new DevComponents.DotNetBar.ButtonX();
            this.lblPhucHoiTu = new DevComponents.DotNetBar.LabelX();
            this.txtDuongDanPhucHoi = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.lblTenCsdlMoi = new DevComponents.DotNetBar.LabelX();
            this.pnlPhucHoi = new System.Windows.Forms.Panel();
            this.txtTenCsdlMoi = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.rbtnPhucHoi = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.btnSaoLuu = new DevComponents.DotNetBar.ButtonX();
            this.btnDuongDanLuu = new DevComponents.DotNetBar.ButtonX();
            this.lblLuuTai = new DevComponents.DotNetBar.LabelX();
            this.txtDuongDanLuu = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.lblCsdlSaoLuu = new DevComponents.DotNetBar.LabelX();
            this.txtCsdlSaoLuu = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.rbtnSaoLuu = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.pnlSaoLuu = new System.Windows.Forms.Panel();
            this.pnlPhucHoi.SuspendLayout();
            this.pnlSaoLuu.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnClose
            // 
            this.btnClose.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnClose.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnClose.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClose.Location = new System.Drawing.Point(239, 349);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(100, 30);
            this.btnClose.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnClose.TabIndex = 12;
            this.btnClose.Text = "Đóng";
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // btnPhucHoi
            // 
            this.btnPhucHoi.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnPhucHoi.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnPhucHoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPhucHoi.Location = new System.Drawing.Point(132, 90);
            this.btnPhucHoi.Name = "btnPhucHoi";
            this.btnPhucHoi.Size = new System.Drawing.Size(100, 30);
            this.btnPhucHoi.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnPhucHoi.TabIndex = 7;
            this.btnPhucHoi.Text = "Phục Hồi";
            this.btnPhucHoi.Click += new System.EventHandler(this.btnPhucHoi_Click);
            // 
            // btnDuongDanPhucHoi
            // 
            this.btnDuongDanPhucHoi.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnDuongDanPhucHoi.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnDuongDanPhucHoi.Location = new System.Drawing.Point(388, 50);
            this.btnDuongDanPhucHoi.Name = "btnDuongDanPhucHoi";
            this.btnDuongDanPhucHoi.Size = new System.Drawing.Size(23, 23);
            this.btnDuongDanPhucHoi.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnDuongDanPhucHoi.TabIndex = 6;
            this.btnDuongDanPhucHoi.Text = "...";
            this.btnDuongDanPhucHoi.Click += new System.EventHandler(this.btnDuongDanPhucHoi_Click);
            // 
            // lblPhucHoiTu
            // 
            // 
            // 
            // 
            this.lblPhucHoiTu.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lblPhucHoiTu.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPhucHoiTu.Location = new System.Drawing.Point(10, 50);
            this.lblPhucHoiTu.Name = "lblPhucHoiTu";
            this.lblPhucHoiTu.Size = new System.Drawing.Size(116, 23);
            this.lblPhucHoiTu.TabIndex = 0;
            this.lblPhucHoiTu.Text = "Phục Hồi Từ: ...";
            // 
            // txtDuongDanPhucHoi
            // 
            // 
            // 
            // 
            this.txtDuongDanPhucHoi.Border.Class = "TextBoxBorder";
            this.txtDuongDanPhucHoi.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txtDuongDanPhucHoi.ButtonCustom.Tooltip = "";
            this.txtDuongDanPhucHoi.ButtonCustom2.Tooltip = "";
            this.txtDuongDanPhucHoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDuongDanPhucHoi.Location = new System.Drawing.Point(132, 49);
            this.txtDuongDanPhucHoi.Name = "txtDuongDanPhucHoi";
            this.txtDuongDanPhucHoi.PreventEnterBeep = true;
            this.txtDuongDanPhucHoi.ReadOnly = true;
            this.txtDuongDanPhucHoi.Size = new System.Drawing.Size(250, 24);
            this.txtDuongDanPhucHoi.TabIndex = 0;
            // 
            // lblTenCsdlMoi
            // 
            // 
            // 
            // 
            this.lblTenCsdlMoi.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lblTenCsdlMoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTenCsdlMoi.Location = new System.Drawing.Point(10, 10);
            this.lblTenCsdlMoi.Name = "lblTenCsdlMoi";
            this.lblTenCsdlMoi.Size = new System.Drawing.Size(116, 23);
            this.lblTenCsdlMoi.TabIndex = 0;
            this.lblTenCsdlMoi.Text = "Tên CSDL Mới:";
            // 
            // pnlPhucHoi
            // 
            this.pnlPhucHoi.BackColor = System.Drawing.Color.Transparent;
            this.pnlPhucHoi.Controls.Add(this.btnPhucHoi);
            this.pnlPhucHoi.Controls.Add(this.btnDuongDanPhucHoi);
            this.pnlPhucHoi.Controls.Add(this.lblPhucHoiTu);
            this.pnlPhucHoi.Controls.Add(this.txtDuongDanPhucHoi);
            this.pnlPhucHoi.Controls.Add(this.lblTenCsdlMoi);
            this.pnlPhucHoi.Controls.Add(this.txtTenCsdlMoi);
            this.pnlPhucHoi.Enabled = false;
            this.pnlPhucHoi.Location = new System.Drawing.Point(12, 209);
            this.pnlPhucHoi.Name = "pnlPhucHoi";
            this.pnlPhucHoi.Size = new System.Drawing.Size(560, 130);
            this.pnlPhucHoi.TabIndex = 8;
            // 
            // txtTenCsdlMoi
            // 
            // 
            // 
            // 
            this.txtTenCsdlMoi.Border.Class = "TextBoxBorder";
            this.txtTenCsdlMoi.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txtTenCsdlMoi.ButtonCustom.Tooltip = "";
            this.txtTenCsdlMoi.ButtonCustom2.Tooltip = "";
            this.txtTenCsdlMoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTenCsdlMoi.Location = new System.Drawing.Point(132, 7);
            this.txtTenCsdlMoi.MaxLength = 20;
            this.txtTenCsdlMoi.Name = "txtTenCsdlMoi";
            this.txtTenCsdlMoi.PreventEnterBeep = true;
            this.txtTenCsdlMoi.Size = new System.Drawing.Size(250, 24);
            this.txtTenCsdlMoi.TabIndex = 5;
            this.txtTenCsdlMoi.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtTenCsdlMoi_KeyPress);
            // 
            // rbtnPhucHoi
            // 
            // 
            // 
            // 
            this.rbtnPhucHoi.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.rbtnPhucHoi.CheckBoxStyle = DevComponents.DotNetBar.eCheckBoxStyle.RadioButton;
            this.rbtnPhucHoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbtnPhucHoi.Location = new System.Drawing.Point(12, 180);
            this.rbtnPhucHoi.Name = "rbtnPhucHoi";
            this.rbtnPhucHoi.Size = new System.Drawing.Size(145, 23);
            this.rbtnPhucHoi.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.rbtnPhucHoi.TabIndex = 11;
            this.rbtnPhucHoi.Text = "Phục Hồi Dữ Liệu";
            this.rbtnPhucHoi.CheckedChanged += new System.EventHandler(this.rbtnPhucHoi_CheckedChanged);
            // 
            // btnSaoLuu
            // 
            this.btnSaoLuu.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnSaoLuu.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnSaoLuu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSaoLuu.Location = new System.Drawing.Point(132, 90);
            this.btnSaoLuu.Name = "btnSaoLuu";
            this.btnSaoLuu.Size = new System.Drawing.Size(100, 30);
            this.btnSaoLuu.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnSaoLuu.TabIndex = 3;
            this.btnSaoLuu.Text = "Sao Lưu";
            this.btnSaoLuu.Click += new System.EventHandler(this.btnSaoLuu_Click);
            // 
            // btnDuongDanLuu
            // 
            this.btnDuongDanLuu.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnDuongDanLuu.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnDuongDanLuu.Location = new System.Drawing.Point(388, 50);
            this.btnDuongDanLuu.Name = "btnDuongDanLuu";
            this.btnDuongDanLuu.Size = new System.Drawing.Size(23, 23);
            this.btnDuongDanLuu.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnDuongDanLuu.TabIndex = 2;
            this.btnDuongDanLuu.Text = "...";
            this.btnDuongDanLuu.Click += new System.EventHandler(this.btnDuongDanLuu_Click);
            // 
            // lblLuuTai
            // 
            // 
            // 
            // 
            this.lblLuuTai.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lblLuuTai.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblLuuTai.Location = new System.Drawing.Point(10, 50);
            this.lblLuuTai.Name = "lblLuuTai";
            this.lblLuuTai.Size = new System.Drawing.Size(116, 23);
            this.lblLuuTai.TabIndex = 0;
            this.lblLuuTai.Text = "Lưu Tại: ...";
            // 
            // txtDuongDanLuu
            // 
            // 
            // 
            // 
            this.txtDuongDanLuu.Border.Class = "TextBoxBorder";
            this.txtDuongDanLuu.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txtDuongDanLuu.ButtonCustom.Tooltip = "";
            this.txtDuongDanLuu.ButtonCustom2.Tooltip = "";
            this.txtDuongDanLuu.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDuongDanLuu.Location = new System.Drawing.Point(132, 49);
            this.txtDuongDanLuu.Name = "txtDuongDanLuu";
            this.txtDuongDanLuu.PreventEnterBeep = true;
            this.txtDuongDanLuu.ReadOnly = true;
            this.txtDuongDanLuu.Size = new System.Drawing.Size(250, 24);
            this.txtDuongDanLuu.TabIndex = 0;
            // 
            // lblCsdlSaoLuu
            // 
            // 
            // 
            // 
            this.lblCsdlSaoLuu.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.lblCsdlSaoLuu.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCsdlSaoLuu.Location = new System.Drawing.Point(10, 10);
            this.lblCsdlSaoLuu.Name = "lblCsdlSaoLuu";
            this.lblCsdlSaoLuu.Size = new System.Drawing.Size(116, 23);
            this.lblCsdlSaoLuu.TabIndex = 0;
            this.lblCsdlSaoLuu.Text = "Cơ Sở Dữ Liệu:";
            // 
            // txtCsdlSaoLuu
            // 
            // 
            // 
            // 
            this.txtCsdlSaoLuu.Border.Class = "TextBoxBorder";
            this.txtCsdlSaoLuu.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txtCsdlSaoLuu.ButtonCustom.Tooltip = "";
            this.txtCsdlSaoLuu.ButtonCustom2.Tooltip = "";
            this.txtCsdlSaoLuu.Font = new System.Drawing.Font("Microsoft NeoGothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCsdlSaoLuu.Location = new System.Drawing.Point(132, 7);
            this.txtCsdlSaoLuu.Name = "txtCsdlSaoLuu";
            this.txtCsdlSaoLuu.PreventEnterBeep = true;
            this.txtCsdlSaoLuu.ReadOnly = true;
            this.txtCsdlSaoLuu.Size = new System.Drawing.Size(250, 27);
            this.txtCsdlSaoLuu.TabIndex = 0;
            // 
            // rbtnSaoLuu
            // 
            // 
            // 
            // 
            this.rbtnSaoLuu.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.rbtnSaoLuu.CheckBoxStyle = DevComponents.DotNetBar.eCheckBoxStyle.RadioButton;
            this.rbtnSaoLuu.Checked = true;
            this.rbtnSaoLuu.CheckState = System.Windows.Forms.CheckState.Checked;
            this.rbtnSaoLuu.CheckValue = "Y";
            this.rbtnSaoLuu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbtnSaoLuu.Location = new System.Drawing.Point(12, 12);
            this.rbtnSaoLuu.Name = "rbtnSaoLuu";
            this.rbtnSaoLuu.Size = new System.Drawing.Size(145, 23);
            this.rbtnSaoLuu.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.rbtnSaoLuu.TabIndex = 10;
            this.rbtnSaoLuu.Text = "Sao Lưu Dữ Liệu";
            this.rbtnSaoLuu.CheckedChanged += new System.EventHandler(this.rbtnSaoLuu_CheckedChanged);
            // 
            // pnlSaoLuu
            // 
            this.pnlSaoLuu.BackColor = System.Drawing.Color.Transparent;
            this.pnlSaoLuu.Controls.Add(this.btnSaoLuu);
            this.pnlSaoLuu.Controls.Add(this.btnDuongDanLuu);
            this.pnlSaoLuu.Controls.Add(this.lblLuuTai);
            this.pnlSaoLuu.Controls.Add(this.txtDuongDanLuu);
            this.pnlSaoLuu.Controls.Add(this.lblCsdlSaoLuu);
            this.pnlSaoLuu.Controls.Add(this.txtCsdlSaoLuu);
            this.pnlSaoLuu.Location = new System.Drawing.Point(12, 41);
            this.pnlSaoLuu.Name = "pnlSaoLuu";
            this.pnlSaoLuu.Size = new System.Drawing.Size(560, 130);
            this.pnlSaoLuu.TabIndex = 9;
            // 
            // GUISaoLuuPhucHoi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(194)))), ((int)(((byte)(217)))), ((int)(((byte)(247)))));
            this.ClientSize = new System.Drawing.Size(584, 391);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.pnlPhucHoi);
            this.Controls.Add(this.rbtnPhucHoi);
            this.Controls.Add(this.rbtnSaoLuu);
            this.Controls.Add(this.pnlSaoLuu);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "GUISaoLuuPhucHoi";
            this.Text = "Sao Lưu - Phục Hồi Dữ Liệu";
            this.Load += new System.EventHandler(this.frmSaoLuuPhucHoi_Load);
            this.pnlPhucHoi.ResumeLayout(false);
            this.pnlSaoLuu.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.ButtonX btnClose;
        private DevComponents.DotNetBar.ButtonX btnPhucHoi;
        private DevComponents.DotNetBar.ButtonX btnDuongDanPhucHoi;
        private DevComponents.DotNetBar.LabelX lblPhucHoiTu;
        private DevComponents.DotNetBar.Controls.TextBoxX txtDuongDanPhucHoi;
        private DevComponents.DotNetBar.LabelX lblTenCsdlMoi;
        private System.Windows.Forms.Panel pnlPhucHoi;
        private DevComponents.DotNetBar.Controls.TextBoxX txtTenCsdlMoi;
        private DevComponents.DotNetBar.Controls.CheckBoxX rbtnPhucHoi;
        private DevComponents.DotNetBar.ButtonX btnSaoLuu;
        private DevComponents.DotNetBar.ButtonX btnDuongDanLuu;
        private DevComponents.DotNetBar.LabelX lblLuuTai;
        private DevComponents.DotNetBar.Controls.TextBoxX txtDuongDanLuu;
        private DevComponents.DotNetBar.LabelX lblCsdlSaoLuu;
        private DevComponents.DotNetBar.Controls.TextBoxX txtCsdlSaoLuu;
        private DevComponents.DotNetBar.Controls.CheckBoxX rbtnSaoLuu;
        private System.Windows.Forms.Panel pnlSaoLuu;
    }
}