<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ThemTTSV.aspx.cs" Inherits="_1721050215_TranThuyHao_BTH5.ThemTTSV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Mã SV:
        <asp:TextBox ID="txtMaSV" runat="server"></asp:TextBox>
    </p>
    <p>
        Tên SV:
        <asp:TextBox ID="txtTenSV" runat="server" Width="286px"></asp:TextBox>
    </p>
    <p>
        Gioi tinh:
        <asp:RadioButtonList ID="rblGioiTinh" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem Value="1">Nam</asp:ListItem>
            <asp:ListItem Value="0">Nữ</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>
        Khóa:
        <asp:DropDownList ID="ddlKhoaHoc" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        Chuyên ngành:
        <asp:DropDownList ID="ddlChuyenNganh" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Lưu" />
    </p>
</asp:Content>
