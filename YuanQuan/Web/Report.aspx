<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Web.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://www.oxcoder.com:80/">--><base href=".">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 挑战报告</title>
<link href="./CSS/bootstrap.min.css" rel="stylesheet">
<link href="./CSS/font-awesome.min.css" rel="stylesheet">
<link href="./CSS/bootstrap-switch.min.css" rel="stylesheet">
<link href="./CSS/bootstrap-select.min.css" rel="stylesheet">
<link href="./CSS/style.css" rel="stylesheet">
<link href="./CSS/summernote.css" rel="stylesheet">
<link href="./CSS/summernote-bs3.css" rel="stylesheet">
<link href="./CSS/style(1).css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="./CSS/jquery-confirm.min.css">
<!-- Max css -->
<link href="./CSS/style_new.css" rel="stylesheet" type="text/css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->

<style type="text/css">
    a:after{
        content: none;
    }
    .center {
        text-align: center;
    }
    .img-responsive {
        display: initial;
    }
    .btn-clear {
        background-color: #000;
        background-color:rgba(0,0,0,0);
        border-color: #fff;
        color: #fff;
        margin: 0 10px;
    }
    .btn-clear:hover {
        background-color: #fff;
        color: #4A90E2;
    }
    .btn-clear.star:hover{
        background-color: #fff;
        color: yellow;
    }
    .btn-clear.star.on{
        background-color: #fff;
        color: yellow;
    }
    .modal-new .modal-content{
        border-color: #4A90E2;
    }
    .modal-new .modal-header{
        background-color: #4A90E2;
        color: #fff;
    }
