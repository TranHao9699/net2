using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1721050215_TranThuyHao_BTH5
{
    public partial class HoSoGiangVien : System.Web.UI.Page
    {
        clsconnect cls_con = new clsconnect();
        protected void Page_Load(object sender, EventArgs e)
        {
            if( !IsPostBack)
            {
                if (Request.QueryString.Get("magv") != null)
                {
                    string sql = " DELETE tbl_giangvien WHERE MaGV= " + Request.QueryString.Get("magv");
                    int result = cls_con.ExecuteSQL(sql);
                }
            }
            Data_all();
        }
        private void Data_all()
        {
            SqlDataReader re = cls_con.RetrieveSQL("SELECT * FROM tbl_giangvien");
            GridView1.DataSource = re;
            GridView1.DataBind();

            cls_con.close_Data();
        }

        private void Data_search()
        {
            clsconnect clscon = new clsconnect();

            clscon.connect_Data();
            SqlCommand sqlcm = new SqlCommand();
            sqlcm.Connection = clscon.con;
            sqlcm.CommandType = CommandType.Text;
            sqlcm.CommandText = "SELECT * FROM tbl_giangvien WHERE TenGV like N'%" + txtSearchText.Text.Trim() + "%'";

            //SqlDataReader re = sqlcm.ExecuteReader();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlcm;
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();

            //clscon.close_Data();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Data_search();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThemTTGV.aspx");
        }
    }
}