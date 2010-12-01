<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Default.Master" AutoEventWireup="true" CodeBehind="NewsEdit.aspx.cs" Inherits="WebApplication8.Administrator.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <div class = "title">
    <table id = "a1" style="width: 100%;">
        <tr>
            <td class="style1">
                &nbsp;
                Заголовок:</td>
            <td>
                &nbsp;
                <asp:TextBox ID="TxtHeadNews" runat="server" CausesValidation="True" 
                    ValidationGroup="1" Width="255px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TxtHeadNews" 
                    ErrorMessage="* Необходимо заполнить заголовок новости" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style1" valign="top">
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="Содержание новости"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:TextBox ID="TxtBodyNews" runat="server" Height="391px" TextMode="MultiLine" 
                    Width="574px"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style1" valign="top">
                &nbsp;
                Дата публікації :
                <asp:Label ID="LabelDate" runat="server"></asp:Label>
                <asp:CheckBox ID="CheckPosted" runat="server" Text="Опубліковано" 
                    Visible="False" />
            </td>
            <td>
                &nbsp;
                <asp:Calendar ID="Calendar1" runat="server" 
                    onselectionchanged="Calendar1_SelectionChanged" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="41px" Width="197px">
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
            <td class="style1">
                <br />
                <asp:Button ID="BtnAddNews" runat="server" onclick="BtnAddNews_Click" 
                    Text="Добавить" ValidationGroup="1" CssClass="nbutton" />
            </td>
            <td>

                <asp:Label ID="LabelMessage" runat="server" Font-Size="Large" 
                    ForeColor="#006600"></asp:Label>

            </td>
        </tr>
    </table>
    </div>
</asp:Content>

