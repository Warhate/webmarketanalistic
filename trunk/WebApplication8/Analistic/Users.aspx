<%@ Page Title="" Language="C#" MasterPageFile="~/Analistic/Default.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="WebApplication8.Analistic.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table width="600">
    <tr>
    <td>
    
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataSourceID="SDSUsers" Height="50px" Width="231px">
        <Fields>
            <asp:BoundField DataField="Expr1" HeaderText="Количество пользователей" 
                ReadOnly="True" SortExpression="Expr1">
            <ItemStyle Font-Bold="True" ForeColor="#336600" />
            </asp:BoundField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SDSUsers" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT COUNT(UserId) AS Expr1 FROM aspnet_Users">
    </asp:SqlDataSource>
    </td>
        <td>
</td>
    </tr>

        <tr>
    <td>
    </td>
        <td>
    </td>
    </tr>

        <tr>
    <td style="text-align: left">
        <asp:Label ID="Label2" runat="server" Text="Статистика по полу пользователей" 
            style="font-weight: 700; color: #006699"></asp:Label>
    <asp:SqlDataSource ID="SDSUsersSex" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT Users.Sex, COUNT(aspnet_Users.UserId) AS Expr1 FROM Users INNER JOIN aspnet_Users ON Users.UserId = aspnet_Users.UserId GROUP BY Users.Sex">
    </asp:SqlDataSource>
    </td>

            <asp:SqlDataSource ID="SDSProfesion" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
                SelectCommand="SELECT Users.Profession, COUNT(aspnet_Users.UserId) AS Expr1 FROM Users INNER JOIN aspnet_Users ON Users.UserId = aspnet_Users.UserId GROUP BY Users.Profession">
            </asp:SqlDataSource>
        <td>
    </td>
    </tr>

        <tr>
    <td style="text-align: left">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SDSUsersSex" Width="400px">
            <Columns>
                <asp:BoundField DataField="Sex" HeaderText="Пол" SortExpression="Sex" />
                <asp:BoundField DataField="Expr1" HeaderText="Количество пользователей" 
                    ReadOnly="True" SortExpression="Expr1" />
            </Columns>
        </asp:GridView>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SDSUsersSex" Height="202px" 
            style="text-align: left" Width="213px">
        <Series>
            <asp:Series ChartType="Pie" Name="Series1" XValueMember="Sex" 
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
            <asp:SqlDataSource ID="SDSHome" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
                SelectCommand="SELECT Users.Country, COUNT(aspnet_Users.UserId) AS Expr1 FROM aspnet_Users INNER JOIN Users ON aspnet_Users.UserId = Users.UserId GROUP BY Users.Country">
            </asp:SqlDataSource>
    </td>
    </tr>

        <tr>
    <td style="text-align: left">
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Статистика по возрасту" 
            style="font-weight: 700; color: #006699"></asp:Label>
        <asp:GridView ID="GridView4" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataSourceID="SDSOther" AllowPaging="True" 
            Width="400px">
            <Columns>
                <asp:BoundField DataField="Age" HeaderText="Возраст" SortExpression="Age" />
                <asp:BoundField DataField="Expr1" HeaderText="Количество пользователей" 
                    ReadOnly="True" SortExpression="Expr1" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SDSOther" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
            SelectCommand="SELECT COUNT(aspnet_Users.UserId) AS Expr1, Users.Age FROM aspnet_Users INNER JOIN Users ON aspnet_Users.UserId = Users.UserId GROUP BY Users.Age">
        </asp:SqlDataSource>
    </td>
        <td>
    </td>
    </tr>

        <tr>
    <td style="text-align: left">
            <br />
            <asp:Label ID="Label5" runat="server" 
                style="font-weight: 700; color: #006699; text-align: left" 
                Text="Статистика по роду деятельности"></asp:Label>
            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" DataSourceID="SDSProfesion" AllowPaging="True" 
                Width="400px">
                <Columns>
                    <asp:BoundField DataField="Profession" HeaderText="Род деятельности" 
                        SortExpression="Profession" />
                    <asp:BoundField DataField="Expr1" HeaderText="Количество пользователей" 
                        ReadOnly="True" SortExpression="Expr1" />
                </Columns>
            </asp:GridView>
    </td>
        <td>
    </td>
    </tr>

      <tr>
    <td style="text-align: left">
        <br />
        <asp:Label ID="Label6" runat="server" style="font-weight: 700; color: #006699" 
            Text="Статистика по месту жительства"></asp:Label>
            <asp:GridView ID="GridView3" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" DataSourceID="SDSHome" AllowPaging="True" 
            Width="400px">
                <Columns>
                    <asp:BoundField DataField="Country" HeaderText="Страна" 
                        SortExpression="Country" />
                    <asp:BoundField DataField="Expr1" HeaderText="Количество пользователей" 
                        ReadOnly="True" SortExpression="Expr1" />
                </Columns>
            </asp:GridView>
    </td>
        <td>
    </td>
    </tr>

      <tr>
    <td style="text-align: left">
        <br />
        <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SDSCity" 
            Width="400px">
            <Columns>
                <asp:BoundField DataField="City" HeaderText="Город" SortExpression="City" />
                <asp:BoundField DataField="Expr1" HeaderText="Количество пользователей" 
                    ReadOnly="True" SortExpression="Expr1" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SDSCity" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
            SelectCommand="SELECT COUNT(aspnet_Users.UserId) AS Expr1, Users.City FROM aspnet_Users INNER JOIN Users ON aspnet_Users.UserId = Users.UserId GROUP BY Users.City">
        </asp:SqlDataSource>
    </td>
        <td>
    </td>
    </tr>
    </table>
    
    <br />
    <br />

</asp:Content>
