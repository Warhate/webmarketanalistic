<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication8.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
      <div class =  "title">
           <table>
           <tr>
           <td>
           <asp:Label ID="LabelName" runat="server" ></asp:Label>
           </td>
           <td>
           </td>
           </tr>

           <tr>
           <td valign="top">
   
               <asp:Image ID="Image1" runat="server" />
           </td>
           <td valign="top">
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
        
               <br />
               <br />
        
        <asp:Label ID="LabelInfo" runat="server" style="font-size: medium; color: #000000"></asp:Label>
           </td>
           </tr>

           <tr>
           <td>
           <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/buy.png" 
                   ToolTip="Купить" />

           </td>
           <td>

                  <asp:Image ID="Image2" runat="server" ImageAlign="Middle" 
                      ImageUrl="~/Image/1291667688_cost.png" Width="24px" />

                  <asp:Label ID="LabelPrice" runat="server" 
                      style="font-weight: 500; color: #0033CC" Text = "Цена : {0:c}"></asp:Label>
           </td>
           </tr>

           </table>
           
            </div>







</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
