using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1721050215_TranThuyHao_BTH5
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clsconnect objCon = new clsconnect();
            // số hồ sơ
            lblSV.Text = objCon.ExecuteScalar("select COUNT(MaSV) from tbl_sinhvien").ToString();
            lblGV.Text = objCon.ExecuteScalar("select COUNT(MaGV) from tbl_giangvien").ToString();
            lblDA.Text = objCon.ExecuteScalar("select COUNT(MaSV) from tbl_doan").ToString();
            LblCN.Text = objCon.ExecuteScalar("select COUNT(MaCN) from tbl_chuyennganh").ToString();
            // Số đồ án theo lĩnh vực
            lblLV1.Text = objCon.ExecuteScalar("SELECT COUNT(MaDA) FROM tbl_doan INNER JOIN tbl_linhvuc ON tbl_linhvuc.MaLV = tbl_doan.LinhVuc Where MaLV= 1 ").ToString();
            lblLV2.Text = objCon.ExecuteScalar("SELECT COUNT(MaSV) FROM tbl_doan INNER JOIN tbl_linhvuc ON tbl_linhvuc.MaLV = tbl_doan.LinhVuc GROUP BY TenLV").ToString();
            lblLV3.Text = objCon.ExecuteScalar("SELECT COUNT(MaSV) FROM tbl_doan INNER JOIN tbl_linhvuc ON tbl_linhvuc.MaLV = tbl_doan.LinhVuc GROUP BY TenLV").ToString();
            lblLV4.Text = objCon.ExecuteScalar("SELECT COUNT(MaSV) FROM tbl_doan INNER JOIN tbl_linhvuc ON tbl_linhvuc.MaLV = tbl_doan.LinhVuc GROUP BY TenLV").ToString();
            lblLV5.Text = objCon.ExecuteScalar("SELECT COUNT(MaSV) FROM tbl_doan INNER JOIN tbl_linhvuc ON tbl_linhvuc.MaLV = tbl_doan.LinhVuc GROUP BY TenLV").ToString();
            lblLV6.Text = objCon.ExecuteScalar("SELECT COUNT(MaSV) FROM tbl_doan INNER JOIN tbl_linhvuc ON tbl_linhvuc.MaLV = tbl_doan.LinhVuc GROUP BY TenLV").ToString();
            lblLV7.Text = objCon.ExecuteScalar("SELECT COUNT(MaSV) FROM tbl_doan INNER JOIN tbl_linhvuc ON tbl_linhvuc.MaLV = tbl_doan.LinhVuc GROUP BY TenLV").ToString();
            lblLV8.Text = objCon.ExecuteScalar("SELECT COUNT(MaSV) FROM tbl_doan INNER JOIN tbl_linhvuc ON tbl_linhvuc.MaLV = tbl_doan.LinhVuc GROUP BY TenLV").ToString();
            lblLV9.Text = objCon.ExecuteScalar("SELECT COUNT(MaSV) FROM tbl_doan INNER JOIN tbl_linhvuc ON tbl_linhvuc.MaLV = tbl_doan.LinhVuc GROUP BY TenLV").ToString();
        }
    }
}