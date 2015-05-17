using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyNhaSach.SqlHelper
{
    public class DatabaseManager
    {
        private static MyConnectionString _ConnectionString;
        public static MyConnectionString ConnectionString
        {
            get { return DatabaseManager._ConnectionString; }
            set { DatabaseManager._ConnectionString = value; }
        }

        private static MyDatabaseConnection _DbConnection;
        public static MyDatabaseConnection DbConnection
        {
            get { return DatabaseManager._DbConnection; }
            set { DatabaseManager._DbConnection = value; }
        }

        private static MyDatabaseConnection _MasterConnection;
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
    }
}
