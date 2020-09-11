using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vidu_B5_Session
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (txtTenDangNhap.Text == "admin" && txtMatKhau.Text == "123")
            {
                Session["is_login"] = "logged";
                Response.Redirect("home.aspx");
            }
            else
            {
                lblMsg.Visible = true;
            }
        }
    }
}