namespace QuanLyNhaSach.GUI
{
    partial class GUIDangNhap
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
            this._chbHienMatKhau = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this._btnThoat = new DevComponents.DotNetBar.ButtonX();
            this._btnDangNhap = new DevComponents.DotNetBar.ButtonX();
            this._txtMatKhau = new DevComponents.DotNetBar.Controls.TextBoxX();
            this._txtTaiKhoan = new DevComponents.DotNetBar.Controls.TextBoxX();
            this._lblMatKhau = new DevComponents.DotNetBar.LabelX();
            this._lblTaiKhoan = new DevComponents.DotNetBar.LabelX();
            this.SuspendLayout();
            // 
            // _chbHienMatKhau
            // 
            this._chbHienMatKhau.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
            // 
            // 
            // 
            this._chbHienMatKhau.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this._chbHienMatKhau.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._chbHienMatKhau.Location = new System.Drawing.Point(183, 133);
            this._chbHienMatKhau.Name = "_chbHienMatKhau";
            this._chbHienMatKhau.Size = new System.Drawing.Size(121, 23);
            this._chbHienMatKhau.TabIndex = 14;
            this._chbHienMatKhau.Text = "Hiện Mật Khẩu";
            this._chbHienMatKhau.CheckedChanged += new System.EventHandler(this.chbHienMatKhau_CheckedChanged);
            // 
            // _btnThoat
            // 
            this._btnThoat.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this._btnThoat.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this._btnThoat.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this._btnThoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._btnThoat.Location = new System.Drawing.Point(272, 170);
            this._btnThoat.Name = "_btnThoat";
            this._btnThoat.Size = new System.Drawing.Size(100, 30);
            this._btnThoat.TabIndex = 13;
            this._btnThoat.Text = "Thoát";
            this._btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // _btnDangNhap
            // 
            this._btnDangNhap.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this._btnDangNhap.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this._btnDangNhap.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this._btnDangNhap.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._btnDangNhap.Location = new System.Drawing.Point(111, 170);
            this._btnDangNhap.Name = "_btnDangNhap";
            this._btnDangNhap.Size = new System.Drawing.Size(101, 30);
            this._btnDangNhap.TabIndex = 12;
            this._btnDangNhap.Text = "Đăng Nhập";
            this._btnDangNhap.Click += new System.EventHandler(this.btnDangNhap_Click);
            // 
            // _txtMatKhau
            // 
            this._txtMatKhau.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
            // 
            // 
            // 
            this._txtMatKhau.Border.Class = "TextBoxBorder";
            this._txtMatKhau.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this._txtMatKhau.ButtonCustom.Tooltip = "";
            this._txtMatKhau.ButtonCustom2.Tooltip = "";
            this._txtMatKhau.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._txtMatKhau.Location = new System.Drawing.Point(183, 99);
            this._txtMatKhau.Name = "_txtMatKhau";
            this._txtMatKhau.Size = new System.Drawing.Size(200, 26);
            this._txtMatKhau.TabIndex = 11;
            this._txtMatKhau.UseSystemPasswordChar = true;
            // 
            // _txtTaiKhoan
            // 
            this._txtTaiKhoan.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
            // 
            // 
            // 
            this._txtTaiKhoan.Border.Class = "TextBoxBorder";
            this._txtTaiKhoan.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this._txtTaiKhoan.ButtonCustom.Tooltip = "";
            this._txtTaiKhoan.ButtonCustom2.Tooltip = "";
            this._txtTaiKhoan.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._txtTaiKhoan.Location = new System.Drawing.Point(183, 49);
            this._txtTaiKhoan.Name = "_txtTaiKhoan";
            this._txtTaiKhoan.Size = new System.Drawing.Size(200, 26);
            this._txtTaiKhoan.TabIndex = 9;
            // 
            // _lblMatKhau
            // 
            this._lblMatKhau.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
            // 
            // 
            // 
            this._lblMatKhau.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this._lblMatKhau.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._lblMatKhau.Location = new System.Drawing.Point(93, 102);
            this._lblMatKhau.Name = "_lblMatKhau";
            this._lblMatKhau.Size = new System.Drawing.Size(84, 23);
            this._lblMatKhau.TabIndex = 10;
            this._lblMatKhau.Text = "Mật Khẩu:";
            // 
            // _lblTaiKhoan
            // 
            this._lblTaiKhoan.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
            // 
            // 
            // 
            this._lblTaiKhoan.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this._lblTaiKhoan.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._lblTaiKhoan.Location = new System.Drawing.Point(93, 52);
            this._lblTaiKhoan.Name = "_lblTaiKhoan";
            this._lblTaiKhoan.Size = new System.Drawing.Size(84, 23);
            this._lblTaiKhoan.TabIndex = 8;
            this._lblTaiKhoan.Text = "Tài Khoản:";
            // 
            // GUIDangNhap
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(484, 261);
            this.Controls.Add(this._chbHienMatKhau);
            this.Controls.Add(this._btnThoat);
            this.Controls.Add(this._btnDangNhap);
            this.Controls.Add(this._txtMatKhau);
            this.Controls.Add(this._txtTaiKhoan);
            this.Controls.Add(this._lblMatKhau);
            this.Controls.Add(this._lblTaiKhoan);
            this.DoubleBuffered = true;
            this.Name = "GUIDangNhap";
            this.Text = "Đăng Nhập";
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.Controls.CheckBoxX _chbHienMatKhau;
        private DevComponents.DotNetBar.ButtonX _btnThoat;
        private DevComponents.DotNetBar.ButtonX _btnDangNhap;
        private DevComponents.DotNetBar.Controls.TextBoxX _txtMatKhau;
        private DevComponents.DotNetBar.Controls.TextBoxX _txtTaiKhoan;
        private DevComponents.DotNetBar.LabelX _lblMatKhau;
        private DevComponents.DotNetBar.LabelX _lblTaiKhoan;
    }
}