<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchAdmin.aspx.cs" Inherits="Web.SearchAdmin" %>

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
    
        <asp:Label ID="Label1" runat="server" BackColor="White" Text="输入要查询的管理员账号："></asp:Label>
        <br />
        <br />

        <div class="input-group input-group-lg">
        <span class="input-group-addon">账号</span>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="输入账号"></asp:TextBox>
        </div>   
        <br />

        <asp:Button ID="Button1" runat="server" type="submit" class="btn btn-primary btn-lg" Text="查询" Height="43px" Width="69px" OnClick="Button1_Click" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="Button2" runat="server" Text="查询全部" class="btn btn-primary btn-lg" Height="43px" OnClick="Button2_Click" Width="143px"/>

        <br />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>

        <br />
        <asp:Label ID="Label4" runat="server"></asp:Label>

        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:yuanquanConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:yuanquanConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM admin">
        </asp:SqlDataSource>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" PageSize="5"
               BackColor="#DDDDDD" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="1" 
              GridLines="None" style="line-height:25px; width:60%;" Visible="False">
        </asp:GridView>

  </form>
  </div>
    
</body>
</html>