</style>
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    <div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="http://www.oxcoder.com/cooper/index.html" style="padding: 0;">
				<img src="./Picture/wlogo_sm.png" style="max-height: 35px;margin:7px;">
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
				<li class="">
					<a href="http://www.oxcoder.com/cooper/index.html">挑战管理</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<span class="text">
							
								
								
								
									北京交通大学信息安全科技公司
								
							
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
			<!--startprint-->
			<div class="col-md-12" id="print">
				<section id="middle">
					<h3>
						挑战报告
						
						
						
					</h3>
					<form id="export_pdf_resume_form">
					<!--
					<button class="btn btn-new1 hidden-print" style="float:right;" onclick="window.print()">
						<i class="fa fa-print"></i>
						打印报告
					</button>
					-->
					<small>
						<a href="javascript:history.go(-1);">
							<i class="imoon imoon-arrow-left2"></i>
							返回
						</a>
					</small>
					<div class="panel panel-default resume-block">
						<div class="panel-body">
							<h3>
								<i class="fa fa-trophy"></i>
								挑战结果:
								
									
									
										<span class="label label-primary">合格</span>
									
									
									
								
								&nbsp;&nbsp;
								
									
									
										
										挑战得分：76.67
									
								
								&nbsp;&nbsp;&nbsp;
								技术类型：
								
								Java
							</h3>
							<h3></h3>
							<p>
							</p><h4>
								
								<span style="margin-left:20px;">挑战次数：1</span>
								
								<span style="margin-left:20px;">代码规范评分(百分制)：50.69</span>
								 
									
									<span style="margin-left:20px;">最后挑战时间：3天前 </span>
								 	
								
							</h4>
							<table class="table table-hover">
								<thead>
									<tr>
										<th>项目</th>
										<th>难度</th>
										<th>耗时</th>
										<th>评测结果</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									
										
										
											
												<tr>
													<td>计算不重复字符的位置</td>
													<td>
														
															<i class="fa fa-star"></i>
														
															<i class="fa fa-star"></i>
														
															<i class="fa fa-star"></i>
														
													</td>
													<td>
														2分27秒
													</td>
													<td>
														<span class="label label-warning">82.49</span>
													</td>
													<td>
														<a href="http://www.oxcoder.com/cooper/view/code/view_code.html?userRecruitId=129039&amp;challengeId=37" class="label label-success">
															查看源码
														</a>
													</td>
												</tr>
											
												<tr>
													<td>运算法则</td>
													<td>
														
															<i class="fa fa-star"></i>
														
															<i class="fa fa-star"></i>
														
															<i class="fa fa-star"></i>
														
													</td>
													<td>
														2分48秒
													</td>
													<td>
														<span class="label label-warning">92.33</span>
													</td>
													<td>
														<a href="http://www.oxcoder.com/cooper/view/code/view_code.html?userRecruitId=129039&amp;challengeId=24" class="label label-success">
															查看源码
														</a>
													</td>
												</tr>
											
												<tr>
													<td>递归运算阶乘</td>
													<td>
														
															<i class="fa fa-star"></i>
														
															<i class="fa fa-star"></i>
														
															<i class="fa fa-star"></i>
														
													</td>
													<td>
														1分36秒
													</td>
													<td>
														<span class="label label-warning">37.97</span>
													</td>
													<td>
														<a href="http://www.oxcoder.com/cooper/view/code/view_code.html?userRecruitId=129039&amp;challengeId=12" class="label label-success">
															查看源码
														</a>
													</td>
												</tr>
											
												<tr>
													<td>工厂模式</td>
													<td>
														
															<i class="fa fa-star"></i>
														
															<i class="fa fa-star"></i>
														
															<i class="fa fa-star"></i>
														
															<i class="fa fa-star"></i>
														
													</td>
													<td>
														2分27秒
													</td>
													<td>
														<span class="label label-warning">93.91</span>
													</td>
													<td>
														<a href="http://www.oxcoder.com/cooper/view/code/view_code.html?userRecruitId=129039&amp;challengeId=107" class="label label-success">
															查看源码
														</a>
													</td>
												</tr>
											
										
									
								</tbody>
							</table>
						</div>
					</div>
					<div class="panel panel-default resume-block" id="info">
						<div class="panel-body">
							<h3>
								<i class="fa fa-file"></i>
								用户联系方式及简历
							</h3>


									<p>
										
										<span class="resume-label">性别: 男 </span>
										
										
										<span class="resume-label">年龄: 25 </span>
										
										
											<span class="resume-label">期望工作地点: 北京市 </span>
										
									</p>
									<p>
										
											
												
												
													<span class="resume-label">手机: 1504014****</span>
												
											
										

										
											
												
												
													<span class="resume-label" id="user_email">邮箱: ****ng120@qq.com</span>
												
											
										
									</p>

										
											
											
												<span class="help-block small">详细简历及联系方式在查看联系方式后可见</span>
											
										


									
									

							
								
								
									<!--
									<a class="btn btn-new1" id="view_user_info_btn" onclick="viewUserInfo('141492','1','5')">点击查看</a>
									<div id="view_user_info_div"></div>
									 -->
								
							
						</div>
					</div>
					<div class="panel panel-default resume-block">
						<div class="panel-body">
							<h3>
								<i class="fa fa-puzzle-piece"></i>
								已掌握的知识点技能
							</h3>
							
								
								
									<ul>
										
											<li class="btn btn-alt btn-primary" style="margin-right:15px;">java</li>
										
											<li class="btn btn-alt btn-primary" style="margin-right:15px;">字符位置</li>
										
											<li class="btn btn-alt btn-primary" style="margin-right:15px;">java</li>
										
											<li class="btn btn-alt btn-primary" style="margin-right:15px;">运算法则</li>
										
											<li class="btn btn-alt btn-primary" style="margin-right:15px;">java</li>
										
											<li class="btn btn-alt btn-primary" style="margin-right:15px;">工厂模式</li>
										
									</ul>
								
							
						</div>
					</div>
					<div id="view_user_statistics_div">




<style>
	.box {
	    padding:10px;
	    border: solid 1px #ddd;
	}
</style>

