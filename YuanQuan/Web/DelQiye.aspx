<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DelQiye.aspx.cs" Inherits="Web.DelQiye" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link href="./猿圈 登录_files/bootstrap.min.css" rel="stylesheet"/>
<link href="./猿圈 登录_files/style_new.css" rel="stylesheet" type="text/css"/>
<script src="./猿圈 登录_files/jquery.min.js"></script>
<script src="./猿圈 登录_files/bootstrap.min.js"></script>
</head>
<body>
    <div style="padding: 50px 100px 10px;">
    <form id="form1" runat="server">

        <br />
        <asp:Label ID="Label1" runat="server" BackColor="White" Text="输入要删除的企业ID："></asp:Label>
        <br />
        <br />
        <div class="input-group input-group-lg">
        <span class="input-group-addon">ID</span>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="输入id"></asp:TextBox>
        </div>  
        <br />
        <asp:Button ID="Button1" runat="server" type="submit" class="btn btn-primary btn-lg" Text="删除" Height="43px" Width="69px" OnClick="Button1_Click" />
    
   
    </form>

    </div>
</body>
</html>
