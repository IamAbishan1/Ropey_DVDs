<%@ Page Title="" Language="C#" MasterPageFile="~/AllPage.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Ropey_DVDs.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <br />
            User Details<br />
            User Name :&nbsp;
            <asp:Label ID="userNameL" runat="server" Text="User Name"></asp:Label>
            <br />
            User Type :&nbsp;&nbsp;&nbsp;
            <asp:Label ID="userTypeL" runat="server" Text="User Type"></asp:Label>
            <br />
        </div>
        <asp:Panel ID="AdminPanel" runat="server" Height="237px">
            List of all Users<asp:GridView ID="allUserGrid" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="UserNumber">
                <Columns>
                    <asp:BoundField DataField="UserNumber" HeaderText="UserNumber" InsertVisible="False" ReadOnly="True" SortExpression="UserNumber" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DVDStoreConnectionString2 %>" SelectCommand="SELECT [UserName], [UserType], [UserNumber] FROM [Users]" DeleteCommand="DELETE FROM [Users] WHERE [UserNumber] = @UserNumber" InsertCommand="INSERT INTO [Users] ([UserName], [UserType]) VALUES (@UserName, @UserType)" UpdateCommand="UPDATE [Users] SET [UserName] = @UserName, [UserType] = @UserType WHERE [UserNumber] = @UserNumber">
                <DeleteParameters>
                    <asp:Parameter Name="UserNumber" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="UserType" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="UserType" Type="Int32" />
                    <asp:Parameter Name="UserNumber" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
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
            <asp:Button ID="changePasswordB" runat="server" Text="Save Changes" OnClick="changePasswordB_Click" />
        </asp:Panel>
</asp:Content>
