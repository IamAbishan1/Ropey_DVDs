<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Ropey_DVDs.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-decoration: underline">
            <h1 style="color:blue"><u>User Login</u></h1>
            UserName:
            <asp:TextBox ID="TxtBoxEmail" runat="server"></asp:TextBox>
            <br />
            Password:
            <asp:TextBox ID="TxtBoxPassword" runat="server"></asp:TextBox>
            <br />
            Remember me:
            <asp:CheckBox ID="ChkBoxRemember" runat="server" />
            <br />
            <asp:Button ID="BtnLogin" runat="server" OnClick="BtnLogin_Click" Text="Login" />
            <br />
            <br />
            <asp:Button ID="skipB" runat="server" OnClick="skipB_Click" Text="Guest Mode" />
            <br />
        </div>
    </form>
</body>
</html>
