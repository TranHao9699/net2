<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HosoGiangVien.aspx.cs" Inherits="Bai_TH5.HosoGiangVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource_GiangVien" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DATNConnectionString2 %>" SelectCommand="SELECT * FROM [tbl_giangvien]"></asp:SqlDataSource>
    <div class="w3-main" style="margin-left:300px; margin-top:43px">
     <h2> THÔNG TIN GIẢNG VIÊN</h2>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="MaGV" DataSourceID="SqlDataSource_GiangVien" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="MaGV" HeaderText="MaGV" ReadOnly="True" SortExpression="MaGV" />
            <asp:BoundField DataField="TenGV" HeaderText="TenGV" SortExpression="TenGV" />
            <asp:BoundField DataField="NamSinh" HeaderText="NamSinh" SortExpression="NamSinh" />
            <asp:CheckBoxField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
            <asp:BoundField DataField="HocVi" HeaderText="HocVi" SortExpression="HocVi" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" SortExpression="DienThoai" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:HyperLinkField DataNavigateUrlFields="MaGV" DataNavigateUrlFormatString="~/HosoGiangVien.aspx?menu=dm2&amp;id=MaGV" HeaderText="Sửa thông tin" Text="Sửa" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    </div>
</asp:Content>
