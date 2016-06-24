<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectCombo.aspx.cs" Inherits="Web.SelectCombo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--<base href="http://www.oxcoder.com:80/">-->
    <base href=".">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">
    <title>猿圈 选择支付方案</title>
    <link href="./CSS/bootstrap.min.css" rel="stylesheet">
    <link href="./CSS/font-awesome.min.css" rel="stylesheet">
    <link href="./CSS/bootstrap-switch.min.css" rel="stylesheet">
    <link href="./CSS/bootstrap-select.min.css" rel="stylesheet">
    <link href="./CSS/style.css" rel="stylesheet">
    <link href="./CSS/summernote.css" rel="stylesheet">
    <link href="./CSS/summernote-bs3.css" rel="stylesheet">
    <link href="./CSS/style(1).css" rel="stylesheet" type="text/css">
    <!-- Max css -->
    <link href="./CSS/style_new.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        .pricing-grids {
            margin: 30px 0 0 0;
        }

        .pricing-grid {
            width: 25%;
            background: #fff;
            padding: 0 37px;
            border-radius: 5px;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            -o-border-radius: 5px;
            -ms-border-radius: 5px;
            text-align: center;
            float: left;
        }

            .pricing-grid:hover div.sign-up a {
                color: #fff;
                background: #8cc739;
                text-decoration: none;
                transition: 0.5s all;
                -webkit-transition: 0.5s all;
                -o-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -ms-transition: 0.5s all;
            }

            .pricing-grid:hover {
                transition: .5s all;
                -webkit-transition: .5s all;
                -moz-transition: .5s all;
                -o-transition: .5s all;
                -ms-transition: .5s all;
                background: #fff;
                transform: rotateY(360deg);
            }

        .basic-plan h3 {
            color: #000;
            margin: 0px;
            font-size: 25px;
        }

        .basic-plan p {
            padding: 15px 0;
            color: #000000;
            margin: 0px;
            font-size: 20px;
            font-weight: 400;
        }

        .pricing-grid ul {
            margin: 0px;
            padding: 0px;
        }

        .sign-up {
            margin-top: 2.5em;
        }

            .sign-up a {
                color: #fff;
                padding: 12px 30px;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -moz-border-radius: 5px;
                -o-border-radius: 5px;
                -ms-border-radius: 5px;
                background: #333333;
                font-size: 15px;
            }

        .pricing-grid ul li {
            list-style-type: none;
            color: #000000;
            padding: 12px 0;
            border-bottom: 2px solid #E0E9E9;
        }
    </style>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
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
                        <img src="./Picture/wlogo_sm.png" style="max-height: 35px; margin: 7px;">
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
                                <span class="text">北京交通大学信息安全科技公司
								
							
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
                <div class="col-md-12">
                    <section>
                        <div id="content">
                            <div class="row">
                                <div class="container-fluid">
                                    <section>
                                        <section id="middle">
                                            <h2 class="h2-tab">打赏</h2>
                                            <!-- <a href="oxcoder_corp_new_challenge.html"><button class="btn btn-new1 pull-right" style="margin-top:20px;">去充值</button></a> -->
                                            <p class="text-muted">感谢您对于猿圈的支持，作为回报您可以马上获得挑战以及猿民币数量，以及与猿圈团队保持密切接触的机会</p>
                                        </section>
                                        <div id="desc" style="color: #4A90E2">
                                            <p>名词解释：</p>
                                            <ul>
                                                <li>挑战：挑战是指根据您的职位信息选择或自动生成的一组编程题目，即挑战与您的招聘职位一一对应。</li>
                                                <li>猿民币：猿民币描述了您在使用过程中需要扣费项的价格，即当您“查看人才信息”或“邀请参加挑战”时会扣除相应的猿民币。</li>
                                            </ul>
                                        </div>
                                        <!-- /.page-header -->
                                        <div id="Div1">


                                            <div class="row">
                                                <div class="col-md-12">
                                                    <h3>套餐类型：年付</h3>
                                                    <div class="pricing-grids">

                                                        <div class="pricing-grid">
                                                            <div class="basic-plan">
                                                                <h3>钻石型套餐</h3>
                                                                <p>
                                                                    <label>电话咨询</label>
                                                                </p>
                                                            </div>
                                                            <ul>
                                                                <li>定制挑战数量</li>
                                                                <li>定制猿民币数量</li>
                                                                <li>有指定专人服务</li>
                                                                <li>提供定制服务</li>
                                                                <li>提供现场演示与培训</li>
                                                                <li>专业技术人才猎头服务</li>
                                                            </ul>
                                                            <div class="sign-up">
                                                                <span style="font-size: 20px; color: #8cc739;">电话：010-57407961</span>
                                                            </div>
                                                        </div>


                                                        <div class="pricing-grid">
                                                            <div class="basic-plan">
                                                                <h3>创新型套餐</h3>
                                                                <p>
                                                                    <label>￥</label>
                                                                    <span>3280</span>
                                                                    /年
																
                                                                </p>
                                                            </div>
                                                            <ul>
                                                                <li>50个挑战</li>
                                                                <li>100个猿民币</li>
                                                                <li id="l1_5"><span style="color: red;"><i class="fa fa-times"></i></span></li>
                                                                <li id="l2_5"><span style="color: red;"><i class="fa fa-times"></i></span></li>
                                                                <li id="l3_5"><span style="color: red;"><i class="fa fa-times"></i></span></li>
                                                                <li id="l4_5"><span style="color: red;"><i class="fa fa-times"></i></span></li>
                                                            </ul>
                                                            <div class="sign-up">
                                                                <a href="http://www.oxcoder.com/cooper/pay/invoice_info.html?payPackagesId=5">选择此方案</a>
                                                            </div>
                                                        </div>

                                                        <div class="pricing-grid">
                                                            <div class="basic-plan">
                                                                <h3>高成长型套餐</h3>
                                                                <p>
                                                                    <label>￥</label>
                                                                    <span>5800</span>
                                                                    /年
																
                                                                </p>
                                                            </div>
                                                            <ul>
                                                                <li>100个挑战</li>
                                                                <li>200个猿民币</li>
                                                                <li id="l1_6"><span style="color: red;"><i class="fa fa-times"></i></span></li>
                                                                <li id="l2_6"><span style="color: red;"><i class="fa fa-times"></i></span></li>
                                                                <li id="l3_6"><span style="color: red;"><i class="fa fa-times"></i></span></li>
                                                                <li id="l4_6"><span style="color: red;"><i class="fa fa-times"></i></span></li>
                                                            </ul>
                                                            <div class="sign-up">
                                                                <a href="http://www.oxcoder.com/cooper/pay/invoice_info.html?payPackagesId=6">选择此方案</a>
                                                            </div>
                                                        </div>

                                                        <div class="pricing-grid">
                                                            <div class="basic-plan">
                                                                <h3>旗舰型套餐</h3>
                                                                <p>
                                                                    <label>￥</label>
                                                                    <span>7999</span>
                                                                    /年
																
                                                                </p>
                                                            </div>
                                                            <ul>
                                                                <li>150个挑战</li>
                                                                <li>300个猿民币</li>
                                                                <li id="l1_7">有指定专人服务</li>
                                                                <li id="l2_7"><span style="color: red;"><i class="fa fa-times"></i></span></li>
                                                                <li id="l3_7">提供现场演示与培训</li>
                                                                <li id="l4_7">专业技术人才猎头服务</li>
                                                            </ul>
                                                            <div class="sign-up">
                                                                <a href="http://www.oxcoder.com/cooper/pay/invoice_info.html?payPackagesId=7">选择此方案</a>
                                                            </div>
                                                        </div>


                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- /.row -->
                                        </div>
                                    </section>
                                    <!-- /#content -->
                                </div>
                            </div>
                        </div>
                    </section>
                    <div class="col-md-12" style="margin-top: 80px;">
                        <h7>
				使用规则和扣费说明：
				</h7>
                        <p>关于挑战：</p>
                        <p>
                            <small class="text-muted">*若选择月付，您剩余的挑战及邀请名额会在一个自然月后自动清零</small>
                        </p>
                        <p>
                            <small class="text-muted">*若选择年付，您剩余的挑战及邀请名额会在一个自然年后自动清零</small>
                        </p>
                        <p>
                            <small class="text-muted">*当您新建一个挑战后，该挑战会在2个自然月后自动关闭，您可以在挑战管理-&gt;挑战历史中进行查看</small>
                        </p>
                        <p>关于猿民币：</p>
                        <p>
                            <small class="text-muted">*当您通过邮箱邀请人才参加挑战时，会扣除1个猿民币；</small>
                        </p>
                        <p>
                            <small class="text-muted">*当您使用邀请模块邀请推荐的人才参加挑战时，会扣除1个猿民币；</small>
                        </p>
                        <p>
                            <small class="text-muted">*当您在人才推荐模块中查看人才信息时，会扣除1个猿民币</small>
                        </p>
                        <p>
                            <small class="text-muted">*当您查看主动参加挑战的人才信息时，会扣除1个猿民币</small>
                        </p>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /#content -->
        <!-- /.row -->
        <footer id="footer"></footer>
        <script src="./JS/jquery-1.11.0.min.js"></script>
        <script src="./JS/bootstrap.min.js"></script>
        <script src="./JS/jquery.sparkline.min.js"></script>
        <script src="./JS/bootstrap-switch.min.js"></script>
        <script src="./JS/bootstrap-select.min.js"></script>
        <script src="./JS/bootstrap-filestyle.js"></script>
        <script src="./JS/summernote.min.js"></script>
        <script src="./JS/script.js"></script>

        <script>
            $(function () {
                $("#l1_7").html("有指定专人服务");
                $("#l3_7").html("提供现场演示与培训");
                $("#l4_7").html("专业技术人才猎头服务");
            })
	</script>
    </form>
</body>
</html>
