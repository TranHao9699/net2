using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai_TH5
{
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cls_connect cls_con = new cls_connect();// Khai báo sử dụng lớp
            cls_con.connect_Data();//mở kết nối tới CSDL
            String st_sql = "select COUNT(Masv) from tbl_sinhvien";
            //Viết cầu truy vấn đếm số lượng hồ sơ sinh viên
            SqlCommand Sqlcm = new SqlCommand();
            Sqlcm.Connection = cls_con.con;
            Sqlcm.CommandType = CommandType.Text;
            Sqlcm.CommandText = st_sql;
            int so_sv = (int)Sqlcm.ExecuteScalar();
            LbSV.Text = so_sv.ToString();

            String st_sql1 = "select COUNT(Magv) from tbl_giangvien";
            //Viết cầu truy vấn đếm số lượng hồ sơ giảng viên
            SqlCommand Sqlcl = new SqlCommand();
            Sqlcl.Connection = cls_con.con;
            Sqlcl.CommandType = CommandType.Text;
            Sqlcl.CommandText = st_sql1;
            int so_gv = (int)Sqlcl.ExecuteScalar();
            lbGV.Text = so_gv.ToString();

            String st_sql2 = "select COUNT(Masv) from tbl_doan";
            //Viết cầu truy vấn đếm số lượng hồ sơ đồ án
            SqlCommand Sqlcb = new SqlCommand();
            Sqlcb.Connection = cls_con.con;
            Sqlcb.CommandType = CommandType.Text;
            Sqlcb.CommandText = st_sql2;
            int so_da = (int)Sqlcb.ExecuteScalar();
            lbDA.Text = so_da.ToString();

            String st_sql3 = "select COUNT(Macn) from tbl_chuyennganh";
            //Viết cầu truy vấn đếm số lượng hồ sơ chuyên ngành
            SqlCommand Sqlcv = new SqlCommand();
            Sqlcv.Connection = cls_con.con;
            Sqlcv.CommandType = CommandType.Text;
            Sqlcv.CommandText = st_sql3;
            int so_cn = (int)Sqlcv.ExecuteScalar();
            lbCN.Text = so_cn.ToString();


            String st_sql4 = "select COUNT(Masv) from tbl_sinhvien inner join tbl_chuyennganh on tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh where Macn = 1";
            //Viết cầu truy vấn đếm số lượng hồ sơ sinh viên trong chuyên ngành tin học mỏ
            SqlCommand Sqlcd = new SqlCommand();
            Sqlcd.Connection = cls_con.con;
            Sqlcd.CommandType = CommandType.Text;
            Sqlcd.CommandText = st_sql4;
            int so_svthmo = (int)Sqlcd.ExecuteScalar();
            lbSVTHMo.Text = so_svthmo.ToString();

            String st_sql5 = "select COUNT(Masv) from tbl_sinhvien inner join tbl_chuyennganh on tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh where Macn = '2'";
            //Viết cầu truy vấn đếm số lượng hồ sơ sinh viên trong chuyên ngành tin học trắc địa
            SqlCommand Sqlcf = new SqlCommand();
            Sqlcf.Connection = cls_con.con;
            Sqlcf.CommandType = CommandType.Text;
            Sqlcf.CommandText = st_sql5;
            int so_svthtd = (int)Sqlcf.ExecuteScalar();
            lbSVTHTD.Text = so_svthtd.ToString();

            String st_sql6 = "select COUNT(Masv) from tbl_sinhvien inner join tbl_chuyennganh on tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh where Macn = '3'";
            //Viết cầu truy vấn đếm số lượng hồ sơ sinh viên trong chuyên ngành tin kinh tế
            SqlCommand Sqlcii = new SqlCommand();
            Sqlcii.Connection = cls_con.con;
            Sqlcii.CommandType = CommandType.Text;
            Sqlcii.CommandText = st_sql6;
            int so_svthkt = (int)Sqlcii.ExecuteScalar();
            lbSVTKT.Text = so_svthkt.ToString();

            String st_sql7 = "select COUNT(Masv) from tbl_sinhvien inner join tbl_chuyennganh on tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh where Macn = '4'";
            //Viết cầu truy vấn đếm số lượng hồ sơ sinh viên trong chuyên ngành tin địa chất
            SqlCommand Sqlca = new SqlCommand();
            Sqlca.Connection = cls_con.con;
            Sqlca.CommandType = CommandType.Text;
            Sqlca.CommandText = st_sql7;
            int so_svthdc = (int)Sqlca.ExecuteScalar();
            lbSVTDC.Text = so_svthdc.ToString();

            String st_sql8 = "select COUNT(Masv) from tbl_sinhvien inner join tbl_chuyennganh on tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh where Macn = 5";
            //Viết cầu truy vấn đếm số lượng hồ sơ sinh viên trong chuyên ngành mạng máy tính
            SqlCommand Sqlc8 = new SqlCommand();
            Sqlc8.Connection = cls_con.con;
            Sqlc8.CommandType = CommandType.Text;
            Sqlc8.CommandText = st_sql8;
            int so_svmmt = (int)Sqlc8.ExecuteScalar();
            lbSVMMT.Text = so_svmmt.ToString();

            String st_sql9 = "select COUNT(Masv) from tbl_sinhvien inner join tbl_chuyennganh on tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh where Macn = '6'";
            //Viết cầu truy vấn đếm số lượng hồ sơ sinh viên trong chuyên ngành tin học mỏ
            SqlCommand Sqlc9 = new SqlCommand();
            Sqlc9.Connection = cls_con.con;
            Sqlc9.CommandType = CommandType.Text;
            Sqlc9.CommandText = st_sql9;
            int so_svcnpm = (int)Sqlc9.ExecuteScalar();
            lbSVCNPM.Text = so_svcnpm.ToString();

            String st_sqlr = "select COUNT(Masv) from tbl_sinhvien inner join tbl_chuyennganh on tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh where Macn = '7'";
            //Viết cầu truy vấn đếm số lượng hồ sơ sinh viên trong chuyên ngành tin học mỏ
            SqlCommand Sqlct = new SqlCommand();
            Sqlct.Connection = cls_con.con;
            Sqlct.CommandType = CommandType.Text;
            Sqlct.CommandText = st_sqlr;
            int so_svkhud = (int)Sqlct.ExecuteScalar();
            lbSVKHMT.Text = so_svkhud.ToString();

            String st_sqla = "select COUNT(tbl_doan.Masv) from tbl_sinhvien inner join tbl_doan on tbl_doan.Masv = tbl_sinhvien.Masv where Diem < = 7 ";
            //Viết cầu truy vấn đếm số lượng hồ sơ sinh viên có điểm đồ án < = 7
            SqlCommand Sqlcx = new SqlCommand();
            Sqlcx.Connection = cls_con.con;
            Sqlcx.CommandType = CommandType.Text;
            Sqlcx.CommandText = st_sqla;
            int so_svdiem7 = (int)Sqlcx.ExecuteScalar();
            LbDiem7.Text = so_svdiem7.ToString();

            String st_sqlb = "select COUNT(tbl_doan.Masv) from tbl_sinhvien inner join tbl_doan on tbl_doan.Masv = tbl_sinhvien.Masv where Diem Between 7 and  8 ";
            //Viết cầu truy vấn đếm số lượng hồ sơ sinh viên có điểm đồ án  từ 7.1 => 8.0
            SqlCommand Sqlcz = new SqlCommand();
            Sqlcz.Connection = cls_con.con;
            Sqlcz.CommandType = CommandType.Text;
            Sqlcz.CommandText = st_sqlb;
            int so_svdiem8 = (int)Sqlcz.ExecuteScalar();
            lbDiem8.Text = so_svdiem8.ToString();

            String st_sqlc = "select COUNT(tbl_doan.Masv) from tbl_sinhvien inner join tbl_doan on tbl_doan.Masv = tbl_sinhvien.Masv where Diem Between 8 and  9 ";
            //Viết cầu truy vấn đếm số lượng hồ sơ sinh viên có điểm đồ án từ 8.1 => 9.0
            SqlCommand Sqlcg = new SqlCommand();
            Sqlcg.Connection = cls_con.con;
            Sqlcg.CommandType = CommandType.Text;
            Sqlcg.CommandText = st_sqlc;
            int so_svdiem9 = (int)Sqlcg.ExecuteScalar();
            lbDiem9.Text = so_svdiem9.ToString();

            String st_sqli = "select COUNT(tbl_doan.Masv) from tbl_sinhvien inner join tbl_doan on tbl_doan.Masv = tbl_sinhvien.Masv where Diem Between 9 and  10 ";
            //Viết cầu truy vấn đếm số lượng hồ sơ sinh viên có điểm đồ án từ 9.1 => 10
            SqlCommand Sqlcn = new SqlCommand();
            Sqlcn.Connection = cls_con.con;
            Sqlcn.CommandType = CommandType.Text;
            Sqlcn.CommandText = st_sqli;
            int so_svdiem10 = (int)Sqlcn.ExecuteScalar();
            lbDiem10.Text = so_svdiem10.ToString();
        }
    }
}