<%@ Page Title="" Language="C#" MasterPageFile="~/Trade/Default.Master" AutoEventWireup="true" CodeBehind="AddGroup.aspx.cs" Inherits="WebApplication8.Trade.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="GroupID" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
&nbsp;Фірми:<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString22 %>" 
        SelectCommand="SELECT [FirmID], [Name] FROM [Firm]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList2" runat="server">
    </asp:DropDownList>
    <br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString22 %>" 
        SelectCommand="SELECT [GroupID], [Name] FROM [GroupT]"></asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="Група товару"></asp:Label>
    <asp:TextBox ID="TxtGroup" runat="server" Width="127px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Добавить" PostBackUrl="~/Trade/AddGroup.aspx" />
    <br />
    <br />
    <br />
    <br />
    _________________________Додавання фірм виробників_________________________<br />
    Група товарів:
    <asp:DropDownList ID="DDListGroup" runat="server" DataSourceID="SqlDataSource1" 
        DataTextField="Name" DataValueField="GroupID">
    </asp:DropDownList>
&nbsp;<br />
    Назва фірми виробника:<asp:TextBox ID="TxtFirm" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="AddBtn" runat="server" onclick="AddBtn_Click" Text="Додати" />
    <br />
    </asp:Content>

