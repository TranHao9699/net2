<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ThemTTGV.aspx.cs" Inherits="_1721050215_TranThuyHao_BTH5.ThemTTGV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Mã GV:
        <asp:TextBox ID="txtMaGV" runat="server"></asp:TextBox>
    </p>
    <p>
        Tên GV:
        <asp:TextBox ID="txtTenGV" runat="server" Width="286px"></asp:TextBox>
    </p>
    <p>
        Nam Sinh:
        <asp:TextBox ID="txtnNS" runat="server" Width="286px"></asp:TextBox>
    </p>
   <%-- <p>
        Gioi tinh:
        <asp:RadioButtonList ID="rblGioiTinh" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem Value="1">Nam</asp:ListItem>
            <asp:ListItem Value="0">Nữ</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>
        Hoc vi:
       <asp:RadioButtonList ID="rblHocVi" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
           <asp:ListItem>Kỹ sư</asp:ListItem>
           <asp:ListItem>Thạc sĩ</asp:ListItem>
           <asp:ListItem>Tiến sĩ</asp:ListItem>
        </asp:RadioButtonList>
    </p>--%>
    <p>
        Email:
        <asp:TextBox ID="txtEmail" runat="server" Width="286px"></asp:TextBox>
    </p>
    <p>
        SDT:
        <asp:TextBox ID="txtSDT" runat="server" Width="286px"></asp:TextBox>
    </p>
    <p>
        Địa chỉ:
        <asp:TextBox ID="txtDC" runat="server" Width="286px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <asp:Label ID="lblThongBao" runat="server" ></asp:Label>
    <p>
        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Lưu" />
    </p>
</asp:Content>
