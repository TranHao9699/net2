<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1721050215_TranThuyHao_BTH5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div  class="container p-3 my-3 border" style="width:35%;">
            <div style="text-align:center">
                <h3 >HỆ THỐNG QUẢN LÝ THÔNG TIN</h3>
                <img src="images/Khoa.jpg" style="width:50%"/>
            </div>
            <asp:Label ID="LblTen" runat="server" Text="Tên đăng nhập:"></asp:Label><br />
            <asp:TextBox ID="tbxTen" runat="server"  Width="330px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbxTen">Vui lòng nhập tên !</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="LblMK" runat="server" Text="Mật khẩu:"></asp:Label><br />
            <asp:TextBox ID="tbxMK" runat="server" Width="332px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbxMK" ErrorMessage="RequiredFieldValidator">Vui lòng nhập Mật khẩu</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblMsg" runat="server" Text="Sai tên đăng nhập hoặc mật khẩu" Visible="False"></asp:Label>
            <br />
            <div>
                <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập hệ thống" Width="341px" BackColor="Blue" ForeColor="White" OnClick="btnDangNhap_Click" />
                <br />
            </div>
            <asp:Button ID="btnHuy" runat="server" Text="Hủy bỏ" BackColor="Red" ForeColor="White" />
        </div>
    </form>
</body>
</html>
