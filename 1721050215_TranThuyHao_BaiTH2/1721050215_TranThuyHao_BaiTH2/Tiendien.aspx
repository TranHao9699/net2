<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tiendien.aspx.cs" Inherits="_1721050215_TranThuyHao_BaiTH2.Tiendien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TT</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container p-3 my-3 border "  style="width:50%; background-color: #4c66a4;" >

            <asp:Label ID="Label1" runat="server" Text="Họ tên khách hàng"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Số điện tiêu thụ (kw/h):"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="LblGia" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Tính tiền" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="LblTien" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
