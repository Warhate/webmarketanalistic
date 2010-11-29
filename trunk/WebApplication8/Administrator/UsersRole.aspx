<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Default.Master" AutoEventWireup="true" CodeBehind="UsersRole.aspx.cs" Inherits="WebApplication8.Administrator.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="LabelUserName" runat="server"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SDSRole" 
        DataTextField="RoleName" DataValueField="RoleId">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SDSRole" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT [RoleName], [RoleId] FROM [vw_aspnet_Roles]">
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Применить" />
    <br />
</asp:Content>
