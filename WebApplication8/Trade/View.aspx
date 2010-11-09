<%@ Page Title="" Language="C#" MasterPageFile="~/Trade/Default.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="WebApplication8.Trade.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style1
        {
            text-align: center;
            font-size: large;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <p class="style1">
        Перегляд товарів</p>
<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource3">
    <AlternatingItemTemplate>
        <span style="">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
        <br />
            Info:
            <asp:Label ID="InfoLabel" runat="server" Text='<%# Eval("Info") %>' />
        <br />
            Cost:
            <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
        <br />
        <span>
        <asp:Image ID="Image2" runat="server" 
                ImageUrl='<%# Eval("Name", "Image.ashx?TrName={0}") %>' Width="400px" />
        </span>
        <br />
        <span>&nbsp;<asp:Label ID="InfoLabel0" runat="server" BorderStyle="Dotted" 
                Text='<%# Eval("Info") %>'></asp:Label>
        <br />
            Ціна: </span></span>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <span style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <br />
            Info:
            <asp:TextBox ID="InfoTextBox" runat="server" Text='<%# Bind("Info") %>' />
        <br />
            Cost:
            <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
        <br />
            Image:
            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
        <br />
            InStock:
            <asp:TextBox ID="InStockTextBox" runat="server" Text='<%# Bind("InStock") %>' />
        <br />
        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                Text="Обновить" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Отмена" />
        <br />
        <br />
        </span>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <span>Нет данных.</span>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <span style="">Name:
            <asp:TextBox ID="NameTextBox0" runat="server" Text='<%# Bind("Name") %>' />
        <br />
            Info:
            <asp:TextBox ID="InfoTextBox0" runat="server" Text='<%# Bind("Info") %>' />
        <br />
            Cost:
            <asp:TextBox ID="CostTextBox0" runat="server" Text='<%# Bind("Cost") %>' />
        <br />
            Image:
            <asp:TextBox ID="ImageTextBox0" runat="server" 
            Text='<%# Bind("Image") %>' />
        <br />
            InStock:
            <asp:TextBox ID="InStockTextBox0" runat="server" 
            Text='<%# Bind("InStock") %>' />
        <br />
        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Вставить" />
        <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" 
                Text="Очистить" />
        <br />
        <br />
        </span>
    </InsertItemTemplate>
    <ItemTemplate>
        <span style="">Name:
            <asp:Label ID="NameLabel0" runat="server" Text='<%# Eval("Name") %>' />
        <br />
            Info:
            <asp:Label ID="InfoLabel1" runat="server" Text='<%# Eval("Info") %>' />
        <br />
            Cost:
            <asp:Label ID="CostLabel0" runat="server" Text='<%# Eval("Cost") %>' />
        <br />
        <asp:Image ID="Image3" runat="server" 
                ImageUrl='<%# Eval("Name", "Image.ashx?TrName={0}") %>' />
        <br />
            InStock:
            <asp:Label ID="InStockLabel" runat="server" Text='<%# Eval("InStock") %>' />
        <br />
        <br />
        </span></span></span>
    </ItemTemplate>
    <LayoutTemplate>
        <div ID="itemPlaceholderContainer" runat="server" 
                style="">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div style="">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <span style="">Name:
            <asp:Label ID="NameLabel1" runat="server" Text='<%# Eval("Name") %>' />
        <br />
            Info:
            <asp:Label ID="InfoLabel2" runat="server" Text='<%# Eval("Info") %>' />
        <br />
            Cost:
            <asp:Label ID="CostLabel1" runat="server" Text='<%# Eval("Cost") %>' />
        <br />
            Image:
            <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
        <br />
            InStock:
            <asp:Label ID="InStockLabel0" runat="server" 
            Text='<%# Eval("InStock") %>' />
        <br />
        <br />
        </span>
    </SelectedItemTemplate>
</asp:ListView>
<p>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString22 %>" 
            SelectCommand="SELECT [Name], [Info], [Cost], [Image], [InStock] FROM [Product]">
    </asp:SqlDataSource>
</p>
</asp:Content>

