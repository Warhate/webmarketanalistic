<%@ Page Title="" Language="C#" MasterPageFile="~/Tray/Default.Master" AutoEventWireup="true" CodeBehind="Done.aspx.cs" Inherits="WebApplication8.Tray.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div class = "title">
<center>
    <asp:Label ID="Label2" runat="server" Text="Заказ оформлен и в ближайшее время будет Вам доставлен. Спасибо за покупку!"></asp:Label>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Вернутся на главную страницу</asp:HyperLink>
    </center>
    </div>
</asp:Content>
