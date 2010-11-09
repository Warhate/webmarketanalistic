<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Market.aspx.cs" Inherits="WebApplication8.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString22 %>" 
        SelectCommand="SELECT [Name], [GroupID] FROM [GroupT]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString22 %>" 
        SelectCommand="SELECT [Name], [Info], [Cost], [Image], [InStock] FROM [Product] WHERE ([FirmID] = @FirmID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="FirmID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString22 %>" 
            SelectCommand="SELECT [Name], [Info], [Cost], [Image], [InStock] FROM [Product]">
        </asp:SqlDataSource>
    <br />
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
            Ціна: </span>
            </span>
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
            <asp:TextBox ID="ImageTextBox0" runat="server" Text='<%# Bind("Image") %>' />
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
            </span>
            </span></span>
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
            <asp:Label ID="InStockLabel0" runat="server" Text='<%# Eval("InStock") %>' />
            <br />
            <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
