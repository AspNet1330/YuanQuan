﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Web.Register" %>

<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://www.oxcoder.com:80/">--><base href=".">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 注册</title>
<link href="./猿圈 注册_files/bootstrap.min.css" rel="stylesheet">
<link href="./猿圈 注册_files/font-awesome.min.css" rel="stylesheet">
<link href="./猿圈 注册_files/bootstrap-switch.min.css" rel="stylesheet">
<link href="./猿圈 注册_files/bootstrap-select.min.css" rel="stylesheet">
<link href="./猿圈 注册_files/summernote.css" rel="stylesheet">
<link href="./猿圈 注册_files/summernote-bs3.css" rel="stylesheet">
<link href="./猿圈 注册_files/style.css" rel="stylesheet">
<link href="./猿圈 注册_files/signin.css" rel="stylesheet">
<link href="./猿圈 注册_files/style_new.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./猿圈 注册_files/bootstrapValidator.min.css">

<link rel="stylesheet" href="./猿圈 注册_files/jquery-confirm.min.css">
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

.nav-pills>li.active>a, .nav-pills>li.active>a:hover, .nav-pills>li.active>a:focus
	{
	color: #4A90E2;
	background-color: #fffff;
	border: 1px solid #4A90E2;
	border-radius: 0;
}

.nav-pills>li.active>a, .nav-pills>li.active>a:hover, .nav-pills>li.active>a:focus
	{
	color: #4A90E2;
	background-color: #fff;
	border-radius: 0;
}

.nav-line>li>a, .nav-line>li>a:hover, .nav-line>li>a:focus {
	border-bottom: 2px solid #ccc;
	color: #ccc;
	font-size: 16px;
	background-color: #fff;
}

.nav-line>li.active>a, .nav-line>li.active>a:hover, .nav-line>li.active>a:focus
	{
	border-bottom: 2px solid #4A90E2;
	font-size: 16px;
	color: #4A90E2;
	background-color: #fff;
}

