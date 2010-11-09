<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="WebApplication8.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
            oncreateduser="CreateUserWizard1_CreatedUser" 
            Height="261px" Width="243px" BackColor="#E3EAEB" BorderColor="#E6E2D8" 
            BorderStyle="Solid" BorderWidth="1px" 
            ContinueDestinationPageUrl="~/default.aspx" Font-Names="Verdana" 
            Font-Size="0.8em" oncontinuebuttonclick="CreateUserWizard1_ContinueButtonClick" 
            onnextbuttonclick="CreateUserWizard1_FinishButtonClick" 
        onfinishbuttonclick="CreateUserWizard1_FinishButtonClick1">
    <ContinueButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#1C5E55" />
    <CreateUserButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#1C5E55" />
    <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <WizardSteps>
        <asp:CreateUserWizardStep runat="server" >
            <ContentTemplate>
                <table style="font-size: 100%; height: 269px; width: 223px;">
                    <tr>
                        <td align="center" colspan="2">
                                    Зарегистрировать новую учетную запись</td>
                    </tr>
                    <tr>
                        <td align="right">
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
                            <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Защитный вопрос:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                        ControlToValidate="Question" 
                                        ErrorMessage="Защитный вопрос является обязательным." 
                                        ToolTip="Защитный вопрос является обязательным." 
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Защитный ответ:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                        ControlToValidate="Answer" ErrorMessage="Защитный ответ является обязательным." 
                                        ToolTip="Защитный ответ является обязательным." 
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
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
        <asp:WizardStep runat="server" Title="Дополнительные свединия" StepType="Step">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="LabelFirstName" runat="server" Text="(FirstName)"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelMiddleName" runat="server" Text="(MiddleName)"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMiddleName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelLastName" runat="server" Text="(LastName)"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelAge" runat="server" Text="(Age)"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelHome" runat="server" Text="(Home)"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtHome" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelSex" runat="server" Text="(Sex)"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSex" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelProfession" runat="server" Text="(Profession)"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProffesion" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </asp:WizardStep>
        <asp:CompleteWizardStep runat="server" >
            <ContentTemplate>
                <table style="font-family:Verdana;font-size:100%;height:261px;width:243px;">
                    <tr>
                        <td align="center" colspan="2" 
                                    style="color:White;background-color:#1C5E55;font-weight:bold;">
                                    Завершить</td>
                    </tr>
                    <tr>
                        <td>
                                    Ваша учетная запись создана.</td>
                    </tr>
                    <tr>
                        <td align="right" colspan="2">
                            <asp:Button ID="ContinueButton" runat="server" BackColor="White" 
                                        BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" 
                                        CausesValidation="False" CommandName="Continue" Font-Names="Verdana" 
                                        ForeColor="#1C5E55" Text="Продолжить" ValidationGroup="CreateUserWizard1" />
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:CompleteWizardStep>
    </WizardSteps>
    <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" 
                BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
                HorizontalAlign="Center" />
    <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#1C5E55" />
    <SideBarButtonStyle ForeColor="White" />
    <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
    <StepNavigationTemplate>
        <asp:Button ID="StepPreviousButton" runat="server" BackColor="White" 
                    BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" 
                    CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" 
                    ForeColor="#1C5E55" Text="Предыдущ." />
        <asp:Button ID="StepNextButton" runat="server" BackColor="White" 
                    BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" 
                    CommandName="MoveNext" Font-Names="Verdana" ForeColor="#1C5E55" 
                    Text="Следующий" />
    </StepNavigationTemplate>
    <StepStyle BorderWidth="0px" />
</asp:CreateUserWizard>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div style="text-align: right">
               <div  style="text-align: left" >
                   <br />
&nbsp;<asp:Localize ID="Localize2" runat="server"></asp:Localize>
               </div>
               
               <asp:Localize ID="Localize1" runat="server"></asp:Localize>
               
        <asp:DropDownList ID="droplang" runat="server">
            <asp:ListItem Value="ua-ua">Українська</asp:ListItem>
            <asp:ListItem Value="ru-ru">Русский</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnlang" runat="server" Text="Выбрать" />
    </div>
        </asp:Content>

