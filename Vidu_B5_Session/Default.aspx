<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Vidu_B5_Session.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <style>
        .div1 {
            width: 100%;
            margin-top: 50px;
            
        }

        img {
            width: 220px;
            padding-top: 50px;
        }

        .TenDangNhap {
            padding-left: 7px;
            padding-top: 35px;
        }

        .MatKhau {
            padding-top: 5px;
            padding-left: 7px;
            padding-bottom: 5px;
           
        }

        .div2 {
            background-color: #e2dede;
        }

        .DangNhap {
            padding-top: 5px;
            padding-left: 7px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4" >
                <div class="div1 w3-card">
                    <h4 style="text-align: center; padding-top: 20px;">HỆ THỐNG QUẢN LÝ THÔNG TIN</h4>
                    <div  style="text-align: center;">
                        <img src="images/lock.png" alt="..." />
                    </div>
                    </div>
                    <div class="TenDangNhap">
                        <div style="font-weight: bold;">
                            <asp:Label ID="lblMsg" runat="server" Font-Bold="False" ForeColor="Red" Text="Đăng nhập thất bại!" Visible="False"></asp:Label>
                            <br />
                            Tên đăng nhập:</div>
                        <div>
                            <asp:TextBox ID="txtTenDangNhap" runat="server" BackColor="#FFFF99" Width="392px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDangNhap" ErrorMessage="Tên đăng nhập không được trống!" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="MatKhau" >
                        <div style="font-weight: bold;">Mật khẩu:</div>
                        <div>
                            <asp:TextBox ID="txtMatKhau" runat="server" BackColor="#FFFF99" Width="393px" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatKhau" ErrorMessage="Mật khẩu không được rỗng!" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="div2">
                        <div class="DangNhap">
                            <asp:Button ID="btnDangNhap" runat="server" Text="ĐĂNG NHẬP HỆ THỐNG" Width="393px" BackColor="#0066FF" height="40px" BorderColor="#0066FF" ForeColor="White" OnClick="btnDangNhap_Click" />
                        </div>
                         <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Danh sách các lỗi:" />
                        <div class="row" style="padding-left: 7px; padding-top: 15px; padding-bottom:15px;">
                            <div class="col-sm-6">
                                <div class="Huy">
                                    <asp:Button ID="btnHuy" runat="server" Text="HỦY BỎ" BackColor="Red" BorderColor="Red" />
                                </div>
                            </div>
                            <div class="col-sm-6" style="font-size:13px; padding-left:0px">
                                <span class="NhoMK">
                                    <asp:CheckBox ID="cbNhoMK" runat="server" Text="Nhớ mật khẩu!" />
                                </span>
                                <span>
                                    <a href="#" style="color:black;"><u>Quên mật khẩu?              </span>
                            </div>
                           
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4"></div>
        </div>
    </form>
</body>
</html>