.footer-log {
	margin-bottom: 20px;;
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

.col-xs-12 {
	padding-left: 0;
        top: 7px;
        left: -51px;
        margin-bottom: 0px;
    }
</style>
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body>
    <form  runat="server"  class="form-horizontal bv-form" novalidate="novalidate">
	<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"></asp:Button>
        <div class="container" style="margin-top: 100px;">
		<div class="row">
			<div class="col-md-8 col-md-push-2 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
				<section id="middle">

					<div id="content" class="signin-page">

						<div class="panel-group" id="signin-page">

							<h3 class="panel-title" style="color: #fff; font-size: 2.4em; padding: 25px 25px 10px; text-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);">
								<a href="http://www.oxcoder.com/index.html"> <img src="./猿圈 注册_files/wlogo.png">
								</a> 猿圈注册
							</h3>
							<div class="panel panel-outline panel-no-padding" style="border: none;">
								<div id="signin" class="panel-collapse collapse in">
									<div class="panel-body col-md-6">
										<ul class="nav nav-line nav-justified" runat="server" style="margin: 0 0 20px 10px;" >
											<li id="li-mobile"  class="active"><a href="#mobile" data-toggle="pill" style="">手机号码注册</a></li>
											<li id="li-email"  class=""><a href="#email" data-toggle="pill" style="">邮箱注册</a></li>
                                                               

										</ul>
										<div  style="margin-top:60px;">
                                            </div>

											<input type="hidden" id="regType" name="regType" value="2"> <input type="hidden" id="regWay" name="regWay" value="1">
											
                                                <div  id="myTabContent" class="tab-content"" >
                                                  
                                                   
												<div class="tab-pane fade in active" id="mobile">
                                              
													<div class="form-group">
														<div class="col-xs-12">
															<div class="input-group">
																<span class="input-group-addon"><i class="imoon imoon-mobile2"></i></span>
                                                                  <asp:textbox  id="loginmobile" runat="server" name="phone" class="form-control" placeholder="请输入常用手机号码" data-bv-field="phone" runat="server" OnTextChanged="loginmobile_TextChanged"/>
															</div>
															<small id="hint1" class="has-error"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="phone" data-bv-result="NOT_VALIDATED" style="display: none;">请输入手机号码</small><small class="help-block" data-bv-validator="phone" data-bv-for="phone" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的联系方式</small></small>
														</div>
													</div>
													<div class="form-group">
														<div class="col-xs-12">
															<div class="input-group">
																<span class="input-group-addon"><i class="fa fa-eye"></i></span> <asp:TextBox runat="server" type="text" id="logincapcha" name="capcha" class="form-control" placeholder="请证明你不是机器人" data-bv-field="capcha"/>
                                                                 <span class="input-group-btn"> <a href="javascript:void(0);" title="点击刷新" style="margin-right: -38px;">
                                                                     <img id="img_verify"  src="ImgVerify.aspx" width="95px" height="35px" onclick="resetVerify()"/></a>
																</span>
															</div>
															<small id="hint8" class="has-error"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="capcha" data-bv-result="NOT_VALIDATED" style="display: none;">请输入验证码</small></small>
														</div>
													</div>
													<div class="form-group">
														<div class="col-xs-12">
															<div class="input-group">
																<span class="input-group-addon"><i class="fa fa-inbox"></i></span> <asp:textbox OnTextChanged="way1_Click1" AutoPostBack="false" type="text" id="logincode" name="key" class="form-control" placeholder="请输入短信验证码" runat="server" data-bv-field="key"/> <span class="input-group-btn"> <asp:button id="btn_send_sms" class="btn btn-primary" style="margin-right: -38px;" Text="获取验证码" runat="server" OnClick="btn_send_sms_Click"/>
																</span>
															</div>
															<small id="hint3" class="has-error"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="key" data-bv-result="NOT_VALIDATED" style="display: none;">请输入短信验证码</small></small>
														</div>
													</div>
													<div class="form-group">
														<div class="col-xs-12">
															<div class="input-group">
																 <asp:textbox runat="server"  type="password" id="loginpassword" name="password_phone" class="form-control" placeholder="请输入密码"/>
															</div>
															<small id="hint4"></small>
														</div>
													</div>
                                                   <div class="form-group">
														<div class="col-xs-12">
															<div class="input-group" runat="server" id ="espertise">
                                                                <span class="input-group-addon"><i class="fa fa-envelope"><Label style="margin-left:70px">选择你喜欢的方向</Label></i></span> 
                                                                
																<asp:DropDownList AutoPostBack="false" ID="loginespertise" runat="server" OnSelectedIndexChanged="loginespertise_SelectedIndexChanged1" placeholder="请选择专长" /> 
                                                              
															</div>
															<small id="hint5"></small>
														</div>
													</div>
                                                    <div class="form-group">
														<div class="col-xs-12">
															<div class="input-group" runat="server"  id="lname">
																<span class="input-group-addon"><i class="fa fa-key"> <asp:textbox runat="server"  id="loginname"  class="form-control" placeholder="请输入姓名"/>
															    </i></span> 
															</div>
															<small id="hint6"></small>
														</div>
													</div>
												</div>
                                     
                                               
												<div class="tab-pane fade" id="email">
													<div class="form-group">
														<div class="col-xs-12">
															<div class="input-group">
																<span class="input-group-addon"><i class="fa fa-envelope"></i></span> <asp:textbox type="text" runat="server" OnTextChanged="way2_Click" id="loginemail" name="email" class="form-control" placeholder="请输入常用邮箱地址" data-bv-field="email"/>
															</div>
															<small id="hint15" class="has-error"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="email" data-bv-result="NOT_VALIDATED" style="display: none;">请输入邮箱地址</small></small>
														</div>
													</div>

													<div class="form-group">
														<div class="col-xs-12">
															<div class="input-group">
																<span class="input-group-addon"><i class="fa fa-key"></i></span> <asp:textbox runat="server" type="password" id="loginpassword1" name="password1" class="form-control" placeholder="请输入密码" data-bv-field="password"/>
															</div>
															<small id="hint61" class="has-error"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="password" data-bv-result="NOT_VALIDATED" style="display: none;">请输入密码</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="password" data-bv-result="NOT_VALIDATED" style="display: none;">密码应大于6位，小于30位</small></small>
														</div>
													</div>
                                                     <div class="form-group">
														<div class="col-xs-12">
															<div class="input-group"  runat="server" id="skill">
																<span class="input-group-addon"><i class="fa fa-key"><Label style="margin-left:70px">选择你喜欢的方向</Label></i></span> 
                                                                
																<asp:DropDownList AutoPostBack="false" id="loginskill" runat="server" OnSelectedIndexChanged="loginskill_SelectedIndexChanged" placeholder="请选择专长" />  
															</div>
															<small id="hint71"></small>
														</div>
													
                                                    	<div class="form-group">
														<div class="col-xs-12">
															<div class="input-group" runat="server" id="name1">
																<span class="input-group-addon"><i class="fa fa-key"></i></span> <asp:textbox runat="server"  id="loginname1"  class="form-control" placeholder="请输入姓名"/>
															</div>
															<small id="hint81"></small>
														</div>
													</div>
												</div>
                                                    </div>
										
                                                   </div>
                                            
											<div>
                                           
											<ul  class="nav nav-pills nav-justified" style="margin: 10px 0 20px 10px;">
												
													
													
														<li id="li-person"  class="active"><asp:Button   runat="server"  Text="我是企业" AutoPostBack="false" class="btn btn-primary btn-lg"   OnClick="Unnamed1_Click" /></li>
														<li id="li-work" ><asp:Button  runat="server" class="btn btn-primary btn-lg" AutoPostBack="false"  Text="我是开发者" OnClick="Unnamed2_Click"/></li>
													
												

											</ul>

											<div class="col-xs-12" style="margin-left: 60px;">
												<label> <input type="checkbox" id="agreement" name="check" checked="checked" data-bv-field="check"> <small>我已阅读并同意
														<a href="http://www.oxcoder.com/oxcoder_license.action" target="_blank">《oxcoder用户协议》</a>
												</small>
												</label> <small id="hint7" class="has-error"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="check" data-bv-result="NOT_VALIDATED" style="display: none;">请同意用户协议</small></small> <span class="help-block has-error" id="hint2" style=""> <small class="help-block"><s:property value="errinfo"></s:property></small>
												</span>
											</div>
											
                                    <div class="col-xs-12" style="margin-left: 60px;">
												<asp:button  runat="server"  ID="Regester" class="btn btn-primary btn-lg" style="margin-left: 20px; border-radius: 3px;" Text= "注册" OnClick="Regester_Click" />
											</div>
											<div class="col-xs-12"></div>
									
									</div>
									<!-- /.panel-body -->
									<div class="panel-body col-md-6">
										<div style="margin: 20px;">
											<p class="align-left" style="font-size: 16px; color: #666;">
												已有帐号? <a href="http://www.oxcoder.com/login.html">直接登录</a>
											</p>
											<img src="./猿圈 注册_files/01.png" width="250px;">
										</div>
									</div>
									<!-- /.panel-body -->
								</div>
								<!-- /.panel-collapse -->
							</div>
							<!-- /.panel -->
						</div>
					</div>
					<!-- /#content -->
                       </div>
				</section>
			</div>
			<!-- /.col-md-10 -->

		</div>
		<!-- /.row -->
	</form>
	<!-- /.container -->
	<!-- /.container -->
	<footer class="col-md-12 footer-log">
		<div class="text-center">
			© 2016 oxcoder.com <a href="http://www.oxcoder.com/contactus.html">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&amp;k=eeKvVb" target="_blank">QQ交流群:77590762</a>
			<a href="http://form.mikecrm.com/f.php?t=rJmyZe" target="_blank">意见反馈</a>
			<script type="text/javascript">
			    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
						: " http://");
			    document
						.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='"
								+ cnzz_protocol
								+ "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
			</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./猿圈 注册_files/pic.gif"></a></span><script src="./猿圈 注册_files/z_stat.php" type="text/javascript"></script><script src="./猿圈 注册_files/core.php" charset="utf-8" type="text/javascript"></script>
		</div>
	</footer>
	<script src="./猿圈 注册_files/jquery-1.11.0.min.js"></script>
	<script src="./猿圈 注册_files/bootstrap.min.js"></script>
	<script src="./猿圈 注册_files/bootstrap-switch.min.js"></script>
	<script src="./猿圈 注册_files/bootstrap-select.min.js"></script>
	<script src="./猿圈 注册_files/bootstrap-filestyle.js"></script>
	<script src="./猿圈 注册_files/jquery.sparkline.min.js"></script>
	<script src="./猿圈 注册_files/summernote.min.js"></script>
	<script src="./猿圈 注册_files/script.js"></script>
	<script src="./猿圈 注册_files/bootstrapValidator.min.js"></script>
	<script src="./猿圈 注册_files/bootstrapValidator_zh_CN.js"></script>
	
	<script type="text/javascript" src="./猿圈 注册_files/jquery-confirm.min.js"></script>
	<script type="text/javascript">

	    
	    $(document)
				.ready(
						function () {
						    $("#li-work").click(function () {
						        $("#regType").val(1);
						    });
						    $("#li-person").click(function () {
						        $("#regType").val(2);
						    });
						    $("#li-mobile").click(function () {
						        $("#regWay").val(1);
						    });
						    $("#li-email").click(function () {
						        $("#regWay").val(2);
						    });
						    
						    $('#defaultForm')
									.bootstrapValidator(
											{
											    message: 'This value is not valid',
											    fields: {
											        phone: {
											            container: '#hint1',
											            validators: {
											                notEmpty: {
											                    message: '请输入手机号码'
											                },
											                phone: {
											                    message: "请输入正确的联系方式",
											                    country: "CN"
											                }

											            }
											        },
											        capcha: {
											            container: '#hint8',
											            validators: {
											                notEmpty: {
											                    message: '请输入验证码'
											                }
											            }
											        },
											        key: {
											            container: '#hint3',
											            validators: {
											                notEmpty: {
											                    message: '请输入短信验证码'
											                }
											            }
											        },
											        password: {
											            container: '#hint4',
											            validators: {
											                notEmpty: {
											                    message: '请输入密码'
											                },
											                stringLength: {
											                    min: 6,
											                    max: 30,
											                    message: '密码应大于6位，小于30位'
											                }
											            }
											        },
											        email: {
											            container: '#hint5',
											            validators: {
											                notEmpty: {
											                    message: '请输入邮箱地址'
											                },
											                email: {
											                    message: '请输入正确的邮箱格式'
											                }
											            }
											        },
											        password: {
											            container: '#hint6',
											            validators: {
											                notEmpty: {
											                    message: '请输入密码'
											                },
											                stringLength: {
											                    min: 6,
											                    max: 30,
											                    message: '密码应大于6位，小于30位'
											                }
											            }
											        },
											        check: {
											            container: '#hint7',
											            validators: {
											                notEmpty: {
											                    message: '请同意用户协议'
											                }
											            }
											        }
											    }
											})
									.on(
											"success.form.bv",
											function (e) {
											    e.preventDefault();
											    var $form = $(e.target);
											    $form
														.data("bootstrapValidator");
											    var add_para = "";
											    if (window.location.href
														.split('?u=')[1] != undefined) {
											        add_para = "?u="
															+ window.location.href
																	.split('?u=')[1]
											    }
											    $
														.post(
																"register.html"
																		+ add_para,
																$form
																		.serialize(),
																function (data) {
																    if (data.su) {
																        location.href = data.hint_url;
																    } else {
																        $(
																				"#hint2")
																				.html(
																						data.msg);
																    }
																}, "json");
											});
						});
	    function sendm() {

	        var bootstrapValidator = $('#defaultForm').data(
					'bootstrapValidator');
	        bootstrapValidator.validateField('phone');
	        bootstrapValidator.validateField('capcha');
	        if (bootstrapValidator.isValidField('phone')
					&& bootstrapValidator.isValidField('capcha')) {
	            $("#btn_send_sms").addClass("disabled");
	            $.post("send_sms.html", {
	                "phone": $("#login-mobile").val(),
	                "capcha": $("#login-capcha").val()
	            }, function (res) {

	                if (!res.su) {
	                    resetVerify();
	                    if (typeof (res.time) != "undefined") {
	                        seSendDown(res.time);
	                    } else {
	                        $("#btn_send_sms").removeClass("disabled");
	                    }
	                } else {
	                    seSendDown(60);
	                }
	                $.alert({
	                    title: "提示",
	                    content: res.msg,
	                    confirmButton: "确定",
	                    confirm: function () {
	                        /* location.href = data.url; */
	                    },
	                    cancel: function () {
	                        /* location.href = data.url; */
	                    }
	                });
	            }, "json")
	            console.log("success");
	        } else {
	            console.log("wrong");
	        }

	    }
	    function resetVerify() {
	        var d = new Date();
	        var src = "ImgVerify.aspx?date=" + d.getTime();
	        $("#img_verify").attr("src", src);
	    }
	    function seSendDown(reSendSmsCountDown) {
	        $("#btn_send_sms").addClass("disabled");
	        $("#btn_send_sms").html("再次发送(" + reSendSmsCountDown + ")");
	        var interval = setInterval(function () {
	            reSendSmsCountDown--;
	            $("#btn_send_sms").html("再次发送(" + reSendSmsCountDown + ")");
	            if (reSendSmsCountDown == 0) {
	                clearInterval(interval);
	                $("#btn_send_sms").removeClass("disabled");
	                $("#btn_send_sms").html("获取验证码");
	            }
	        }, 1000);
	    }
	</script>

</body>
</html>
