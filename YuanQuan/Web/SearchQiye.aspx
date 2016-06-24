<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchQiye.aspx.cs" Inherits="Web.SearchQiye" %>

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
    
        <asp:Label ID="Label1" runat="server" BackColor="White" Text="输入要查询的企业账号："></asp:Label>
        <br />
        <br />

        <div class="input-group input-group-lg">
        <span class="input-group-addon">账号</span>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="输入账号"></asp:TextBox>
        </div>   
         
        <br />
        
        <asp:Button ID="Button1" runat="server" type="submit" class="btn btn-primary btn-lg" Text="查询" Height="43px" Width="69px" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="Button2" runat="server" Text="查询全部" class="btn btn-primary btn-lg" Height="43px" Width="143px" OnClick="Button2_Click"/>
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
   
        <br />
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5" 
              Visible="False" BackColor="#DDDDDD" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="1" 
              GridLines="None" style="line-height:25px; width:90%;">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:yuanquanConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:yuanquanConnectionString.ProviderName %>"
            SelectCommand="SELECT e_id as ID,e_account as 账号,e_chanum as 剩余挑战,e_currency as 猿民币,
                           e_name as 公司名称 FROM enterprise"></asp:SqlDataSource>
   
    </form>
    </div>
</body>
</html>
