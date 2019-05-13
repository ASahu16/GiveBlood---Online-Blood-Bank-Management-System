<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logout.aspx.cs" Inherits="adminzone_logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>LogOut</title>
<script>
    function logout() {
        window.history.forward();
        window.setTimeout("window.location.href='../login.aspx';", 1);
    }
</script>
</head>
<body bgcolor="#e53935" onload="logout()">
</body>
</html>
