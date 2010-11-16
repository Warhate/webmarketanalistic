<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication8.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>


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
                <asp:ListItem Selected="True" Value="m">M</asp:ListItem>
                <asp:ListItem Value="f">Ж</asp:ListItem>
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
        </td>
        <td style="text-align: right">
            &nbsp;</td>
    </tr>
    
    
    </table>
    <table align = "left">
    <thead><asp:Label ID="Label9" runat="server" Text="Адресс"></asp:Label></thead>
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
            <asp:Button ID="Button1" runat="server" Height="22px" onclick="Button1_Click" 
                style="text-align: center; margin-left: 0px;" Text="Сохранить" 
                Width="77px" />
    </td>
    </tr>
    
    
    </table>
   
    </div>
    </div>


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
        

