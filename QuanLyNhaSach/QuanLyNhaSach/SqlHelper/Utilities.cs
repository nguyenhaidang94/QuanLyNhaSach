using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyNhaSach.SqlHelper
{
    public sealed class Utilities
    {
        ///constructor
        ///chức năng: khởi tạo cho lớp
        ///mô tả:
        Utilities()
        {
        }

        public static Utilities Instance
        {
            get
            {
                return Nested.instance;
            }
        }

        ///nested class
        ///chức năng: giữ Instance, chỉ cho duy nhất lớp này truy cập
        ///mô tả:
        class Nested
        {
            static Nested()
            {
            }
            internal static readonly Utilities instance = new Utilities();
        }

        ///giải thuật md5
        ///chức năng: mã hóa chuỗi
        ///mô tả:
        private byte[] encryptData(string data)
        {
            System.Security.Cryptography.MD5CryptoServiceProvider md5Hasher = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] hashedBytes;
            System.Text.UTF8Encoding encoder = new System.Text.UTF8Encoding();
            hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(data));
            return hashedBytes;
        }

        ///hàm mã hóa chuỗi
        ///chức năng: 
        ///mô tả: sử dụng giải thuật md5
        public string MaHoa(string data)
        {
            return BitConverter.ToString(encryptData(data)).Replace("-", "").ToLower();
        }
    }
}
