﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication8.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <div id = "title">
 

    <table>
    <tr>
        <td>
            <asp:Label ID="LabelFirstName" runat="server" Text="Имя"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="LabelMiddleName" runat="server" Text="Отчество"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMidleName" runat="server"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="LabelLastName" runat="server" Text="Фамилия"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            Возраст</td>
        <td>
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            Вид деятельности</td>
        <td>
            <asp:TextBox ID="txtPorofession" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Пол</td>
        <td>
            <asp:DropDownList ID="DDListSex" runat="server">
                <asp:ListItem Selected="True" Value="Мужской">Мужской</asp:ListItem>
                <asp:ListItem Value="Женский">Женский</asp:ListItem>
            </asp:DropDownList>
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
            <asp:Label ID="Label9" runat="server" Text="Адресс"></asp:Label>
        </td>
        <td style="text-align: right">
            &nbsp;</td>
    </tr>

    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Страна"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtCountry" runat="server"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Город"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Область"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtOblast" runat="server"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Район"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="TxtRAyon" runat="server"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Улица"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="TxtStreet" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Дом"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtDom" runat="server"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Квартира"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtRoom" runat="server"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Индекс"></asp:Label>
        </td>
        <td style="text-align: right">
            <asp:TextBox ID="TxtIndex" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td>
    </td>
        <td>
            <asp:ImageButton ID="ImageButton2" runat="server" 
                ImageUrl="~/Image/save (1).png" onclick="ImageButton2_Click" Width="24px" />
    </td>
    </tr>
    
    
    </table>
   
    </div>
    </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>

        

