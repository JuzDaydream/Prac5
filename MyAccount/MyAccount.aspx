<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="Prac5.MyAccount.MyAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        The Halloween Store - My Account
        <br />
        (Only Authenticated users can access this page.)
        <br />
        <br />

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MyAccount/ChangePassword.aspx">Change Password</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="dk">Track Packages</asp:HyperLink>
        <br />
        <br />
        <asp:LoginName ID="LoginName1" runat="server" FormatString="You are logged in as: {0}" />
        <br />
        <br />
        <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" LogoutPageUrl="~/Login.aspx" />
    </form>
</body>
</html>
