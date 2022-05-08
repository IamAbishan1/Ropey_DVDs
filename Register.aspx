<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Ropey_DVDs.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color:blue"><u>Registration</u></h1>
            Email:
            <asp:TextBox ID="TxtBoxEmail" runat="server"></asp:TextBox>
            <br />
            User Name:
            <asp:TextBox ID="userName" runat="server"></asp:TextBox>
            <br />
            Password:
            <asp:TextBox ID="TxtBoxPassword" runat="server"></asp:TextBox>
            <br />
            Confirm Password:
            <asp:TextBox ID="confirmPasswordTB" runat="server"></asp:TextBox>
            <div>
            </div>
            <p>
                <asp:Button ID="registerB" runat="server" OnClick="registerB_Click" Text="Register" />
            </p>
        </div>
    </form>
</body>
</html>
