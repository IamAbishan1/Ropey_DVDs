<%@ Page Title="" Language="C#" MasterPageFile="~/AllPage.Master" AutoEventWireup="true" CodeBehind="LoanHome.aspx.cs" Inherits="Ropey_DVDs.ManageLoan.LoanHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Loan Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="IssueLoanB" runat="server" OnClick="IssueLoanB_Click" Text="Issue Loan" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="returnDVDB" runat="server" OnClick="returnDVDB_Click" Text="DVD Return" />
&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>
