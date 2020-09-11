<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="_1721050215_TranThuyHao_BTH5.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="border: 2px solid blue; margin-top: 7px;">
        <header class="w3-container" style="padding-top: 22px">
            <h5><b><i class='fas fa-stream'></i>Tổng hợp dữ liệu hệ thống</b></h5>
        </header>

        <div class="w3-row-padding w3-margin-bottom" style="padding-left:0px;">
            <div class="w3-quarter" style="padding-left:0px;">
                <div class="w3-container  w3-padding-16"  style="background-color: #CCFF00">
                    <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3><asp:Label ID="lblSV" runat="server" Text=""></asp:Label></h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Hồ sơ sinh viên</h4>
                </div>
            </div>
            <div class="w3-quarter" >
                <div class="w3-container  w3-padding-16" style="background-color: #FF9900">
                    <div class="w3-left"><i class='fas fa-user-lock' style='font-size: 48px'></i></div>
                    <div class="w3-right">
                        <h3><asp:Label ID="lblGV" runat="server" Text=""></asp:Label></h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Hồ sơ giáo viên</h4>
                </div>
            </div>
            <div class="w3-quarter" style="background-color: #32CD32">
                <div class="w3-container  w3-text-white w3-padding-16">
                    <div class="w3-left"><i class="fa fa-institution" style="font-size: 48px"></i></div>
                    <div class="w3-right">
                        <h3><asp:Label ID="lblDA" runat="server" Text=""></asp:Label></h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Đồ án tốt nghiệp</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-red w3-text-white w3-padding-16">
                    <div class="w3-left"><i class='fas fa-lock' style='font-size: 48px'></i></div>
                    <div class="w3-right">
                        <h3><asp:Label ID="LblCN" runat="server" Text=""></asp:Label></h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Số chuyên ngành</h4>
                </div>
            </div>
        </div>

        <div class="w3-panel">

            <div class="w3-row-padding" style="margin: 0 -16px">
                <h5><b>Thống kê sinh viên theo chuyên nghành</b></h5>
                <table class="w3-table w3-striped w3-white">
                    <tr style="background-color: #32CD32">
                        <td>STT</td>
                        <td>Chuyên ngành</td>
                        <td>Số sinh viên</td>
                        <td>Chi tiết</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Tin học mỏ</td>
                        <td>6</td>
                        <td><a href="TKSVCNTinHocMo.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Tin trắc địa</td>
                        <td>3</td>
                        <td><a href="TKSVCNTinChacDia.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Tin kinh tế</td>
                        <td>3</td>
                        <td><a href="TKSVCNTinHocKinhTe.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Tin học địa chất</td>
                        <td>2</td>
                        <td><a href="TKSVCNTinHocDiaChat.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Mạng máy tính</td>
                        <td>1</td>
                        <td><a href="TKSVCNMangMayTinh.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>Công nghệ phần mềm</td>
                        <td>4</td>
                        <td><a href="TKSVCNCongNghePhanMem.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>Khoa học máy tính</td>
                        <td>1</td>
                        <td><a href="TKSVCNKHMTUD.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                </table>
            </div>
        </div>
        <hr>
        <div class="w3-panel">

            <div class="w3-row-padding" style="margin: 0 -16px">
                <h5><b>Thống kê đồ án theo lĩnh vực</b></h5>
                <table class="w3-table w3-striped w3-white">
                    <tr style="background-color: #32CD32">
                        <td>STT</td>
                        <td>Lĩnh vực</td>
                        <td>Số chuyên ngành</td>
                        <td>Chi tiết</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Phần mềm ứng dụng trên Desktop</td>
                        <td>
                            <asp:Label ID="lblLV1" runat="server" Text=""></asp:Label>
                        </td>
                        <td><a href="DSDALV1.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Phần mềm ứng dụng trên Di động</td>
                        <td><asp:Label ID="lblLV2" runat="server" Text=""></asp:Label></td>
                        <td><a href="DSDALV2.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Phần mềm ứng dụng trên nền Web</td>
                        <td><asp:Label ID="lblLV3" runat="server" Text=""></asp:Label></td>
                        <td><a href="DSDALV3.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>An toàn – Bảo mật thông tin</td>
                        <td><asp:Label ID="lblLV4" runat="server" Text=""></asp:Label></td>
                        <td><a href="DSDALV4.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Mạng máy tính</td>
                        <td><asp:Label ID="lblLV5" runat="server" Text=""></asp:Label></td>
                        <td><a href="DSDALV5.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>Khai thác phần mềm ứng dụng</td>
                        <td><asp:Label ID="lblLV6" runat="server" Text=""></asp:Label></td>
                        <td><a href="DSDALV6.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>Mã nguồn mở</td>
                        <td><asp:Label ID="lblLV7" runat="server" Text=""></asp:Label></td>
                        <td><a href="DSDALV7.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>Map-GIS</td>
                        <td><asp:Label ID="lblLV8" runat="server" Text=""></asp:Label></td>
                        <td><a href="DSDALV8.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>Tự động hóa</td>
                        <td><asp:Label ID="lblLV9" runat="server" Text=""></asp:Label></td>
                        <td><a href="DSDALV9.aspx" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
                    </tr>
                </table>
            </div>
        </div>
        <header style="padding-top: 15px;">
            <h5><b>Thống kê đồ án theo điểm</b></h5>
        </header>
        <div class=" w3-panel w3-card w3-lime" style="padding: 12px; font-weight: bold; margin-bottom: 0px;">
            <span class="w3-left"><a href="TKDiem7.aspx" style="color: black;"><u>Điểm đồ án <= 7 --------------------- 0 đồ án</u></a></span>
            <span class="w3-right"><i class="fa fa-close"></i></span>
        </div>
        <div class="w3-panel  w3-card w3-blue" style="padding: 12px; font-weight: bold; margin-top: 2px; margin-bottom: 0px;">
            <span class="w3-left"><a href="TKDiem8.aspx" style="color: black;"><u>Điểm đồ án từ 7.1 đến 8.0 ----------- 7 đồ án</u></a></span>
            <span class="w3-right"><i class="fa fa-close"></i></span>
        </div>
        <div class="w3-panel w3-card w3-teal" style="padding: 12px; font-weight: bold; margin-top: 2px; margin-bottom: 0px;">
            <span class="w3-left"><a href="TKDiem9.aspx" style="color: black;"><u>Điểm đồ án từ 8.1 đến 9.0 ----------- 8 đồ án</u></a></span>
            <span class="w3-right"><i class="fa fa-close"></i></span>
        </div>
        <div class="w3-panel w3-card w3-orange" style="padding: 12px; font-weight: bold; margin-top: 2px; margin-bottom: 5px;">
            <span class="w3-left"><a href="TKDiem10.aspx" style="color: black;"><u>Điểm đồ án từ 9.1 đến 10 ------------ 4 đồ án</u></a></span>
            <span class="w3-right"><i class="fa fa-close"></i></span>
        </div>

    </div>
</asp:Content>
