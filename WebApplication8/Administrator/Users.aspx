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
            onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            PageSize="40" Width="100%">
            <Columns>
                <asp:CommandField ShowSelectButton="True" SelectText="Выбрать" >
                <ItemStyle Width="10%" />
                </asp:CommandField>
                <asp:BoundField DataField="UserName" HeaderText="Имя пользователя" 
                    SortExpression="UserName" >
                <ItemStyle Width="90%" />
                </asp:BoundField>
                <asp:BoundField DataField="UserId" HeaderText="UserId" 
                    SortExpression="UserId" Visible="False" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Удалить пользователя" />
    </p>
    </asp:Content>

