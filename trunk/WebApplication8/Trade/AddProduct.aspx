<%@ Page Title="" Language="C#" MasterPageFile="~/Trade/Default.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WebApplication8.Trade.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 141px;
        }
    </style>




</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    
        <table style="height: 161px; width: 607px">
    <tr>
    <td class="style1">
        <asp:Label ID="Label2" runat="server" Text="Группа товара"></asp:Label>
    </td>
    <td>
        <asp:DropDownList ID="DDListGroup" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSourceGroup" DataTextField="Name" 
            DataValueField="GroupID" DataMember="DefaultView">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceGroup" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
            SelectCommand="SELECT [GroupID], [Name] FROM [GroupT]"></asp:SqlDataSource>
    </td>
    </tr>
        <tr>
    <td class="style1">
        <asp:Label ID="Label3" runat="server" Text="Фирма"></asp:Label>
    </td>
    <td>
        <asp:DropDownList ID="DDListFirm" runat="server" 
            DataSourceID="SqlDataSourceFirm" DataTextField="Name" DataValueField="FirmID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceFirm" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
            
            SelectCommand="SELECT [FirmID], [Name] FROM [Firm] WHERE ([GroupID] = @GroupID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DDListGroup" Name="GroupID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </td>
    </tr>

        <tr>
    <td class="style1">

        <asp:Label ID="Label7" runat="server" Text="Название"></asp:Label>

    </td>
    <td>
        <asp:TextBox ID="TxtName" runat="server" Width="176px" CausesValidation="True"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="* Необходимо заполнить" ControlToValidate="TxtName" 
            SetFocusOnError="True" ValidationGroup="2"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="LabelTVDiag" runat="server" Text="Диагональ экрана:"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBoxTVDiag" runat="server" Width="173px"></asp:TextBox>
    </td>
    </tr>

    <tr>
    <td>
        <asp:Label ID="LabelTVClass" runat="server" Text="Класс:"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBoxTVClass" runat="server" Width="172px"></asp:TextBox>
    </td>
    </tr>


    <tr>
    <td>
        <asp:Label ID="LabelTvRoz" runat="server" Text="Разрешение:"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBoxTVRaz" runat="server" Width="170px"></asp:TextBox>
    </td>
    </tr>


    <tr>
    <td>
        <asp:Label ID="LabelPhoneFF" runat="server" Text="Форм-фактор телефона" 
            Visible="False"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBoxPhoneFF" runat="server" Visible="False" Width="170px"></asp:TextBox>
    </td>
    </tr>


    <tr>
    <td>
        <asp:Label ID="LabelPhoneSize" runat="server" Text="Размеры" Visible="False"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBoxPhoneSize" runat="server" Visible="False" Width="170px"></asp:TextBox>
    </td>
    </tr>


    <tr>
    <td>
        <asp:Label ID="LabelPhoneCamera" runat="server" Text="Камера" Visible="False"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBoxPhoneCam" runat="server" Visible="False" Width="170px"></asp:TextBox>
    </td>
    </tr>


    <tr>
    <td>
        <asp:Label ID="LabelPhneMemory" runat="server" Text="Функции памяти" 
            Visible="False"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBoxPhoneMemmory" runat="server" Visible="False" 
            Width="170px"></asp:TextBox>
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
    <td class="style1">
        <asp:Label ID="Label4" runat="server" Text="Описание"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TxtInfo" runat="server" Height="132px" TextMode="MultiLine" 
            Width="452px"></asp:TextBox>
    </td>
    </tr>

        <tr>
    <td class="style1">
        <asp:Label ID="Label5" runat="server" Text="Цена"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TxtPrice" runat="server" Width="174px"></asp:TextBox>
    </td>
    </tr>

    <tr>
    <td >

        <asp:Label ID="Label6" runat="server" Text="На  складе"></asp:Label>

    </td>
    <td>
        <asp:TextBox ID="TxtInStock" runat="server" Width="172px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>

        <asp:Label ID="Label8" runat="server" Text="Изображение"></asp:Label>

    </td>
    <td style="text-align: left">
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </td>
    </tr>

       <td >

           &nbsp;</td>
    <td style="text-align: right">
        <asp:ImageButton ID="ImageButton4" runat="server" 
            ImageUrl="~/Image/1289313975_Emulation.png" onclick="ImageButton4_Click" 
            ValidationGroup="2" />
    </td>
    </tr>


    </table>

<asp:Label ID="LabelMessage" runat="server" 
    style="font-weight: 700; color: #00FF00; font-size: large" Visible="False"></asp:Label>

</asp:Content>


