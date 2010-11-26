<%@ Page Title="" Language="C#" MasterPageFile="~/Trade/Default.Master" AutoEventWireup="true" CodeBehind="AddGroup.aspx.cs" Inherits="WebApplication8.Trade.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        
        SelectCommand="SELECT [FirmID], [Name] FROM [Firm] WHERE ([GroupID] = @GroupID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="GroupID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT [GroupID], [Name] FROM [GroupT]"></asp:SqlDataSource>
    <br />

    <form action="AddGroup.aspx">
    <table>
    <tr>
    <td>
        <asp:Label ID="Label2" runat="server" Text="Группы товаров"></asp:Label>
    </td>
    <td>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="GroupID" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label3" runat="server" Text="Фирмы"></asp:Label>
    </td>
    <td>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="FirmID">
    </asp:DropDownList>
    </td>
    </tr>

    <tr>
    <td>
    <asp:Label ID="Label1" runat="server" Text="Название группы"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="TxtGroup" runat="server" Width="170px" ValidationGroup="1" 
            CausesValidation="True"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TxtGroup" ErrorMessage="* Поле необходимо заполнить" 
            ValidationGroup="1"></asp:RequiredFieldValidator>
    </td>
    </tr>

    <tr>
    <td>
    </td>
    <td>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Добавить" PostBackUrl="~/Trade/AddGroup.aspx" Width="72px" 
            ValidationGroup="1" CssClass="nbutton" />
    </td>
    </tr>

    <tr>
    <td>
    </td>
    <td>
    </td>
    </tr>

    <tr>
    <td>
        <asp:Label ID="Label4" runat="server" Text="Группы товара"></asp:Label>
    </td>
    <td>
    <asp:DropDownList ID="DDListGroup" runat="server" DataSourceID="SqlDataSource1" 
        DataTextField="Name" DataValueField="GroupID">
    </asp:DropDownList>
    </td>
    </tr>

        <tr>
    <td>
        <asp:Label ID="Label5" runat="server" Text="Название фирмы"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TxtFirm" runat="server" ValidationGroup="2" Width="170px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TxtFirm" ErrorMessage="* Поле необходимо заполнить" 
            ValidationGroup="2"></asp:RequiredFieldValidator>
    </td>
    </tr>

            <tr>
    <td>
    </td>
    <td>
    <asp:Button ID="AddBtn" runat="server" onclick="AddBtn_Click" Text="Добавить" 
            ValidationGroup="2" Width="76px" CssClass="nbutton" />
    </td>
    </tr>

    </table>
    </form>
    </asp:Content>

