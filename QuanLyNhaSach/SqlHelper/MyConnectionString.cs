using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyNhaSach.SqlHelper
{
    public class MyConnectionString
    {
        private String _DataSource;
        public String DataSource
        {
            get { return _DataSource; }
            set { _DataSource = value; }
        }

        private bool _ActiveDatabase;
        public bool ActiveDatabase
        {
            get { return _ActiveDatabase; }
            set { _ActiveDatabase = value; }
        }

        private String _InitialCatalog;
        public String InitialCatalog
        {
            get { return _InitialCatalog; }
            set { _InitialCatalog = value; }
        }

        private bool _ActiveUserName;
        public bool ActiveUserName
        {
            get { return _ActiveUserName; }
            set { _ActiveUserName = value; }
        }

        private String _UserName;
        public String UserName
        {
            get { return _UserName; }
            set { _UserName = value; }
        }

        private String _Password;
        public String Password
        {
            get { return _Password; }
            set { _Password = value; }
        }

        private bool _IntergratedScurity = true;
        private bool _MultipleActiveResultSets = true;
        private String _App = "EntityFramework";

        public MyConnectionString()
        {
            _ActiveDatabase = false;
            _ActiveUserName = false;
        }

        public String GetMasterConnectionString()
        {
            if (_ActiveUserName)
                return "data source=" + _DataSource + ";initial catalog=master" + ";user id=" 
                    + _UserName + ";password=" + _Password + ";integrated security="
                    + !_IntergratedScurity + ";";
            else
                return "data source=" + _DataSource + ";initial catalog=master"
                    + ";integrated security=" + _IntergratedScurity + ";";
        }

        public String GetConnectionString()
        {
            if (_ActiveUserName)
                return "data source=" + _DataSource + ";initial catalog=" + _InitialCatalog
                    + ";user id=" + _UserName + ";password=" + _Password + ";integrated security="
                    + !_IntergratedScurity + ";";
            else
                return "data source=" + _DataSource + ";initial catalog=" + _InitialCatalog
                    + ";integrated security=" + _IntergratedScurity + ";";
        }

        public String GetEntityConnectionString()
        {
            if (_ActiveUserName)
                return "data source=" + _DataSource + ";initial catalog=" + _InitialCatalog
                    + ";user id=" + _UserName + ";password=" + _Password + ";integrated security="
                    + !_IntergratedScurity + ";MultipleActiveResultSets="
                    + _MultipleActiveResultSets + ";App=" + _App + ";";
            else
                return "data source=" + _DataSource + ";initial catalog=" + _InitialCatalog
                    + ";integrated security=" + _IntergratedScurity + ";MultipleActiveResultSets="
                    + _MultipleActiveResultSets + ";App=" + _App + ";";
        }
    }
}
