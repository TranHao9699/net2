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
                        <h3>
                            <asp:Label ID="LbSV" runat="server" Text=""></asp:Label></h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Hồ sơ sinh viên </h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-blue w3-padding-16">
                    <div class="w3-left"><i class="	fa fa-user-times w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <asp:Label ID="lbGV" runat="server" Text=""></asp:Label></h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Hồ sơ giáo viên</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-teal w3-padding-16">
                    <div class="w3-left"><i class="fa fa-university w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <asp:Label ID="lbDA" runat="server" Text=""></asp:Label></h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Đồ án tốt nghiệp</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-orange w3-text-white w3-padding-16">
                    <div class="w3-left"><i class="fa fa-lock w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <asp:Label ID="lbCN" runat="server" Text=""></asp:Label></h3>
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
                            <td>
                                <asp:Label ID="lbSVTHMo" runat="server" Text=""></asp:Label>
                            </td>
                            <th>
                                <a href="HSSV_THM.aspx">Danh sách</a>
                            </th>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Tin học Trắc địa</td>
                            <td>
                                <asp:Label ID="lbSVTHTD" runat="server" Text=""></asp:Label>
                            </td>
                            <th>
                                <a href="HSSV_THTD.aspx">Danh sách</a>
                            </th>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Tin học Kinh tế</td>
                            <td>
                                <asp:Label ID="lbSVTKT" runat="server" Text=""></asp:Label>
                            </td>
                            <th>
                                <a href="HSSV_TKT.aspx">Danh sách</a>
                            </th>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Tin học Địa chất</td>
                            <td>
                                <asp:Label ID="lbSVTDC" runat="server" Text=""></asp:Label>
                            </td>
                            <th>
                                <a href="HSSV_TDC.aspx">Danh sách</a>
                            </th>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Mạng máy tính</td>
                            <td>
                                <asp:Label ID="lbSVMMT" runat="server" Text=""></asp:Label>
                            </td>
                            <th>
                                <a href="HSSV_MMT.aspx">Danh sách</a>
                            </th>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>Công nghệ phần mềm</td>
                            <td>
                                <asp:Label ID="lbSVCNPM" runat="server" Text=""></asp:Label>
                            </td>
                            <th>
                                <a href="HSSV_CNPM.aspx">Danh sách</a>
                            </th>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>Khoa học máy tính ứng dụng</td>
                            <td>
                                <asp:Label ID="lbSVKHMT" runat="server" Text=""></asp:Label>
                            </td>
                            <th>
                                <a href="HSSV_KHMT.aspx">Danh sách</a>
                            </th>
                        </tr>
                </table>
            </div>
            <hr>
            <div class="w3-container">
                <a><b>Thống kê đồ án theo điểm</b></a>
                <div class="w3-container w3-left w3-padding w3-green font-weight-bold text-black-50" style="width: 100%">
                   <a href="ThongKe_7.aspx">Điểm đồ án <= 7.0 ------------------- <asp:Label ID="LbDiem7" runat="server" Text=""></asp:Label> đồ án</a>
                </div>
                <div class="w3-container w3-left w3-padding w3-orange font-weight-bold text-black-50" style="width: 100%"> <a href="ThongKe_8.aspx">Điểm đồ án từ 7.1 đến 8.0 ----------- <asp:Label ID="lbDiem8" runat="server" Text=""></asp:Label> đồ án </a>
                </div>
                <div class="w3-container w3-left w3-padding w3-red font-weight-bold text-black-50" style="width: 100%"><a href="ThongKe_9.aspx">Điểm đồ án từ 8.1 đến 9.0 ----------- <asp:Label ID="lbDiem9" runat="server" Text=""></asp:Label> đồ án </a>
                </div>
                <div class="w3-container w3-left w3-padding w3-blue font-weight-bold text-black-50" style="width: 100%"><a href="ThongKe_10.aspx"> Điểm đồ án từ 9.1 đến 10 ------------ <asp:Label ID="lbDiem10" runat="server" Text=""></asp:Label> đồ án </a>
                </div>
            </div>
            <hr>
        </div>

    </div>
</asp:Content>
