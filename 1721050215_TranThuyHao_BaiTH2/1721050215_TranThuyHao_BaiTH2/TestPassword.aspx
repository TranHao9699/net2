<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestPassword.aspx.cs" Inherits="_1721050215_TranThuyHao_BaiTH2.TestPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test lỗi đăng nhập</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container p-3 my-3 border "  style="width:100%;">
            
            <h3>ĐĂNG KÍ KHÁCH HÀNG</h3>
            <h5>Thông tin đăng nhập</h5>
            
            <asp:Label ID="Label1" runat="server" Text="Tên đăng nhập:"></asp:Label>
            <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label>
            <asp:TextBox ID="TbxMK1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
            <asp:TextBox ID="TbxMK2" runat="server"></asp:TextBox>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TbxMK1" ControlToValidate="TbxMK2" ErrorMessage="Hai mật khẩu không trùng nhau" ForeColor="Red">*</asp:CompareValidator>
            <br />
            <h5>Thông tin chi tiết cá nhân</h5>
            <asp:Label ID="Label4" runat="server" Text="Họ tên khách hàng"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Vui lòng nhập họ và tên" ControlToValidate="tbName" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Ngày sinh"></asp:Label>
            <asp:TextBox ID="TbxNgaySinh" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TbxNgaySinh" ErrorMessage="Ngày tháng phải để kiểu date" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Giới tính"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Địa chỉ email"></asp:Label>
            <asp:TextBox ID="TbxEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TbxEmail" ErrorMessage="Email thiếu kí tự" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Thu nhập"></asp:Label>
            <asp:TextBox ID="TbxThuNhap" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TbxThuNhap" ErrorMessage="Thu nhập phải là kiểu số" ForeColor="Red" ValidationExpression="\d">*</asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Đăng ký" />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server"  />
            <br />
        </div>

    </form>
</body>
</html>