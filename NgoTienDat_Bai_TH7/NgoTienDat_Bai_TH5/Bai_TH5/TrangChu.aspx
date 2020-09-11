<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="Bai_TH5.TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left: 300px; margin-top: 43px;">
        <!-- Header -->
        <header class="w3-container" style="padding-top: 22px">
            <h5><b><i class="fa fa-dashboard"></i>TỔNG HỢP DỮ LIỆU HỆ THỐNG</b></h5>
        </header>

        <div class="w3-row-padding w3-margin-bottom">
            <div class="w3-quarter">
                <div class="w3-container w3-red w3-padding-16">
                    <div class="w3-left"><i class="	fa fa-users w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>20</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Hồ sơ sinh viên </h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-blue w3-padding-16">
                    <div class="w3-left"><i class="	fa fa-user-times w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>11</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Hồ sơ giáo viên</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-teal w3-padding-16">
                    <div class="w3-left"><i class="fa fa-university w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>19</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Đồ án tốt nghiệp</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-orange w3-text-white w3-padding-16">
                    <div class="w3-left"><i class="fa fa-lock w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>7</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Số chuyên ngành</h4>
                </div>
            </div>
            <a><b>Thống kê sinh viên theo chuyên ngành:</b></a>
            <div class="container">
                <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
                        <tr>
                            <th>STT</th>
                            <th>Chuyên ngành</th>
                            <th>Số sinh viên</th>
                            <th>Chi tiết</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Tin học Mỏ</td>
                            <td>6</td>
                            <th>Danh sách</th>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>tin học Trắc địa</td>
                            <td>3</td>
                            <th>Danh sách</th>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Tin học Kinh tế</td>
                            <td>3</td>
                            <th>Danh sách</th>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Tin học Địa chất</td>
                            <td>2</td>
                            <th>Danh sách</th>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Mạng máy tính</td>
                            <td>1</td>
                            <th>Danh sách</th>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>Công nghệ phần mềm</td>
                            <td>4</td>
                            <th>Danh sách</th>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>Khoa học máy tính ứng dụng</td>
                            <td>1</td>
                            <th>Danh sách</th>
                        </tr>
                </table>
            </div>
            <hr>
            <div class="w3-container">
                <a><b>Thống kê đồ án theo điểm</b></a>
                <div class="w3-container w3-left w3-padding w3-green font-weight-bold text-black-50" style="width: 100%">Điểm đồ án <= 7.0 --------------------- 0 đồ án</div>
                <div class="w3-container w3-left w3-padding w3-orange font-weight-bold text-black-50" style="width: 100%">Điểm đồ án từ 7.1 đến 8.0 ----------- 7 đồ án</div>
                <div class="w3-container w3-left w3-padding w3-red font-weight-bold text-black-50" style="width: 100%">Điểm đồ án từ 8.1 đến 9.0 ----------- 8 đồ án</div>
                <div class="w3-container w3-left w3-padding w3-blue font-weight-bold text-black-50" style="width: 100%">Điểm đồ án từ 9.1 đến 10 ------------ 4 đồ án</div>
            </div>
            <hr>
        </div>

    </div>
</asp:Content>
