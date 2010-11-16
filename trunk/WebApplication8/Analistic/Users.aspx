<%@ Page Title="" Language="C#" MasterPageFile="~/Analistic/Default.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="WebApplication8.Analistic.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataSourceID="SDSUsers" Height="50px" Width="231px">
        <Fields>
            <asp:BoundField DataField="Expr1" HeaderText="Количество пользователей" 
                ReadOnly="True" SortExpression="Expr1">
            <ItemStyle Font-Bold="True" ForeColor="#336600" />
            </asp:BoundField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SDSUsers" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT COUNT(UserId) AS Expr1 FROM aspnet_Users">
    </asp:SqlDataSource>
</asp:Content>
