<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Default.Master" AutoEventWireup="true" CodeBehind="NewsB.aspx.cs" Inherits="WebApplication8.Administrator.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Horizontal" PageSize="50" Width="100%">
        <Columns>
            <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
            <ItemStyle Width="10%" />
            </asp:CommandField>
            <asp:BoundField DataField="date" HeaderText="Дата" SortExpression="date" >
            <HeaderStyle Width="200px" />
            <ItemStyle BorderColor="#006699" BorderStyle="Solid" Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="newsname" HeaderText="Заголовок" 
                SortExpression="newsname" >
            <HeaderStyle Width="200px" />
            <ItemStyle Width="60%" />
            </asp:BoundField>
            <asp:BoundField DataField="id" HeaderText="Идентификатор" SortExpression="id" >
            <ItemStyle Width="20%" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" BorderColor="Blue" BorderStyle="Solid" 
            Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT [date], [newsname], [id] FROM [News]">
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        PostBackUrl="~/Administrator/NewsEdit.aspx" Text="Редактировать" />
</asp:Content>

