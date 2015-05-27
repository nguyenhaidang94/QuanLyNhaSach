using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLyNhaSach.GUI;
using QuanLyNhaSach.SqlHelper;
using Settings = QuanLyNhaSach.Properties.Settings;

namespace QuanLyNhaSach
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            //Application.Run(new GUIQuanLyHoaDon());
            if (!String.IsNullOrEmpty(Settings.Default.MasterConnectionString)
                && !String.IsNullOrEmpty(Settings.Default.ConnectionString))
            {
                DatabaseManager.MasterConnection = new MyDatabaseConnection(Settings.Default.MasterConnectionString);
                DatabaseManager.DbConnection = new MyDatabaseConnection(Settings.Default.ConnectionString);
                if (DatabaseManager.MasterConnection.Open())
                {
                    DatabaseManager.MasterConnection.Close();
                    if (DatabaseManager.DbConnection.Open())
                    {
                        DatabaseManager.DbConnection.Close();
                        DatabaseManager.IsConnected = true;
                    }
                }
            }

            if (!DatabaseManager.IsConnected)
                Application.Run(new ConnectionProperties());
            if (DatabaseManager.IsConnected)
                Application.Run(new GUIQuanLyNhaSach());
        }
    }
}
