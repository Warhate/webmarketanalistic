<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Porvn.aspx.cs" Inherits="WebApplication8.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div class = "title">
    <table width="100%">
    <tr>
    <td width="50%">
    </td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Производитель:"></asp:Label><asp:DropDownList
                ID="DDListFirm" runat="server" AutoPostBack="True" DataSourceID="SDSFirm" 
                DataTextField="Name" DataValueField="FirmID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SDSFirm" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
                SelectCommand="SELECT [FirmID], [Name] FROM [Firm] WHERE ([GroupID] = @GroupID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="GroupID" QueryStringField="GID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label2" runat="server" Text="Продукт"></asp:Label><asp:DropDownList
                ID="DDListProduct" runat="server" AutoPostBack="True" 
                DataSourceID="SDSProduct" DataTextField="Name" DataValueField="ProductID">
            </asp:DropDownList>

            <asp:SqlDataSource ID="SDSProduct" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
                SelectCommand="SELECT [Name], [ProductID] FROM [Product] WHERE ([FirmID] = @FirmID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DDListFirm" Name="FirmID" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

    </td>
    </tr>

    <tr>
    <td valign="top" width="50%">
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
            DataSourceID="SDSProductF" Height="50px" Width="100%" 
            DataKeyNames="ProductID">
            <Fields>
                <asp:BoundField DataField="Name" HeaderText="Наименование:" 
                    SortExpression="Name" >
                <HeaderStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="ProductID" 
                    DataImageUrlFormatString="~/Image.ashx?ID={0}">
                    <ItemStyle Height="250px" />
                </asp:ImageField>
                <asp:BoundField DataField="Cost" HeaderText="Цена:" 
                    SortExpression="Cost" DataFormatString="{0:c}" 
                    HeaderImageUrl="~/Image/1291667688_cost.png" >
                <HeaderStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="TVDiag" HeaderText="Диагональ:" 
                    SortExpression="TVDiag" >
                <HeaderStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="TVClass" HeaderText="Класс:" 
                    SortExpression="TVClass" >
                <HeaderStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="TVRaz" HeaderText="Разширение:" 
                    SortExpression="TVRaz" >
                <FooterStyle Font-Bold="True" />
                <HeaderStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="PhoneFF" HeaderText="Форм-фактор:" 
                    SortExpression="PhoneFF" >
                <HeaderStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="PhoneSize" HeaderText="Размер:" 
                    SortExpression="PhoneSize" >
                <HeaderStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="PhoneCam" HeaderText="Камера:" 
                    SortExpression="PhoneCam" >
                <HeaderStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="PhoneMem" HeaderText="Функции памяти:" 
                    SortExpression="PhoneMem" >
                <HeaderStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="Info" HeaderText="Описание:" SortExpression="Info" >
                <HeaderStyle Font-Bold="True" VerticalAlign="Top" />
                </asp:BoundField>
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SDSProductF" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
            
            SelectCommand="SELECT [Name], [Info], [Cost], [Image], [TVDiag], [TVClass], [TVRaz], [PhoneFF], [PhoneSize], [PhoneCam], [PhoneMem], [ProductID] FROM [Product] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="PID" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </td>
        <td valign="top" width="50%">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                DataSourceID="SDSProductS" Height="50px" Width="100%" 
                DataKeyNames="ProductID">
                <Fields>
                    <asp:BoundField DataField="Name" HeaderText="Наименование:" 
                        SortExpression="Name" >
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="ProductID" 
                        DataImageUrlFormatString="~/Image.ashx?ID={0}">
                        <ItemStyle Height="250px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Cost" HeaderText="Цена:" 
                        SortExpression="Cost" DataFormatString="{0:c}" 
                        HeaderImageUrl="~/Image/1291667688_cost.png" >
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TVDiag" HeaderText="Диагональ:" 
                        SortExpression="TVDiag" >
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TVClass" HeaderText="Класс:" 
                        SortExpression="TVClass" >
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TVRaz" HeaderText="Разширение:" 
                        SortExpression="TVRaz" >
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PhoneFF" HeaderText="Форм-фактор:" 
                        SortExpression="PhoneFF" >
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PhoneSize" HeaderText="Размер:" 
                        SortExpression="PhoneSize" >
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PhoneCam" HeaderText="Камера:" 
                        SortExpression="PhoneCam" >
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PhoneMem" HeaderText="Функции памяти:" 
                        SortExpression="PhoneMem" >
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Info" HeaderText="Описание:" SortExpression="Info" >
                    <HeaderStyle Font-Bold="True" VerticalAlign="Top" />
                    </asp:BoundField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SDSProductS" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
                
                SelectCommand="SELECT [Name], [Info], [Cost], [Image], [TVDiag], [TVClass], [TVRaz], [PhoneFF], [PhoneSize], [PhoneCam], [PhoneMem], [ProductID] FROM [Product] WHERE ([ProductID] = @ProductID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DDListProduct" Name="ProductID" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
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
    </table>




</div>





</asp:Content>

