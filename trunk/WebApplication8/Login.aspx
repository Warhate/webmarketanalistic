<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication8.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Login ID="Login1" runat="server" onauthenticate="Login1_Authenticate" 
    Height="129px" style="text-align: left" Width="249px">
    </asp:Login>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
           <div style="text-align: right">
               <div  style="text-align: left" >
               </div>
               
        <asp:DropDownList ID="droplang" runat="server">
            <asp:ListItem Value="ua-ua">Українська</asp:ListItem>
            <asp:ListItem Value="ru-ru">Русский</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnlang" runat="server" Text="Выбрать" />
    </div>
        </asp:Content>