<div class="panel panel-default resume-block">
	<div>
		<!-- <h4>Level 1 菜鸟</h4> -->
		<input type="hidden" value="24.81" id="avg_code_quality">
		<input type="hidden" value="22.24" id="avg_code_style">
		<input type="hidden" value="25.44" id="avg_code_accuracy">
		<input type="hidden" value="50.32" id="avg_code_speed">
		<input type="hidden" value="58.92" id="qualityAll">
		<input type="hidden" value="52.43" id="styleAll">
		<input type="hidden" value="59.41" id="accuracyAll">
		<input type="hidden" value="72.78" id="speedAll">
	</div>
	<div class="panel-body">
		<div>
			<!-- <h3><i class="fa fa-money"></i> 我的身价</h3> -->
			<h3>
				<i class="fa fa-code"></i>
				编程综合表现
			</h3>
			<dl class="dl-horizontal">
				<!-- 									<dt>数据分析图</dt> -->
				<dd>
					<canvas id="myChart" width="400" height="400" style="width: 400px; height: 400px;"></canvas>
                    
                    <script type="text/javascript">

                        var canvas = document.getElementById('myChart');
                        var ctx = canvas.getContext('2d');
                        ctx.fillStyle = '#FF0000';
                        ctx.fillRect(0, 0, 80, 100);

                    </script>

					<span class="help-block small">红色的点是使用猿圈用户的平均值，蓝色的是用户的数值。</span>
				</dd>
				<!-- <dd class="text-muted">灰色的点是使用猿圈用户的平均值，蓝色的是用户的数值</dd> -->
			</dl>
			<dl class="dl-horizontal">
				<dt>准确性</dt>
				<dd>
					<span class="pull-center label label-primary">4.78</span>
					<span style="margin-left: 10px" class="label label-primary">战胜了25.44%的人</span>
					<span class="help-block small">本指标反映该用户在编程中的准确度以及熟练度</span>
				</dd>
			</dl>
			<dl class="dl-horizontal">
				<dt>代码质量</dt>
				<dd>
					<span class="pull-middle label label-info">4.74</span>
					<span style="margin-left: 10px" class="label label-info">战胜了24.81%的人</span>
					<span class="help-block small">本指标反映该用户的代码的质量高低</span>
				</dd>
			</dl>
			<dl class="dl-horizontal">
				<dt>编程规范</dt>
				<dd>
					<span class="pull-middle label label-primary">4.56</span>
					<span style="margin-left: 10px" class="label label-primary">战胜了22.24%的人</span>
					<span class="help-block small">本指标反映该用户的代码编程规范的评分</span>
				</dd>
			</dl>
			<dl class="dl-horizontal">
				<dt>编程速度</dt>
				<dd>
					<span class="pull-middle label label-warning">6.52</span>
					<span style="margin-left: 10px" class="label label-warning">战胜了50.32%的人</span>
					<span class="help-block small">本指标反映该用户在编程中的编程速度</span>

				</dd>
			</dl>
			
		</div>
	</div>
</div>
	
		<div class="panel panel-default resume-block">
			<div class="panel-body" style="margin-top:20px;">
				<div>
					<h3>
		                <i class="fa fa-lightbulb-o"></i>
		            	 编程技能树
		            </h3>
					<dl class="dl-horizontal" style="margin-top:40px;">
						<dt>编程技能分布</dt>
						<dd>
							
							
								掌握 Java
							
						</dd>
					</dl>
					
						
							<div class="col-md-4 col-sm-6 align-center col-no-left-padding">
								<div class="box">
									<h3 class="text-primary">
										
										Java
									</h3>
									<span class="text-info">身价:8140</span>
									<p>
										<canvas id="myChart_13632" width="240" height="240" style="width: 240px; height: 240px;"></canvas>
										<span class="help-block small">红色的点是使用猿圈用户的平均值，蓝色的是用户的数值。</span>
									</p>
								</div>
							</div>
						
					
				</div>
			</div>
		</div>
	

<script src="./JS/zmUtil.js"></script>
<!-- Chart.js  -->
<script src="./JS/chart.min.js"></script>
<script src="./JS/canvas2image.js"></script>
<script src="./JS/jquery.base64.js"></script>
<script>
    var jsonMap = {};

    jsonMap['13632'] = [
  {
      "avg": 3.5,
      "name": "基本语法",
      "value": 3.5088408408326477
  },
  {
      "avg": 3.045,
      "name": "文件操作",
      "value": 3.0526915315244034
  },
  {
      "avg": 2.73,
      "name": "算法逻辑",
      "value": 2.736895855849465
  }
    ];

