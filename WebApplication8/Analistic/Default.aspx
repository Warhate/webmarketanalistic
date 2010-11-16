<%@ Page Title="" Language="C#" MasterPageFile="~/Analistic/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication8.Analistic.WebForm1" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table align="center">
<tr>
<td>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        BorderStyle="None" BorderWidth="0px" DataSourceID="SDSCount" Height="50px" 
        Width="208px">
        <Fields>
            <asp:BoundField DataField="Expr1" HeaderText="Количество товара" 
                ReadOnly="True" SortExpression="Expr1">
            <ItemStyle ForeColor="#339966" />
            </asp:BoundField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SDSCount" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT COUNT(ProductID) AS Expr1 FROM Product">
    </asp:SqlDataSource>
</td>
<td>
    <br />
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
        DataSourceID="SDSPrice" Height="29px" Width="329px">
        <Fields>
            <asp:BoundField DataField="Expr1" HeaderText="Средняя цена товара" 
                ReadOnly="True" SortExpression="Expr1">
            <ItemStyle Font-Bold="True" ForeColor="#009933" />
            </asp:BoundField>
            <asp:BoundField DataField="Expr2" HeaderText="Минимальная цена товара" 
                ReadOnly="True" SortExpression="Expr2">
            <ItemStyle Font-Bold="True" ForeColor="#009933" />
            </asp:BoundField>
            <asp:BoundField DataField="Expr3" HeaderText="Максимальная  цена товара" 
                ReadOnly="True" SortExpression="Expr3">
            <ItemStyle Font-Bold="True" ForeColor="#009933" />
            </asp:BoundField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SDSPrice" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT AVG(Cost) AS Expr1, MIN(Cost) AS Expr2, MAX(Cost) AS Expr3 FROM Product">
    </asp:SqlDataSource>
    <br />
</td>
</tr>
<tr>
<td style="text-align: center">
    <asp:Label ID="Label2" runat="server" Text="Статистика по производителям" 
        style="font-weight: 700; color: #0066CC"></asp:Label>
    </td>
    <td style="text-align: center">
        <asp:Label ID="Label3" runat="server" Text="Статистика по группам товара" 
            style="font-weight: 700; color: #0066FF"></asp:Label>
    </td>
    </tr>
    <tr>
    <td>

        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
            
            SelectCommand="SELECT Firm.Name, COUNT(Product.ProductID) AS Expr1 FROM Firm INNER JOIN Product ON Firm.FirmID = Product.FirmID GROUP BY Firm.Name"></asp:SqlDataSource>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource5" 
            Height="276px" Width="377px">
            <Series>
                <asp:Series ChartType="Doughnut" Name="Series1" XValueMember="name" 
                    YValueMembers="Expr1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
    </td>
    <td>
        <asp:Chart ID="Chart2" runat="server" Height="271px" Width="347px" 
            DataSourceID="SDSGroup">
            <Series>
                <asp:Series Name="Series1" ChartType="Doughnut" XValueMember="Name" 
                    YValueMembers="Expr1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SDSGroup" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
            SelectCommand="SELECT GroupT.Name, COUNT(Product.ProductID) AS Expr1 FROM GroupT INNER JOIN Product ON GroupT.GroupID = Product.GroupID GROUP BY GroupT.Name">
        </asp:SqlDataSource>
    </td>
    </tr>
    <tr>
    <td>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource5">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Фирама производитель" 
                    SortExpression="Name"></asp:BoundField>
                <asp:BoundField DataField="Expr1" HeaderText="Количество товара" 
                    ReadOnly="True" SortExpression="Expr1"></asp:BoundField>
            </Columns>
        </asp:GridView>
    </td>
        <td>
            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" DataSourceID="SDSGroup">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Имя группы" 
                        SortExpression="Name" />
                    <asp:BoundField DataField="Expr1" HeaderText="Количество  товара" 
                        ReadOnly="True" SortExpression="Expr1" />
                </Columns>
            </asp:GridView>
    </td>
    </tr>
    <tr>
    <td>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" 
            style="font-weight: 700; color: #0066CC; font-size: large" 
            Text="Спрос на товар"></asp:Label>
    </td>
        <td>
    </td>
    </tr>
        <tr>
    <td>
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SDSPopular">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Наименование товара" 
                    SortExpression="Name" />
                <asp:BoundField DataField="Expr1" HeaderText="Количество покупок товара" 
                    ReadOnly="True" SortExpression="Expr1">
                <ItemStyle Font-Bold="True" ForeColor="#00CC00" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SDSPopular" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
            SelectCommand="SELECT Product.Name, COUNT(Tray.TrayID) AS Expr1 FROM Product INNER JOIN Tray ON Product.ProductID = Tray.ProductID GROUP BY Product.Name">
        </asp:SqlDataSource>
    </td>
        <td>
    </td>
    </tr>
    </table>

    <p>
        &nbsp;</p>
</asp:Content>
