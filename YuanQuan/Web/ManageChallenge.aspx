<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageChallenge.aspx.cs" Inherits="Web.ManageChallenge" %>
<!DOCTYPE HTML>
<!-- saved from url=(0040)http://www.oxcoder.com/cooper/index.html -->
<!DOCTYPE html PUBLIC "" ""><HTML lang="en"><HEAD><META content="IE=11.0000" 
http-equiv="X-UA-Compatible">
 
<META charset="utf-8"> 
<META http-equiv="X-UA-Compatible" content="IE=edge"> 
<META name="viewport" content="width=device-width, initial-scale=1.0"> 
<META name="description" content=""> 
<META name="author" content="BootstrapStyler"> <TITLE>企业 挑战管理</TITLE> <LINK 
href="企业%20挑战管理_files/bootstrap.min.css" rel="stylesheet"> <LINK href="企业%20挑战管理_files/font-awesome.min.css" 
rel="stylesheet"> <LINK href="企业%20挑战管理_files/bootstrap-switch.min.css" rel="stylesheet"> 
<LINK href="企业%20挑战管理_files/bootstrap-select.min.css" rel="stylesheet"> <LINK 
href="企业%20挑战管理_files/style.css" rel="stylesheet"> <LINK href="企业%20挑战管理_files/summernote.css" 
rel="stylesheet"> <LINK href="企业%20挑战管理_files/summernote-bs3.css" rel="stylesheet"> 
<LINK href="企业%20挑战管理_files/style(1).css" rel="stylesheet" type="text/css"> 
<LINK href="企业%20挑战管理_files/bootstrapValidator.min.css" rel="stylesheet"> <!-- Max css --> 
<LINK href="企业%20挑战管理_files/style_new.css" rel="stylesheet" type="text/css"> <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]--> 
<META name="GENERATOR" content="MSHTML 11.00.10586.306"></HEAD> 
<BODY>
<DIV class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
<DIV class="container">
<DIV class="navbar-header"><BUTTON class="navbar-toggle collapsed" type="button" 
data-toggle="collapse" data-target=".navbar-collapse"><SPAN 
class="icon-bar"></SPAN><SPAN class="icon-bar"></SPAN><SPAN 
class="icon-bar"></SPAN></BUTTON>			 <A class="navbar-brand hidden-sm" style="padding: 0px;" 
href="http://www.oxcoder.com/cooper/index.html"><IMG style="margin: 7px; max-height: 35px;" 
src="企业%20挑战管理_files/wlogo_sm.png">			 </A></DIV>
<DIV class="navbar-collapse collapse" role="navigation">
<UL class="nav navbar-nav">
  <LI><A 
href="http://www.oxcoder.com/cooper/oxcoder_corp_index.html">首页</A></LI>
  <LI><A 
  href="http://www.oxcoder.com/cooper/recommended/talent/index.html">人才推荐</A></LI>
  <LI class="active"><A 
  href="http://www.oxcoder.com/cooper/index.html">挑战管理</A></LI></UL>
<UL class="nav navbar-nav navbar-right">
  <LI class="dropdown"><A class="dropdown-toggle" href="javascript:;" 
  data-toggle="dropdown"><SPAN class="text">123																					 </SPAN>
  						 <B class="caret"></B>					 </A>
  <UL class="dropdown-menu">
    <LI><A 
    href="http://www.oxcoder.com/cooper/pay/view_balance.html">去打赏</A></LI>
    <LI><A 
    href="http://www.oxcoder.com/cooper/cooperInfo/view_cooper_info.html">企业信息</A></LI>
    <LI><A 
    href="http://www.oxcoder.com/cooper/cooperInfo/account_binding.html">帐号设置</A></LI>
    <LI><A 
href="http://www.oxcoder.com/security_logout">注销</A></LI></UL></LI></UL></DIV></DIV></DIV>
<DIV class="container">
<DIV class="row">
<DIV class="col-md-12"><SECTION>
<DIV id="content">
<DIV class="row">
<DIV class="col-md-9">
<DIV class="container-fluid"><SECTION><SECTION id="middle"><INPUT id="isHistory_id" type="hidden" value="false">
											 