</script>

<script type="text/javascript" src="./JS/user_center.js"></script>
</div>
				</form>
				</section>
			</div>
		</div>
		<!-- /.row -->
	</div>

	<div class="resume-footer navbar-fixed-bottom hidden-print" style="background-color:#000;background-color:rgba(0,0,0,0.5);">
    <div class="container">
        <div class="row">
            <div class="col-md-12" style="padding:10px 0;">
                <div style="display:inline-block;float:left;">

						
						
						
								<button class="btn btn-clear" onclick="export_pdf(&#39;141492&#39;,&#39;1&#39;)">
									<!-- onclick="window.print()"> -->
									<i class="fa fa-download"></i>下载报告
								</button>
							
						
						<button class="btn btn-clear" data-toggle="modal" data-target="#resend"><i class="fa fa-mail-forward"></i>转发报告</button>
                </div>
                <div style="float:right;display:inline-block;">
                     <!-- <button class="btn btn-clear star"><i class="fa fa-star"></i></button> -->
                     <!--
                     <button class="btn btn-clear" data-toggle="modal" data-target="#reject">不合适</button>
                      -->


                     
						 
	                     
	                     	<button class="btn btn-primary" data-toggle="modal" data-target="#contact">联系他</button>
	                     
                     
                </div>
            </div>
        </div>
    </div>
</div>
<%--==========================================================================================================
==========================================================================================================
==========================================================================================================--%>
<div class="modal fade modal-new" id="resend" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="myModalLabel">转发报告</h4>
      </div>
      <div class="modal-body">
        <form action="http://www.oxcoder.com/#" id="resendform" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered bv-form" onsubmit="return false;" novalidate="novalidate"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
            <div class="form-group">
                <label class="col-md-3 control-label">收件人</label>
                <div class="col-md-9">
                    <input type="email" id="email_list" name="remail" class="form-control" placeholder="最多可添加两个邮箱，用“,“隔开" data-bv-field="remail">
                    <span class="help-block has-error" id="firstNameMessage">
                <small class="help-block" data-bv-validator="emailAddress" data-bv-for="remail" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的邮件格式</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="remail" data-bv-result="NOT_VALIDATED" style="display: none;">请输入邮件</small></span></div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">邮件主题</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" value="【报告来自猿圈】" disabled="disabled">

                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">邮件内容</label>
                <div class="col-md-9">
                    <textarea class="form-control" disabled="disabled" rows="3">以下是应聘者的报告。我已查阅，请您评估一下。 若觉合适，我们将安排面试，谢谢！</textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" onclick="send_forward(129039)">转发</button>
            </div>
          </form></div>
        
    </div>
  </div>
</div>
<div class="modal fade modal-new" id="reject" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="H1">确认简历不合适</h4>
      </div>
      <div class="modal-body">
        <p>确认这份简历不合适吗？
确认后，系统将自动发送不合适通知邮件至用户邮箱</p>
        <form action="http://www.oxcoder.com/#" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered" onsubmit="return false;">
            <div class="form-group">
                <label class="col-md-3 control-label">邮件主题</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" value="简历反馈" disabled="disabled">

                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">邮件内容</label>
                <div class="col-md-9">
                    <textarea class="form-control" disabled="disabled" rows="3">非常荣幸收到你的简历，招聘方经过评估，认为你与该职位的条件不太匹配，无法进入面试阶段。

相信更好的机会一定还在翘首期盼着你，赶快调整心态，做好充足的准备重新出发吧！</textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" onclick="send_not_accept(129039)">发送</button>
            </div>
          </form></div>
        
    </div>
  </div>
</div>
<div class="modal fade modal-new" id="success" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="H2">转发报告</h4>
      </div>
      <div class="modal-body" style="text-align:center;">
          报告转发成功！
          <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
      </div>

    </div>
  </div>
</div>
<div class="modal fade modal-new" id="contact" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="H3">联系他</h4>
      </div>
      <div class="modal-body" style="text-align:center;">
          查看联系方式及简历将扣除1个猿民币
          <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
              <button type="button" class="btn btn-primary" onclick="viewUserInfo(&#39;141492&#39;,&#39;1&#39;,&#39;5&#39;)">确定查看</button>
          </div>
      </div>

    </div>
  </div>
