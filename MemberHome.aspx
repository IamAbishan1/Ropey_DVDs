<%@ Page Title="" Language="C#" MasterPageFile="~/AllPage.Master" AutoEventWireup="true" CodeBehind="MemberHome.aspx.cs" Inherits="Ropey_DVDs.MemberDetails.MemberHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;Member Details<br />
&nbsp;&nbsp;
<br />
&nbsp;<asp:Button ID="MemberDetailsB" runat="server" OnClick="MemberDetailsB_Click" Text="All Member Details" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="DVDLoanB" runat="server" OnClick="DVDLoanB_Click" Text="DVD on Loan" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="LastLoanB" runat="server" OnClick="LastLoanB_Click" Text="Last Loan" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>
