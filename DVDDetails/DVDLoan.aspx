<%@ Page Title="" Language="C#" MasterPageFile="~/DVDDetails/DVDDetailsMaster.Master" AutoEventWireup="true" CodeBehind="DVDLoan.aspx.cs" Inherits="Ropey_DVDs.DVDDetails.DVDLoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    List of DVDs on loan</p>
<asp:GridView ID="loanList" runat="server">
</asp:GridView>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
