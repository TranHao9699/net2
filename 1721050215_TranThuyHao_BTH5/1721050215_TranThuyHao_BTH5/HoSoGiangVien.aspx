<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HoSoGiangVien.aspx.cs" Inherits="_1721050215_TranThuyHao_BTH5.HoSoGiangVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="border: 2px solid blue; margin-top: 7px;">
        <header class="w3-container" style="padding-top: 22px">
            <h5><b><i class='fas fa-stream'></i>Hồ sơ giảng viên</b></h5>
        </header>
        <div>
            <asp:TextBox ID="txtSearchText" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Tìm kiếm" OnClick="Button1_Click" />
        </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

        <asp:Button ID="Button2" runat="server" Text="Thêm mới" OnClick="Button2_Click" />
    </div>
</asp:Content>
