using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyNhaSach.SqlHelper
{
    public class DatabaseManager
    {
        private static bool _IsConnected = false;
        public static bool IsConnected
        {
            get { return DatabaseManager._IsConnected; }
            set { DatabaseManager._IsConnected = value; }
        }

        private static MyConnectionString _ConnectionString = null;
        public static MyConnectionString ConnectionString
        {
            get { return DatabaseManager._ConnectionString; }
            set { DatabaseManager._ConnectionString = value; }
        }

        private static MyDatabaseConnection _DbConnection = null;
        public static MyDatabaseConnection DbConnection
        {
            get { return DatabaseManager._DbConnection; }
            set { DatabaseManager._DbConnection = value; }
        }

        private static MyDatabaseConnection _MasterConnection = null;
        public static MyDatabaseConnection MasterConnection
        {
            get { return DatabaseManager._MasterConnection; }
            set { DatabaseManager._MasterConnection = value; }
        }

        //-----------------------------------------
        //Desc: lấy tên tất cả cơ sở dữ liệu trong sql server
        //-----------------------------------------
        public static List<string> GetAllDatabaseName(MyDatabaseConnection dbConn)
        {
            string sql = "SELECT * FROM sys.databases d WHERE d.database_id > 6";
            DataTable data = dbConn.ExecuteQuery(sql);
            if (data == null)
                return null;
            else
            {
                List<string> databaseNames = new List<string>();
                for (int i = 0; i < data.Rows.Count; i++)
                    databaseNames.Add(data.Rows[i][0].ToString());
                return databaseNames;
            }
        }

        //-----------------------------------------
        //Desc: kiểm tra tồn tại database
        //-----------------------------------------
        public static int CheckDatabaseExist(MyDatabaseConnection dbConn, string databaseName)
        {
            if (dbConn == null)
                return -1;

            string sql = "SELECT count (name) FROM master.sys.databases WHERE name = N'" + databaseName + "'";
            object obj = dbConn.ExecuteScalar(sql);
            if (obj == null)
                return -1;
            else
            {
                int dem;
                try
                {
                    dem = (int)obj;
                }
                catch { return -1; }

                return dem;
            }
        }

        //-----------------------------------------
        //Desc: tạo cơ sở dữ liệu
        //-----------------------------------------
        public static bool CreateDatabase(MyDatabaseConnection dbConn, string fileScript,
            string databaseName)
        {
            if (dbConn == null || dbConn.SqlConn == null)
                return false;

            string[] commands = fileScript.Split(new[] { "GO" }, StringSplitOptions.RemoveEmptyEntries);
            int i;
            SqlConnection sqlConn = dbConn.SqlConn;
            try
            {
                SqlCommand sqlCmd = new SqlCommand() { CommandType = System.Data.CommandType.Text };
                sqlCmd.Connection = sqlConn;
                sqlConn.Open();

                sqlCmd.CommandText = " USE [master]";
                sqlCmd.ExecuteNonQuery();
                sqlCmd.CommandText = "CREATE DATABASE [" + databaseName + "]";
                sqlCmd.ExecuteNonQuery();
                sqlCmd.CommandText = "USE [" + databaseName + "]";
                sqlCmd.ExecuteNonQuery();

                for (i = 0; i < commands.Length; i++)
                {
                    sqlCmd.CommandText = commands[i];
                    sqlCmd.ExecuteNonQuery();
                }
                sqlConn.Close();
                return true;
            }
            catch
            {
                if (sqlConn.State == System.Data.ConnectionState.Open)
                    sqlConn.Close();
                return false;
            }
        }

        //-----------------------------------------
        //Desc: Sao lưu cơ sở dữ liệu
        //-----------------------------------------
        public static bool BackupDatabase(string folderPath, string databaseName)
        {
            if (DatabaseManager.MasterConnection == null)
                return false;

            int i = 1;
            string fileName = folderPath + "\\" + databaseName + i.ToString("D3") + ".bak";
            //xem thư mục có tên đã được tạo chưa, nếu đã được tạo thì thay đổi tên
            while (File.Exists(fileName))
            {
                i++;
                fileName = folderPath + "\\" + databaseName + i.ToString("D3") + ".bak";
            }

            string sql = "BACKUP DATABASE " + databaseName
                       + " TO DISK ='" + fileName + "'";
            if (DatabaseManager.MasterConnection.ExecuteNonQuery(sql))
                return true;
            else
                return false;
        }

        public static bool RestoreDatabase(string fileName, string databaseName)
        {
            if (DatabaseManager.MasterConnection == null)
                return false;

            int dbExist = CheckDatabaseExist(MasterConnection, databaseName);
            string sql = "";
            if (dbExist > 0)
            {
                sql += "Alter Database " + databaseName + " SET SINGLE_USER WITH ROLLBACK IMMEDIATE;";
                sql += "Restore Database " + databaseName + " FROM DISK = '" + fileName + "' WITH REPLACE;";
                return DatabaseManager.MasterConnection.ExecuteNonQuery(sql);
            }
            else if (dbExist == 0)
            {
                sql += "Restore Database " + databaseName + " FROM DISK = '" + fileName + "' WITH REPLACE;";
                return DatabaseManager.MasterConnection.ExecuteNonQuery(sql);
            }
            else
                return false;
        }
    }
}
