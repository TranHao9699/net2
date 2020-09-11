using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1721050215_TranThuyHao_BTH2.Form
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int year = DateTime.Now.Year;
            for (int i = 1970; i <= year; i++)
            {
                DropDownList3.Items.Add(new ListItem(i.ToString()));
            }
            int day = 31;
            for (int j = 1; j <= day; j++)
            {
                DropDownList1.Items.Add(new ListItem(j.ToString()));
            }
            int month = 12;
            for (int k = 1; k <= month; k++)
            {
                DropDownList2.Items.Add(new ListItem(k.ToString()));
            }

        }

        protected void btn_dongy_Click(object sender, EventArgs e)
        {
            txt_hovaten.Text = "";
            tbx_diachi.Text = "";
            tbx_dienthoai.Text = "";
            tbx_email.Text = "";
            txt_hovaten.Focus();
            rbt_nam.Checked = true;
            rbt_nu.Checked = true;

        }

        protected void btn_huy_Click(object sender, EventArgs e)
        {
            txt_hovaten.Text = "";
            tbx_diachi.Text = "";
            tbx_dienthoai.Text = "";
            tbx_email.Text = "";
            txt_hovaten.Focus();
            rbt_nam.Checked = false;
            rbt_nu.Checked = false;
        }
    }
}