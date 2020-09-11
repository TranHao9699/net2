<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HoSoSinhVien.aspx.cs" Inherits="_1721050215_TranThuyHao_BTH5.HoSoSinhVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="border: 2px solid blue; margin-top: 7px;">
        <div>
            Tìm kiếm:
            <asp:TextBox ID="txtSearchText" runat="server"></asp:TextBox>
            &nbsp;<asp:Button ID="Button1" runat="server" OnClick="btnSearch_Click" Text="Tìm" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lọc theo chuyên ngành:
            <asp:DropDownList ID="ddlChuyenNganh" runat="server" AutoPostBack="True" DataTextField="TenCN" DataValueField="MaCN" OnSelectedIndexChanged="ddlChuyenNganh_SelectedIndexChanged" DataSourceID="SqlDataSource_CN">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource_CN" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DATNConnectionString %>" SelectCommand="SELECT TenCN, MaCN FROM tbl_chuyennganh"></asp:SqlDataSource>
            <br />
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
            <br />
            <asp:GridView ID="grvKhoaHoc" runat="server" AutoGenerateColumns="False" OnRowDataBound="grvKhoaHoc_RowDataBound" DataKeyNames="MaSV" DataSourceID="SqlDataSource_HoSoSinhVien">
                <Columns>
                    <asp:TemplateField HeaderText="STT">
                    <ItemTemplate>
                        <asp:Label ID="numberrow" runat="server" Text=" <%# Container.DataItemIndex + 1 %>"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                    <asp:BoundField DataField="MaSV" HeaderText="MaSV" ReadOnly="True" SortExpression="MaSV" />
                    <asp:BoundField DataField="TenSV" HeaderText="TenSV" SortExpression="TenSV" />
                    <asp:BoundField DataField="NamSinh" HeaderText="NamSinh" SortExpression="NamSinh" />
                    <asp:CheckBoxField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
                    <asp:BoundField DataField="Khoa" HeaderText="Khoa" SortExpression="Khoa" />
                    <asp:BoundField DataField="ChuyenNganh" HeaderText="ChuyenNganh" SortExpression="ChuyenNganh" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" SortExpression="DienThoai" />
                    <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                    <asp:BoundField DataField="GhiChu" HeaderText="GhiChu" SortExpression="GhiChu" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource_HoSoSinhVien" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DATNConnectionString %>" SelectCommand="SELECT MaSV, TenSV, NamSinh, GioiTinh, Khoa, ChuyenNganh, Email, DienThoai, DiaChi, GhiChu FROM tbl_sinhvien"></asp:SqlDataSource>
        </div>

        <asp:Button ID="btnAdd" runat="server" Text="Thêm mới" OnClick="btnAdd_Click" />

    </div>
</asp:Content>
