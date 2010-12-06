<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Market.aspx.cs" Inherits="WebApplication8.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <div class = "title">

        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Группы товара"></asp:Label>
        <hr />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
            DataSourceID="SDSGroup" DataTextField="Name" DataValueField="GroupID" 
            RepeatDirection="Horizontal" RepeatLayout="Flow" 
            onprerender="RadioButtonList1_PreRender" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
        </asp:RadioButtonList>
        <br />
        <hr />
        <br />
        <br />
        <hr />


        <hr />
        <asp:SqlDataSource ID="SDSFirm" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
            SelectCommand="SELECT [FirmID], [Name] FROM [Firm] WHERE ([GroupID] IN (@GroupID))">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="GroupID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        <br />

    </div>
    <asp:SqlDataSource ID="SDSGroup" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT [GroupID], [Name] FROM [GroupT]"></asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ProductID" 
        DataSourceID="SqlDataSource1" 
        onselectedindexchanged="ListView1_SelectedIndexChanged" 
        onload="ListView1_Load">
        <AlternatingItemTemplate>
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
        </ItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" 
                style="">
                <span id="itemPlaceholder" runat="server" />

            </div>
            <div style="">
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
        
        
        
        
        SelectCommand="SELECT [ProductID], [Name], [Image], [Cost] FROM [Product] WHERE ([GroupID] = @GroupID) ">
        <SelectParameters>
            <asp:ControlParameter ControlID="RadioButtonList1" Name="GroupID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
