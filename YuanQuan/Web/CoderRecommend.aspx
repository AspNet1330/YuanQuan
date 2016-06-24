<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoderRecommend.aspx.cs" Inherits="Web.CoderRecommend" %>
<%--<%@ Import Namespace="System.Data"%>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script id="hz6d_send_acc" src="./Other/sendacc.jsp" charset="utf-8"></script>
    <script id="stat_script" src="./Other/stat.php" charset="utf-8"></script>
    <script id="ivt_script" src="./Other/kf_ivt_new.php" charset="utf-8"></script>
    <!--<base href="http://www.oxcoder.com:80/">-->
    <base href=".">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">
    <title>猿圈 人才推荐</title>
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
        <div id="div_company_mini" style="display: none; position: fixed; right: 0px; bottom: 0px; width: 403px; height: 378px; overflow: hidden; z-index: 10089; cursor: move;">
            <div id="hz6d_cname_mini_div" style="font-size: 16px; overflow: hidden; position: absolute; top: 7px; left: 10px; width: 330px; height: 20px; color: #fff; text-indent: 30px; background: url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -79px 0 no-repeat; font-weight: bold; font-family: Arial;">猿圈</div>
            <div title="缩小" mini_narrow="缩小" mini_recover="还原" max_min="max" style="position: absolute; top: 10px; right: 46px; width: 12px; height: 12px; background: url(http://www15.53kf.com/style/chat/minichat2/img/min.png?11) no-repeat; cursor: pointer;" onclick="max_min_company_mini(this);"></div>
            <div title="切换到正常窗口" style="position: absolute; top: 10px; right: 28px; width: 12px; height: 12px; background: url(http://www15.53kf.com/style/chat/minichat2/img/maxto.gif) no-repeat; cursor: pointer;" onclick="max_from_company_mini(this);"></div>
            <div title="关闭" style="position: absolute; top: 10px; right: 10px; width: 12px; height: 12px; background: url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -18px 0 no-repeat; cursor: pointer;" onclick="close_company_mini();"></div>
            <div id="mini_header_bg_div" style="position: static; width: 403px; height: 35px; background: url(http://www15.53kf.com/style/chat/minichat2/img/header_bg_1.png?111) no-repeat;"></div>
            <div id="iframe_company_mini_div" style="width: 100%; height: 100%;">
                <iframe id="iframe_company_mini" frameborder="0" width="100%" height="100%"></iframe>
            </div>
        </div>
        <div id="kfivtwin" style="display: none; overflow: visible;">
            <div id="acc_title" class="Lelem" minheight="100" minwidth="100" maxheight="400" maxwidth="400" style="position: relative; z-index: 10000; overflow: visible;">
                <div class="Lelem" type="img" style="display: block; cursor: default; position: absolute; top: 51px; left: 3px; z-index: 10001; width: 394px; height: 196px;">
                    <img style="width: 394px; height: 196px;" src="./Picture/commonbg_4.png">
                </div>
                <div style="display: block; cursor: default; position: absolute; top: 60px; left: 15px; z-index: 10002; width: 97px; height: 20px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 14px; line-height: 20px; font-family: 宋体;" iseditable="1">53KF在线客服</span></div>
                <div style="display: block; cursor: pointer; position: absolute; top: 70px; left: 371px; z-index: 10003; width: 10px; height: 8px;" onclick="onliner_zdfq=3;hidden_ivt();;" type="img" class="Lelem">
                    <img src="./Picture/closebtn_3.png" style="width: 10px; height: 8px;">
                </div>
                <div style="display: block; cursor: default; position: absolute; top: 97px; left: 13px; z-index: 10004; width: 127px; height: 120px;" type="img" class="Lelem">
                    <img src="./Picture/otherimg_6.png" style="width: 127px; height: 120px;">
                </div>
                <div style="display: block; cursor: default; position: absolute; top: 94px; left: 160px; z-index: 10005; width: 140px; height: 42px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 29.4px; line-height: 42px; font-family: 黑体;" iseditable="1">欢迎咨询</span></div>
                <div class="Lelem" type="text" style="display: block; cursor: default; position: absolute; top: 136px; left: 164px; z-index: 10006; width: 233px; height: 18px;"><span iseditable="1" style="vertical-align: top; font-size: 12.6px; line-height: 20px; font-family: 宋体;">53KF.com，感谢大家的支持！</span></div>
                <div style="display: block; cursor: default; position: absolute; top: 157px; left: 166px; z-index: 10007; width: 190px; height: 17px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 12px; line-height: 17px;" iseditable="1">请问有什么可以帮您？</span></div>
                <div class="Lelem" type="img" onclick="onliner_zdfq=2;hz6d_is_exist(&quot;window.open(%22http%3A%2F%2Fwww15.53kf.com%2FwebCompany.php%3Farg%3D10124917%26style%3D1%26kflist%3Doff%26kf%3D%26zdkf_type%3D1%26language%3Dzh-cn%26charset%3Dgbk%26username%3D%26userinfo%3D%26introurl%3D%26lyurl%3D%26lytype%3D0%26copartner%3D%26referer%3Dhttp%253A%252F%252Fwww.oxcoder.com%252Fcooper%252Frecommended%252Ftalent%252Findex.html%26keyword%3Dhttps%253A%252F%252Fwww.baidu.com%252Flink%253Furl%253DT1OPBNEKlZ6nlg_AT5UiEAltFSAE1K1fP3PWTuGhf_ZRMtBtOO8UWIV5Y0bxjVEL%2526wd%253D%2526eqid%253Dcc3117f0001d28d2000000035719850b%26brief%3D%26logo%3D%26question%3D%26tfrom%3D2%22%2C%22_blank%22%2C%22height%3D473%2Cwidth%3D703%2Ctop%3D200%2Cleft%3D200%2Cstatus%3Dyes%2Ctoolbar%3Dno%2Cmenubar%3Dno%2Cresizable%3Dyes%2Cscrollbars%3Dno%2Clocation%3Dno%2Ctitlebar%3Dno%22)&quot;);hidden_ivt();;" style="display: block; cursor: pointer; position: absolute; top: 180px; left: 165px; z-index: 10008; width: 128px; height: 39px;">
                    <img style="width: 128px; height: 39px;" src="./Picture/clickbtn_11.png">
                </div>
                <div style="display: block; cursor: pointer; position: absolute; top: 222px; left: 18px; z-index: 10009; width: 110px; height: 17px; color: rgb(153, 153, 153);" type="text" class="Lelem"><a href="http://www.53kf.com/" target="_blank" style="text-decoration: none; cursor: pointer;"><span style="vertical-align: top; font-size: 10px; color: #666; line-height: 17px; font-family: 宋体;" iseditable="1">这是什么工具？</span></a></div>
                <div style="display: block; cursor: pointer; position: absolute; top: 224px; left: 294px; z-index: 100010; width: 106px; height: 17px; color: rgb(153, 153, 153);" type="text" class="Lelem"><a href="http://www.53kf.com/" target="_blank" style="text-decoration: none; cursor: pointer;"><span style="vertical-align: top; font-size: 10px; line-height: 17px; color: #666; font-family: 宋体;" iseditable="1">Powered by 53KF</span></a></div>
            </div>
        </div>
        <div id="kfivteffect" style="display: none; position: absolute; width: 0px; height: 0px; overflow: hidden; border: 1px solid rgb(27, 136, 208); z-index: 10087; background: rgb(214, 238, 253);"></div>
        <iframe id="kfiframe" src="" frameborder="0" scrolling="no" style="display: none; overflow: hidden;"></iframe>
        <div id="iconDiv1" style="height: auto; width: auto;">
            <iframe style="position: absolute; z-index: 7998; width: 0px; height: 0px; top: 0px; left: 0px;" frameborder="0"></iframe>
            <div id="iconDivMain1" style="z-index: 10085; left: 1315px; top: 200px; width: 33px; height: 135px; position: absolute;">
                <div id="kf_hidden1" onclick="set_auto_hidden(1)" onmouseover="show_kf_icons(1);" onmouseout="hidden_kf_icon(1);" style="position: absolute; top: 0; right: 0; z-index: 9000; display: none;">
                    <div id="KFLOGO" class="Lelem" maxwidth="400" maxheight="400" minwidth="100" minheight="100" style="width: 151px; height: 106px; position: relative; z-index: 10000; cursor: pointer;">
                        <div class="Lelem" type="img" onclick="hz6d_is_exist(&#39;setIsinvited()%3Bwindow.open(#liyc#http%3A%2F%2Fwww15.53kf.com%2FwebCompany.php%3Farg%3D10124917%26style%3D1%26language%3Dzh-cn%26lytype%3D0%26charset%3Dgbk%26kflist%3Doff%26kf%3D%26zdkf_type%3D1%26referer%3Dhttp%253A%252F%252Fwww.oxcoder.com%252Fcooper%252Frecommended%252Ftalent%252Findex.html%26keyword%3Dhttps%253A%252F%252Fwww.baidu.com%252Flink%253Furl%253DT1OPBNEKlZ6nlg_AT5UiEAltFSAE1K1fP3PWTuGhf_ZRMtBtOO8UWIV5Y0bxjVEL%2526wd%253D%2526eqid%253Dcc3117f0001d28d2000000035719850b%26tfrom%3D1%26tpl%3Dcrystal_blue#liyc#%2C%20#liyc#_blank#liyc#%2C%20#liyc#height%3D473%2Cwidth%3D703%2Ctop%3D200%2Cleft%3D200%2Cstatus%3Dyes%2Ctoolbar%3Dno%2Cmenubar%3Dno%2Cresizable%3Dyes%2Cscrollbars%3Dno%2Clocation%3Dno%2Ctitlebar%3Dno#liyc#)&#39;);" style="display: block; cursor: pointer; position: absolute; top: 33px; left: 11px; z-index: 10001; width: 134px; height: 36px;">
                            <img src="./Picture/clickbtn_182.png" style="width: 134px; height: 36px;">
                        </div>
                    </div>
                </div>
                <div>
                    <div id="auto_hidden1" style="z-index: 9001; display: block; right: 0px; top: 0px; width: 33px; height: 135px; overflow: hidden; position: absolute; background: url(&quot;http://www15.53kf.com/img/kflogo/ssan/right/blue.gif&quot;) no-repeat;" onmouseover="show_kf_icons(1);"></div>
                </div>
            </div>
        </div>









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
                        <li class="active">
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
                    <div class="col-xs-12 col-no-left-padding page-header">
                        <h2 class="h2-tab">
                            <a href="http://www.oxcoder.com/cooper/recommended/talent/index.html">人才推荐</a>
                        </h2>
                        <h2 class="h2-tab">
                            <a href="http://www.oxcoder.com/cooper/recommended/talent/index.html?isViewedTalent=true" class="off">已查看人才</a>
                        </h2>
                        <div>
                            技术方向：
					
                            <a href="http://localhost:52775/CoderRecommend.aspx?skill=All" class="btn btn-order">全部</a>

                            <a href="http://localhost:52775/CoderRecommend.aspx?skill=Java" class="btn btn-order ">Java</a>

                            <a href="http://localhost:52775/CoderRecommend.aspx?skill=Android" class="btn btn-order ">Android</a>

                            <a href="http://localhost:52775/CoderRecommend.aspx?skill=IOS" class="btn btn-order ">iOS</a>

                            <a href="http://localhost:52775/CoderRecommend.aspx?skill=C" class="btn btn-order ">C语言(beta)</a>

                            <a href="http://localhost:52775/CoderRecommend.aspx?skill=C++" class="btn btn-order ">C++(beta)</a>

                            <a href="http://localhost:52775/CoderRecommend.aspx?skill=PHP" class="btn btn-order ">php(beta)</a>

                            <a href="http://localhost:52775/CoderRecommend.aspx?skill=Python" class="btn btn-order ">Python(beta)</a>

                            <div class="pull-right">
                                <div style="display: inline-block; vertical-align: top;">
                                </div>
                                <input name="userName" class="form-control" placeholder="全文搜索" value="">
                                <input name="direction" type="hidden" value="0">
                                <span class="input-group-btn">
                                    <button type="submit" class="btn">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
                        <p style="margin-top: 30px; color: #4A90E2;">截止目前为止，猿圈有接近20000多测评后的活跃程序员，包括安卓、iOS、PHP、Java等等方向，并且以很快的速度增长，我们会根据您的招聘需求，每天智能推荐最适合您要求的优秀程序员！</p>
                        <p style="color: #4A90E2;">猿圈小技巧：您发的挑战数目越多，推荐的程序员数量就越多！</p>
                    </div>

                </div>
            </div>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="col-md-4" style="margin-bottom: 20px;">
                    <div class="panel panel-default resume-block-simple">
                        <div class="panel-body">

                            <img src="./Picture/<%#((Model.coder)Container.DataItem).c_skill.ToLower()%>.png" style="float: right;">
                            <h3>
                                <%#((Model.coder)Container.DataItem).c_name%>
                            </h3>
                            <p>
                                <span class="resume-label">推荐指数:</span>
                                <span class="resume-label">

                                    <i class="fa fa-star"></i>

                                    <i class="fa fa-star"></i>

                                    <i class="fa fa-star"></i>

                                    <i class="fa fa-star"></i>

                                    <i class="fa fa-star"></i>

                                    <i class="fa fa-star"></i>

                                </span>
                            </p>
                            <p>
                                <span class="resume-label">身价:</span>
                                <%#((Model.coder)Container.DataItem).c_value%>
                                <span class="resume-label">元</span>
                            </p>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <div class="col-xs-12 corp-simple-action">
                        <a href="http://www.oxcoder.com/cooper/recommended/talent/view_user_info.html?userId=3902&amp;direction=4&amp;match=5">查看报告</a>
                    </div>
                </div>
                </ItemTemplate>
            </asp:Repeater>
            </div>
    </form>

    <!-- /.container -->
    <script src="./JS/jquery-1.11.0.min.js"></script>
    <script src="./JS/bootstrap.min.js"></script>
    <script src="./JS/jquery.sparkline.min.js"></script>
    <script src="./JS/bootstrap-switch.min.js"></script>
    <script src="./JS/bootstrap-select.min.js"></script>
    <script src="./JS/bootstrap-filestyle.js"></script>
    <script src="./JS/summernote.min.js"></script>
    <script src="./JS/script.js"></script>






    <div class="afooter" style="">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2016 oxcoder.com
			
                        <a href="http://www.oxcoder.com/contactus.html">联系我们</a>
                    <a href="http://jq.qq.com/?_wv=1027&amp;k=eeKvVb" target="_blank">QQ交流群:77590762</a>
                    <a href="http://form.mikecrm.com/f.php?t=rJmyZe" target="_blank">意见反馈</a>
                    <script type="text/javascript">
                        var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
                        document.write(
                                unescape(
                                        "%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='"
                                        + cnzz_protocol
                                        + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"
                                )
                        );
                    </script>
                    <span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计">
                        <img border="0" hspace="0" vspace="0" src="./Picture/pic.gif"></a></span><script src="./Other/z_stat.php" type="text/javascript"></script><script src="./Other/core.php" charset="utf-8" type="text/javascript"></script>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        //如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位
        window.onload = function () {
            if (($(document.body).height() + 50) < $(window).height()) {
                $(".afooter").addClass("navbar-fixed-bottom");
            };
        }
    </script>
    <script type="text/javascript" src="./Other/kf.php"></script>



    <script id="hz6d_flp_jquery" src="./JS/jquery-1.4.2.flp.js" charset="utf-8" type="text/javascript"></script>
</body>

</html>
