<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormUser.aspx.cs" Inherits="_1721050215_TranThuyHao_BaiTH2.FormUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Input Form - Mozilla Firefox</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
	<script src="../Scripts/jquery-3.0.0.min.js"></script>
	<script src="../Scripts/popper.min.js"></script>
	<script src="../Scripts/bootstrap.min.js"></script>
</head>
<body>
   
    <form id="form1" runat="server">
        <div class="container p-3 my-3 border " style="width:25%;" >
            <h3>User Input Form</h3>
            <asp:Panel ID="Panel1" runat="server" GroupingText="Personal  Particular">
                <asp:Label ID="LblName" runat="server" Text="Name:"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="139px"></asp:TextBox>
                <br />
                <asp:Label ID="LblPassword" runat="server" Text="Password:"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="148px"></asp:TextBox>
                <br />
                <asp:Label ID="LblGender" runat="server" Text="Gender:"></asp:Label>
                <asp:RadioButton ID="rdbNam" runat="server" Text="Nam" />
                <asp:RadioButton ID="rdbNu" runat="server" Text="Nữ" />
                <br />
                <asp:Label ID="LblAge" runat="server" Text="Age:"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="1">&lt; 1 năm old</asp:ListItem>
                    <asp:ListItem Value="2">&gt; 1 năm old</asp:ListItem>
                    <asp:ListItem Value="3">1 năm old</asp:ListItem>
                </asp:DropDownList>
                <br />
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" GroupingText="Lanaguages">
                <asp:CheckBox ID="CheckBoxJava" runat="server" Text="Java" />
                <asp:CheckBox ID="CheckBoxC1" runat="server" Text="C/C++" />
                <asp:CheckBox ID="CheckBoxC2" runat="server" Text="C#" />
            </asp:Panel>
       
            <asp:Panel ID="Panel3" runat="server" GroupingText="Instruction" Height="141px">
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter your instruction here..." Height="84px" Width="225px"></asp:TextBox>
            </asp:Panel>
            <div>
                <asp:Button ID="Button1" runat="server" Text="Send" BackColor="#CCFFCC" />
                &nbsp;
                <asp:Button ID="Button2" runat="server" Text="clear" BackColor="#CCFFCC" />
            </div>
         </div>
    </form>
</body>
</html>
