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
        





        <asp:Label ID="LabelDiagCaption" runat="server" Font-Bold="True" 
            Text="Диагональ экрана:"></asp:Label>
&nbsp;<asp:Label ID="LabelDiag" runat="server"></asp:Label>
        <br />
        <asp:Label ID="LabelClassCaption" runat="server" Font-Bold="True" Text="Класс:"></asp:Label>
&nbsp;<asp:Label ID="LabelClass" runat="server"></asp:Label>
        <br />
        <asp:Label ID="LabelRazCaption" runat="server" Font-Bold="True" 
            Text="Разрешение:"></asp:Label>
&nbsp;<asp:Label ID="LabelRaz" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="LabelFFCaption" runat="server" Font-Bold="True" 
            Text="Форм-фактор телефона:"></asp:Label>
&nbsp;<asp:Label ID="LabelFF" runat="server"></asp:Label>
        <br />
        <asp:Label ID="LabelSizeCaption" runat="server" Font-Bold="True" 
            Text="Размеры:"></asp:Label>
&nbsp;<asp:Label ID="LabelSize" runat="server"></asp:Label>
        <br />
        <asp:Label ID="LabelCamCaption" runat="server" Font-Bold="True" Text="Камера:"></asp:Label>
&nbsp;<asp:Label ID="LabelCam" runat="server"></asp:Label>
        <br />
        <asp:Label ID="LabelMemmoryCaption" runat="server" Font-Bold="True" 
            Text="Функции памяти:"></asp:Label>
&nbsp;<asp:Label ID="LabelMem" runat="server"></asp:Label>
        





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
