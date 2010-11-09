<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Default.Master" AutoEventWireup="true" CodeBehind="NewsEdit.aspx.cs" Inherits="WebApplication8.Administrator.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table style="width: 100%;">
        <tr>
            <td>
                &nbsp;
                Заголовок:</td>
            <td>
                &nbsp;
                <asp:TextBox ID="TxtHeadNews" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:TextBox ID="TxtBodyNews" runat="server" Height="88px" TextMode="MultiLine" 
                    Width="898px"></asp:TextBox>
            </td>
            <td>
                &nbsp;
                <asp:CheckBox ID="CheckPosted" runat="server" Text="Опубліковано" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
                Дата публікації :
                <asp:Label ID="LabelDate" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:Calendar ID="Calendar1" runat="server" 
                    onselectionchanged="Calendar1_SelectionChanged" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="200px" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnAddNews" runat="server" onclick="BtnAddNews_Click" 
                    Text="Добавить" PostBackUrl="~/Administrator/OkEdit.aspx" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

