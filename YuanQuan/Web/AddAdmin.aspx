<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAdmin.aspx.cs" Inherits="Web.AddAdmin" %>

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
    
        <asp:Label ID="Label1" runat="server" BackColor="White" Text="输入管理员账号名称："></asp:Label>
        <br />

        <div class="input-group">
        <span class="input-group-addon">账号</span>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="请输入账号"></asp:TextBox>
        </div> 
          
        <br />
        <asp:Label ID="Label2" runat="server" BackColor="White" Text="请输入密码："></asp:Label>
        <br />

        <div class="input-group">
        <span class="input-group-addon">密码</span>
        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="输入密码" TextMode="Password"></asp:TextBox>
        </div> 
          
        <br />
        <asp:Label ID="Label3" runat="server" BackColor="White" Text="请再次输入密码："></asp:Label>
        <br />

        <div class="input-group">
        <span class="input-group-addon">确认密码</span>
        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="再次输入密码" TextMode="Password"></asp:TextBox>
        </div>  

        <br />
        <asp:Button ID="Button1" runat="server" type="submit" class="btn btn-primary btn-lg" Text="添加" Height="43px" Width="69px" OnClick="Button1_Click" />

    </form>

    </div>
</body>
</html>
