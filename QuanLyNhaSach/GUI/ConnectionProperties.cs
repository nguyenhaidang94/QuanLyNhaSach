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
using QuanLyNhaSach.SqlHelper;

namespace QuanLyNhaSach.GUI
{
    public partial class ConnectionProperties : Form
    {
        private MyConnectionString _ConnectionString;

        private bool _IsFirstLoad;
        public bool IsFirstLoad
        {
            get { return _IsFirstLoad; }
            set { _IsFirstLoad = value; }
        }

        public ConnectionProperties()
        {
            InitializeComponent();
            _ConnectionString = new MyConnectionString();
            _IsFirstLoad = true;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Do you want to exit?", "Warning", MessageBoxButtons.YesNo);
            if (result == System.Windows.Forms.DialogResult.Yes)
                this.Close();
        }

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
            if (!grbConnectToDatabase.Enabled)
                grbConnectToDatabase.Enabled = true;
            MessageBox.Show("Finish refreshing.");
            
        }

        private void radWindowsAuthentication_CheckedChanged(object sender, EventArgs e)
        {
            if (radWindowsAuthentication.Checked && pnlUser.Enabled)
                pnlUser.Enabled = false;  
        }

        private void radSqlServerAuthentication_CheckedChanged(object sender, EventArgs e)
        {
            if (radSqlServerAuthentication.Checked && !pnlUser.Enabled)
                pnlUser.Enabled = true;
        }

        private void chbShowPassword_CheckedChanged(object sender, EventArgs e)
        {
            if (chbShowPassword.Checked)
                txtPassword.UseSystemPasswordChar = false;
            else
                txtPassword.UseSystemPasswordChar = true;
        }

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
                    MyDatabaseConnection dbConn = new MyDatabaseConnection(_ConnectionString.GetConnectionString());
                    if (!dbConn.Open())
                        MessageBox.Show("Connect fail.");
                    else
                    {
                        if (MessageBox.Show("Save and finish?", "Warning", MessageBoxButtons.YesNo)
                            == System.Windows.Forms.DialogResult.Yes)
                        {
                            DatabaseManager.ConnectionString = _ConnectionString;
                            DatabaseManager.MasterConnection = new MyDatabaseConnection(_ConnectionString.GetMasterConnectionString());
                            DatabaseManager.DbConnection = new MyDatabaseConnection(_ConnectionString.GetConnectionString());
                            this.Close();
                        }
                    }
                }
            }
        }

        private void cboServerName_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (grbConnectToDatabase.Enabled)
                grbConnectToDatabase.Enabled = false;
            if (cboDatabaseName.Items.Count > 0)
                cboDatabaseName.Items.Clear();
        }

        private void cboServerName_TextChanged(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(cboServerName.Text) && !grbConnectToDatabase.Enabled)
                grbConnectToDatabase.Enabled = true;
            if (String.IsNullOrEmpty(cboServerName.Text) && grbConnectToDatabase.Enabled)
                grbConnectToDatabase.Enabled = false;
        }

        private void radSelectDatabase_CheckedChanged(object sender, EventArgs e)
        {
            if (!radSelectDatabase.Checked && cboDatabaseName.Enabled)
                cboDatabaseName.Enabled = false;
            if (radSelectDatabase.Checked && !cboDatabaseName.Enabled)
                cboDatabaseName.Enabled = true;
        }

        private void radCreateDatabase_CheckedChanged(object sender, EventArgs e)
        {
            if (!radCreateDatabase.Checked && pnlCreateDatabase.Enabled)
                pnlCreateDatabase.Enabled = false;
            if (radCreateDatabase.Checked && !pnlCreateDatabase.Enabled)
                pnlCreateDatabase.Enabled = true;
        }

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

        }

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
    }
}
