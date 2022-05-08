<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Ropey_DVDs.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            User Details<br />
            User Name :&nbsp;
            <asp:Label ID="userNameL" runat="server" Text="User Name"></asp:Label>
            <br />
            User Type :&nbsp;&nbsp;&nbsp;
            <asp:Label ID="userTypeL" runat="server" Text="User Type"></asp:Label>
            <br />
        </div>
        <asp:Panel ID="AdminPanel" runat="server" Height="237px">
            List of all Users<asp:GridView ID="allUserGrid" runat="server" DataSourceID="SqlDataSource1">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="StaffPanel" runat="server" Height="256px">
            &nbsp;Change Password<br /> &nbsp;<br /> &nbsp;Old Password :&nbsp;
            <asp:TextBox ID="txtOldPass" runat="server"></asp:TextBox>
            <br />
            &nbsp;<br /> New Password :
            <asp:TextBox ID="txtNewPass" runat="server"></asp:TextBox>
            <br />
            <br />
            Confirm Password :
            <asp:TextBox ID="txtConfirmPass" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;
            <asp:Button ID="changePasswordB" runat="server" Text="Save Changes" />
        </asp:Panel>
    </form>
</body>
</html>
