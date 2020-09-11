<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="_1721050215_TranThuyHao_BTH2.Form.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RegisterPage</title>
    <link href="../Style/Register_css.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="display3">
            <div class="title">
                THÔNG TIN CÁ NHÂN CỦA THÀNH VIÊN
            </div>
            <div class="center">
                <div class="clearfix">
                    <img class="img_login" src="../images/logovsH.JPG" />
                    <table>
                        <tr>
                            <td class="text">Họ và tên:(*)</td>
                            <td><asp:TextBox ID="txt_hovaten" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="text">Ngày sinh</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                </asp:DropDownList>
                                <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                                <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="text">Giới tính</td>
                            <td>
                                <asp:RadioButton ID="rbt_nam" runat="server" GroupName="gt" Text="Nam" />
                                <asp:RadioButton ID="rbt_nu" runat="server" GroupName="gt" Text="Nữ" />
                            </td>
                        </tr>
                        <tr>
                            <td class="text">Điện thoại:(*)</td>
                            <td>
                                <asp:TextBox ID="tbx_dienthoai" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="text">Email(*)</td>
                            <td>
                                <asp:TextBox ID="tbx_email" runat="server" Width="250px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="text">Địa chỉ</td>
                            <td>
                                <asp:TextBox ID="tbx_diachi" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox></td>
                        </tr>
                    </table>
                </div>
                       <asp:Button ID="btn_dongy" runat="server" Text="Đồng ý" PostBackUrl="~/form/Infor_Register.aspx" OnClick="btn_dongy_Click" />
                       <asp:Button ID="btn_huy" runat="server" Text="Hủy" OnClick="btn_huy_Click" />
            </div>
        </div>
    </form>
</body>
</html>
