<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication8.WebForm2" UICulture = "auto" Culture = "uk-UA"  %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>


<asp:Content ID = "Content1" ContentPlaceHolderID = "ContentPlaceHolder2" runat = "server">
    &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Button" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        
        SelectCommand="SELECT newsbody, date, newsname FROM News ORDER BY date DESC">
    </asp:SqlDataSource>
    <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/newsfire_48x48.png" 
        Width="24px" />
    <asp:Label ID="LabelNews" runat="server" Font-Bold="True" 
    Font-Size="X-Large" Text="Новости"></asp:Label>
    &nbsp;&nbsp;
    <br />
    <asp:ListView ID="ListView1"  runat="server" DataSourceID="SqlDataSource1" 
        style="text-align: left" >


        <AlternatingItemTemplate>
                         <div class = "title">
                         <h3>
            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("newsname") %>'></asp:HyperLink>
            </h3>
                <br />
                <br />
                <%# Eval("newsbody") %>
                <br />
                <br />
                <i>

                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/1291667400_clendarorange-24.png" />
                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date", "{0:D}") %>'></asp:Label>
                </i>
                <br />
                </div>

        </AlternatingItemTemplate>

        <EditItemTemplate>
            <span style="">newsbody:
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
        <div class = "title">
        <h3>
            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("newsname") %>'></asp:HyperLink>
           </h3>
            <hl>
                <br />
                <br />
                <%# Eval("newsbody") %>
                <br />
                <br />
                <i>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/1291667400_clendarorange-24.png" />
                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date", "{0:D}") %>'></asp:Label>
                </i>
                <br />
                </div>

        </ItemTemplate>

        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" 
                style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
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
            <span style="">
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





    </asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    </asp:Content>
