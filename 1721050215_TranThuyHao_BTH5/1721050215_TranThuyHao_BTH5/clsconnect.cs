using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace _1721050215_TranThuyHao_BTH5
{
    public class clsconnect
    {
        public string s_con = WebConfigurationManager.ConnectionStrings["DB_DATNConnectionString"].ToString();
        public SqlConnection con;

        public void connect_Data()
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

        public void close_Data()
        {
            if (con != null)
            {
                con.Close();
                con.Dispose();
            }
        }

        // Ham dem so luong
        public int ExecuteScalar(string sqlQuery)
        {
            clsconnect cls_con = new clsconnect();
            cls_con.connect_Data();
            SqlCommand Sqlcon = new SqlCommand();
            Sqlcon.Connection = cls_con.con;
            Sqlcon.CommandType = CommandType.Text;
            Sqlcon.CommandText = sqlQuery;
            int result = (int)Sqlcon.ExecuteScalar();
            return result;
        }
        //ham them sửa xóa
        public int ExecuteSQL(string sqlQuery)
        {
            clsconnect cls_con = new clsconnect();// Khai báo sử dụng lớp
            cls_con.connect_Data();//mở kết nối tới CSDL
            SqlCommand sqlcm = new SqlCommand(sqlQuery, cls_con.con);
            int result = sqlcm.ExecuteNonQuery();
            return result;
        }
        // Ham danh cho lay danh sach
        public SqlDataReader RetrieveSQL(string sqlQuery)
        {
            clsconnect cls_con = new clsconnect();// Khai báo sử dụng lớp
            cls_con.connect_Data();//mở kết nối tới CSDL
            SqlCommand sqlcm = new SqlCommand(sqlQuery, cls_con.con);
            SqlDataReader result = sqlcm.ExecuteReader();
            return result;
        }
    }
}