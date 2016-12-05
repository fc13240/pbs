<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="spring" prefix="s" %>
<%@ taglib uri="security" prefix="se" %>
<%@ taglib uri="c" prefix="c" %>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="keywords" content="知识产权,专利交易,商标转让,龙图腾,中外知识产权网" />
<meta name="description" content="龙图腾网（r.lotut.com）是全球领先的知识产权交易平台。为企业提供专业的商标转让、专利交易等服务。拥有国内知识产权资源，全面覆盖了商标、专利、版权等领域的交易平台，让知识产权在流通中创造财富，引领知识产权的创新。" />
<meta itemprop="name" content="" />
<meta http-equiv="cache-control" content="no-transform">
<link href="<s:url value='/mobile_skin/css/ectouch.css'/>" rel="stylesheet" type="text/css" />
<link href="<s:url value='/mobile_skin/css/style.css'/>" rel="stylesheet" type="text/css" />
<link href="<s:url value='/mobile_skin/fonts/iconfont.css'/>" rel="stylesheet" type="text/css" />
<script src="<s:url value='/mobile_skin/js/TouchSlide.1.1.source.js'/>" type="text/javascript"></script>
<script src="<s:url value='/mobile_skin/js/jquery-1.8.2.min.js'/>" type="text/javascript"></script>
<script src="<s:url value='/mobile_skin/js/common_js.js'/>" type="text/javascript"></script>
<script src="<s:url value='/mobile_skin/js/jquery.reveal.js'/>" type="text/javascript"></script>
<title>商标列表</title>
</head>
<body class="">
<div class="Layout_style">
	<header id="header">
	  <h1> 商标列表 </h1>
	</header>
	<div style="margin-top:5px;">
		<div style="width:33%;float:left;">
			
			<span class="p_btn_cart"><a href="" style="font-size:18px;">商标01-15类</a></span>	
		</div>
		<div style="width:33%;float:left;" style="float:left;">
		
			<span class="p_btn_cart"><a href="" style="font-size:18px;">商标16-30类</a></span>
		</div>
		<div style="width:33%;float:left;" style="float:left;">
			<span class="p_btn_cart"><a href="" style="font-size:18px;">商标31-45类</a></span>
		</div>
	</div>
	<div class="p_list">
			<c:forEach items="${brands}" var="brands">
					
			  <ul class="list list_name">
			
			   <li class="img "><a href=""><img src="" /></a></li>
			   <li class="p_list_one" style="margin-top:20px;">
			    <p class="p_title"><a href="">${brands.name}</a></p>
			
				<p class="p_Price">${brands.price}</p>
				<p class="Operation">
				 <span class="p_btn_cart"><a href="" style="font-size:18px;">立即抢购</a></span>
				</p>
			   </li>
			  </ul>  		
			</c:forEach>
	 
	  <!--分页样式-->
	
	</div>
	<div style="height:100px;"></div>
 <!--底部样式-->
	<div class="footer_home_wrapper">
		<div id="quick" class="clearfix">
		 <nav class="quick-entry-nav clearfix">
		<a class="quick-entry-link fz12 J_ping" report-eventid="MHome_Icons" report-eventparam="主页" page_name="index" href="http://www.lotut.com/pts/mobile/index.html?from=web">
		    <img width="40" height="40" src="<s:url value='/mobile_skin/images/i_1-1.png'/>"><span>主页</span></a>	 
			<a class="quick-entry-link fz12 J_ping" report-eventid="MHome_Icons" report-eventparam="专利列表" page_name="index" href="http://www.lotut.com/pts/mobilePatent/index.html">
		    <img width="40" height="40" src="<s:url value='/mobile_skin/images/i_1.png'/>"><span>专利列表</span></a>
			<a class="quick-entry-link fz12 J_ping" report-eventid="MHome_Icons" report-eventparam="知产新闻" page_name="index" href="http://www.lotut.com/pts/mobileNews/newsList.html">
		    <img width="40" height="40" src="<s:url value='/mobile_skin/images/i_2.png'/>"><span>知产新闻</span></a>
			<a class="quick-entry-link fz12 J_ping" report-eventid="MHome_Icons" report-eventparam="专利培训" page_name="index" href="http://www.lotut.com/pts/mobileArticle/articleList.html">
		    <img width="40" height="40" src="<s:url value='/mobile_skin/images/i_3.png'/>"><span>专利培训</span></a>
			<a class="quick-entry-link fz12 J_ping" report-eventid="MHome_Icons" report-eventparam="商标列表" page_name="index" href="http://r.lotut.com/mobile/">
		    <img width="40" height="40" src="<s:url value='/mobile_skin/images/i_4.png'/>"><span>商标列表</span>
		    </a>
		  </nav>
		 </div>
	</div>
</div>	
<style type="text/css">
.footer_home_wrapper{
    bottom: 0;
    position: fixed;
    width: 100%;
    z-index: 29;
    max-width: 640px;
}
 .p_btn_cart a {
    padding: 5px 5px;
    background: #DE1456;
    color: #ffffff;
    /* box-shadow: inset 0px 0px 3px 1px #CCCCCC; */
}
</style>
</body>
</html>