<H2 class="h2-tab"><A href="http://www.oxcoder.com/cooper/index.html">进行中的挑战</A>
											 </H2>
<H2 class="h2-tab"><A class="off" href="http://www.oxcoder.com/cooper/index.html?isHistory=true">挑战历史</A>
											 </H2><A class="btn btn-new1 pull-right" style="margin-top: 20px;" 
href="./Invite1.aspx">
												新增挑战邀请											 </A>										 </SECTION><!-- /.page-header -->
										 
<DIV id="content">
<DIV class="row">
<DIV class="alert alert-info" role="alert">您还没有创建挑战，赶快创建挑战吧!</DIV></DIV><!-- /.row -->
											     
<UL class="pagination">
  <LI class="disabled"><A aria-label="Previous"><SPAN 
  aria-hidden="true">«</SPAN>		       </A>		     </LI>															 
  <LI class="disabled"><A aria-label="Next"><SPAN aria-hidden="true">»</SPAN>		  
       </A>		     </LI>									 
  <LI class="disabled"><A>共0条 0页</A></LI> </UL></DIV><!-- /#content -->
									 </SECTION></DIV><!-- /.container-fluid  -->							 </DIV>
<DIV class="col-md-3 profile-info" id="profile_info_div"></DIV></DIV><!-- /.row -->
					 </DIV><!-- /#content -->				 </SECTION></DIV></DIV><!-- /.row -->	 </DIV><!-- /.container -->
	 
<SCRIPT src="sys/js/libs/jquery-1.11.0.min.js"></SCRIPT>
	 
<SCRIPT src="sys/bootstrap/js/bootstrap.min.js?v=3.1.1"></SCRIPT>
	 
<SCRIPT src="sys/js/libs/jquery.sparkline.min.js"></SCRIPT>
	 
<SCRIPT src="sys/js/libs/bootstrap-switch.min.js?v=3.0.0"></SCRIPT>
	 
<SCRIPT src="sys/js/libs/bootstrap-select.min.js"></SCRIPT>
	 
<SCRIPT src="sys/js/libs/bootstrap-filestyle.js"></SCRIPT>
	 
<SCRIPT src="sys/js/libs/summernote.min.js"></SCRIPT>
	 
<SCRIPT src="sys/js/styler/script.js"></SCRIPT>
		 
<SCRIPT src="dev/devJs/pagination.js" type="text/javascript"></SCRIPT>
	 
<SCRIPT type="text/javascript">
    $(document).ready(function () {
        $("#profile_info_div").load("cooper/cooper_left_info.html");
    });
    $PageCtrl.callBackFun = recruitPageTurn;
    function recruitPageTurn(pCode) {
        location.href = "/cooper/index.html?pageCode=" + pCode + "&isHistory=" + $("#isHistory_id").val();
    }
	</SCRIPT>
	 <!-- 引入footer 必须在下边否则js出错 -->	 
<DIV class="afooter">
<DIV class="container">
<DIV class="row">
<DIV class="col-md-12">© 2016 oxcoder.com				 <A href="http://www.oxcoder.com/contactus.html">联系我们</A>
				 <A href="http://jq.qq.com/?_wv=1027&amp;k=eeKvVb" 
target="_blank">QQ交流群:77590762</A>				 <A href="http://form.mikecrm.com/f.php?t=rJmyZe" 
target="_blank">意见反馈</A>				 
<SCRIPT type="text/javascript">
    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(
            unescape(
                    "%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='"
                    + cnzz_protocol
                    + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"
            )
    );
				</SCRIPT>
			 </DIV></DIV></DIV></DIV>
<SCRIPT type="text/javascript">
    //如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位
    window.onload = function () {
        if (($(document.body).height() + 50) < $(window).height()) {
            $(".afooter").addClass("navbar-fixed-bottom");
        };
    }
</SCRIPT>
 
<SCRIPT src="http://tb.53kf.com/kf.php?arg=10124917&amp;style=1" type="text/javascript"></SCRIPT>
 </BODY></HTML>
