<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="Web.MainMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta name="description" content=""/>
<meta name="author" content="BootstrapStyler"/>
    <title></title>
<link href="./猿圈 登录_files/bootstrap.min.css" rel="stylesheet"/>
<script src="./猿圈 登录_files/jquery.min.js"></script>
<script src="./猿圈 登录_files/bootstrap.min.js"></script>
<style type="text/css">
body {
	background-color: #fff;
}
a:link {
    color: #000; 
    text-decoration:none;
}
a:hover {
    color: #FF0000; 
    text-decoration:underline;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br />
    <ul class="nav nav-pills nav-stacked">
    <li class="active"><a>查询</a></li>
    <li><a href="SearchPerson.aspx" target="iframeRight">查询个人账号</a></li>
    <li><a href="SearchQiye.aspx" target="iframeRight">查询企业账号</a></li>
    <li><a href="SearchAdmin.aspx" target="iframeRight">查询管理员账号</a></li>
    </ul>
    </div>
    <div>
    <br />
    <ul class="nav nav-pills nav-stacked">
    <li class="active"><a>删除</a></li>
    <li><a href="DelPerson.aspx" target="iframeRight">删除个人账号</a></li>
    <li><a href="DelQiye.aspx" target="iframeRight">删除企业账号</a></li>
    <li><a href="DelAdmin.aspx" target="iframeRight">删除管理员账号</a></li>
    </ul>
    </div>
    <div>
    <br />
    <ul class="nav nav-pills nav-stacked">
    <li class="active"><a>添加</a></li>
    <li><a href="AddAdmin.aspx" target="iframeRight">添加管理员账号</a></li>
    </ul>
    </div>
    </form>
</body>
</html>
