using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1721050215_TranThuyHao_BTH5
{
    public partial class ThemTTSV : System.Web.UI.Page
    {
        clsconnect cls_con = new clsconnect();// Khai báo sử dụng lớp
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                LoadDdlKhoaHoc();
                LoadDdlChuyenNganh();
            }
            
        }
        private void LoadDdlKhoaHoc()
        {
            SqlDataReader re = cls_con.RetrieveSQL("SELECT * FROM tbl_KhoaHoc");

            ddlKhoaHoc.DataTextField = "TenKhoa";
            ddlKhoaHoc.DataValueField = "MaKH";
            ddlKhoaHoc.DataSource = re;
            ddlKhoaHoc.DataBind();
        }

        private void LoadDdlChuyenNganh()
        {
            SqlDataReader re = cls_con.RetrieveSQL("SELECT * FROM tbl_ChuyenNganh");

            ddlChuyenNganh.DataTextField = "TenCN";
            ddlChuyenNganh.DataValueField = "MaCN";
            ddlChuyenNganh.DataSource = re;
            ddlChuyenNganh.DataBind();
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            // Kiểm tra Mã SV tồn tại chưa?

            // nếu ok thì Save vào DB
            string sql = "INSERT INTO tbl_SinhVien VALUES (" + ddlKhoaHoc.SelectedValue + ", " + ddlChuyenNganh.SelectedValue + ")";
            int result = cls_con.ExecuteSQL(sql);

            // kiểm tra lưu thành công ko?
            if (result > 0)
            {
                // thông báo thành công!
            }
            else
            {
                // thông báo thất bại
            }
        }
    }
}