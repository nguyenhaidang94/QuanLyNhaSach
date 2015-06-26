using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.SqlServer.Management.Smo;
using Microsoft.SqlServer.Management.Common;
using System.Diagnostics;
using System.IO;
using Settings = QuanLyNhaSach.Properties.Settings;
using QuanLyNhaSach.SqlHelper;

namespace QuanLyNhaSach.GUI
{
    public partial class ConnectionProperties : Form
    {
        ///connectionstring
        ///
        ///
        private MyConnectionString _ConnectionString;

        //biến bool xác định combobox được load lần đầu
        //
        //
        private bool _IsFirstLoad;
        public bool IsFirstLoad
        {
            get { return _IsFirstLoad; }
            set { _IsFirstLoad = value; }
        }

        ///constructor mặc định
        ///chức năng:
        ///mô tả:
        public ConnectionProperties()
        {
            InitializeComponent();
            _ConnectionString = new MyConnectionString();
            _IsFirstLoad = true;
        }

        ///sự kiện click nút cancel
        ///chức năng: thoát chương trình
        ///mô tả:
        private void btnCancel_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Do you want to exit?", "Warning", MessageBoxButtons.YesNo);
            if (result == System.Windows.Forms.DialogResult.Yes)
                this.Close();
        }

        ///sự kiện click nút refresh
        ///chức năng: load lại tên database vào combobox
        ///mô tả:
        private void btnRefresh_Click(object sender, EventArgs e)
        {
            if (_IsFirstLoad)
                _IsFirstLoad = false;
            this.Cursor = System.Windows.Forms.Cursors.WaitCursor;
            var tableEnumServers = SmoApplication.EnumAvailableSqlServers(true);
            cboServerName.Items.Clear();
            try
            {
                foreach (DataRow row in tableEnumServers.Rows)
                    cboServerName.Items.Add(row["Name"]);
            }
            catch (ArgumentNullException ex)
            {
                Debug.WriteLine(ex.StackTrace);
            }
            this.Cursor = System.Windows.Forms.Cursors.Arrow;
            if (grbConnectToDatabase.Enabled)
                grbConnectToDatabase.Enabled = false;
            MessageBox.Show("Finish refreshing.");
            
        }

        //sự kiện thay đổi trạng thái radiobutton WindowsAuthentication
        //chức năng: ẩn hoặc hiện pnlUser
        //mô tả:
        private void radWindowsAuthentication_CheckedChanged(object sender, EventArgs e)
        {
            if (radWindowsAuthentication.Checked && pnlUser.Enabled)
                pnlUser.Enabled = false;  
        }

        ///sự kiện thay đổi trạng thái radiobutton SqlSerer Authentication
        ///chức năng: ẩn hoặc hiện pnlUser
        ///mô tả:
        private void radSqlServerAuthentication_CheckedChanged(object sender, EventArgs e)
        {
            if (radSqlServerAuthentication.Checked && !pnlUser.Enabled)
                pnlUser.Enabled = true;
        }

        ///sự kiện thay đổi trạng thái check box ShowPassword
        ///chức năng: ẩn, hiện password
        ///mô tả:
        private void chbShowPassword_CheckedChanged(object sender, EventArgs e)
        {
            if (chbShowPassword.Checked)
                txtPassword.UseSystemPasswordChar = false;
            else
                txtPassword.UseSystemPasswordChar = true;
        }