</div>
<div class="modal fade modal-new" id="interview" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="H4">发送面试通知</h4>
      </div>
      <div class="modal-body">
        <form action="http://www.oxcoder.com/#" id="sendinterview" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered bv-form" onsubmit="return false;" novalidate="novalidate"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
            
	            <div class="form-group">
	                <label class="col-md-12 control-label" style="text-align:center;color:red">请先获取用户联系方式，如已获取，请刷新</label>
	            </div>
            
            <div class="form-group">
                <label class="col-md-3 control-label">邮件主题</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" value="面试通知" disabled="disabled">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">面试时间</label>
                <div class="col-md-9">
                    <input id="time" name="time" type="text" class="form-control" data-bv-field="time">
                    <small id="ihint1" class="has-error"><small class="help-block" data-bv-validator="stringLength" data-bv-for="time" data-bv-result="NOT_VALIDATED" style="display: none;">最多可输入20个字符</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="time" data-bv-result="NOT_VALIDATED" style="display: none;">请输入面试时间</small></small>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">面试地点</label>
                <div class="col-md-9">
                    <input id="company_address" name="company_address" type="text" class="form-control" data-bv-field="company_address">
                    <small id="ihint2" class="has-error"><small class="help-block" data-bv-validator="stringLength" data-bv-for="company_address" data-bv-result="NOT_VALIDATED" style="display: none;">最多可输入40个字符</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="company_address" data-bv-result="NOT_VALIDATED" style="display: none;">请输入面试地点</small></small>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">联系人</label>
                <div class="col-md-9">
                    <input id="hr_name" name="hr_name" type="text" class="form-control" data-bv-field="hr_name">
                    <small id="ihint3" class="has-error"><small class="help-block" data-bv-validator="stringLength" data-bv-for="hr_name" data-bv-result="NOT_VALIDATED" style="display: none;">最多可输入5个字符</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="hr_name" data-bv-result="NOT_VALIDATED" style="display: none;">请输入联系人</small></small>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">联系电话</label>
                <div class="col-md-9">
                    <input id="hr_phone" name="hr_phone" type="text" class="form-control" data-bv-field="hr_phone">
                    <small id="ihint4" class="has-error"><small class="help-block" data-bv-validator="stringLength" data-bv-for="hr_phone" data-bv-result="NOT_VALIDATED" style="display: none;">最多可输入20个字符</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="hr_phone" data-bv-result="NOT_VALIDATED" style="display: none;">请输入手机号码或固话</small></small>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">邮件内容</label>
                <div class="col-md-9">
                    <textarea class="form-control" disabled="disabled" rows="3">您好:恭喜您通过了我们的简历筛选，请您于xxxx-xx-xx xx:xx至我司面试，公司地址：xxxx；联系人：xxx；联系方式：xxxxxxx，谢谢！</textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button disabled="disabled" type="button" class="btn btn-primary" onclick="send_interview_email(129039)">发送</button>
            </div>
          </form></div>
        
    </div>
  </div>
