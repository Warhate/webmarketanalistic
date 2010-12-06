<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Market.aspx.cs" Inherits="WebApplication8.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <div class = "title">

        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Группы товара"></asp:Label>
        <hr />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
            DataSourceID="SDSGroup" DataTextField="Name" DataValueField="GroupID" 
            RepeatDirection="Horizontal" RepeatLayout="Flow" onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
            >
        </asp:RadioButtonList>
        <br />
        <hr />
        <br />
        <br />
        <hr />


        <hr />
        <asp:SqlDataSource ID="SDSFirm" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
            SelectCommand="SELECT [FirmID], [Name] FROM [Firm] WHERE ([GroupID] IN (@GroupID))">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="GroupID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        <br />

    </div>
    <asp:SqlDataSource ID="SDSGroup" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        SelectCommand="SELECT [GroupID], [Name] FROM [GroupT]"></asp:SqlDataSource>
    <br />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ProductID" 
        DataSourceID="SqlDataSource1" 
        >
        <AlternatingItemTemplate>
             <div class =  "title">
           <table>
           <tr>
           <td>
           <asp:Label ID="FirmNameLabel" runat="server" Text='<%# Eval("FirmName") %>' />&nbsp; - &nbsp;
           <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl='<%# Eval("ProductID", "~/Product.aspx?ID={0}") %>'  
                    Text='<%# Eval("Name") %>'></asp:HyperLink>
           </td>
           <td>
           </td>
           </tr>

           <tr>
           <td valign="top">
            <asp:Image ID="Image1" runat="server" Width="250px" 
                    ImageUrl='<%# Eval("ProductID", "~/Image.ashx?ID={0}") %>' GenerateEmptyAlternateText="True" DescriptionUrl="~/Image/gtk-missing-image.png" />

           </td>
           <td valign="top">

           <asp:Label  ID="InfoLabel"  runat="server" Text='<%# 
          
          SplitString(Eval("Info").ToString())
                     %>' />... 
               <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# Eval("ProductID", "~/Product.aspx?ID={0}") %>' runat="server" >Подробней.</asp:HyperLink>

           </td>
           </tr>

           <tr>
           <td>

               <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Image/buy.png" PostBackUrl='<%# Eval("ProductID", "~/Tray/Default.aspx?ID={0}") %>' /><asp:HyperLink ID="HyperLink3"
                   runat="server" NavigateUrl='<%# Eval("ProductID", "~/Tray/Default.aspx?ID={0}") %>'>Купить</asp:HyperLink>
           </td>
           <td>

           <asp:Label ID="CostLabel" runat="server" Font-Italic="True" ForeColor="#006600" Font-Size="Large" Text='<%# Eval("Cost", "Цена: {0:c}") %>'></asp:Label>
           </td>
           </tr>

           </table>
           
            </div>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" 
                Text='<%# Eval("ProductID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Image:
            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
            <br />
            Cost:
            <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
            <br />
            FirmName:
            <asp:TextBox ID="FirmNameTextBox" runat="server" 
                Text='<%# Bind("FirmName") %>' />
            <br />
            Info:
            <asp:TextBox ID="InfoTextBox" runat="server" Text='<%# Bind("Info") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                Text="Обновить" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Отмена" />
            <br />
            <br />
            </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>Нет данных.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />Image:
            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
            <br />Cost:
            <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
            <br />
            FirmName:
            <asp:TextBox ID="FirmNameTextBox" runat="server" 
                Text='<%# Bind("FirmName") %>' />
            <br />
            Info:
            <asp:TextBox ID="InfoTextBox" runat="server" Text='<%# Bind("Info") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Вставить" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Очистить" />
            <br />
            <br />
            </span>
        </InsertItemTemplate>
        <ItemTemplate>
             <div class =  "title">
           <table>
           <tr>
           <td>
           <asp:Label ID="FirmNameLabel" runat="server" Text='<%# Eval("FirmName") %>' />&nbsp; - &nbsp;
           <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl='<%# Eval("ProductID", "~/Product.aspx?ID={0}") %>'  
                    Text='<%# Eval("Name") %>'></asp:HyperLink>
           </td>
           <td>
           </td>
           </tr>

           <tr>
                      <td valign="top">
            <asp:Image ID="Image1" runat="server" Width="250px" 
                    ImageUrl='<%# Eval("ProductID", "~/Image.ashx?ID={0}") %>' GenerateEmptyAlternateText="True" DescriptionUrl="~/Image/gtk-missing-image.png" />

           </td>
           <td valign="top">

          <asp:Label  ID="InfoLabel"  runat="server" Text='<%# 
          
          SplitString(Eval("Info").ToString())
                     %>' />... 
               <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# Eval("ProductID", "~/Product.aspx?ID={0}") %>' runat="server" >Подробней.</asp:HyperLink>

           </td>
           </tr>

           <tr>
           <td>

               <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Image/buy.png" PostBackUrl='<%# Eval("ProductID", "~/Tray/Default.aspx?ID={0}") %>' /><asp:HyperLink ID="HyperLink3"
                   runat="server" NavigateUrl='<%# Eval("ProductID", "~/Tray/Default.aspx?ID={0}") %>'>Купить</asp:HyperLink>
           </td>
           <td>

           <asp:Label ID="CostLabel" runat="server" Font-Italic="True" ForeColor="#006600" Font-Size="Large" Text='<%# Eval("Cost", "Цена: {0:c}") %>'></asp:Label>
           </td>
           </tr>

           </table>
           
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" 
                style="">
                <span id="itemPlaceholder" runat="server" />

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
            <span style="">ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Image:
            <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
            <br />
            Cost:
            <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
            <br />
            FirmName:
            <asp:Label ID="FirmNameLabel" runat="server" Text='<%# Eval("FirmName") %>' />
            <br />
            Info:
            <asp:Label ID="InfoLabel" runat="server" Text='<%# Eval("Info") %>' />
            <br />
            <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
        
        
        
        
        
        SelectCommand="SELECT Product.ProductID, Product.Name, Product.Image, Product.Cost, Firm.Name AS FirmName, Product.Info FROM Product INNER JOIN Firm ON Product.FirmID = Firm.FirmID WHERE (Product.GroupID = @GroupID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="RadioButtonList1" Name="GroupID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
