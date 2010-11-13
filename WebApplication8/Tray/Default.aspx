<%@ Page Title="" Language="C#" MasterPageFile="~/Tray/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication8.Tray.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#E6E2D8" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="0.8em" Height="130px" 
        onfinishbuttonclick="Wizard1_FinishButtonClick" Width="317px">
        <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" 
            BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
            HorizontalAlign="Center" />
        <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#1C5E55" />
        <SideBarButtonStyle ForeColor="White" />
        <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
        <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" 
            BorderWidth="2px" />
        <WizardSteps>
            <asp:WizardStep runat="server" title="Step 1">
                Список товаров<asp:Label ID="LabelMessage" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
                    SelectCommand="SELECT Product.Name, Product.Cost FROM Product INNER JOIN Tray ON Product.ProductID = Tray.ProductID AND Product.ProductID = Tray.ProductID INNER JOIN aspnet_Users ON Tray.UserID = aspnet_Users.UserId AND Tray.UserID = aspnet_Users.UserId WHERE (aspnet_Users.UserName = 'Taras')">
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </asp:WizardStep>
            <asp:WizardStep runat="server" title="Step 2">
                Адреса доставик
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
    <br />
    <asp:ImageButton ID="ImageButton1" runat="server" Height="24px" 
        ImageUrl="~/Image/1289469968_label_blue_buy.png" />
    <asp:HyperLink ID="HyperLink1" runat="server">Купить</asp:HyperLink>
    <br />
    <br />
</asp:Content>


