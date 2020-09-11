using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vidu_B5_Session
{
    public partial class View : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["is_login"] == null)  //chua login thanh cong
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["is_login"] = null;
            Response.Redirect("Default.aspx");
        }
    }
}