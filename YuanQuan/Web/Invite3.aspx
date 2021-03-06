﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invite3.aspx.cs" Inherits="Web.Invite3" %>
<!DOCTYPE html>
<!-- saved from url=(0073)http://www.oxcoder.com/cooper/invite/user/invite_user.html?recruitId=3135 -->
<html lang="en"><head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--<base href="http://www.oxcoder.com:80/">-->
    <base href=".">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">
    <title>猿圈 新建挑战邀请</title>
    <link href="./猿圈 新建挑战邀请3_files/bootstrap.min.css" rel="stylesheet">
    <link href="./猿圈 新建挑战邀请3_files/font-awesome.min.css" rel="stylesheet">
    <link href="./猿圈 新建挑战邀请3_files/bootstrap-switch.min.css" rel="stylesheet">
    <link href="./猿圈 新建挑战邀请3_files/bootstrap-select.min.css" rel="stylesheet">
    <link href="./猿圈 新建挑战邀请3_files/style.css" rel="stylesheet">
    <link href="./猿圈 新建挑战邀请3_files/summernote.css" rel="stylesheet">
    <link href="./猿圈 新建挑战邀请3_files/summernote-bs3.css" rel="stylesheet">
    <link href="./猿圈 新建挑战邀请3_files/style(1).css" rel="stylesheet" type="text/css">
    <link href="./猿圈 新建挑战邀请3_files/fileinput.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./猿圈 新建挑战邀请3_files/jquery-confirm.min.css">
    <!-- Max css -->
    <link href="./猿圈 新建挑战邀请3_files/style_new.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="./猿圈 新建挑战邀请3_files/bootstrapValidator.min.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .mcButton {
            margin-top: 15px;
        }

        .ex-totop2 {
            display: none;
            overflow: hidden;
            width: 0px;
            height: 0px;
            border: 50px solid #30d2cc;
            border-color: #30d2cc #fff;
            border-width: 0 10px 10px 10px;
            position: relative;
            left: 48px;
            top: 0;
        }

        .footer-log {
            margin-bottom: 20px;
            ;
            color: #4A90E2;
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
    <style type="text/css">
        .jqstooltip {
            position: absolute;
            left: 0px;
            top: 0px;
            visibility: hidden;
            background: rgb(0, 0, 0) transparent;
            background-color: rgba(0,0,0,0.6);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
            -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
            color: white;
            font: 10px arial, san serif;
            text-align: left;
            white-space: nowrap;
            padding: 5px;
            border: 1px solid white;
            z-index: 10000;
        }

        .jqsfield {
            color: white;
            font: 10px arial, san serif;
            text-align: left;
        }
    </style>
</head>
<body>
	
	
<SCRIPT type="text/javascript">
    window.onload = function () {
        document.getElementById("mailContext").innerHTML = '<%=getMailContext("邮箱")%>';
        }
</SCRIPT>






    <form id="form1" runat="server">
	
	







<div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="http://www.oxcoder.com/cooper/index.html" style="padding: 0;">
				<img src="./猿圈 新建挑战邀请3_files/wlogo_sm.png" style="max-height: 35px;margin:7px;">
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="">
					<a href="http://www.oxcoder.com/cooper/oxcoder_corp_index.html">首页</a>
				</li>
				<li class="">
					<a href="http://www.oxcoder.com/cooper/recommended/talent/index.html">人才推荐</a>
				</li>
				<li class="active">
					<a href="./ManageChallenge.aspx">挑战管理</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<span class="text" id="enterprise">	
                            	<asp:Label ID="EnterpriseName" runat="server" Text="Label"></asp:Label>					
						</span>
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="http://www.oxcoder.com/cooper/pay/view_balance.html">去打赏</a>
						</li>
						<li>
							<a href="http://www.oxcoder.com/cooper/cooperInfo/view_cooper_info.html">企业信息</a>
						</li>
						<li>
							<a href="http://www.oxcoder.com/cooper/cooperInfo/account_binding.html">帐号设置</a>
						</li>
						<li>
							<a href="http://www.oxcoder.com/security_logout">注销</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>

	   

	<div class="container">
		<div class="row">
			<div class="col-md-9">
                <div class="h2-tab" name="enterName" id="enterName"  style="font-size:25px">
<asp:Label ID="ChallengeName" runat="server" Text="Label"></asp:Label>
                </div>
				<p class="text-muted">您可以邀请其他渠道获取的人才到猿圈，通过挑战来识别他们的能力。</p>
				<p style="color:#4A90E2">猿圈小提示：每邀请一位人才将会扣除1个猿民币。</p>
				<button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
					<input id="recruit_id" name="recruitId" value="3135" type="hidden">
					<div class="form-group" id="one" style="display: block;">
						<label>
							<span class="grey">输入邮箱地址(剩余猿民币：<span id="su_resume_span_view_id">10</span>)</span>
						</label>
                       <asp:TextBox  name="user_emails" ID="TextBox1" runat="server" class="form-control" placeholder="多个邮件地址请用&#39;,&#39;分隔" data-bv-field="user_emails"></asp:TextBox>
						
					</div>
					<span class="help-block has-error" id="hint_user_emails"><small class="help-block" data-bv-validator="emailAddress" data-bv-for="user_emails" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的邮箱格式</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="user_emails" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的邮箱格式，多个邮件地址请用','分隔</small></span>
					
					
					
          
					<div>
						<div class="alert alert-success alert-dismissible" style="display: none;" role="alert" id="msg_tip">
							<strong>提示:</strong>
							<span id="msg_tip_span"></span>
						</div>
					</div>
					
					<!-- 
					<div id="tuijian_div">
						
					</div>
					 -->
					<div class="form-group">
						<div class="col-md-12 col-no-left-padding">
							<label>
								<span class="grey">邮件主题</span>
							</label>
						</div>
                        <asp:TextBox ID="email_subject_id" name="email_subject" class="form-control" data-bv-field="email_subject" readonly="" type="text" runat="server"></asp:TextBox>
						<!-- <span class="text-danger" id="error1" style="display:none;">请输入公司简称</span> -->
						<span class="help-block has-error" id="hint_email_subject"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="email_subject" data-bv-result="NOT_VALIDATED" style="display: none;">请输入邮件主题</small></span>
					</div>
					<div class="form-group">
						<label>
							<span class="grey">邮件内容</span>
						</label>
						<textarea readonly="" id="mailContext" name="email_content" rows="9" class="form-control" data-bv-field="email_content">
                            </textarea>
						<span class="help-block has-error" id="hint_email_content"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="email_content" data-bv-result="NOT_VALIDATED" style="display: none;">请输入邮件内容</small></span>
					</div>
					<div>
						<input id="user_emails_type" name="user_emails_type" type="hidden" value="other">
					</div>
					<div class="form-group form-actions pull-right">
                         <asp:Button ID="Button1" runat="server" Text="邀请" class="btn btn-new1" OnClick="Button1_Click"/>
						<a href="./ManageChallenge.aspx" class="btn btn-default" style="margin-left:10px;">返回</a>
					</div>
			</div>
			<div class="col-md-3 profile-info" id="profile_info_div">




</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<footer id="footer"></footer>
	<script src="./猿圈 新建挑战邀请3_files/jquery-1.11.0.min.js"></script>
	<script src="./猿圈 新建挑战邀请3_files/bootstrap.min.js"></script>
	<script src="./猿圈 新建挑战邀请3_files/jquery.sparkline.min.js"></script>
	<script src="./猿圈 新建挑战邀请3_files/bootstrap-switch.min.js"></script>
	<script src="./猿圈 新建挑战邀请3_files/bootstrap-select.min.js"></script>
	<script src="./猿圈 新建挑战邀请3_files/bootstrap-filestyle.js"></script>
	<script src="./猿圈 新建挑战邀请3_files/summernote.min.js"></script>
	<script src="./猿圈 新建挑战邀请3_files/bootstrapValidator.min.js"></script>
	<script src="./猿圈 新建挑战邀请3_files/bootstrapValidator_zh_CN.js"></script>
	
	<script type="text/javascript" src="./猿圈 新建挑战邀请3_files/jquery.form.js"></script>
	
	<script type="text/javascript" src="./猿圈 新建挑战邀请3_files/jquery-confirm.min.js"></script>
	
	<script src="./猿圈 新建挑战邀请3_files/fileinput.min.js"></script>
	<script src="./猿圈 新建挑战邀请3_files/fileinput_locale_zh.js"></script>
	
	<script src="./猿圈 新建挑战邀请3_files/zmUtil.js"></script>
	<script type="text/javascript">
	    function change1(val) {
	        $("#one").hide();
	        $("#two").show();
	        $("#corp-pic").fileinput({
	            showUpload: false,
	            showRemove: false,
	            browseLabel: "选择文件",
	            allowedFileExtensions: ["xls", "xlsx"],
	            showPreview: false
	        });
	    }


	    function change1_new(file_type) {
	        if (file_type == 'zhilian') {
	            $("#51job").css("display", "none");
	            $("#other").css("display", "none");
	            $("#zhilian").css("display", "block");
	        } else if (file_type == '51job') {
	            $("#51job").css("display", "block");
	            $("#other").css("display", "none");
	            $("#zhilian").css("display", "none");
	        } else {
	            $("#51job").css("display", "none");
	            $("#other").css("display", "block");
	            $("#zhilian").css("display", "none");
	        }
	        $("#one").hide();
	        $("#two").show();
	        $("#corp-pic").fileinput({
	            showUpload: false,
	            showRemove: false,
	            browseLabel: "选择文件",
	            allowedFileExtensions: ["xls", "xlsx"],
	            showPreview: false
	        });

	        $("#user_emails_type").val(file_type);
	    }

	    function change2() {
	        $("#two").hide();
	        $("#one").show();
	        $("#51job").css("display", "none");
	        $("#other").css("display", "none");
	        $("#zhilian").css("display", "none");
	    }
	    // 刷新推荐用户
	    function refInviteUser() {
	        $("#tuijian_div").load("cooper/invite/user/refresh_invite_user.html?recruitId=" + 3135 + "&isRefresh=true");
	    }
	    // 邀请推荐的用户
	    function invite_user_re_btn(obj) {
	        $.ajax({
	            type: "post",
	            url: "cooper/invite/user/invite_user_recommend.html",
	            data: { "userId": obj, "recruitId": $("#recruit_id").val(), "email_subject": $("#email_subject_id").val() },
	            success: function (data) {
	                data = eval('(' + data + ')');
	                if (data.su) {
	                    $("#msg_tip_span").html(data.msg);
	                    $("#msg_tip").removeClass().addClass("alert alert-success alert-dismissible");
	                    $("#msg_tip").slideDown(function () {
	                        setTimeout(function () {
	                            $("#msg_tip").slideUp(300);
	                        }, 1000);
	                    });
	                    $("#tuijian_" + obj).remove();
	                    $("#su_resume_span_view_id").html($Util.subtr($("#su_resume_span_view_id").html(), 1, 0));
	                } else {
	                    $("#msg_tip_span").html(data.msg);
	                    $("#msg_tip").removeClass().addClass("alert alert-danger alert-dismissible");
	                    $("#msg_tip").slideDown(function () {
	                        setTimeout(function () {
	                            $("#msg_tip").slideUp(300);
	                        }, 2000);
	                    });
	                }
	            },
	            error: function (request) {
	                $("#hint1").html(data.msg);
	                $("#hint1").show();
	            }
	        });
	    }
	    $(document).ready(function () {
	        $("#profile_info_div").load("cooper/cooper_left_info.html");
	        //$("#tuijian_div").load("cooper/invite/user/refresh_invite_user.html?recruitId=" + 3135);
	        $("#invite_user_form").bootstrapValidator({
	            message: "This value is not valid",
	            fields: {
	                user_emails: {
	                    container: "#hint_user_emails",
	                    validators: {
	                        emailAddress: {
	                            multiple: true,
	                            separator: /[,]/,
	                            message: "请输入正确的邮箱格式"
	                        },
	                        notEmpty: {
	                            message: "请输入正确的邮箱格式，多个邮件地址请用','分隔"
	                        }
	                    }
	                },
	                emailFile: {
	                    container: "#hint_emailFile",
	                    validators: {
	                        notEmpty: {
	                            message: "请上传邮箱文件"
	                        }
	                    }
	                },
	                email_subject: {
	                    container: "#hint_email_subject",
	                    validators: {
	                        notEmpty: {
	                            message: "请输入邮件主题"
	                        }
	                    }
	                },
	                email_content: {
	                    container: "#hint_email_content",
	                    validators: {
	                        notEmpty: {
	                            message: "请输入邮件内容"
	                        }
	                    }
	                },
	            }
	        }).on("success.form.bv", function (e) {
	            e.preventDefault();
	            var $form = $(e.target);
	            $form.data("bootstrapValidator");
	            $("#invite_user_form").ajaxSubmit({
	                type: "post",
	                url: "cooper/invite/user/sub_invite_user.html",
	                success: function (data) {
	                    data = eval("(" + data + ")");
	                    if (data.su) {
	                        $.alert({
	                            title: "提示",
	                            content: data.msg,
	                            confirmButton: "确定",
	                            confirm: function () {
	                                location.href = data.url;
	                            },
	                            cancel: function () {
	                                location.href = data.url;
	                            }
	                        });
	                    } else {
	                        var html = "<small class='help-block' data-bv-validator='notEmpty' data-bv-for='cooper_licence' data-bv-result='INVALID'>" +
							data.msg
							+ "</small>";
	                        $("#hint_" + data.view_error).html(html);
	                        return false;
	                    }
	                }
	            });
	        });
	    });
	    var isIE = /msie/i.test(navigator.userAgent) && !window.opera;
	    function fileChange(target, id) {
	        var fileSize = 0;
	        var filetypes = [".xls", ".xlsx"];
	        var filepath = target.value;
	        var filemaxsize = 1024 * 2;//2M
	        if (filepath) {
	            var isnext = false;
	            var fileend = filepath.substring(filepath.indexOf("."));
	            if (filetypes && filetypes.length > 0) {
	                for (var i = 0; i < filetypes.length; i++) {
	                    if (filetypes[i] == fileend) {
	                        isnext = true;
	                        break;
	                    }
	                }
	            }
	            if (!isnext) {
	                alert("只能上传.xls及.xlsx文件！");
	                target.value = "";
	                return false;
	            }
	        } else {
	            return false;
	        }
	        if (isIE && !target.files) {
	            var filePath = target.value;
	            var fileSystem = new ActiveXObject("Scripting.FileSystemObject");
	            if (!fileSystem.FileExists(filePath)) {
	                alert("附件不存在，请重新输入！");
	                return false;
	            }
	            var file = fileSystem.GetFile(filePath);
	            fileSize = file.Size;
	        } else {
	            fileSize = target.files[0].size;
	        }

	        var size = fileSize / 1024;
	        if (size > filemaxsize) {
	            alert("附件大小不能大于" + filemaxsize / 1024 + "M！");
	            target.value = "";
	            return false;
	        }
	        if (size <= 0) {
	            alert("附件大小不能为0M！");
	            target.value = "";
	            return false;
	        }
	    }

	</script>


    </form>


</body></html>
