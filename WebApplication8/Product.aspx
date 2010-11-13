<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication8.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="LabelName" runat="server" 
        style="text-align: center; color: #33CC33; font-weight: 700; font-size: large; font-family: Aharoni;"></asp:Label><br />
    <p style="text-align: left">
        <asp:Image
        ID="Image1" runat="server" ImageUrl="~/Trade/Image.ashx" />
    <asp:Label ID="LabelInfo" runat="server" style="font-size: medium; color: #000000"></asp:Label>
    </p>
    <p style="text-align: left">
    <asp:Label ID="LabelPrice" runat="server" style="font-weight: 700; color: #0033CC"></asp:Label><br />
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
