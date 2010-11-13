<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Market.aspx.cs" Inherits="WebApplication8.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <br />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ProductID" 
        DataSourceID="SqlDataSource1" 
        onselectedindexchanged="ListView1_SelectedIndexChanged">
        <AlternatingItemTemplate>
            <asp:HyperLink ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' 
                NavigateUrl='<%# Eval("ProductID", "~/Product.aspx?ID={0}") %>'></asp:HyperLink>
            <br />
            ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>'  />
            <br />
            Info:
            <asp:Label ID="InfoLabel" runat="server" Text='<%# Eval("Info") %>' />
            <br />
            Cost:
            <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
            <br />
                       <asp:Image ID="Image1" runat="server" 
                ImageUrl='<%# Eval("ProductID", "~/Image.ashx?ID={0}") %>' /><br />

            InStock:
            <asp:Label ID="InStockLabel" runat="server" Height="120px" Text='<%# Eval("InStock") %>' />
            <br />

            <asp:ImageButton ID="ImageButton3" runat="server" Height="40px" 
                ImageUrl="~/Image/1289469968_label_blue_buy.png" 
                PostBackUrl='<%# Eval("ProductID", "~/Tray/Default.aspx?ID={0}") %>' />

            <span /><span style="background-color: #FFFBD6;color: #333333;" />
            <span style="background-color: #FFFBD6;color: #333333;">
            <br />
            </span></span>
            <span><span style="background-color: #FFFBD6;color: #333333;" />
            <span style="background-color: #FFFBD6;color: #333333;">
            <br />
            </span></span></span>
            <br />
            </span>
            <br />
            <br />
            </span></span></span>
            <br />
            <br />
            </span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" 
                Text='<%# Eval("ProductID") %>' />
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
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>Нет данных.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />Info:
            <asp:TextBox ID="InfoTextBox" runat="server" Text='<%# Bind("Info") %>' />
            <br />Cost:
            <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
            <br />Image:
            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
            <br />InStock:
            <asp:TextBox ID="InStockTextBox" runat="server" Text='<%# Bind("InStock") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Вставить" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Очистить" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:HyperLink ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' 
                NavigateUrl='<%# Eval("ProductID", "~/Product.aspx?ID={0}") %>'></asp:HyperLink>
            <br />
            ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>'  />
            <br />
            Info:
            <asp:Label ID="InfoLabel" runat="server" Text='<%# Eval("Info") %>' />
            <br />
            Cost:
            <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
            <br />
            <asp:Image ID="Image1" runat="server" Height="120px"
                ImageUrl='<%# Eval("ProductID", "~/Image.ashx?ID={0}") %>' /><br />
            InStock:
            <asp:Label ID="InStockLabel" runat="server" Text='<%# Eval("InStock") %>' />
            <br />

            <asp:ImageButton ID="ImageButton3" runat="server" Height="40px" 
                ImageUrl="~/Image/1289469968_label_blue_buy.png" 
                PostBackUrl='<%# Eval("ProductID", "~/Tray/Default.aspx?ID={0}") %>' />

            <span /><span style="background-color: #FFFBD6;color: #333333;" />
            <span style="background-color: #FFFBD6;color: #333333;">
            <br />
            </span></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" 
                style="">
                <span id="itemPlaceholder" runat="server" />

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
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            Info:
            <asp:Label ID="InfoLabel" runat="server" Text='<%# Eval("Info") %>' />
            <br />
            Cost:
            <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
            <br />
            Image:
            <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
            <br />
            InStock:
            <asp:Label ID="InStockLabel" runat="server" Text='<%# Eval("InStock") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT [Name], [ProductID], [Info], [Cost], [Image], [InStock] FROM [Product]">
    </asp:SqlDataSource>
    <br />
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
