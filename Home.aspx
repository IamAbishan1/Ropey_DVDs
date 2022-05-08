<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Ropey_DVDs.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <h4 style="font-weight:bold">
                <asp:Button ID="dvdDetailsB" runat="server" Text="DVD Details" />
&nbsp;&nbsp;
                <asp:Button ID="memberDetailsB" runat="server" Text="Member Details" OnClick="memberDetailsB_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="manageLoanB" runat="server" Text="Manage Loan" OnClick="manageLoanB_Click" />
            </h4>
            <h4 style="font-weight:bold">Let&#39;s find DVDs of your favourite actors.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h4>
            <p style="font-weight:bold">
                <asp:TextBox ID="searchTxt" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="allDVD" runat="server" Text="All DVDs" OnClick="allDVD_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="availabeDVD" runat="server" OnClick="Button2_Click" Text="Available DVDs" />
            </p>

        </div>
    </form>
    
</body>
</html>
