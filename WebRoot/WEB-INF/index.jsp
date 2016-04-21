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
<title>码团——酒店入住系统</title>

<link type="text/css" rel="stylesheet" href="${rctx }/css/index.css" />
<script type="text/javascript" src="${rctx }/js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="${rctx }/js/g.base.js"></script>
<script type="text/javascript" src="${rctx }/js/iscroll.js"></script>
<script type="text/javascript" src="${rctx }/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="${rctx }/js/common.js"></script>
<script type="text/javascript" src="${rctx }/js/yj_style.js"></script>
<link rel="stylesheet" href="${rctx }/css/common/example.css"/>
<script src="${rctx }/js/sweet-alert.min.js"></script>
<link rel="stylesheet" href="${rctx }/css/common/sweet-alert.css"/>
<script type="text/javascript">
    var myScroll;
    function loaded() {
        myScroll = new iScroll('wrapper', {
            snap: true,
            momentum: false,
            hScrollbar: false,
            onScrollEnd: function() {
                document.querySelector('#indicator > li.active').className = '';
                document.querySelector('#indicator > li:nth-child(' + (this.currPageX + 1) + ')').className = 'active';
            }
        });
    }
    document.addEventListener('DOMContentLoaded', loaded, false);
   
</script>

</head>

<body>
<header class="header" style="height:30%">
    <div class="banner">
        <div id="wrapper" style="overflow: hidden; ">
            <div id="scroller">
                <ul id="thelist">
                    <li><p></p><a href="#"><img src="${rctx }/image/index1.jpg" /></a></li>
                    <li><p></p><a href="#"><img src="${rctx }/image/index2.jpg" /></a></li>
                    <li><p></p><a href="#"><img src="${rctx }/image/index3.jpg" /></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div id="nav">
        <div id="prev" onClick="javascript:myScroll.scrollToPage('prev', 0);"></div>
        <ul id="indicator">
            <li class="active"></li>
            <li ></li>
            <li ></li>
        </ul>
        <div id="next" onClick="javascript:myScroll.scrollToPage('next', 0, 400, 2);"></div>
    </div>
    <div class="clr"></div>
</header>
<script>
    var count = document.getElementById("thelist").getElementsByTagName("img").length;
    for (i = 0; i < count; i++) {
        document.getElementById("thelist").getElementsByTagName("img").item(i).style.cssText = " width:" + document.body.clientWidth + "px";
    }
    document.getElementById("scroller").style.cssText = " width:" + document.body.clientWidth * count + "px";
    setInterval(function() {
        myScroll.scrollToPage('next', 0, 400, count);
    }, 3500);
    window.onresize = function() {
        for (i = 0; i < count; i++) {
            document.getElementById("thelist").getElementsByTagName("img").item(i).style.cssText = " width:" + document.body.clientWidth + "px";
        }
        document.getElementById("scroller").style.cssText = " width:" + document.body.clientWidth * count + "px";
    };
</script>
<div class="content index-content">
    <a href="${ctx }/customer/toOrder">
        <div class="img" style="background:url(${rctx }/image/13809673822754.png) center no-repeat; background-size:contain;"></div>
        <div class="text">酒店入住</div>
    </a>
    <a href="${ctx }/customer/toAddLinkman">
    <div class="img" style="background:url(${rctx }/image/13809674805918.png) center no-repeat; background-size:contain;"></div>
    <div class="text">联系人</div>
    </a>
    
    <a href="${ctx }/customer/perfectInformation">
    <div class="img" style="background:url(${rctx }/image/13809674461949.png) center no-repeat; background-size:contain;"></div>
    <div class="text">完善信息</div>
    </a>
    <a class="toRoomManage" href="#">
        <div class="img" style="background:url(${rctx }/image/13809674319154.png) center no-repeat; background-size:contain;"></div>
        <div class="text">房间管理</div>
    </a>
    <a href="${ctx }/customer/toCateRecommend">
    <div class="img" style="background:url(${rctx }/image/13809674157426.png) center no-repeat; background-size:contain;"></div>
    <div class="text">餐馆美食</div>
    </a>
    <a href="${ctx }/customer/toVisitRecommend">
    <div class="img" style="background:url(${rctx }/image/13809673974739.png) center no-repeat; background-size:contain;"></div>
    <div class="text">游玩攻略</div>
    </a>
    <a href="${ctx }/customer/toTrafficRecommend">
        <div class="img" style="background:url(${rctx }/image/13809674651404.png) center no-repeat; background-size:contain;"></div>
        <div class="text">交通指南</div>
    </a>
    <a href="${ctx }/customer/toAboutus">
        <div class="img" style="background:url(${rctx }/image/13809674974016.png) center no-repeat; background-size:contain;"></div>
        <div class="text">关于我们</div>
    </a>
    </div>
<div class="footer">
    <p class="footer-top">&COPY;码先生团队</p>
    <p class="footer-bottom">
        <a href="${ctx }/customer/toIndex">首页</a>
        <span class="footer_vertical_line">|</span>
        <a href="${ctx }/customer/toOrder">入住</a>
        <span class="footer_vertical_line">|</span>
        <a class="toRoomManage" href="#">管理</a>
        <span class="footer_vertical_line">|</span>
        <a href="${ctx }/customer/profile">我的</a>

    </p>
    <p class="footer-bottom">
        <span class="foot_fix_"></span>
    </p>
</div>
</body>
<script>
$(".toRoomManage").click(function(){
	
	$.ajax({
		type : "POST",
		url : "${ctx}/customer/toRoomManageFail",
		data : {
			
		},
		success : function(result) {			
			if (result == "1") {
				swal("无可管理房间");
			} 
			else
			{
			window.location.href="${ctx}/customer/toRoomManage";
			}
		}
	});
});
</script>
</html>