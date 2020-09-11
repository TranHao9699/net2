<%@ Page Title="" Language="C#" MasterPageFile="~/View.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Vidu_B5_Session.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="border: 2px solid blue; margin-top: 7px;">
        <header style="padding-top: 15px;">
            <h5 "><b><i class="fa fa-dashboard"></i>Tổng hợp dữ liệu hệ thống</b></h5>
        </header>

        <div class="w3-row-padding w3-margin-bottom" style="padding-left:0px;">
            <div class="w3-quarter" style="padding-left:0px;">
                <div class="w3-container w3-lime w3-padding-16">
                    <div class="w3-left"><i class="fa fa-users fa-fw w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>20</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h6>Hồ sơ sinh viên</h6>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-orange w3-padding-16">
                    <div class="w3-left"><i class="fa fa-user-times w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>11</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h6>Hồ sơ giáo viên</h6>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-green w3-padding-16">
                    <div class="w3-left"><i class="fa fa-university w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>19</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h6>Đồ án tốt nghiệp</h6>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-red w3-text-white w3-padding-16">
                    <div class="w3-left"><i class="fa fa-lock w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>7</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h6>Số chuyên ngành</h6>
                </div>
            </div>
        </div>
        <header style="padding-top: 15px;">
            <h6 ><b>Thống kê sinh viên theo chuyên ngành</b></h6>
        </header>
        <table class="w3-table-all" style="padding-left: 15px;">
            <thead>
                <tr class="w3-green">
                    <th>STT</th>
                    <th>Chuyên ngành</th>
                    <th>Số sinh viên</th>
                    <th>Chi tiết</th>
                </tr>
            </thead>
            <tr>
                <td>1</td>
                <td>Tin học Mỏ</td>
                <td>6</td>
                <td><a href="#" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
            </tr>
            <tr>
                <td>2</td>
                <td>Tin học Trắc địa</td>
                <td>3</td>
                <td><a href="#" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
            </tr>
            <tr>
                <td>3</td>
                <td>Tin học Kinh tế</td>
                <td>3</td>
                <td><a href="#" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
            </tr>
            <tr>
                <td>4</td>
                <td>Tin học Địa chất</td>
                <td>2</td>
                <td><a href="#" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
            </tr>
            <tr>
                <td>5</td>
                <td>Mạng máy tính</td>
                <td>1</td>
                <td><a href="#" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
            </tr>
            <tr>
                <td>6</td>
                <td>Công nghệ phần mềm</td>
                <td>4</td>
                <td><a href="#" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
            </tr>
            <tr>
                <td>7</td>
                <td>Khoa học máy tính ứng dụng</td>
                <td>1</td>
                <td><a href="#" style="color: black;"><i class="fa fa-search"></i><u>Danh sách</u></a></td>
            </tr>

        </table>
        <header style="padding-top: 15px;">
            <h6><b>Thống kê đồ án theo điểm</b></h6>
        </header>
        <div class=" w3-panel w3-card w3-lime" style="padding:12px; font-weight: bold; margin-bottom:0px;" >
                <span class="w3-left">Điểm đồ án <= 7 --------------------- 0 đồ án</span>
                <span class="w3-right"><i class="fa fa-close"></i></span>
        </div>
        <div class="w3-panel  w3-card w3-blue" style="padding:12px; font-weight: bold; margin-top:2px; margin-bottom:0px;">
                <span class="w3-left">Điểm đồ án từ 7.1 đến 8.0 ----------- 7 đồ án</span>
                <span class="w3-right"><i class="fa fa-close"></i></span>
        </div>
        <div class="w3-panel w3-card w3-teal" style="padding:12px; font-weight: bold; margin-top:2px; margin-bottom:0px;">
                <span class="w3-left">Điểm đồ án từ 8.1 đến 9.0 ----------- 8 đồ án</span>
                <span class="w3-right"><i class="fa fa-close"></i></span>
        </div>
        <div class="w3-panel w3-card w3-orange" style="padding:12px; font-weight: bold; margin-top:2px; margin-bottom:5px;">
                <span class="w3-left">Điểm đồ án từ 9.1 đến 10 ------------ 4 đồ án</span>
                <span class="w3-right"><i class="fa fa-close"></i></span>
        </div>
        
    </div>




</asp:Content>
