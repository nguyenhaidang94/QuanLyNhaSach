using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyNhaSach.DTO;

namespace QuanLyNhaSach.SqlHelper
{
    public class UserManager
    {
        private static NguoiDung _User = null;
        public static NguoiDung User
        {
            get { return UserManager._User; }
            set { UserManager._User = value; }
        }      
    }
}
