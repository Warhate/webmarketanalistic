<%@ Page Title="" Language="C#" MasterPageFile="~/Tray/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication8.Tray.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <div class = "title">
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Height="16px" 
        onfinishbuttonclick="Wizard1_FinishButtonClick" Width="687px">
        <FinishNavigationTemplate>
            <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" 
                CommandName="MovePrevious" Text="Предыдущ." />
            <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" 
                onclick="FinishButton_Click" PostBackUrl="~/Tray/Done.aspx" Text="Готово" />
        </FinishNavigationTemplate>
        <WizardSteps>
            <asp:WizardStep runat="server" title="Step 1">
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="100px" 
                    Width="493px" AllowSorting="True" DataKeyNames="TrayID">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Name" HeaderText="Наименование" 
                            SortExpression="Name" >
                        </asp:BoundField>
                        <asp:BoundField DataField="Cost" HeaderText="Цена" SortExpression="Cost" 
                            DataFormatString="{0:c}" >
                        </asp:BoundField>
                        <asp:BoundField DataField="TrayID" HeaderText="TrayID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="TrayID" Visible="False" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
                    
                    
                    
                    
                    SelectCommand="SELECT Product.Name, Product.Cost, Tray.TrayID FROM Product INNER JOIN Tray ON Product.ProductID = Tray.ProductID AND Product.ProductID = Tray.ProductID WHERE (Tray.UserName = @UserName) AND (Tray.IsBuy IS NULL)">
                    <SelectParameters>
                        <asp:ProfileParameter Name="UserName" PropertyName="UserName" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataSourceID="SDSSum" Height="50px" HorizontalAlign="Left" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="Expr1" DataFormatString="{0:c}" HeaderText="Сумма:" 
                            ReadOnly="True" SortExpression="Expr1" />
                    </Fields>
                </asp:DetailsView>
                <br />
                <asp:SqlDataSource ID="SDSSum" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:webmarkkkConnectionString %>" 
                    
                    SelectCommand="SELECT SUM(Product.Cost) AS Expr1 FROM Tray INNER JOIN Product ON Tray.ProductID = Product.ProductID WHERE (Tray.UserName = @UserName) AND (Tray.IsBuy IS NULL)">
                    <SelectParameters>
                        <asp:ProfileParameter Name="UserName" PropertyName="UserName" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Button ID="BtnDel" runat="server" OnClick="BtnDel_Click" 
                    Text="Удалить выбраую покупку" />
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
<table >
<tr>
<td>
    <asp:Label ID="Label2" runat="server" Text="Страна"></asp:Label>
</td>
<td>
    <asp:Label ID="LabelCountry" runat="server"></asp:Label>
</td>
</tr>


<tr>
<td>
    <asp:Label ID="Label3" runat="server" Text="Город"></asp:Label>
</td>
<td>
    <asp:Label ID="LabelCity" runat="server"></asp:Label>
</td>
</tr>


<tr>
<td>
    <asp:Label ID="Label4" runat="server" Text="Область"></asp:Label>
</td>
<td>
    <asp:Label ID="LabelObl" runat="server"></asp:Label>
</td>
</tr>


<tr>
<td>
    <asp:Label ID="Label5" runat="server" Text="Район"></asp:Label>
</td>
<td>
    <asp:Label ID="LabelRayon" runat="server"></asp:Label>
</td>
</tr>


<tr>
<td>
    <asp:Label ID="Label6" runat="server" Text="Индекс"></asp:Label>
</td>
<td>
    <asp:Label ID="LabelIndex" runat="server"></asp:Label>
</td>
</tr>


<tr>
<td>
    <asp:Label ID="Label7" runat="server" Text="Улица"></asp:Label>
</td>
<td>
    <asp:Label ID="LabelStreet" runat="server"></asp:Label>
</td>
</tr>


<tr>
<td>
    <asp:Label ID="Label8" runat="server" Text="Дом"></asp:Label>
</td>
<td>
    <asp:Label ID="LabelDom" runat="server"></asp:Label>
</td>
</tr>


<tr>
<td>
    <asp:Label ID="Label9" runat="server" Text="Квартира"></asp:Label>
</td>
<td>
    <asp:Label ID="LabelRoom" runat="server"></asp:Label>
</td>
</tr>


<tr>
<td>
    &nbsp;</td>
<td>
</td>
</tr>


<tr>
<td>
    &nbsp;</td>
<td>
</td>
</tr>


</table>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
    </div>
    
    <br />
    <br />
    <br />
</asp:Content>


