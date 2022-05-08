<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Guest_Page.aspx.cs" Inherits="Ropey_DVDs.Guest_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4><span style="color:blue">Log In</span> for more actions</h4>
            <h4 style="font-weight:bold">Let&#39;s find DVDs of your favourite actors.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h4>
            <p style="font-weight:bold">
                <asp:TextBox ID="searchTxt" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="allDVD" runat="server" Text="All DVDs" OnClick="allDVD_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="availableDVDB" runat="server" OnClick="availableDVDB_Click" Text="Available DVDs" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>

        </div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
