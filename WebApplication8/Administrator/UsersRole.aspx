<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Default.Master" AutoEventWireup="true" CodeBehind="UsersRole.aspx.cs" Inherits="WebApplication8.Administrator.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div class ="title">
   
   
   <table>
   <tr>
   <td>
    <asp:Label ID="LabelUserName" runat="server"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SDSRole" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT [RoleName], [RoleId] FROM [vw_aspnet_Roles]">
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Сохранить" CssClass="nbutton" />
    <br />
    </td>
    <td>
    <div id = "selectstat">
        <asp:Label ID="Label2" runat="server" Text="Роли пользователя"></asp:Label>
        <br />
        <asp:CheckBox ID="CheckBoxAdm" runat="server" Text="Администратор" />
        <br />
        <asp:CheckBox ID="CheckBoxStat" runat="server" Text="Аналитик" />
        <br />
        <asp:CheckBox ID="CheckBoxTrader" runat="server" Text="Продавец" />
        <br />
        <br />
        <asp:CheckBox ID="CheckBoxA" runat="server" Visible="False" />
        <br />
        <asp:CheckBox ID="CheckBoxS" runat="server" Visible="False" />
        <br />
        <asp:CheckBox ID="CheckBoxT" runat="server" Visible="False" />
        <br />
        <br />
    </div>
    </td>
    </tr>
    </table>
    </div>
</asp:Content>
