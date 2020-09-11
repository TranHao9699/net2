using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1721050215_TranThuyHao_BaiTH2
{
    public partial class Tiendien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public double TinhTien (int a)
        {
            double tong = 0;
            if( a <= 50)
            {
                tong = a * 1388;
            }
            else if (a <= 100)
            {
                tong = (a - 50) * 1433 + (50 * 1388);
            }
            else if (a <= 200)
            {
                tong = (a - 100) * 1660 +( (50 * 1433) + (50 * 1388));
            }
            else if ( a <= 300)
            {
                tong = (a - 200) * 2082 + ((100 * 1660) + ( 50 * 1433) + (50 * 1388));
            }
            else if ( a <= 400)
            {
                tong = (a - 300) * 2324 + ((100* 2082) + (100 * 1660) + (50 * 1433) + (50 * 1388));
            }
            else
            {
                tong = (a - 400) * 2399 + ((100*2324) +(100 * 2082) + (100 * 1660) + (50 * 1433) + (50 * 1388));
            }
            return tong;

        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            int sodien = Convert.ToInt32(TextBox2.Text);
            
            LblTien.Text = " " + TinhTien(sodien);
        }
    }
}