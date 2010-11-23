<%@ Page Title="" Language="C#" MasterPageFile="~/Analistic/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication8.Analistic.WebForm1" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table align="center">
<tr>
<td>
<div id = "selectstat">
    <asp:Label ID="Label5" runat="server" 
        Text="Выбор статистики, которую нужно показать"></asp:Label>
    <br />
    <br />
    <asp:CheckBox ID="CBFirm" runat="server" Checked="True" Text="Производители" />
    <br />
    <asp:CheckBox ID="CBGroup" runat="server" Checked="True" Text="Группы" />
    <br />
    <asp:CheckBox ID="CBProduct" runat="server" Checked="True" Text="Спрос" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
        Text="Выбрать" />
        </div>
</td>
<td>
</td>
</tr>
<tr>
<td>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        BorderStyle="Solid" BorderWidth="0px" DataSourceID="SDSCount" Height="50px" 
        Width="335px" BorderColor="#006600" Font-Bold="True" Font-Size="Medium">
        <AlternatingRowStyle BorderColor="#339933" />
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
        DataSourceID="SDSPrice" Height="29px" Width="329px" BorderColor="#006600" 
        BorderStyle="Solid" Font-Size="Medium">
        <AlternatingRowStyle BorderColor="#006666" BorderStyle="Dotted" />
        <Fields>
            <asp:BoundField DataField="Expr1" HeaderText="Средняя цена товара" 
                ReadOnly="True" SortExpression="Expr1" DataFormatString="{0:c}">
            <ItemStyle Font-Bold="True" ForeColor="#009933" />
            </asp:BoundField>
            <asp:BoundField DataField="Expr2" HeaderText="Минимальная цена товара" 
                ReadOnly="True" SortExpression="Expr2" DataFormatString="{0:c}">
            <ItemStyle Font-Bold="True" ForeColor="#009933" />
            </asp:BoundField>
            <asp:BoundField DataField="Expr3" HeaderText="Максимальная  цена товара" 
                ReadOnly="True" SortExpression="Expr3" DataFormatString="{0:c}">
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
    <asp:Label ID="LabelFirm" runat="server" Text="Статистика по производителям" 
        style="font-weight: 700; color: #0066CC" Font-Bold="True" 
        Font-Size="Large"></asp:Label>
    </td>
    <td style="text-align: center">
        <asp:Label ID="LabelGroup" runat="server" Text="Статистика по группам товара" 
            style="font-weight: 700; color: #0066FF" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
    </td>
    </tr>
    <tr>
    <td>

        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
            
            SelectCommand="SELECT Firm.Name, COUNT(Product.ProductID) AS Expr1 FROM Firm INNER JOIN Product ON Firm.FirmID = Product.FirmID GROUP BY Firm.Name"></asp:SqlDataSource>
        <asp:Chart ID="ChartFirm" runat="server" DataSourceID="SqlDataSource5" 
            Height="276px" Width="377px" BackColor="Transparent">
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
        <asp:Chart ID="ChartGroup" runat="server" Height="271px" Width="347px" 
            DataSourceID="SDSGroup" BackColor="Transparent">
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
        <asp:GridView ID="GridViewFirm" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource5" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" Font-Size="Medium" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Фирама производитель" 
                    SortExpression="Name"></asp:BoundField>
                <asp:BoundField DataField="Expr1" HeaderText="Количество товара" 
                    ReadOnly="True" SortExpression="Expr1"></asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </td>
        <td>
            <asp:GridView ID="GridViewGroup" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" DataSourceID="SDSGroup" BorderColor="#999999" 
                BorderStyle="Solid" BackColor="#CCCCCC" BorderWidth="3px" CellPadding="4" 
                CellSpacing="2" Font-Size="Medium" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Имя группы" 
                        SortExpression="Name" />
                    <asp:BoundField DataField="Expr1" HeaderText="Количество  товара" 
                        ReadOnly="True" SortExpression="Expr1" />
                </Columns>
                <EmptyDataRowStyle BorderColor="#006600" BorderStyle="Solid" />
                <FooterStyle BorderColor="#006600" BorderStyle="Solid" BackColor="#CCCCCC" />
                <HeaderStyle BorderColor="#006600" BorderStyle="Solid" BackColor="Black" 
                    Font-Bold="True" ForeColor="White" />
                <PagerStyle BorderColor="#006600" BorderStyle="Solid" BackColor="#CCCCCC" 
                    ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BorderColor="Blue" BorderStyle="Solid" BorderWidth="1px" 
                    BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
    </td>
    </tr>
    <tr>
    <td>
        <br />
        <br />
        <asp:Label ID="LabelProduct" runat="server" 
            style="font-weight: 700; color: #0066CC; font-size: large" 
            Text="Спрос на товар"></asp:Label>
    </td>
        <td>
    </td>
    </tr>
        <tr>
    <td>
        <asp:GridView ID="GridViewProduct" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SDSPopular" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" Font-Size="Medium" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Наименование товара" 
                    SortExpression="Name" />
                <asp:BoundField DataField="Expr1" HeaderText="Количество покупок товара" 
                    ReadOnly="True" SortExpression="Expr1">
                <ItemStyle Font-Bold="True" ForeColor="#00CC00" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
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
