<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Bai_TH5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HỆ THỐNG QUẢN LÝ THÔNG TIN</title>
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
        .auto-style3 {
            margin-bottom: 1rem;
            height: 61px;
        }
        .auto-style4 {
            width: 268px;
            text-align:left
        }
        .auto-style5 {
            font-family: "Times New Roman";
            font-weight: bold;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="text-center">
            <h1 class="auto-style5">HỆ THỐNG QUẢN LÝ THÔNG TIN</h1>
        <img src="img/Untitled.png" class="auto-style1" />
  <div class="auto-style3">
      <span class="auto-style5">
    <label for="username" class="auto-style4">Tên đăng nhập:</label></span>
      <br />
      <asp:TextBox ID="txtUsername" runat="server" Width="243px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsername" ErrorMessage="Tên đăng nhập không được để trống!" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
      <span class="auto-style5">
    <label for="pwd" class="auto-style4">Password:</label></span>
      <br />
      <asp:TextBox ID="txtPassword" runat="server" CssClass="offset-sm-0" TextMode="Password" Width="237px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword" ErrorMessage="Mật khẩu không được để trống!" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
  </div>
  <div class="form-group form-check" style="left: 0px; top: 0px">
      <asp:CheckBox ID="CBNhoMK" runat="server" />
    <label class="form-check-label">
      &nbsp;Nhớ mật khẩu
    </label>
      <a href="#"class="w3-bar-item w3-button w3-padding"><i> &nbsp;<asp:HyperLink ID="HLQuenMK" runat="server">Quên mật khẩu?</asp:HyperLink>
      </i></a>
  </div>
            <asp:Button ID="btnDangNhap" runat="server" BackColor="#33CCFF" Font-Bold="True" PostBackUrl="~/TrangChu.aspx" Text="Đăng nhập hệ thống" Width="187px" CssClass="offset-sm-0" OnClick="btnDangNhap_Click" />
            <asp:Button ID="btnHuy" runat="server" BackColor="#FF3300" Font-Bold="True" Text="Hủy" Width="81px" />
            <br />
            <br />
        </div>
        <div class="text-center">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
</form>
</body>
</html>
