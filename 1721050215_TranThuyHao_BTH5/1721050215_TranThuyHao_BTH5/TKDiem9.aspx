<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TKDiem9.aspx.cs" Inherits="_1721050215_TranThuyHao_BTH5.TKDiem9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="border: 2px solid blue; margin-top: 7px;">
        <header class="w3-container" style="padding-top: 22px">
            <h5><b><i class='fas fa-stream'></i>Danh sách đồ án tốt nghiệp có điểm từ 8 -> 9 điểm</b></h5>
        </header>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSV" DataSourceID="SqlDataSource_Diem9">
            <Columns>
                <asp:TemplateField HeaderText="STT">
                    <ItemTemplate>
                        <asp:Label ID="numberrow" runat="server" Text=" <%# Container.DataItemIndex + 1 %>"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="MaSV" HeaderText="Mã sinh viên" ReadOnly="True" SortExpression="MaSV" />
                <asp:BoundField DataField="TenSV" HeaderText="Tên sinh viên" SortExpression="TenSV" />
                <asp:BoundField DataField="TenDA" HeaderText="Tên đồ án" SortExpression="TenDA" />
                <asp:BoundField DataField="Column1" HeaderText="GVHD" ReadOnly="True" SortExpression="Column1" />
                <asp:BoundField DataField="Diem" HeaderText="Điểm" SortExpression="Diem" />
            </Columns>
        </asp:GridView>
        

        <asp:SqlDataSource ID="SqlDataSource_Diem9" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DATNConnectionString %>" SelectCommand="DoAnDiem" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="8.1" Name="diemBD" Type="Decimal" />
                <asp:Parameter DefaultValue="9" Name="diemKT" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        

    </div>
</asp:Content>
