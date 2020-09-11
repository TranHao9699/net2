using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace Bai_TH5
{
    public class cls_connect
    {
        // Lấy chuỗi kết nối trong web.config
        public string s_con = WebConfigurationManager.ConnectionStrings["DB_DATNConnectionString"].ToString();
        //khai báo biến sqlconnection
        public SqlConnection con;
        public void connect_Data()//Thủ tục mở kết nối
        {
            if (con == null)
            {
                con = new SqlConnection(s_con);
            }
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
        }
        public void close_Data() //Thủ tục đóng kết nối
        {
            if(con != null)
            {
                con.Close();
                con.Dispose();
            }    
        }
    }
}