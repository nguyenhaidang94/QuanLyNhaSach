using QuanLyNhaSach.SqlHelper;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyNhaSach.GUI
{
    public partial class GUISaoLuuPhucHoi : DevComponents.DotNetBar.Office2007Form
    {
        public GUISaoLuuPhucHoi()
        {
            InitializeComponent();
        }

        ///sự kiện thay đổi trạng thái check của rbtnSaoLuu
        ///chức năng: ẩn, hiện pnlSaoLuu
        ///mô tả:
        private void rbtnSaoLuu_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtnSaoLuu.Checked && !pnlSaoLuu.Enabled)
                pnlSaoLuu.Enabled = true;
            if (!rbtnSaoLuu.Checked && pnlSaoLuu.Enabled)
                pnlSaoLuu.Enabled = false;
        }

        ///sự kiện thay đổi trạng thái check của rbtnPhucHoi
        ///chức năng: ẩn, hiện pnlPhucHoi
        ///mô tả:
        private void rbtnPhucHoi_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtnPhucHoi.Checked && !pnlPhucHoi.Enabled)
                pnlPhucHoi.Enabled = true;
            if (!rbtnPhucHoi.Checked && pnlPhucHoi.Enabled)
                pnlPhucHoi.Enabled = false;
        }

        ///sự kiện load form
        ///chức năng: hiển thị tên csdl đang sử dụng
        ///mô tả:
        private void frmSaoLuuPhucHoi_Load(object sender, EventArgs e)
        {
            try
            {
                txtCsdlSaoLuu.Text = DatabaseManager.DbConnection.SqlConn.Database;
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
        }

        ///sự kiện click btnDuongDanLuu
        ///chức năng: chọn đường dẫn lưu
        ///mô tả:
        private void btnDuongDanLuu_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog dlg = new FolderBrowserDialog();
            if (dlg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                try
                {
                    DirectoryInfo dir = new DirectoryInfo(dlg.SelectedPath);
                    if (String.Compare(dir.Root.Name, "C:\\", false) == 0)
                        MessageBox.Show("Vui lòng không lưu ở ổ đĩa C");
                    else
                        txtDuongDanLuu.Text = dlg.SelectedPath;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lưu ở đường dẫn này sẽ gặp khó khăn, vui lòng lưu ở đường dẫn khác.");
                    Debug.WriteLine(ex.Message);
                }
            }
        }

        ///sự kiện click btnSaoLuu
        ///chức năng: sao lưu csdl
        ///mô tả:
        private void btnSaoLuu_Click(object sender, EventArgs e)
        {
            if (DatabaseManager.CheckDatabaseExist(DatabaseManager.MasterConnection,
                txtCsdlSaoLuu.Text) < 0)
            {
                MessageBox.Show("Cơ sơ dữ liệu không tồn tại.");
            }
            else
            {
                if (String.IsNullOrEmpty(txtDuongDanLuu.Text))
                {
                    MessageBox.Show("Vui lòng chọn thư mục lưu.");
                }
                else
                {
                    string path = txtDuongDanLuu.Text;
                    if (MessageBox.Show("Bạn có đồng ý sao lưu cơ sở dữ liệu "
                        + txtCsdlSaoLuu.Text + " tại đường dẫn " + path + "?", "Nhắc nhở", MessageBoxButtons.YesNo)
                        == System.Windows.Forms.DialogResult.Yes)
                    {
                        DateTime dtime = DateTime.Now;
                        String fileName = String.Empty;
                        DriveInfo driveInfo = new DriveInfo(path);
                        if (driveInfo != null && String.Compare(driveInfo.Name, path, false) == 0)
                        {
                            fileName = path + txtCsdlSaoLuu.Text
                                + dtime.Hour.ToString("d2") + dtime.Minute.ToString("d2")
                                + dtime.Second.ToString("d2") + dtime.Date.ToString("ddMMyy")
                                + ".bak";
                        }
                        else
                        {
                            fileName = path + "\\" + txtCsdlSaoLuu.Text
                                + dtime.Hour.ToString("d2") + dtime.Minute.ToString("d2")
                                + dtime.Second.ToString("d2") + dtime.Date.ToString("ddMMyy")
                                + ".bak";
                        }

                        this.Cursor = Cursors.WaitCursor;
                        if (DatabaseManager.BackupDatabase(DatabaseManager.MasterConnection, fileName, txtCsdlSaoLuu.Text))
                        {
                            this.Cursor = Cursors.Arrow;
                            MessageBox.Show("Sao lưu dữ liệu thành công,"
                            + " vui lòng kiểm tra lại thư mục tại đường dẫn trên");
                        }
                        else
                        {
                            this.Cursor = Cursors.Arrow;
                            MessageBox.Show("Sao lưu thất bại");
                        }
                    }
                }
            }
        }

        ///sự kiện click btnClose
        ///chức năng: Đóng form
        ///mô tả:
        private void btnClose_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn đóng màn hình này không?", "Nhắc nhở",
                MessageBoxButtons.YesNo) == System.Windows.Forms.DialogResult.Yes)
                this.Close();
        }

        ///sự kiện click btnDuongDanPhucHoi
        ///chức năng: chọn file dữ liệu để phục hồi
        ///mô tả:
        private void btnDuongDanPhucHoi_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;
            try
            {
                dlg.Filter = "bak files|*.bak";
            }
            catch (Exception ex)
            {
                Debug.Write(ex.Message);
            }
            if (dlg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                txtDuongDanPhucHoi.Text = dlg.FileName;
        }

        ///sự kiện click btnPhucHoi
        ///chức năng: phục hồi dữ liệu từ file được chọn
        ///mô tả:
        private void btnPhucHoi_Click(object sender, EventArgs e)
        {
            bool condition = true;
            if (String.IsNullOrEmpty(txtTenCsdlMoi.Text))
            {
                condition = false;
                MessageBox.Show("Chưa nhập tên cơ sở dữ liệu.");
            }
            if (condition && String.IsNullOrEmpty(txtDuongDanPhucHoi.Text))
            {
                condition = false;
                MessageBox.Show("Vui lòng chọn file dữ liệu cần phục hồi.");
            }
            if (condition && DatabaseManager.CheckDatabaseExist(DatabaseManager.MasterConnection,
                txtTenCsdlMoi.Text) > 0)
            {
                condition = false;
                MessageBox.Show("Tên cơ sở dữ liệu, hãy nhập một tên khác.");
            }
            if (condition && !File.Exists(txtDuongDanPhucHoi.Text))
            {
                condition = false;
                MessageBox.Show("File dữ liệu không tồn tại, vui lòng kiểm tra lại.");
            }

            if (condition)
            {
                if (MessageBox.Show("Bạn có đông ý phục hồi cơ sở dữ liệu " + txtTenCsdlMoi.Text
                    + " từ file " + txtDuongDanPhucHoi.Text, "Nhắc nhở", MessageBoxButtons.YesNo)
                    == System.Windows.Forms.DialogResult.Yes)
                {
                    this.Cursor = Cursors.WaitCursor;
                    if (DatabaseManager.RestoreDatabase(DatabaseManager.MasterConnection,
                        txtTenCsdlMoi.Text, txtDuongDanPhucHoi.Text))
                    {
                        this.Cursor = Cursors.Arrow;
                        MessageBox.Show("Phục hồi thành công, vui lòng kiểm tra cơ sở dữ liệu.");
                    }
                    else
                    {
                        this.Cursor = Cursors.Arrow;
                        MessageBox.Show("Phục hồi dữ liệu thất bại.");
                    }
                }
            }
        }

        ///sự kiện nhập ở textbox txtTenCSDLMoi
        ///chức năng: phục hồi dữ liệu từ file được chọn
        ///mô tả:
        private void txtTenCsdlMoi_KeyPress(object sender, KeyPressEventArgs e)
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
