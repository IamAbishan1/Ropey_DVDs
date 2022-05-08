<%@ Page Title="" Language="C#" MasterPageFile="~/AllPage.Master" AutoEventWireup="true" CodeBehind="AboutDVD.aspx.cs" Inherits="Ropey_DVDs.AboutDVD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    DVD Details</p>
&nbsp;&nbsp;<asp:Button ID="AddNewDVDB" runat="server" OnClick="AddNewDVDB_Click" Text="Add New DVD" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="deleteDVD" runat="server" Text="Delete DVD" OnClick="deleteDVD_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="dvdOnLoanB" runat="server" Text="DVD on Loan" OnClick="dvdOnLoanB_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="dvdDetailsB" runat="server" Text="All DVD Details" OnClick="dvdDetailsB_Click" />
<p>
    &nbsp;</p>
</asp:Content>
