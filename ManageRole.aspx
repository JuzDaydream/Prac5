<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageRole.aspx.cs" Inherits="Prac5.Maintenance.ManageRole" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Role
            <asp:TextBox ID="txtRole" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnCreateRole" runat="server" OnClick="btnCreateRole_Click" Text="Create Role" />
            <br />
            <br />
            Role List:<br />
            <asp:ListBox ID="lstRoles" runat="server"></asp:ListBox>
            <br />
            <br />
            User List:<br />
            <asp:ListBox ID="lstUsers" runat="server"></asp:ListBox>
            <br />
            <asp:Button ID="btnAssignRole" runat="server" OnClick="btnAssignRole_Click" Text="Assign Role" />
            <br />
            <br />
            <asp:Button ID="btnGetUser" runat="server" Text="Get User" />
            <br />
            <br />
            Role-User List<br />
            <asp:ListBox ID="listRoleUser" runat="server"></asp:ListBox>
        </div>
    </form>
</body>
</html>
