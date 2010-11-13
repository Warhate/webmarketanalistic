<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication8.WebForm2" %>


<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>


<asp:Content ID = "Content1" ContentPlaceHolderID = "ContentPlaceHolder2" runat = "server">
    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT [newsbody], [date], [newsname] FROM [News]">
    </asp:SqlDataSource>
    <br />
    <% = sss() %>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="background-color: #FFF8DC;">newsbody:
            <asp:Label ID="newsbodyLabel" runat="server" Text='<%# Eval("newsbody") %>' />
            <br />
            date:
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
            <br />
            newsname:
            <asp:Label ID="newsnameLabel" runat="server" Text='<%# Eval("newsname") %>' />
            <br />
<br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #008A8C;color: #FFFFFF;">newsbody:
            <asp:TextBox ID="newsbodyTextBox" runat="server" 
                Text='<%# Bind("newsbody") %>' />
            <br />
            date:
            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
            <br />
            newsname:
            <asp:TextBox ID="newsnameTextBox" runat="server" 
                Text='<%# Bind("newsname") %>' />
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
            <span style="">newsbody:
            <asp:TextBox ID="newsbodyTextBox" runat="server" 
                Text='<%# Bind("newsbody") %>' />
            <br />date:
            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
            <br />newsname:
            <asp:TextBox ID="newsnameTextBox" runat="server" 
                Text='<%# Bind("newsname") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Вставить" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Очистить" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #DCDCDC;color: #000000;">newsbody:
            <asp:Label ID="newsbodyLabel" runat="server" Text='<%# Eval("newsbody") %>' />
            <br />
            date:
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
            <br />
            newsname:
            <asp:Label ID="newsnameLabel" runat="server" Text='<%# Eval("newsname") %>' />
            <br />
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">
            newsbody:
            <asp:Label ID="newsbodyLabel" runat="server" Text='<%# Eval("newsbody") %>' />
            <br />
            date:
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
            <br />
            newsname:
            <asp:Label ID="newsnameLabel" runat="server" Text='<%# Eval("newsname") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <br /> 
<span class="my"><strong>

    </strong></span>


    </div>


    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID = "ContentPlaceHolder3" runat = "server">


</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    </asp:Content>
