<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Market.aspx.cs" Inherits="WebApplication8.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <br />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ProductID" 
        DataSourceID="SqlDataSource1" 
        onselectedindexchanged="ListView1_SelectedIndexChanged" 
        onload="ListView1_Load">
        <AlternatingItemTemplate>
        <div class =  "title">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl='<%# Eval("ProductID", "~/Product.aspx?ID={0}") %>'  
                    Text='<%# Eval("Name") %>'></asp:HyperLink>
            <br />
            <asp:Image ID="Image1" runat="server" Width="250px" 
                    ImageUrl='<%# Eval("ProductID", "~/Image.ashx?ID={0}") %>' />
                <br>
                <br></br>
                <asp:Label ID="CostLabel" runat="server" Font-Italic="True" ForeColor="#006600" Font-Size="X-Large" Text='<%# Eval("Cost", "Цена: {0:c}") %>'></asp:Label>
                <br />
                <br />
                </span>
            </br>
            </div>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" 
                Text='<%# Eval("ProductID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Image:
            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
            <br />
            Cost:
            <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
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
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />Image:
            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
            <br />Cost:
            <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Вставить" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Очистить" />
            <br />
            <br />
            </span>
        </InsertItemTemplate>
        <ItemTemplate>
         <div class =  "title">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl='<%# Eval("ProductID", "~/Product.aspx?ID={0}") %>'  
                    Text='<%# Eval("Name") %>'></asp:HyperLink>
            <br />
            <asp:Image ID="Image1" runat="server" Width="250px" 
                    ImageUrl='<%# Eval("ProductID", "~/Image.ashx?ID={0}") %>' />
                <br>
                <br></br>

                <asp:Label ID="CostLabel" runat="server" Font-Italic="True" ForeColor="#006600" Font-Size="X-Large" Text='<%# Eval("Cost" , "Цена: {0:c}") %>'></asp:Label>
                <br />
                <br />
                </span>
            </br>
            </div>
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
                            ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Image:
            <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
            <br />
            Cost:
            <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
            <br />
            <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        
        SelectCommand="SELECT [ProductID], [Name], [Image], [Cost] FROM [Product]">
    </asp:SqlDataSource>
    <br />
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
