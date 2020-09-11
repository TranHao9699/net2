<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TKSVCNTinHocKinhTe.aspx.cs" Inherits="_1721050215_TranThuyHao_BTH5.TKSVCNTinHocKinhTe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="border: 2px solid blue; margin-top: 7px;">
        <header class="w3-container" style="padding-top: 22px">
            <h5><b><i class='fas fa-stream'></i>Thống kê sinh viên chuyên ngành Tin học kinh tế</b></h5>
        </header>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSV" DataSourceID="SqlDataSource_TinKinhTe">
            <Columns>
                <asp:TemplateField HeaderText="STT">
                    <ItemTemplate>
                        <asp:Label ID="numberrow" runat="server" Text=" <%# Container.DataItemIndex + 1 %>"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="MaSV" HeaderText="MaSV" ReadOnly="True" SortExpression="MaSV" />
                <asp:BoundField DataField="TenSV" HeaderText="TenSV" SortExpression="TenSV" />
                <asp:BoundField DataField="NamSinh" HeaderText="NamSinh" SortExpression="NamSinh" />
                <asp:BoundField DataField="Expr1" HeaderText="Expr1" ReadOnly="True" SortExpression="Expr1" />
                <asp:BoundField DataField="Khoa" HeaderText="Khoa" SortExpression="Khoa" />
                <asp:BoundField DataField="TenCN" HeaderText="TenCN" SortExpression="TenCN" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" SortExpression="DienThoai" />
                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource_TinKinhTe" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DATNConnectionString %>" SelectCommand="SELECT tbl_sinhvien.MaSV, tbl_sinhvien.TenSV, tbl_sinhvien.NamSinh, (CASE GioiTinh WHEN 'true' THEN N'Nam' WHEN 'false' THEN N'Nữ' END) AS Expr1, tbl_sinhvien.Khoa, tbl_chuyennganh.TenCN, tbl_sinhvien.Email, tbl_sinhvien.DienThoai, tbl_sinhvien.DiaChi FROM tbl_sinhvien INNER JOIN tbl_chuyennganh ON tbl_sinhvien.ChuyenNganh = tbl_chuyennganh.MaCN WHERE (tbl_chuyennganh.MaCN = @mcn)">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="mcn" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
