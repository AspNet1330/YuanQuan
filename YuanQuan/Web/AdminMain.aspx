<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMain.aspx.cs" Inherits="Web.AdminMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <iframe runat="server" src="MainTitle.aspx" id="iframeTitle" name="iframeTop" style="width:100%" height="80" frameborder="no" scrolling="no"></iframe>
    </div>
    <div>   
    <iframe runat="server" src="MainMenu.aspx" id="iframeMenu" name="iframeLeft" style="width:22%;" height="580" frameborder="no" scrolling="no"></iframe>
    <iframe runat="server" src="MainContent.aspx" id="iframeContent" name="iframeRight" float="right" style="width:77%" height="580" frameborder="no" scrolling="no"></iframe>
    </div>
    </form>
</body>
</html>
