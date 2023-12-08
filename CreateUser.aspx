<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="Prac5.CreateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="1px" ContinueDestinationPageUrl="~/Login.aspx" Font-Names="Verdana" Font-Size="0.8em">
                <ContinueButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
                <CreateUserButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
                <TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <WizardSteps>
                    <asp:CreateUserWizardStep runat="server">
                        <CustomNavigationTemplate>
                            <table border="0" cellspacing="5" style="width:100%;height:100%;">
                                <tr align="right">
                                    <td align="right" colspan="0">
                                        <asp:Button ID="StepNextButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" ForeColor="#284E98" Text="Create User" ValidationGroup="CreateUserWizard1" />
                                    </td>
                                </tr>
                            </table>
                        </CustomNavigationTemplate>
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep runat="server" />
                </WizardSteps>
                <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
                <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
                <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
                <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
                <StepStyle Font-Size="0.8em" />
            </asp:CreateUserWizard>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Go Back to Menu</asp:HyperLink>
        </div>
    </form>
</body>
</html>
