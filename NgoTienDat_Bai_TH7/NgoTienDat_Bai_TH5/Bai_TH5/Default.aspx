<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Bai_TH5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 306px;
            height: 378px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="text-center">
            <h1><b>HỆ THỐNG QUẢN LÝ THÔNG TIN</b></h1>
        <img src="img/Untitled.png" class="auto-style1" />
  <div class="form-group">
    <label for="username">Tên đăng nhập:</label>
      <br />
      <asp:TextBox ID="txtUsername" runat="server" Width="243px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsername" ErrorMessage="Tên đăng nhập không được để trống!" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
      <br />
      <asp:TextBox ID="txtPassword" runat="server" CssClass="offset-sm-0" TextMode="Password" Width="237px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword" ErrorMessage="Mật khẩu không được để trống!" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
  </div>
  <div class="form-group form-check">
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox"/> Nhớ mật khẩu
    </label>
      <a href="#"class="w3-bar-item w3-button w3-padding"><i> Quên mật khẩu? </i></a>
  </div>
            <asp:Button ID="Button1" runat="server" BackColor="#33CCFF" Font-Bold="True" PostBackUrl="~/TrangChu.aspx" Text="Đăng nhập hệ thống" Width="207px" />
            <br />
            <asp:Button ID="Button2" runat="server" BackColor="#FF3300" Font-Bold="True" Text="Hủy" Width="81px" />
            <br />
        </div>
</form>
</body>
</html>
