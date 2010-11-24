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
        <div class = "title">
            <span style="" />Name:
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
            TVDiag:
            <asp:Label ID="TVDiagLabel" runat="server" Text='<%# Eval("TVDiag") %>' />
            <br />
            TVClass:
            <asp:Label ID="TVClassLabel" runat="server" Text='<%# Eval("TVClass") %>' />
            <br />
            TVRaz:
            <asp:Label ID="TVRazLabel" runat="server" Text='<%# Eval("TVRaz") %>' />
            <br />
            PhoneFF:
            <asp:Label ID="PhoneFFLabel" runat="server" Text='<%# Eval("PhoneFF") %>' />
            <br />
            PhoneSize:
            <asp:Label ID="PhoneSizeLabel" runat="server" Text='<%# Eval("PhoneSize") %>' />
            <br />
            PhoneCam:
            <asp:Label ID="PhoneCamLabel" runat="server" Text='<%# Eval("PhoneCam") %>' />
            <br />
            PhoneMem:
            <asp:Label ID="PhoneMemLabel" runat="server" Text='<%# Eval("PhoneMem") %>' />

            </div>
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
            TVDiag:
            <asp:TextBox ID="TVDiagTextBox" runat="server" Text='<%# Bind("TVDiag") %>' />
            <br />
            TVClass:
            <asp:TextBox ID="TVClassTextBox" runat="server" Text='<%# Bind("TVClass") %>' />
            <br />
            TVRaz:
            <asp:TextBox ID="TVRazTextBox" runat="server" Text='<%# Bind("TVRaz") %>' />
            <br />
            PhoneFF:
            <asp:TextBox ID="PhoneFFTextBox" runat="server" Text='<%# Bind("PhoneFF") %>' />
            <br />
            PhoneSize:
            <asp:TextBox ID="PhoneSizeTextBox" runat="server" 
                Text='<%# Bind("PhoneSize") %>' />
            <br />
            PhoneCam:
            <asp:TextBox ID="PhoneCamTextBox" runat="server" 
                Text='<%# Bind("PhoneCam") %>' />
            <br />
            PhoneMem:
            <asp:TextBox ID="PhoneMemTextBox" runat="server" 
                Text='<%# Bind("PhoneMem") %>' />
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
            TVDiag:
            <asp:TextBox ID="TVDiagTextBox" runat="server" Text='<%# Bind("TVDiag") %>' />
            <br />
            TVClass:
            <asp:TextBox ID="TVClassTextBox" runat="server" Text='<%# Bind("TVClass") %>' />
            <br />
            TVRaz:
            <asp:TextBox ID="TVRazTextBox" runat="server" Text='<%# Bind("TVRaz") %>' />
            <br />
            PhoneFF:
            <asp:TextBox ID="PhoneFFTextBox" runat="server" Text='<%# Bind("PhoneFF") %>' />
            <br />
            PhoneSize:
            <asp:TextBox ID="PhoneSizeTextBox" runat="server" 
                Text='<%# Bind("PhoneSize") %>' />
            <br />
            PhoneCam:
            <asp:TextBox ID="PhoneCamTextBox" runat="server" 
                Text='<%# Bind("PhoneCam") %>' />
            <br />
            PhoneMem:
            <asp:TextBox ID="PhoneMemTextBox" runat="server" 
                Text='<%# Bind("PhoneMem") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Вставить" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Очистить" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>

            <span style="" />Name:
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
            TVDiag:
            <asp:Label ID="TVDiagLabel" runat="server" Text='<%# Eval("TVDiag") %>' />
            <br />
            TVClass:
            <asp:Label ID="TVClassLabel" runat="server" Text='<%# Eval("TVClass") %>' />
            <br />
            TVRaz:
            <asp:Label ID="TVRazLabel" runat="server" Text='<%# Eval("TVRaz") %>' />
            <br />
            PhoneFF:
            <asp:Label ID="PhoneFFLabel" runat="server" Text='<%# Eval("PhoneFF") %>' />
            <br />
            PhoneSize:
            <asp:Label ID="PhoneSizeLabel" runat="server" Text='<%# Eval("PhoneSize") %>' />
            <br />
            PhoneCam:
            <asp:Label ID="PhoneCamLabel" runat="server" Text='<%# Eval("PhoneCam") %>' />
            <br />
            PhoneMem:
            <asp:Label ID="PhoneMemLabel" runat="server" Text='<%# Eval("PhoneMem") %>' />
            <br />
            <br />
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
            TVDiag:
            <asp:Label ID="TVDiagLabel" runat="server" Text='<%# Eval("TVDiag") %>' />
<br />TVClass:
            <asp:Label ID="TVClassLabel" runat="server" Text='<%# Eval("TVClass") %>' />
            <br />
            TVRaz:
            <asp:Label ID="TVRazLabel" runat="server" Text='<%# Eval("TVRaz") %>' />
            <br />
            PhoneFF:
            <asp:Label ID="PhoneFFLabel" runat="server" Text='<%# Eval("PhoneFF") %>' />
            <br />
            PhoneSize:
            <asp:Label ID="PhoneSizeLabel" runat="server" Text='<%# Eval("PhoneSize") %>' />
            <br />
            PhoneCam:
            <asp:Label ID="PhoneCamLabel" runat="server" Text='<%# Eval("PhoneCam") %>' />
            <br />
            PhoneMem:
            <asp:Label ID="PhoneMemLabel" runat="server" Text='<%# Eval("PhoneMem") %>' />
            <br />
            <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        
        SelectCommand="SELECT [Name], [ProductID], [Info], [Cost], [Image], [InStock], [TVDiag], [TVClass], [TVRaz], [PhoneFF], [PhoneSize], [PhoneCam], [PhoneMem] FROM [Product]">
    </asp:SqlDataSource>
    <br />
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
