using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1721050215_TranThuyHao_BTH5
{
    public partial class ThemTTGV : System.Web.UI.Page
    {
        clsconnect cls_con = new clsconnect();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
       

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string sql = "INSERT INTO tbl_giangvien VALUES(" + txtMaGV.Text.Trim() + ", N'" + txtTenGV.Text.Trim() + ", N'" + txtnNS.Text.Trim() + ", N'" + txtEmail.Text.Trim() + ", N'" + txtSDT.Text.Trim() + ", N'" + txtDC.Text.Trim() + "')";
            int result = cls_con.ExecuteSQL(sql);

            // kiểm tra lưu thành công ko?
            if (result > 0)
            {
                lblThongBao.Text = " Thêm thành công";
            }
            else
            {
                lblThongBao.Text = " Thêm thất bại";
            }
        }
    }
}