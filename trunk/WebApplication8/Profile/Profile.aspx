<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication8.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
    <table>
    <tr>
        <td>
            <asp:Label ID="LabelFirstName" runat="server" Text="(FirstName)"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="LabelMiddleName" runat="server" Text="(MiddleName)"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMidleName" runat="server"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="LabelLastName" runat="server" Text="(LastName)"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
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
        </td>
        <td>
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
        </td>
        <td>
        </td>
    </tr>
        <tr>
        <td>
        </td>
        <td style="text-align: right">
            <asp:Button ID="Button1" runat="server" Height="22px" onclick="Button1_Click" 
                style="text-align: center; margin-left: 0px;" Text="Сохранить" 
                Width="77px" />
        </td>
    </tr>
    
    
    </table>
    </div>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
           <div style="text-align: right">
               <div  style="text-align: left" >
                   <br />
                   <asp:LoginName ID="LoginName1" runat="server" 
                       FormatString="Добро пожаловать, {0}." />
&nbsp;<asp:Localize ID="Localize2" runat="server"></asp:Localize>
               </div>
               
               <asp:Localize ID="Localize1" runat="server"></asp:Localize>
               
        <asp:DropDownList ID="droplang" runat="server">
            <asp:ListItem Value="ua-ua">Українська</asp:ListItem>
            <asp:ListItem Value="ru-ru">Русский</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnlang" runat="server" Text="Выбрать" />
    </div>
        </asp:Content>
        

