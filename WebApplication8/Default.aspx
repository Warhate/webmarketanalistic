<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication8.WebForm2" %>


<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>


<asp:Content ID = "Content1" ContentPlaceHolderID = "ContentPlaceHolder2" runat = "server">
    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT [newsbody], [date], [newsname] FROM [News]">
    </asp:SqlDataSource>
    <br />
    <asp:ListView ID="ListView1"  runat="server" DataSourceID="SqlDataSource1" 
        style="text-align: left" >


        <AlternatingItemTemplate>
                 <div class="title">
            
            <b><asp:HyperLink ID="HyperLink1" runat="server"  Text='<%# Eval("newsname") %>' ></asp:HyperLink></b>
            <hl>
            <br />
            <br />
            <%# Eval("newsbody") %>
            <br />
            <br />
            <i><asp:Label runat="server" Text="Дата публикации"></asp:Label><asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' /></i>
            <br />
            
                 </div>
            <br />
<br /></span>
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
         <div class="title">
            
            <b><asp:HyperLink ID="HyperLink1" runat="server"  Text='<%# Eval("newsname") %>' ></asp:HyperLink></b>
            <hl>
            <br />
            <br />
            <%# Eval("newsbody") %>
            <br />
            <br />
            <i><asp:Label ID="Label1" runat="server" Text="Дата публикации"></asp:Label><asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' /></i>
            <br />
            
                 </div>
            <br />
<br /></span>
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


    </div>


    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID = "ContentPlaceHolder3" runat = "server">


</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    </asp:Content>
