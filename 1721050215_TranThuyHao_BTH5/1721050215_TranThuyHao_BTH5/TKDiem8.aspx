<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TKDiem8.aspx.cs" Inherits="_1721050215_TranThuyHao_BTH5.TKDiem8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="border: 2px solid blue; margin-top: 7px;">
        <header class="w3-container" style="padding-top: 22px">
            <h5><b><i class='fas fa-stream'></i>Danh sách đồ án tốt nghiệp có điểm từ 7 -> 8 điểm</b></h5>
        </header>
        <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSV" DataSourceID="SqlDataSource_Diem8">
            <Columns>
                <asp:TemplateField HeaderText="STT">
                    <ItemTemplate>
                        <asp:Label ID="numberrow" runat="server" Text=" <%# Container.DataItemIndex + 1 %>"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="MaSV" HeaderText="MaSV" ReadOnly="True" SortExpression="MaSV" />
                <asp:BoundField DataField="TenSV" HeaderText="TenSV" SortExpression="TenSV" />
                <asp:BoundField DataField="TenDA" HeaderText="TenDA" SortExpression="TenDA" />
                <asp:BoundField DataField="Column1" HeaderText="GVHD" ReadOnly="True" SortExpression="Column1" />
                <asp:BoundField DataField="Diem" HeaderText="Diem" SortExpression="Diem" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource_Diem8" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DATNConnectionString %>" SelectCommand="DoAnDiem" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="7.1" Name="diemBD" Type="Decimal" />
                    <asp:Parameter DefaultValue="8" Name="diemKT" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
