<%@ Page Title="" Language="C#" MasterPageFile="~/DVDDetails/DVDDetailsMaster.Master" AutoEventWireup="true" CodeBehind="DVDRemove.aspx.cs" Inherits="Ropey_DVDs.DVDRemove" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    List of DVDs which are 365 days old which are not on loan</p>
<asp:Button ID="deleteB" runat="server" Text="Clear DVDs" />
<asp:GridView ID="oldDVDlist" runat="server">
</asp:GridView>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
