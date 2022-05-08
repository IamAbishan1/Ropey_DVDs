<%@ Page Title="" Language="C#" MasterPageFile="~/AllPage.Master" AutoEventWireup="true" CodeBehind="HomeMain.aspx.cs" Inherits="Ropey_DVDs.HomeMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 style="font-weight:bold">Let&#39;s find DVDs of your favourite actors.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h4>
    <p style="font-weight:bold">
        <asp:TextBox ID="searchTxt" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="allDVD" runat="server" Text="All DVDs" OnClick="allDVD_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="availabeDVD" runat="server" OnClick="Button2_Click" Text="Available DVDs" />
    </p>
<asp:GridView ID="HomeGrid" runat="server">
</asp:GridView>
<p style="font-weight:bold">
        &nbsp;</p>
</asp:Content>
