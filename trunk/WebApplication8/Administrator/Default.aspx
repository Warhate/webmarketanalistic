<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication8.Administrator.WebForm6" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<table>
<tr>
<td>
    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" 
        DataSourceID="SDSUser" DataTextField="UserName" DataValueField="UserName" 
        Height="458px" Width="260px"></asp:ListBox>
</td>
<td valign="top">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SDSTray" 
        Height="132px" Width="503px">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
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
    <asp:SqlDataSource ID="SDSTray" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT Product.Name, Product.Cost FROM Tray INNER JOIN Product ON Tray.ProductID = Product.ProductID WHERE (Tray.UserName = @UserName) AND (Tray.IsBuy = 1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ListBox1" Name="UserName" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</td>
</tr>
</table>
    <asp:SqlDataSource ID="SDSUser" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT UserName FROM Tray GROUP BY UserName, IsBuy HAVING (IsBuy = 1)">
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />


    <asp:SqlDataSource ID="SDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT Product.Name, Product.Cost FROM Tray INNER JOIN Product ON Tray.ProductID = Product.ProductID WHERE (Tray.UserName = @UserName) AND (Tray.IsBuy = 1)">
        <SelectParameters>
            <asp:ProfileParameter Name="UserName" PropertyName="UserName" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
&nbsp;
</asp:Content>
