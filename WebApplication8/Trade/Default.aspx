<%@ Page Title="" Language="C#" MasterPageFile="~/Trade/Default.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WebApplication8.Trade.WebForm1" %>
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

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SDSGroup" DataTextField="Name" DataValueField="GroupID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SDSGroup" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT [GroupID], [Name] FROM [GroupT]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataKeyNames="ProductID" DataSourceID="SDSProduct" PageSize="40" Width="100%">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Expr1" HeaderText="Фирма" SortExpression="Expr1" />
            <asp:BoundField DataField="Expr2" HeaderText="Наименование" 
                SortExpression="Expr2" />
            <asp:BoundField DataField="Cost" HeaderText="Цена" SortExpression="Cost" 
                DataFormatString="{0:C}" >
            <ItemStyle Width="15%" />
            </asp:BoundField>
            <asp:BoundField DataField="InStock" HeaderText="На складе" 
                SortExpression="InStock" >
            <ItemStyle Width="10%" />
            </asp:BoundField>
            <asp:BoundField DataField="ProductID" HeaderText="ID" 
                InsertVisible="False" ReadOnly="True" SortExpression="ProductID" >
            <ItemStyle Width="10%" />
            </asp:BoundField>
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
    <asp:SqlDataSource ID="SDSProduct" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT Firm.Name AS Expr1, Product.Name AS Expr2, Product.ProductID, Product.Cost, Product.InStock FROM Firm INNER JOIN Product ON Firm.FirmID = Product.FirmID GROUP BY Firm.Name, Product.Name, Product.ProductID, Product.Cost, Product.InStock, Product.GroupID HAVING (Product.GroupID = @GroupID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="GroupID" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


