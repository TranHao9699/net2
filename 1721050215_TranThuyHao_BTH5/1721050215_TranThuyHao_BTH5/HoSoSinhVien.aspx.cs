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
    public partial class HoSoSinhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    Load_chuyennganh();
            //    Data_all();
            //}
        }
        //private void Data_all()
        //{
        //    clsconnect clscon = new clsconnect();
        //    SqlDataAdapter da = new SqlDataAdapter();
        //    DataTable dt = new DataTable();

        //    clscon.connect_Data();
        //    SqlCommand cm = new SqlCommand();
        //    cm.Connection = clscon.con;
        //    cm.CommandType = CommandType.Text;
        //    string sqlQuery = "SELECT * FROM tbl_sinhvien INNER JOIN tbl_chuyennganh ON tbl_sinhvien.ChuyenNganh = tbl_chuyennganh.MaCN";
        //    string sqlWhere = "";
        //    if (txtSearchText.Text.Trim() != "")
        //    {
        //        sqlWhere = " TenSV like N'%" + txtSearchText.Text.Trim() + "%'";
        //    }
        //    if (ddlChuyenNganh.SelectedIndex != 0)
        //    {
        //        if (sqlWhere != "")
        //        {
        //            sqlWhere += " AND";
        //        }

        //        sqlWhere += " ChuyenNganh = " + ddlChuyenNganh.SelectedValue;
        //    }

        //    if (sqlWhere != "")
        //    {
        //        sqlQuery += " WHERE " + sqlWhere;
        //    }

        //    cm.CommandText = sqlQuery;

        //    da.SelectCommand = cm;
        //    da.Fill(dt);

        //    grvKhoaHoc.DataSource = dt;
        //    grvKhoaHoc.DataBind();
        //}

        //private void Load_chuyennganh()
        //{
        //    clsconnect clscon = new clsconnect();
        //    SqlDataAdapter da = new SqlDataAdapter();
        //    DataTable dt = new DataTable();

        //    clscon.connect_Data();
        //    SqlCommand cm = new SqlCommand();
        //    cm.Connection = clscon.con;
        //    cm.CommandType = CommandType.Text;
        //    cm.CommandText = "SELECT * FROM tbl_chuyennganh ORDER by TenCN ASC";

        //    da.SelectCommand = cm;
        //    da.Fill(dt);

        //    ddlChuyenNganh.DataTextField = "TenCN";
        //    ddlChuyenNganh.DataValueField = "MaCN";
        //    ddlChuyenNganh.DataSource = dt;
        //    ddlChuyenNganh.DataBind();

        //    ddlChuyenNganh.Items.Insert(0, new ListItem("--- Tất cả ---", "0"));
        //}

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            ///Data_all();
        }

        protected void ddlChuyenNganh_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Data_all();
        }

        protected void grvKhoaHoc_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //e.Row.Cells[3].Text = e.Row.Cells[3].Text == "True" ? "Nữ" : "Nam";
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThemTTSV.aspx");
        }
    }
}