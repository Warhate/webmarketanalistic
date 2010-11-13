<%@ Page Title="" Language="C#" MasterPageFile="~/Analistic/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication8.Analistic.WebForm1" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: center;
            color: #0066CC;
            font-weight: bold;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="style1">
        Панель статистики</p>
    <p class="style1">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Обновить статистику фирм" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Обновить статистику пользователей" Width="245px" />
    </p>
    <p class="style1">
        <asp:ListBox ID="ListBox1" runat="server" Height="62px" Width="391px"></asp:ListBox>
        <asp:ListBox ID="ListBox2" runat="server" Height="68px" Width="454px"></asp:ListBox>
    </p>
    <p class="style1">

        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
            SelectCommand="SELECT [name], [count] FROM [Made]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource5" 
            Height="276px" Width="431px">
            <Series>
                <asp:Series ChartType="Bar" Name="Series1" XValueMember="name" 
                    YValueMembers="count">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
    </p>
</asp:Content>
