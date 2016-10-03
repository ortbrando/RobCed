<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PwCreator.aspx.cs" Inherits="PwCreator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <asp:TextBox ID="txbPassword" runat="server"></asp:TextBox>
        <asp:Button ID="bntcommit" runat="server" OnClick="bntcommit_Click" Text="Crea" />
        <asp:Label ID="lblris" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
