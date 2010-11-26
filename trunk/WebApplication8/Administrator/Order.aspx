<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Default.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="WebApplication8.Administrator.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class = "title">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        <asp:ListItem Selected="True" Value="1">Заказано</asp:ListItem>
        <asp:ListItem Value="2">Доставлено</asp:ListItem>
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SDSOrder" AllowPaging="True" AllowSorting="True" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" PageSize="40" Width="100%">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Наименование" 
                SortExpression="Name" />
            <asp:BoundField DataField="Cost" HeaderText="Цена" SortExpression="Cost" 
                DataFormatString="{0:c}" />
            <asp:BoundField DataField="UserName" HeaderText="Имя пользователя" 
                SortExpression="UserName" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SDSOrder" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT Product.Name, Product.Cost, Tray.UserName FROM Product INNER JOIN Tray ON Product.ProductID = Tray.ProductID AND Product.ProductID = Tray.ProductID WHERE (Tray.IsBuy = @Value)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Value" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>
