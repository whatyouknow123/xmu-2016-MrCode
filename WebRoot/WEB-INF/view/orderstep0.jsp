<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!-- 系统根路径 -->
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!-- 系统资源根路径 -->
<c:set var="rctx" value="${ctx }/resource"></c:set>
<!-- 系统页面根路径 -->
<c:set var="vctx" value="${ctx }/WEB-INF/view"></c:set>
<!-- 测试用jsp使用的根路径 -->
<c:set var="tctx" value="/WEB-INF/view/"></c:set>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,user-scalable=no, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/common/common.jsp" %>
    <title>选择时间</title>
   
	<!-- special css -->
	<link type="text/css" rel="stylesheet" href="${rctx }/css/login.css">
	 <!--日期输入框-->
    <script src="${rctx }/js/bootstrap-datepicker.js"></script>
    <script src="${rctx }/js/bootstrap-datepicker.zh-CN.js"></script>
    <link rel="stylesheet" href="${rctx }/css/bootstrap-datepicker.min.css"/>
    <script src="${rctx }/js/m_supply.js"></script>
</head>
<body>

<div class="head">
    <div class="header">
        <a href="#menu" class="header-a"><i class="fa fa-reorder head-style"></i></a>
        <span class="header-word">选择时间</span>
        <a href="index.html"><i class="fa fa-home head-style home-style"></i></a>
    </div>
    <nav id="menu">
        <ul>
            <li class="menu-li-head"><a href="hotel.html">酒店入住 <i class="fa fa-angle-double-right"></i></a></li>
            <li class="menu-li-head"><a href="information.html">完善信息 <i class="fa fa-angle-double-right"></i></a></li>
            <li class="menu-li-head"><a href="hotel.html">房间管理 <i class="fa fa-angle-double-right"></i></a></li>
            <li class="menu-li-head"><a href="groom.html">猜你喜欢 <i class="fa fa-angle-double-right"></i></a></li>
            <li class="menu-li-head"><a href="restaurant.html">餐馆美食 <i class="fa fa-angle-double-right"></i></a></li>
            <li class="menu-li-head"><a href="visiting.html">游玩攻略 <i class="fa fa-angle-double-right"></i></a></li>
            <li class="menu-li-head"><a href="traffic.html">交通指南 <i class="fa fa-angle-double-right"></i></a></li>
            <li class="menu-li-head"><a href="aboutus.html">关于我们 <i class="fa fa-angle-double-right"></i></a></li>
        </ul>
    </nav>
</div>

<div class="content">
	<form action="${ctx }/order/toSecond" method="post">
	    <!--<h3>日期输入框</h3>-->
	    <div class="date_leave">
	        <span class="leave_word">入住时间：</span>
	        <div class="date_leave_input">
	            <!--选择日期使用了datepicker插件-->
	            <input type="text" name="begin" placeholder="点击输入日期" readonly class="input-date-sp">
	        </div>
	    </div>
	    <div class="date_leave">
	        <span class="leave_word">离开时间：</span>
	        <div class="date_leave_input">
	            <!--选择日期使用了datepicker插件-->
	            <input type="text" name="end" placeholder="点击输入日期" readonly class="input-date-sp">
	        </div>
	    </div>
	    <div class="control-group next_step  choose-room-next-step">
	        <button class="login-now"><input class="next_step_color" type="submit" style="display:none"/>下一步</button>
	    </div>
	</form>
</div>
<div class="footer">
    <p class="footer-bottom">
        <a href="index.html">首页</a>
        <span class="footer_vertical_line">|</span>
        <a href="groom.html">推荐</a>
        <span class="footer_vertical_line">|</span>
        <a href="management.html">管理</a>
        <span class="footer_vertical_line">|</span>
        <a href="aboutus.html">我们团队</a>

    </p>

</div>
<script>
    //在是IPhone5的时候隐藏码先生
    window.onload = function()
    {
        var pheight= document.documentElement.clientHeight;
        if(pheight<=600){
            $(".footer-top").hide();
        }
    }
    //设置侧边栏
    $(function() {
        $('nav#menu').mmenu({
            extensions	: [ 'effect-slide-menu', 'pageshadow' ],
            searchfield	: true,
            counters	: true,
            navbars		: [
                {
                    position	: 'top'
                }, {
                    position	: 'bottom',
                    content		: [ '<a href="http://mmenu.frebsite.nl">Visit website</a>' ]
                }
            ]
        });
    });
    $(function(){
        $(".mm-search").remove();
        $(".mm-title").text("首页");
        $(".mm-navbar-bottom").hide();
    });
</script>
</body>
</html>