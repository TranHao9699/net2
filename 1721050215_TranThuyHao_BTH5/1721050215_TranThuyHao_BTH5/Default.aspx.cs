using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1721050215_TranThuyHao_BTH5
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (tbxTen.Text == "admin" && tbxMK.Text == "123")
            {
                Session["is_login"] = "logged";
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblMsg.Visible = true;
            }
        }
    }
}