</div>


	<!-- /.container -->
	<script src="./JS/jquery-1.11.0.min.js"></script>
	<script src="./JS/bootstrap.min.js"></script>
	<script src="./JS/jquery.sparkline.min.js"></script>
	<script src="./JS/bootstrap-switch.min.js"></script>
	<script src="./JS/bootstrap-select.min.js"></script>
	<script src="./JS/bootstrap-filestyle.js"></script>
	<script src="./JS/summernote.min.js"></script>
	<script src="./JS/script.js"></script>
	<script src="./JS/bootstrapValidator.min.js"></script>
	
	<script type="text/javascript" src="./JS/jquery-confirm.min.js"></script>
	<script type="text/javascript">

	    function send_not_accept(g_id) {
	        if (g_id != -1) {
	            $.ajax({
	                cache: false,
	                type: "post",
	                url: "cooper/ajax_send_not_accept_email.html",
	                data: {
	                    "user_recruit_id": g_id,
	                    "cooper_name": "北京交通大学信息安全科技公司"
	                },
	                success: function (data) {
	                    var result = eval("(" + data + ")");
	                    var result_obj = eval("(" + result + ")");
	                    if (result_obj["result"] == true && result_obj["statusCode"] == 200) {
	                        alert("发送成功");
	                        $('#reject').modal('hide');
	                        location.reload();
	                    }
	                    else {
	                        alert("发送失败," + result_obj["message"])
	                    }
	                },
	                error: function (request) {
	                    alert("发送失败")
	                }
	            });
	        }
	    }

	    function send_interview_email(g_id) {
	        var time = $("#time").val();
	        var company_address = $("#company_address").val();
	        var hr_name = $("#hr_name").val();
	        var hr_phone = $("#hr_phone").val();
	        var bootstrapValidator = $('#sendinterview').data('bootstrapValidator');
	        bootstrapValidator.validate();
	        if (bootstrapValidator.isValid()) {
	            if (g_id != -1) {
	                $.ajax({
	                    cache: false,
	                    type: "post",
	                    url: "cooper/ajax_send_interview_email.html",
	                    data: {
	                        "user_recruit_id": g_id,
	                        "time": time,
	                        "company_address": company_address,
	                        "hr_name": hr_name,
	                        "hr_phone": hr_phone,
	                        "cooper_name": "北京交通大学信息安全科技公司"
	                    },
	                    success: function (data) {
	                        var result = eval("(" + data + ")");
	                        var result_obj = eval("(" + result + ")");
	                        if (result_obj["result"] == true && result_obj["statusCode"] == 200) {
	                            alert("发送成功")
	                            $('#interview').modal('hide');
	                            location.reload();
	                        }
	                        else {
	                            alert("发送失败," + result_obj["message"])
	                        }
	                    },
	                    error: function (request) {
	                        alert("发送失败")
	                    }
	                });
	            }
	        }
	    }

	    function send_forward(g_id) {
	        var user_list = $("#email_list").val();
	        var user_email_list = user_list.split(",");
	        if (user_email_list.length > 2) {
	            alert("邮箱不能超过两个");
	            return false;
	        }

	        // for(var i = 0; i<user_email_list.length; i++ ){
	        // 	var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	        // 	if(!reg.test(user_email_list[i])) {
	        // 	    alert("请输入有效的邮箱地址！");
	        // 	    return false;
	        // 	}
	        // }
	        var bootstrapValidator = $('#resendform').data('bootstrapValidator');
	        bootstrapValidator.validateField('remail');
	        if (bootstrapValidator.isValidField('remail')) {
	            if (g_id != -1) {
	                $.ajax({
	                    cache: false,
	                    type: "post",
	                    url: "cooper/ajax_send_forward_email.html",
	                    data: {
	                        "user_recruit_id": g_id,
	                        "user_email": user_list,
	                        "source": 1,
	                        "cooper_name": "北京交通大学信息安全科技公司"
	                    },
	                    success: function (data) {
	                        var result = eval("(" + data + ")");
	                        var result_obj = eval("(" + result + ")");
	                        if (result_obj["result"] == true && result_obj["statusCode"] == 200) {
	                            alert("发送成功");
	                            $('#resend').modal('hide');

	                        }
	                        else {
	                            if (result_obj["message"] == "total email number is over 2") {
	                                alert("发送失败,同一用户转发邮件数目不得超过2!")
	                            } else {
	                                alert("发送失败," + result_obj["message"])
	                            }
	                        }
	                    },
	                    error: function (request) {
	                        alert("发送失败")
	                    }
	                });
	            }
	        }
	    }

	    $(document).ready(function () {
	        $("#view_user_statistics_div").load("cooper/user/statistics/view_user_statistics.html?userId=141492");
	    });
	    function viewUserInfo(obj1, obj2, match) {
	        $.ajax({
	            type: "post",
	            url: "cooper/recommended/talent/view_user_info_detail.html",
	            data: { "userId": obj1, "direction": obj2, "match": match },
	            success: function (data) {
	                data = eval('(' + data + ')');
	                if (data.su) {
	                    location.reload();
	                    /* var url = data.url + "#user_email";
				    	location.href = url; */
	                    $("#view_user_info_btn").remove();
	                    $("#view_user_info_div").append(data.html);

	                } else {
	                    location.reload();
	                    /* 						$.alert({
                                                    title: "网络错误!",
                                                    content: data.msg,
                                                    confirm: function(){
                                                        location.reload();
                                                    }
                                                }); */
	                }
	            },
	            error: function (request) {
	            }
	        });
	    }

	    $(document).ready(function () {
	        $('#resendform').bootstrapValidator({
	            message: 'This value is not valid',
	            fields: {
	                remail: {
	                    container: '#firstNameMessage',
	                    validators: {
	                        emailAddress: {
	                            message: '请输入正确的邮件格式',
	                            multiple: 'true'
	                        },
	                        notEmpty: {
	                            message: '请输入邮件'
	                        }
	                    }
	                }
	            }
	        });
	    });
	    $(document).ready(function () {
	        $('#sendinterview').bootstrapValidator({
	            message: 'This value is not valid',
	            fields: {
	                time: {
	                    container: '#ihint1',
	                    validators: {
	                        stringLength: {
	                            max: 20,
	                            message: '最多可输入20个字符'
	                        },
	                        notEmpty: {
	                            message: '请输入面试时间'
	                        }
	                    }
	                },
	                company_address: {
	                    container: '#ihint2',
	                    validators: {
	                        stringLength: {
	                            max: 40,
	                            message: '最多可输入40个字符'
	                        },
	                        notEmpty: {
	                            message: '请输入面试地点'
	                        }
	                    }
	                },
	                hr_name: {
	                    container: '#ihint3',
	                    validators: {
	                        stringLength: {
	                            max: 5,
	                            message: '最多可输入5个字符'
	                        },
	                        notEmpty: {
	                            message: '请输入联系人'
	                        }
	                    }
	                },
	                hr_phone: {
	                    container: '#ihint4',
	                    validators: {
	                        stringLength: {
	                            max: 20,
	                            message: '最多可输入20个字符'
	                        },
	                        notEmpty: {
	                            message: '请输入手机号码或固话'
	                        }
	                    }
	                },
	            }
	        });
	    });


	    function export_pdf(userId, direction) {
	        //alert("进来了");
	        // Sending the image data to Server


	        var mycanvas = document.getElementById("myChart");
	        // Generate the image data
	        var Pic = mycanvas.toDataURL();

	        var num = jsonMap;
	        for (var p in num) {
	            //initRadar(p, num[p]);
	            Pic += document.getElementById("myChart_" + p).toDataURL();
	        }

	        // Sending the image data to Server
	        $.ajax({
	            type: "post",
	            async: true,
	            url: "cooper/recommended/talent/saveChart.html",
	            data: { "imageData": Pic, "userId": userId },
	            success: function (message) {

	                if (message != "fail") {
	                    //alert("图片保存成功");

	                    //var winRef = window.open("", "_blank");//打开一个新的页面
	                    var wbdcnf = {
	                        base: "",
	                        staticUrl: "",
	                        /* staticUrl: "http://localhost:8080/Training2.1/", */
	                        /* 				    		staticUrl: "http://www.oxcoder.com/", */
	                        locale: "zh_CN"
	                    };
	                    function loc() {
	                        //console.log("not fail");
	                        /* alert(); */
	                        winRef.location = wbdcnf.staticUrl + "cooper/recommended/talent/export_recruit_pdf.html?userId=" + userId + "&direction=" + direction + "&length=" + message;
	                        console.log(wbdcnf.staticUrl + wbdcnf.base);
	                        /* setTimeout(function(){winRef.close()},10); */
	                    }
	                    setTimeout(loc(), 800);//这个等待很重要，如果不等待的话将无法实现
	                }

	            }
	        });


	    }

	    function export_pdf_fail() {
	        alert("很抱歉，该用户尚未完成挑战，暂时无法下载报告");
	    }
	</script>

    </div>
    </form>
</body>
</html>
