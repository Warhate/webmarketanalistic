<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ProfEdit.aspx.cs" Inherits="WebApplication8.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
   <div class = "item">
   <table>
    <tr>
        <td>
            <asp:Label ID="LabelFirstName" runat="server" Text="Имя"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtFirstName" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="LabelMiddleName" runat="server" Text="Отчество"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMidleName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtMidleName" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="LabelLastName" runat="server" Text="Фамилия"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtLastName" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td>
            Возраст</td>
        <td>
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtAge" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td>
            Вид деятельности</td>
        <td>
            <asp:TextBox ID="txtPorofession" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtPorofession" ErrorMessage="*"></asp:RequiredFieldValidator>
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
        </td>
        <td style="text-align: right">
            &nbsp;</td>
    </tr>
    
    
    <thead><asp:Label ID="Label9" runat="server" Text="Адресс"></asp:Label></thead>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Страна"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtCountry" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TxtCountry" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Город"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TxtCity" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Область"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtOblast" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TxtCity" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Район"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="TxtRAyon" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="TxtRAyon" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Улица"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="TxtStreet" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="TxtStreet" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Дом"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtDom" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="TxtDom" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Квартира"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtRoom" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="TxtRoom" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Индекс"></asp:Label>
        </td>
        <td style="text-align: right">
            <asp:TextBox ID="TxtIndex" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ControlToValidate="TxtIndex" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td>
    </td>
        <td>
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/Image/save (1).png" onclick="ImageButton1_Click" Width="24px" />
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
               <div  style="text-align: left" >&nbsp;<asp:Localize ID="Localize2" runat="server" meta:resourcekey="Localize2Resource1"></asp:Localize>
               &nbsp;</div>
               
               <asp:Localize ID="Localize1" runat="server" 
                   meta:resourcekey="Localize1Resource1"></asp:Localize>
               
        <asp:DropDownList ID="droplang" runat="server" meta:resourcekey="droplangResource1">
            <asp:ListItem Value="ua-ua" meta:resourcekey="ListItemResource1">Українська</asp:ListItem>
            <asp:ListItem Value="ru-ru" meta:resourcekey="ListItemResource2">Русский</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnlang" runat="server" Text="Выбрать" 
                   meta:resourcekey="btnlangResource1" />
    <p>


        &nbsp;</p>
    </div>
    
        </asp:Content>

