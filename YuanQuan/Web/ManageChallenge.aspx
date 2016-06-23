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
  data-toggle="dropdown"><SPAN class="text">																															
  									北京交通大学																					 </SPAN>						 <B class="caret"></B>
  					 </A>
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
<H2 class="h2-tab"><A class="off" href="./Filter.aspx">挑战历史</A>
											 </H2><A class="btn btn-new1 pull-right" style="margin-top: 20px;" 
href="./Invite1.aspx">
												新增挑战邀请											 </A>										 </SECTION><!-- /.page-header -->
										 
<DIV id="content">
     <form id="form1" runat="server">
<asp:Repeater ID="ChallengesRepeater" runat="server"  OnItemDataBound="ChallengesRepeater_ItemDataBound">
    <ItemTemplate>
<DIV class="row">
<DIV class="col-md-12">
<DIV class="panel panel-default project ">
<DIV class="panel-body">
<DIV class="row"><!-- new start-->																	 
<DIV class="col-md-5">
<H2 style="margin: 12px 0px 2px;"><A href="./Filter.aspx">[<%# Eval("cha_level").ToString().Substring(0,2)%>]<%# Eval("cha_type")%>工程师</A>
																		 </H2>
<DIV style="width: 280px; overflow: hidden; white-space: nowrap; -ms-text-overflow: ellipsis;"><SMALL 
class="text-muted">[<%# Eval("cha_date").ToString().Substring(0,9)%>]																																								
    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("cha_id")%>' style="display:none"></asp:TextBox>
    <asp:Repeater runat="server" EnableViewState="false" ID="ProblemReapter">
        <ItemTemplate>
            <%# Eval("p_title") %>
        </ItemTemplate>
    </asp:Repeater>
    																																						</SMALL>
																		 </DIV><!-- <p class="text-muted" style="padding: 0;margin: 0;">2015/01/12</p> -->
																	 </DIV>
<DIV class="col-md-2">
<UL class="list-unstyled" style="margin: 7px 0px;">
  <LI><SPAN class="badge badge-info">19</SPAN>																				 个新接受
  																			 </LI>
  <LI><SPAN class="badge badge-danger">0</SPAN>																				 个新完成
  																			 </LI></UL></DIV>
<DIV class="col-md-2">
<UL class="list-unstyled" style="margin: 20px 0px;">
  <LI><SPAN class="red">0.0</SPAN>																				%已合格
  																			 </LI></UL></DIV>
<DIV class="col-md-3"><A class="btn btn-new1" href="Filter.aspx?id=<%#Eval("cha_id")%>">
																			去筛选																		 </A>																		
																			 <A class="btn btn-new1" style="margin: 16px 5px;" href="./Invite3.aspx?id=<%#Eval("cha_id")%>">
																				邀请																			 </A>																		
																	 </DIV><!-- new end-->																 </DIV><!-- /.row -->
															 </DIV><!-- /.panel-footer -->														 </DIV><!-- /.panel -->
													 </DIV></DIV>
    </ItemTemplate>
</asp:Repeater>
         </form>
<!-- /.row -->											     
<UL class="pagination">
  <LI class="disabled"><A aria-label="Previous"><SPAN 
  aria-hidden="true">«</SPAN>		       </A>		     </LI>																 
  <LI class="active"><A>1</A></LI>																	 
  <LI class="disabled"><A aria-label="Next"><SPAN aria-hidden="true">»</SPAN>		  
       </A>		     </LI>									 
  <LI class="disabled"><A>共1条 1页</A></LI> </UL></DIV><!-- /#content -->
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
