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
    <div class = "title">
    <p class="style1">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
            
            SelectCommand="SELECT vw_aspnet_Users.UserName, vw_aspnet_Users.UserId, aspnet_Membership.Email, aspnet_Membership.LastLoginDate, aspnet_Membership.CreateDate FROM vw_aspnet_Users INNER JOIN aspnet_Membership ON vw_aspnet_Users.UserId = aspnet_Membership.UserId">
        </asp:SqlDataSource>
        <asp:GridView ID="GridViewUsers" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            PageSize="40" Width="100%" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="UserName" HeaderText="Логин пользователя" 
                    SortExpression="UserName" >
                </asp:BoundField>
                <asp:BoundField DataField="UserId" HeaderText="Идентификатор" 
                    SortExpression="UserId" >
                </asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="LastLoginDate" DataFormatString="{0:D}" 
                    HeaderText="Дата последнего входа" SortExpression="LastLoginDate" />
                <asp:BoundField DataField="CreateDate" DataFormatString="{0:D}" 
                    HeaderText="Дата регистрации" SortExpression="CreateDate" />
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
        <asp:Button ID="BtnDeleteUser" runat="server" onclick="Button1_Click" 
            Text="Удалить пользователя" CssClass="nbutton" />
        <asp:Button ID="btnEditRole" runat="server" Text="Изменить права пользователя" 
            onclick="Button2_Click1" CssClass="nbutton" />
        <asp:Button ID="BtnProfile" runat="server" CssClass="nbutton" 
            Text="Просмотр профиля пользователя" />
    </p>
    </div>
    </asp:Content>

