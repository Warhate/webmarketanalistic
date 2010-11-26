<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication8.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <div class = "item">
    <table width="100%">
    <tr>
    <td>
    <asp:Label ID="LabelName" runat="server" 
        style="text-align: center; color: #33CC33; font-weight: 700; font-size: large; font-family: Aharoni;"></asp:Label><br />
    <p style="text-align: left">
    </td>
    <td>
    </td>
    </tr>

        <tr valign="top">
    <td>

      <asp:Image
        ID="Image1" runat="server" ImageUrl="~/Trade/Image.ashx" />

    </td>
    <td>
        <asp:Label ID="LabelInfo" runat="server" style="font-size: medium; color: #000000"></asp:Label>

    </td>
    </tr>

        <tr>
    <td>
        <asp:Label ID="LabelPrice" runat="server" style="font-weight: 500; color: #0033CC" Text = "Цена : {0:c}"></asp:Label>
        <br />
    </td>
    <td>
        <asp:Button ID="Button1" runat="server" CssClass="nbutton" 
            onclick="Button1_Click" Text="Купить" />
    </td>
    </tr>

    </table>
    
      
    </p>
    <p style="text-align: left">
    
    </p>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
