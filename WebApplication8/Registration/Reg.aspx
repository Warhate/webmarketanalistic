<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="WebApplication8.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<div class ="item">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
            oncreateduser="CreateUserWizard1_CreatedUser" 
            Height="261px" Width="243px" oncontinuebuttonclick="CreateUserWizard1_ContinueButtonClick" 
            onnextbuttonclick="CreateUserWizard1_FinishButtonClick" 
        onfinishbuttonclick="CreateUserWizard1_FinishButtonClick" oncreatinguser="CreateUserWizard1_CreatingUser" 
        onload="CreateUserWizard1_Load" onunload="CreateUserWizard1_Unload" 
        FinishDestinationPageUrl="~/Profile/ProfEdit.aspx">
    <WizardSteps>
        <asp:CreateUserWizardStep runat="server" >
            <ContentTemplate>
            <center>
                <table width = "400px"  style="font-size: 100%;" >
                    <tr>
                        <td align="center" colspan="2"><b>
                                    Зарегистрировать новую учетную запись</b></td>
                    </tr>
                    <tr>
                        <td align="right" >
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Имя пользователя:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                        ControlToValidate="UserName" 
                                        ErrorMessage="Поле &quot;Имя пользователя&quot; является обязательным." 
                                        ToolTip="Поле &quot;Имя пользователя&quot; является обязательным." 
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Пароль:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                        ControlToValidate="Password" 
                                        ErrorMessage="Поле &quot;Пароль&quot; является обязательным." 
                                        ToolTip="Поле &quot;Пароль&quot; является обязательным." 
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                        AssociatedControlID="ConfirmPassword">Подтвердите пароль:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                        ControlToValidate="ConfirmPassword" 
                                        ErrorMessage="Поле &quot;Подтвердите пароль&quot; является обязательным." 
                                        ToolTip="Поле &quot;Подтвердите пароль&quot; является обязательным." 
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">Электронная почта:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                        ControlToValidate="Email" 
                                        ErrorMessage="Поле &quot;Электронная почта&quot; является обязательным." 
                                        ToolTip="Поле &quot;Электронная почта&quot; является обязательным." 
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                        ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                        Display="Dynamic" 
                                        ErrorMessage="Значения &quot;Пароль&quot; и &quot;Подтвердите пароль&quot; должны совпадать." 
                                        ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" style="color: Red;">
                            <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:CreateUserWizardStep>
        <asp:CompleteWizardStep runat="server" >
            <ContentTemplate>
                <table style="font-family:Verdana;font-size:100%;height:261px;width:243px;">
                    <tr>
                        <td align="center" 
                                    style="color:White;background-color:#1C5E55;font-weight:bold;">
                                    Завершить</td>
                    </tr>
                    <tr>
                        <td>
                                    Ваша учетная запись создана.<br /> </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Button ID="ContinueButton" runat="server" BackColor="White" 
                                        BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" 
                                        CausesValidation="False" CommandName="Continue" Font-Names="Verdana" 
                                        ForeColor="#1C5E55" Text="Продолжить" 
                                ValidationGroup="CreateUserWizard1" PostBackUrl="~/Profile/ProfEdit.aspx" />
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:CompleteWizardStep>
    </WizardSteps>
    <StepNavigationTemplate>
        <asp:Button ID="StepPreviousButton" runat="server" BackColor="White" 
                    BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" 
                    CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" 
                    ForeColor="#1C5E55" Text="Предыдущ." />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Завершить!"
            Width="89px" />
    </StepNavigationTemplate>
</asp:CreateUserWizard>
</center>
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>