        ///sự kiện click button OK
        ///chức năng: lưu lại kết nối và thoát
        ///mô tả:
        private void btnOk_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(cboServerName.Text))
                MessageBox.Show("You haven't selected ServerName yet.");
            else
            {
                if (!_ConnectionString.ActiveDatabase)
                    MessageBox.Show("Please choose a database and test it.");
                else 
                {
                    DatabaseManager.MasterConnection = new MyDatabaseConnection(_ConnectionString.GetMasterConnectionString());
                    DatabaseManager.DbConnection = new MyDatabaseConnection(_ConnectionString.GetConnectionString());
                    if (DatabaseManager.MasterConnection.Open())
                    {
                        DatabaseManager.MasterConnection.Close();
                        if (DatabaseManager.DbConnection.Open())
                        {
                            DatabaseManager.DbConnection.Close();
                            if (MessageBox.Show("Save and finish?", "Warning", MessageBoxButtons.YesNo)
                                    == System.Windows.Forms.DialogResult.Yes)
                            {
                                DatabaseManager.IsConnected = true;
                                Settings.Default.MasterConnectionString = _ConnectionString.GetMasterConnectionString();
                                Settings.Default.ConnectionString = _ConnectionString.GetConnectionString();
                                Settings.Default.EntityConnectionString = _ConnectionString.GetEntityConnectionString();
                                Settings.Default.Save();
                                this.Close();
                            }
                        }
                        else
                            MessageBox.Show("Connect to database fail.");
                    }
                    else
                        MessageBox.Show("Connect to server fail.");
                }
            }
        }

        ///sự kiện thay đổi item cboServerName
        ///chức năng: ẩn pnlUser, xóa các csdl đã add vào combobox
        ///mô tả:
        private void cboServerName_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (grbConnectToDatabase.Enabled)
                grbConnectToDatabase.Enabled = false;
            if (cboDatabaseName.Items.Count > 0)
                cboDatabaseName.Items.Clear();
        }

        ///sự kiện thay đổi trạng thái radiobutton SelectDatabase
        ///chức năng: ẩn, hiện cboDatabaseName
        ///
        private void radSelectDatabase_CheckedChanged(object sender, EventArgs e)
        {
            if (!radSelectDatabase.Checked && cboDatabaseName.Enabled)
                cboDatabaseName.Enabled = false;
            if (radSelectDatabase.Checked && !cboDatabaseName.Enabled)
                cboDatabaseName.Enabled = true;
        }

        ///sự kiện thay đổi trạng thái radiobutton CreateDatabase
        ///chức năng: ẩn, hiện pnlCreateDatabase
        ///mô tả:
        private void radCreateDatabase_CheckedChanged(object sender, EventArgs e)
        {
            if (!radCreateDatabase.Checked && pnlCreateDatabase.Enabled)
                pnlCreateDatabase.Enabled = false;
            if (radCreateDatabase.Checked)
            {
                if (!pnlCreateDatabase.Enabled)
                    pnlCreateDatabase.Enabled = true;
                _ConnectionString.ActiveDatabase = false;
            }
        }

        ///sự kiện xổ cboServerName
        ///chức năng: load database, add vào cbo
        ///mô tả: chỉ load database khi xổ combobox lần đầu tiên
        private void cboServerName_DropDown(object sender, EventArgs e)
        {
            if (_IsFirstLoad)
            {
                this.Cursor = System.Windows.Forms.Cursors.WaitCursor;
                var tableEnumServers = SmoApplication.EnumAvailableSqlServers(true);
                try
                {
                    foreach (DataRow row in tableEnumServers.Rows)
                        cboServerName.Items.Add(row["Name"]);
                }
                catch (ArgumentNullException ex)
                {
                    Debug.WriteLine(ex.StackTrace);
                }
                _IsFirstLoad = false;
                this.Cursor = System.Windows.Forms.Cursors.Arrow;
            }
        }

        ///sự kiện click nút TestConnection
        ///chức năng: kiểm tra connectionstring
        ///mô tả:
        private void btnTestConnection_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(cboServerName.Text))
                MessageBox.Show("You haven't enter ServerName yet.");
            else
            {
                _ConnectionString.DataSource = cboServerName.Text;
                if (!radSqlServerAuthentication.Checked)
                    _ConnectionString.ActiveUserName = false;
                else
                {
                    if (String.IsNullOrEmpty(txtUserName.Text) || String.IsNullOrEmpty(txtPassword.Text))
                    {
                        MessageBox.Show("You haven't ented username or password yet.");
                        return;
                    }
                    else
                    {
                        _ConnectionString.UserName = txtUserName.Text;
                        _ConnectionString.Password = txtPassword.Text;
                        _ConnectionString.ActiveUserName = true;
                    }
                }
                if (radSelectDatabase.Checked)
                {
                    if (String.IsNullOrEmpty(cboDatabaseName.Text))
                    {
                        MyDatabaseConnection dbConn = new MyDatabaseConnection(_ConnectionString.GetMasterConnectionString());
                        if (dbConn.Open())
                        {
                            MessageBox.Show("Test success.");
                            if (!grbConnectToDatabase.Enabled)
                                grbConnectToDatabase.Enabled = true;
                            dbConn.Close();
                        }
                        else
                            MessageBox.Show("Test fail.");
                    }
                    else
                    {
                        _ConnectionString.InitialCatalog = cboDatabaseName.Text;
                        _ConnectionString.ActiveDatabase = true;
                        MyDatabaseConnection dbConn = new MyDatabaseConnection(_ConnectionString.GetConnectionString());
                        if (dbConn.Open())
                        {
                            MessageBox.Show("Test success.");
                            if (!grbConnectToDatabase.Enabled)
                                grbConnectToDatabase.Enabled = true;
                            dbConn.Close();
                        }
                        else
                        {
                            _ConnectionString.ActiveUserName = false;
                            _ConnectionString.ActiveDatabase = false;
                            MessageBox.Show("Test fail.");
                        }
                    }
                }
                else
                {
                    MyDatabaseConnection dbConn = new MyDatabaseConnection(_ConnectionString.GetMasterConnectionString());
                    if (dbConn.Open())
                    {
                        MessageBox.Show("Test success.");
                        if (!grbConnectToDatabase.Enabled)
                            grbConnectToDatabase.Enabled = true;
                        dbConn.Close();
                    }
                    else
                        MessageBox.Show("Test fail.");
                }
            }

        }

        ///sự kiện click nút LoadDb
        ///chức năng: load tên csdl vào combobox
        ///mô tả:
        private void btnLoadDb_Click(object sender, EventArgs e)
        {
            MyDatabaseConnection dbConn = new MyDatabaseConnection(_ConnectionString.GetMasterConnectionString());
            if (!dbConn.Open())
                MessageBox.Show("Load fail");
            else
            {
                dbConn.Close();
                this.Cursor = System.Windows.Forms.Cursors.WaitCursor;
                List<String> databaseNames = DatabaseManager.GetAllDatabaseName(dbConn);
                this.Cursor = System.Windows.Forms.Cursors.Arrow;
                if (databaseNames == null)
                    MessageBox.Show("Load fail");
                else
                {
                    cboDatabaseName.Items.Clear();
                    foreach (var dbName in databaseNames)
                    {
                        try
                        {
                            cboDatabaseName.Items.Add(dbName);
                        }
                        catch (ArgumentNullException ex)
                        {
                            Debug.WriteLine(ex.Message);
                        }
                    }
                }
            }
        }

        ///sự kiện click nút CreateDb
        ///chức năng: tạo csdl từ file script
        ///mô tả:
        private void btnCreateDb_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtDatabaseName.Text))
            {
                MessageBox.Show("You have not entered the database name");
                return;
            }

            MyDatabaseConnection dbConn = new MyDatabaseConnection(_ConnectionString.GetMasterConnectionString());
            if (dbConn == null)
            {
                MessageBox.Show("You have not connected to server");
                return;
            }

            string databaseName = txtDatabaseName.Text.Trim().ToUpper();
            if (DatabaseManager.CheckDatabaseExist(dbConn, databaseName) > 0)
            {
                MessageBox.Show("DatabaseName is existed");
                return;
            }

            this.Cursor = Cursors.WaitCursor;
            bool isTrue = DatabaseManager.CreateDatabase(dbConn, Properties.Resources.script, databaseName);
            this.Cursor = Cursors.Arrow;
            if (isTrue)
            {
                MessageBox.Show("Database is created successfully");
                _ConnectionString.InitialCatalog = databaseName;
                _ConnectionString.ActiveDatabase = true;
            }
            else
            {
                _ConnectionString.ActiveDatabase = true;
                MessageBox.Show("Creating database failed");
            }
        }

        ///sự kiện nhập trên textbox txtDatabaseName
        ///chức năng: chặn các ký tự đặc biệt
        ///mô tả:
        private void txtDatabaseName_KeyPress(object sender, KeyPressEventArgs e)
        {
            try
            {
                int keyCode = (int)e.KeyChar;
                if ((keyCode >= 48 && keyCode <= 57)
                    || (keyCode >= 65 && keyCode <= 90)
                    || (keyCode >= 97 && keyCode <= 122)
                    || (keyCode == 8))
                    e.Handled = false;
                else
                    e.Handled = true;
            }
            catch (Exception ex)
            {
                Debug.Write(ex.Message);
            }
        }
    }
}
