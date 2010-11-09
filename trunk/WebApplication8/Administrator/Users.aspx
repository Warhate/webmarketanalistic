<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Default.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="WebApplication8.Administrator.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: center;
            color: #FF0000;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <p class="style1">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
            SelectCommand="SELECT [UserName], [UserId] FROM [vw_aspnet_Users]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" SelectText="Выбрать" />
                <asp:BoundField DataField="UserName" HeaderText="Имя пользователя" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" 
                    SortExpression="UserId" />
            </Columns>
            <SelectedRowStyle BackColor="#0099CC" />
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Удалить пользователя" />
    </p>
    </asp:Content>

