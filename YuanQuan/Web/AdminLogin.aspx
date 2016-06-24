<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Web.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta name="description" content=""/>
<meta name="author" content="BootstrapStyler"/>
<title>猿圈 管理员登录</title>
<link href="./猿圈 登录_files/bootstrap.min.css" rel="stylesheet"/>
<link href="./猿圈 登录_files/font-awesome.min.css" rel="stylesheet"/>
<link href="./猿圈 登录_files/bootstrap-switch.min.css" rel="stylesheet"/>
<link href="./猿圈 登录_files/bootstrap-select.min.css" rel="stylesheet"/>
<link href="./猿圈 登录_files/summernote.css" rel="stylesheet"/>
<link href="./猿圈 登录_files/summernote-bs3.css" rel="stylesheet"/>
<link href="./猿圈 登录_files/style.css" rel="stylesheet"/>
<link href="./猿圈 登录_files/signin.css" rel="stylesheet"/>
<link href="./猿圈 登录_files/style_new.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="./猿圈 登录_files/bootstrapValidator.min.css"/>
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<style type="text/css">
body {
	background-color: #4A90E2;
}

.panel-title img {
	max-height: 70px;
}

.footer-log {
	margin-bottom: 20px;
	text-align: center;
	color: #fff;
}

.footer-log a {
	color: #fff;
	padding-left: 10px;
	margin-left: 10px;
	border-left: 1.5px solid #fff;
}

.footer-log a:visited {
	color: #fff;
}
</style>
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body>
    <div class="container" style="margin-top: 160px;">
		<div class="row">
			<div class="col-md-8 col-md-push-2 col-xs-12 col-sm-12">
				<section id="middle">
					<div id="content" class="signin-page">
						<div class="panel-group" id="signin-page">
							<h3 class="panel-title" style="color: #fff;font-size: 2.4em;padding: 25px 25px 10px;text-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);">
								<a href="AdminLogin.aspx">
									<img src="./猿圈 登录_files/wlogo.png"/>
								</a>
								猿圈管理员登录
							</h3>
							<div class="panel panel-outline panel-no-padding" style="border: none;">
								<div id="signin" class="panel-collapse collapse in">
                                    <div class="panel-body col-md-6">
										<form method="post" runat="server" id="defaultForm" class="form-horizontal bv-form" novalidate="novalidate">
										<button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;">
										</button>
											<div class="form-group">
												<div class="col-xs-12">
													<div class="input-group">
														<span class="input-group-addon">
															<i class="fa fa-envelope"></i>
														</span>
														<asp:TextBox id="loginemail" runat="server" name="j_username" value="" type="text" class="form-control" placeholder="请输入用户名" data-bv-field="j_username" BorderColor="#6666FF"/>
													</div>
													<span class="help-block has-error" id="hint1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="Label1" runat="server" CssClass="red"></asp:Label>
                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="j_username" data-bv-result="NOT_VALIDATED" style="display: none;">请在此输入用户名</small><small class="help-block" data-bv-validator="regexp" data-bv-for="j_username" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的手机号或邮箱地址</small></span>
												</div>
											</div>
											<div class="form-group">
												<div class="col-xs-12">
													<div class="input-group">
														<span class="input-group-addon">
															<i class="fa fa-key"></i>
														</span>
														<asp:TextBox TextMode="password" id="loginpassword" runat="server" name="j_password" value="" class="form-control" placeholder="请输入密码" data-bv-field="j_password" BorderColor="#3366FF"/>
													</div>
													<span class="help-block has-error" id="hint3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="Label2" runat="server" CssClass="red"></asp:Label>
                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="j_password" data-bv-result="NOT_VALIDATED" style="display: none;">请在此输入密码</small></span>
											   </div>
											</div>
											<div class="col-xs-12">

								
												<span style="float: right;">
													<a href="AdminLogin.aspx">
														忘记密码？
													</a>
												</span>
												<span class="help-block has-error" id="hint2">
													<small class="help-block">
														
													</small>
												</span>
											</div>
											<div class="col-xs-12">
												
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												
                                                <asp:Button type="submit" ID="Button1" runat="server" OnClick="loginbtn_Click" Text="登录" class="btn btn-primary btn-lg" style="margin-left: 20px; border-radius: 3px;"/>
											</div>
											<div class="col-xs-12"></div>
										</form>
									</div>
                                    <!-- /.panel-body -->
									<div class="panel-body col-md-6">
										<div style="margin: 20px;">
											<p class="align-left" style="font-size: 16px; color: #666;">
												管理员登录
												<a></a>
											</p>
											<img src="./猿圈 登录_files/01.png" width="250" class="hidden-xs"/>
										</div>
									</div>
									<!-- /.panel-body -->
								</div>
								<!-- /.panel-collapse -->
							</div>
							<!-- /.panel -->
						</div>
						<!-- /#content -->
					</div>
				</section>
			</div>
			<!-- /.col-md-10 -->
		</div>
		<!-- /.row -->
	</div>
    	<footer class="col-md-12 footer-log">
		<div class="text-center">
			© 2016 oxcoder.com
			<a href="AdminLogin.aspx">联系我们</a>
			<a href="AdminLogin.aspx" target="_blank">QQ交流群:494509574</a>
			<a href="AdminLogin.aspx" target="_blank">意见反馈</a>
			<script type="text/javascript">
			    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
						: " http://");
			    document
						.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='"
								+ cnzz_protocol
								+ "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
			</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./猿圈 登录_files/pic.gif"></a></span><script src="./猿圈 登录_files/z_stat.php" type="text/javascript"></script><script src="./猿圈 登录_files/core.php" charset="utf-8" type="text/javascript"></script>
		</div>
	</footer>
	<script src="./猿圈 登录_files/jquery-1.11.0.min.js"></script>
	<script src="./猿圈 登录_files/bootstrap.min.js"></script>
	<script src="./猿圈 登录_files/bootstrap-switch.min.js"></script>
	<script src="./猿圈 登录_files/bootstrap-select.min.js"></script>
	<script src="./猿圈 登录_files/bootstrap-filestyle.js"></script>
	<script src="./猿圈 登录_files/jquery.sparkline.min.js"></script>
	<script src="./猿圈 登录_files/summernote.min.js"></script>
	<script src="./猿圈 登录_files/script.js"></script>
	<script src="./猿圈 登录_files/bootstrapValidator.min.js"></script>
	<script src="./猿圈 登录_files/bootstrapValidator_zh_CN.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#defaultForm").bootstrapValidator({
                message: "This value is not valid",
                fields: {
                    j_username: {
                        container: "#hint1",
                        validators: {
                            notEmpty: {
                                message: "请输入用户名"
                            }
                        }
                    },
                    j_password: {
                        container: "#hint3",
                        validators: {
                            notEmpty: {
                                message: "请输入密码"
                            }
                        }
                    }
                }
            });
        });
	</script>
    <script type="text/javascript">
    	    //如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位
    	    if (($(document.body).height() + 50) < $(window).height()) {
    	        $(".afooter").addClass("navbar-fixed-bottom");
    	    };
	</script>
    <script type="text/javascript">
        function iFrameHeight() {
            var ifm = document.getElementById("iframepage");
            var subWeb = document.frames ? document.frames["iframepage"].document : ifm.contentDocument;
            if (ifm != null && subWeb != null) {
                ifm.height = subWeb.body.scrollHeight;
            }
        }
    </script> 
</body>
</html>
