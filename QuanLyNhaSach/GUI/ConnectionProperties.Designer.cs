namespace QuanLyNhaSach.GUI
{
    partial class ConnectionProperties
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
            this.cboServerName = new System.Windows.Forms.ComboBox();
            this.lblServerName = new System.Windows.Forms.Label();
            this.grbLogOnToServer = new System.Windows.Forms.GroupBox();
            this.pnlUser = new System.Windows.Forms.Panel();
            this.chbShowPassword = new System.Windows.Forms.CheckBox();
            this.txtPassword = new System.Windows.Forms.TextBox();
            this.txtUserName = new System.Windows.Forms.TextBox();
            this.lblPassword = new System.Windows.Forms.Label();
            this.blUserName = new System.Windows.Forms.Label();
            this.radSqlServerAuthentication = new System.Windows.Forms.RadioButton();
            this.radWindowsAuthentication = new System.Windows.Forms.RadioButton();
            this.grbConnectToDatabase = new System.Windows.Forms.GroupBox();
            this.btnLoadDb = new System.Windows.Forms.Button();
            this.pnlCreateDatabase = new System.Windows.Forms.Panel();
            this.btnCreateDb = new System.Windows.Forms.Button();
            this.btnBrowse = new System.Windows.Forms.Button();
            this.txtDatabaseName = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtFileScript = new System.Windows.Forms.TextBox();
            this.radCreateDatabase = new System.Windows.Forms.RadioButton();
            this.cboDatabaseName = new System.Windows.Forms.ComboBox();
            this.radSelectDatabase = new System.Windows.Forms.RadioButton();
            this.btnTestConnection = new System.Windows.Forms.Button();
            this.btnOk = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.btnRefresh = new System.Windows.Forms.Button();
            this.grbLogOnToServer.SuspendLayout();
            this.pnlUser.SuspendLayout();
            this.grbConnectToDatabase.SuspendLayout();
            this.pnlCreateDatabase.SuspendLayout();
            this.SuspendLayout();
            // 
            // cboServerName
            // 
            this.cboServerName.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboServerName.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboServerName.FormattingEnabled = true;
            this.cboServerName.Location = new System.Drawing.Point(15, 39);
            this.cboServerName.Name = "cboServerName";
            this.cboServerName.Size = new System.Drawing.Size(311, 24);
            this.cboServerName.TabIndex = 4;
            this.cboServerName.DropDown += new System.EventHandler(this.cboServerName_DropDown);
            this.cboServerName.SelectedIndexChanged += new System.EventHandler(this.cboServerName_SelectedIndexChanged);
            // 
            // lblServerName
            // 
            this.lblServerName.AutoSize = true;
            this.lblServerName.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblServerName.Location = new System.Drawing.Point(12, 20);
            this.lblServerName.Name = "lblServerName";
            this.lblServerName.Size = new System.Drawing.Size(91, 16);
            this.lblServerName.TabIndex = 3;
            this.lblServerName.Text = "Server Name:";
            // 
            // grbLogOnToServer
            // 
            this.grbLogOnToServer.Controls.Add(this.pnlUser);
            this.grbLogOnToServer.Controls.Add(this.radSqlServerAuthentication);
            this.grbLogOnToServer.Controls.Add(this.radWindowsAuthentication);
            this.grbLogOnToServer.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grbLogOnToServer.Location = new System.Drawing.Point(15, 70);
            this.grbLogOnToServer.Name = "grbLogOnToServer";
            this.grbLogOnToServer.Size = new System.Drawing.Size(407, 169);
            this.grbLogOnToServer.TabIndex = 5;
            this.grbLogOnToServer.TabStop = false;
            this.grbLogOnToServer.Text = "Log on to server";
            // 
            // pnlUser
            // 
            this.pnlUser.Controls.Add(this.chbShowPassword);
            this.pnlUser.Controls.Add(this.txtPassword);
            this.pnlUser.Controls.Add(this.txtUserName);
            this.pnlUser.Controls.Add(this.lblPassword);
            this.pnlUser.Controls.Add(this.blUserName);
            this.pnlUser.Enabled = false;
            this.pnlUser.Location = new System.Drawing.Point(6, 71);
            this.pnlUser.Name = "pnlUser";
            this.pnlUser.Size = new System.Drawing.Size(395, 92);
            this.pnlUser.TabIndex = 4;
            // 
            // chbShowPassword
            // 
            this.chbShowPassword.AutoSize = true;
            this.chbShowPassword.Location = new System.Drawing.Point(99, 66);
            this.chbShowPassword.Name = "chbShowPassword";
            this.chbShowPassword.Size = new System.Drawing.Size(123, 20);
            this.chbShowPassword.TabIndex = 9;
            this.chbShowPassword.Text = "Show Password";
            this.chbShowPassword.UseVisualStyleBackColor = true;
            this.chbShowPassword.CheckedChanged += new System.EventHandler(this.chbShowPassword_CheckedChanged);
            // 
            // txtPassword
            // 
            this.txtPassword.Location = new System.Drawing.Point(99, 38);
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.Size = new System.Drawing.Size(284, 22);
            this.txtPassword.TabIndex = 8;
            this.txtPassword.UseSystemPasswordChar = true;
            // 
            // txtUserName
            // 
            this.txtUserName.Location = new System.Drawing.Point(99, 7);
            this.txtUserName.Name = "txtUserName";
            this.txtUserName.Size = new System.Drawing.Size(284, 22);
            this.txtUserName.TabIndex = 7;
            // 
            // lblPassword
            // 
            this.lblPassword.AutoSize = true;
            this.lblPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPassword.Location = new System.Drawing.Point(13, 41);
            this.lblPassword.Name = "lblPassword";
            this.lblPassword.Size = new System.Drawing.Size(71, 16);
            this.lblPassword.TabIndex = 6;
            this.lblPassword.Text = "Password:";
            // 
            // blUserName
            // 
            this.blUserName.AutoSize = true;
            this.blUserName.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.blUserName.Location = new System.Drawing.Point(13, 10);
            this.blUserName.Name = "blUserName";
            this.blUserName.Size = new System.Drawing.Size(80, 16);
            this.blUserName.TabIndex = 5;
            this.blUserName.Text = "User Name:";
            // 
            // radSqlServerAuthentication
            // 
            this.radSqlServerAuthentication.AutoSize = true;
            this.radSqlServerAuthentication.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.radSqlServerAuthentication.Location = new System.Drawing.Point(6, 45);
            this.radSqlServerAuthentication.Name = "radSqlServerAuthentication";
            this.radSqlServerAuthentication.Size = new System.Drawing.Size(209, 20);
            this.radSqlServerAuthentication.TabIndex = 3;
            this.radSqlServerAuthentication.Text = "Use SQL Server Authentication";
            this.radSqlServerAuthentication.UseVisualStyleBackColor = true;
            this.radSqlServerAuthentication.CheckedChanged += new System.EventHandler(this.radSqlServerAuthentication_CheckedChanged);
            // 
            // radWindowsAuthentication
            // 
            this.radWindowsAuthentication.AutoSize = true;
            this.radWindowsAuthentication.Checked = true;
            this.radWindowsAuthentication.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.radWindowsAuthentication.Location = new System.Drawing.Point(6, 19);
            this.radWindowsAuthentication.Name = "radWindowsAuthentication";
            this.radWindowsAuthentication.Size = new System.Drawing.Size(195, 20);
            this.radWindowsAuthentication.TabIndex = 2;
            this.radWindowsAuthentication.TabStop = true;
            this.radWindowsAuthentication.Text = "Use Windows Authentication";
            this.radWindowsAuthentication.UseVisualStyleBackColor = true;
            this.radWindowsAuthentication.CheckedChanged += new System.EventHandler(this.radWindowsAuthentication_CheckedChanged);
            // 
            // grbConnectToDatabase
            // 
            this.grbConnectToDatabase.Controls.Add(this.btnLoadDb);
            this.grbConnectToDatabase.Controls.Add(this.pnlCreateDatabase);
            this.grbConnectToDatabase.Controls.Add(this.radCreateDatabase);
            this.grbConnectToDatabase.Controls.Add(this.cboDatabaseName);
            this.grbConnectToDatabase.Controls.Add(this.radSelectDatabase);
            this.grbConnectToDatabase.Enabled = false;
            this.grbConnectToDatabase.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grbConnectToDatabase.Location = new System.Drawing.Point(15, 245);
            this.grbConnectToDatabase.Name = "grbConnectToDatabase";
            this.grbConnectToDatabase.Size = new System.Drawing.Size(407, 201);
            this.grbConnectToDatabase.TabIndex = 6;
            this.grbConnectToDatabase.TabStop = false;
            this.grbConnectToDatabase.Text = "Connect to a database";
            // 
            // btnLoadDb
            // 
            this.btnLoadDb.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLoadDb.Location = new System.Drawing.Point(317, 46);
            this.btnLoadDb.Name = "btnLoadDb";
            this.btnLoadDb.Size = new System.Drawing.Size(84, 27);
            this.btnLoadDb.TabIndex = 11;
            this.btnLoadDb.Text = "Load Db";
            this.btnLoadDb.UseVisualStyleBackColor = true;
            this.btnLoadDb.Click += new System.EventHandler(this.btnLoadDb_Click);
            // 
            // pnlCreateDatabase
            // 
            this.pnlCreateDatabase.Controls.Add(this.btnCreateDb);
            this.pnlCreateDatabase.Controls.Add(this.btnBrowse);
            this.pnlCreateDatabase.Controls.Add(this.txtDatabaseName);
            this.pnlCreateDatabase.Controls.Add(this.label1);
            this.pnlCreateDatabase.Controls.Add(this.txtFileScript);
            this.pnlCreateDatabase.Enabled = false;
            this.pnlCreateDatabase.Location = new System.Drawing.Point(6, 103);
            this.pnlCreateDatabase.Name = "pnlCreateDatabase";
            this.pnlCreateDatabase.Size = new System.Drawing.Size(395, 92);
            this.pnlCreateDatabase.TabIndex = 7;
            // 
            // btnCreateDb
            // 
            this.btnCreateDb.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCreateDb.Location = new System.Drawing.Point(302, 59);
            this.btnCreateDb.Name = "btnCreateDb";
            this.btnCreateDb.Size = new System.Drawing.Size(90, 24);
            this.btnCreateDb.TabIndex = 13;
            this.btnCreateDb.Text = "Create Db";
            this.btnCreateDb.UseVisualStyleBackColor = true;
            this.btnCreateDb.Click += new System.EventHandler(this.btnCreateDb_Click);
            // 
            // btnBrowse
            // 
            this.btnBrowse.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnBrowse.Location = new System.Drawing.Point(302, 11);
            this.btnBrowse.Name = "btnBrowse";
            this.btnBrowse.Size = new System.Drawing.Size(90, 24);
            this.btnBrowse.TabIndex = 12;
            this.btnBrowse.Text = "Browse";
            this.btnBrowse.UseVisualStyleBackColor = true;
            this.btnBrowse.Click += new System.EventHandler(this.btnBrowse_Click);
            // 
            // txtDatabaseName
            // 
            this.txtDatabaseName.Location = new System.Drawing.Point(16, 61);
            this.txtDatabaseName.Name = "txtDatabaseName";
            this.txtDatabaseName.Size = new System.Drawing.Size(284, 22);
            this.txtDatabaseName.TabIndex = 11;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(16, 42);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(95, 16);
            this.label1.TabIndex = 10;
            this.label1.Text = "Logical Name:";
            // 
            // txtFileScript
            // 
            this.txtFileScript.Location = new System.Drawing.Point(16, 12);
            this.txtFileScript.Name = "txtFileScript";
            this.txtFileScript.ReadOnly = true;
            this.txtFileScript.Size = new System.Drawing.Size(284, 22);
            this.txtFileScript.TabIndex = 9;
            // 
            // radCreateDatabase
            // 
            this.radCreateDatabase.AutoSize = true;
            this.radCreateDatabase.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.radCreateDatabase.Location = new System.Drawing.Point(6, 77);
            this.radCreateDatabase.Name = "radCreateDatabase";
            this.radCreateDatabase.Size = new System.Drawing.Size(138, 20);
            this.radCreateDatabase.TabIndex = 6;
            this.radCreateDatabase.Text = "Create a database";
            this.radCreateDatabase.UseVisualStyleBackColor = true;
            this.radCreateDatabase.CheckedChanged += new System.EventHandler(this.radCreateDatabase_CheckedChanged);
            // 
            // cboDatabaseName
            // 
            this.cboDatabaseName.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboDatabaseName.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboDatabaseName.FormattingEnabled = true;
            this.cboDatabaseName.Location = new System.Drawing.Point(25, 47);
            this.cboDatabaseName.Name = "cboDatabaseName";
            this.cboDatabaseName.Size = new System.Drawing.Size(286, 24);
            this.cboDatabaseName.TabIndex = 5;
            // 
            // radSelectDatabase
            // 
            this.radSelectDatabase.AutoSize = true;
            this.radSelectDatabase.Checked = true;
            this.radSelectDatabase.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.radSelectDatabase.Location = new System.Drawing.Point(6, 21);
            this.radSelectDatabase.Name = "radSelectDatabase";
            this.radSelectDatabase.Size = new System.Drawing.Size(173, 20);
            this.radSelectDatabase.TabIndex = 3;
            this.radSelectDatabase.TabStop = true;
            this.radSelectDatabase.Text = "Select a database name";
            this.radSelectDatabase.UseVisualStyleBackColor = true;
            this.radSelectDatabase.CheckedChanged += new System.EventHandler(this.radSelectDatabase_CheckedChanged);
            // 
            // btnTestConnection
            // 
            this.btnTestConnection.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTestConnection.Location = new System.Drawing.Point(21, 452);
            this.btnTestConnection.Name = "btnTestConnection";
            this.btnTestConnection.Size = new System.Drawing.Size(113, 27);
            this.btnTestConnection.TabIndex = 7;
            this.btnTestConnection.Text = "Test Connection";
            this.btnTestConnection.UseVisualStyleBackColor = true;
            this.btnTestConnection.Click += new System.EventHandler(this.btnTestConnection_Click);
            // 
            // btnOk
            // 
            this.btnOk.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnOk.Location = new System.Drawing.Point(256, 452);
            this.btnOk.Name = "btnOk";
            this.btnOk.Size = new System.Drawing.Size(80, 27);
            this.btnOk.TabIndex = 8;
            this.btnOk.Text = "OK";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancel.Location = new System.Drawing.Point(342, 452);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(80, 27);
            this.btnCancel.TabIndex = 9;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnRefresh
            // 
            this.btnRefresh.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRefresh.Location = new System.Drawing.Point(332, 38);
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(90, 27);
            this.btnRefresh.TabIndex = 10;
            this.btnRefresh.Text = "Refresh";
            this.btnRefresh.UseVisualStyleBackColor = true;
            this.btnRefresh.Click += new System.EventHandler(this.btnRefresh_Click);
            // 
            // ConnectionProperties
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(434, 491);
            this.Controls.Add(this.btnRefresh);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOk);
            this.Controls.Add(this.btnTestConnection);
            this.Controls.Add(this.grbConnectToDatabase);
            this.Controls.Add(this.grbLogOnToServer);
            this.Controls.Add(this.cboServerName);
            this.Controls.Add(this.lblServerName);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "ConnectionProperties";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ConnectionProperties";
            this.grbLogOnToServer.ResumeLayout(false);
            this.grbLogOnToServer.PerformLayout();
            this.pnlUser.ResumeLayout(false);
            this.pnlUser.PerformLayout();
            this.grbConnectToDatabase.ResumeLayout(false);
            this.grbConnectToDatabase.PerformLayout();
            this.pnlCreateDatabase.ResumeLayout(false);
            this.pnlCreateDatabase.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cboServerName;
        private System.Windows.Forms.Label lblServerName;
        private System.Windows.Forms.GroupBox grbLogOnToServer;
        private System.Windows.Forms.RadioButton radSqlServerAuthentication;
        private System.Windows.Forms.RadioButton radWindowsAuthentication;
        private System.Windows.Forms.Panel pnlUser;
        private System.Windows.Forms.Label blUserName;
        private System.Windows.Forms.Label lblPassword;
        private System.Windows.Forms.TextBox txtPassword;
        private System.Windows.Forms.TextBox txtUserName;
        private System.Windows.Forms.CheckBox chbShowPassword;
        private System.Windows.Forms.GroupBox grbConnectToDatabase;
        private System.Windows.Forms.RadioButton radSelectDatabase;
        private System.Windows.Forms.ComboBox cboDatabaseName;
        private System.Windows.Forms.Button btnTestConnection;
        private System.Windows.Forms.Button btnOk;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Button btnRefresh;
        private System.Windows.Forms.RadioButton radCreateDatabase;
        private System.Windows.Forms.Panel pnlCreateDatabase;
        private System.Windows.Forms.TextBox txtFileScript;
        private System.Windows.Forms.TextBox txtDatabaseName;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnBrowse;
        private System.Windows.Forms.Button btnLoadDb;
        private System.Windows.Forms.Button btnCreateDb;
    }
}