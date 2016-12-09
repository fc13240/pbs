<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style type="text/css">
#owl-demo{position:relative;width:280px;height:228px;margin:10px auto 0 auto;}
#owl-demo .item{ position:relative;display:block;}
#owl-demo img{display:block;width:280px;height:208px;}
#owl-demo b{position:absolute;left:0;bottom:0;width:100%;height:38px;background-color:#000;opacity:.5;filter:alpha(opacity=50);}
#owl-demo span{position:absolute;left:0;bottom:3px;width:100%;font:18px/32px "微软雅黑","黑体";color:#fff;text-align:center;}

.owl-pagination{position:absolute;left:0;bottom:-10px;width:100%;height:22px;text-align:center;}
.owl-page{display:inline-block;width:10px;height:10px;margin:0 5px;background-image:url(<s:url value='/images/bg15.png'/>);*display:inline;*zoom:1;}
.owl-pagination .active{width:25px;background-image:url(<s:url value='/images/bg16.png'/>);}
.owl-buttons{display:none;}
.owl-buttons div{position:absolute;top:35%;width:40px;height:80px;margin-top:-10px;text-indent:-9999px;}
.owl-prev{left:0;background-image:url(<s:url value='/images/bg17.png'/>);}
.owl-next{right:0;background-image:url(<s:url value='/images/bg18.png'/>);}
.owl-prev:hover{background-image:url(<s:url value='/images/bg19.png'/>);}
.owl-next:hover{background-image:url(<s:url value='/images/bg20.png'/>);}
.mybtn14_3 a  
{  
   color:#fff;  
}
/* li{
　　display:block;overflow:hidden;word-break:keep-all;white-space:nowrap;text-overflow:ellipsis;
　　} */  
</style>

<link rel="stylesheet" href="<s:url value='/css/owl.carousel.css'/>" />
<link rel="stylesheet" href="<s:url value='/css/news.css'/>" />
<link rel="stylesheet" href="<s:url value='/css/mll.common.min.css?20160311'/>" />
<link href="<s:url value='/css/category.min.css?2016322'/>" rel="stylesheet" type="text/css"/> 
<link rel="stylesheet" href="<s:url value='/css/top_footer.css'/>">

 <script type="text/javascript">
 var $180 = $;
 </script>
<script type="text/javascript" src="<s:url value='/js/owl.carousel.js'/>"></script>
<script type="text/javascript">
$(function(){
	$180('#owl-demo').owlCarousel({
		items: 1,
		navigation: true,
		navigationText: ["上一个","下一个"],
		autoPlay: true,
		stopOnHover: true
	}).hover(function(){
		$180('.owl-buttons').show();
	}, function(){
		$180('.owl-buttons').hide();
	});
});
</script>

<!-- 1Fend -->
<div class="floor_1F">
	<div class="news-info-hd" style="clear:both;height: 50px;border-bottom: 2px solid #333;;">
	        
	        <h2 style="font-size: 24px;color: #333;line-height: 25px;">精品专利</h2>                            
	</div>
	
	<div class="news-info-con" style="height: 340px;">
		<div class="news-info-bd clear">
		
		<c:forEach items="${qualityGoods}" var="patent">
			<div class="left-item">
		      <div class="g-item">
		        <div class="g-dtl"> 
		          <a href="<s:url value='/patent/getPatentDetailByPatentId.html'/>?patentId=<c:out value='${patent.patentId}'/>" target="_blank" >
									<c:choose>
										<c:when test="${not empty patent.patentImageUrl }">
											<img class="d-img" onerror="<s:url value='${patent.patentImageUrl }'/>" src="<s:url value='${patent.patentImageUrl }'/>" >
										</c:when>
										<c:otherwise>
											<img class="d-img" onerror="<s:url value='/images/goods/${patent.secondColumn.id}.jpg'/>" src="<s:url value='/images/goods/${patent.secondColumn.id}.jpg'/>">
										</c:otherwise>
									</c:choose>
				  </a>
		          <a href="<s:url value='/patent/getPatentDetailByPatentId.html'/>?patentId=<c:out value='${patent.patentId}'/>" target="_blank" title="${patent.secondColumn.name}" class="d-name">
		          	<span style="margin-left:20px;font-size:14px;font-weight:700;line-height:45px;">${patent.patentName}</span>
		          </a>
	        
				  <div>
					  <div style="float:left;width:100px;">
					  	<strong class="p-money"><sub class="m-mark">¥</sub><span class="m-count JS_async_price">${patent.price}</span></strong>
					  </div>
					  <div style="float:right;width:100px;" class="box_buy">
					  <a target="_blank" title="立即抢购" href="<s:url value='/patent/getPatentDetailByPatentId.html'/>?patentId=<c:out value='${patent.patentId}'/>" class="btn_buy">立即抢购</a>
					  </div>
				  </div>     
		        </div>
		      </div> 	
			</div>	  
		</c:forEach>
		</div>
	</div>
	
</div>
<!-- 2Fend -->


	<style>
	.content_type .content_type_left{ color:#fff; text-decoration:none; font-size:12px;}
	.content_type{height:20px; padding: 8px 0; display: inline-block;}
	.patent-list .content_type{ padding: 5px 0; }
	.content_type .content_type_left,.content_type span{ height: 20px; line-height: 20px; display: inline-block;}
	.content_type .content_type_left{ background: url("<s:url value='/images/common/content_top_img_left.png'/>") no-repeat; padding-left: 10px;}
	.content_type_pa .content_type_left{background: url("<s:url value='/images/common/content_top_img_left2.png'/>") no-repeat;}
	.content_type .content_type_left span{ background: url("<s:url value='/images/common/content_top_img_right.png'/>") no-repeat right top; padding-right:10px;}
	.content_type_pa .content_type_left span{ background: url("<s:url value='/images/common/content_top_img_right2.png'/>") no-repeat right top;}
	.p-money {color: #c00;font-size: 20px;font-weight: 500;}
	.btn_buy{ display:inline-block; padding:0 5px; background:#ff6600 none; color:#fff; line-height:24px;}
	.box_buy a:hover{color:#fff;}
    .btn_buy:hover{background: rgba(255, 102, 0, 0.9);color:#fff!important;}
.g-item {
width: 234px;
height: 337px;
margin-bottom: 15px;

} 
.g-item1 {
width: 280.5px;
height: 300px;
margin-bottom: 15px;
border: 1px solid #f5f5f5;
float: left;
position: relative;
z-index: 1;
}     	
    .g-item:hover{border: 2px solid #D22A2A;}
   
.list-goods .g-dtl {
width: 266px;
margin: 7px;
margin-bottom: 0;
background: #fff;
position: absolute;
z-index: 2;
}
.g-dtl .d-img {
width: 230px;
height: 230px;
display: block;
margin: 0 auto;
-webkit-transition: opacity .15s ease-out;
}
.left-item{height:340px;border: 1px solid #f5f5f5; float:left;} 


.sec_l {
    position: relative;
    float: left;
    width: 332px;
    font-family: SimSun;
    overflow: hidden;
}
.sec_r {
    float: left;
    width: 856px;
}
.sec_r li {
    float: left;
    width: 213px;
    height: 259px;
    border-left: 1px solid #e9e9e9;
    border-bottom: 1px solid #e9e9e9;
}
.white_mask {
    position: absolute;
    top: 259px;
    width: 332px;
    height: 83px;
    background: #fff;
    opacity: .5;
    -moz-opacity: .5;
    filter: alpha(opacity=50);
    overflow: hidden;
}
.cgr_lists {
    position: absolute;
    top: 259px;
    width: 332px;
    height: 83px;
}
.cgr_lists a {
    float: left;
    margin: 14px 0 0 22px;
    width: 80px;
    height: 20px;
    line-height: 20px;
    color: #666;
    border: 1px solid #666;
    border-radius: 10px;
    text-align: center;
}
.tag_box {
    padding: 7px 0 0 17px;
    height: 170px;
    line-height: 22px;
    border-bottom: 1px solid #e9e9e9;
}
.tag_lists {
    float: left;
    clear: left;
    width: 315px;
    height: 44px;
    overflow: hidden;
}
.tag_lists a {
    float: left;
    margin-right: 27px;
    color: #666;
}

.clothing .sidebar_na {
    width: 330px;
    height: 516px;
    float: left;
    overflow: hidden;
    position: relative;
}

.clothing .brand-list {
    width: 860px;
}
.sidebar_na_link {
    position: absolute;
    left: 0;
    bottom: 0;
}
.brand-list {
    width: 1190px;
    margin: 1px auto 15px;
    float: left;
}
.clothing .brand-list ul {
    width: 856px;
}
.brand-list li {
    position: relative;
    width: 236.5px;
    height: 274px;
    float: left;
    border: 1px solid #ebebeb;
    overflow: hidden;
    margin: -1px 0 0 -1px;
}
.clothing .brand-list li {
    width: 213px;
    height: 257px;
}
.clothing .brand-list li a.img, .clothing .brand-list li a.img img {
    width: 186px;
    height: 148px;
}
.clothing .brand-info {
    width: 188px;
}
.brand-info {
    position: absolute;
    left: 0;
    bottom: 0;
    z-index: 1;
    width: 210px;
    padding: 10px 13px 5px;
}
.brand-list li .line1 a {
    font-size: 14px;
    color: #333;
    display: block;
    white-space: nowrap;
    text-overflow: ellipsis;
    -o-text-overflow: ellipsis;
    overflow: hidden;
}
.patent-list .content_type {
    padding: 5px 0;
}
.patent-list li .line2 .patent_type {
    height: 30px;
}
.brand-list li .line2 .patent_type {
    color: #999;
}
.brand-list li .line3 a {
    display: inline-block;
    width: 22px;
    height: 27px;
    position: relative;
    top: 6px;
    lfet: 0;
}
.brand-list li .line3 span, .brand-list li .line3 i {
    font-size: 16px;
}

.brand-list li .line3 i {
    font-style: normal;
}

.brand-list li .line3 span, .brand-list li .line3 i {
    color: #f64914;
}
.price_range ul li {
    float: left;
    width: 110px;
    height: 36px;
    line-height: 36px;
    text-align: center;
}
.price_range ul li a {
    display: inline-block;
    color: #666;
    width: 100px;
    height: 20px;
    line-height: 20px;
    border: 1px solid #666;
    border-radius: 10px;
}
.brand-list li a.img, .brand-list li a.img img {
    display: block;
    width: 209px;
    height: 165px;
    margin: 12px auto 10px;
}
</style>  
<!--2f -->
<c:forEach items="${AllColumns}"  var="FirstColumn" varStatus="status">
<div class="floor_1F">
	<c:if test="${status.count==1}">
	<div class="news-info-hd" style="clear:both;height: 50px;border-bottom: 2px solid #FF0000;">
	        <h2 style="font-size: 24px;color: #333;line-height: 25px;">${FirstColumn.name}</h2>                           
	</div>
	</c:if>
	
	<c:if test="${status.count==2}">
	<div class="news-info-hd" style="clear:both;height: 50px;border-bottom: 2px solid #68b4ef;">
	        <h2 style="font-size: 24px;color: #333;line-height: 25px;">${FirstColumn.name}</h2>                           
	</div>
	</c:if>
	
	<c:if test="${status.count==3}">
	<div class="news-info-hd" style="clear:both;height: 50px;border-bottom: 2px solid #eab35b;">
	        <h2 style="font-size: 24px;color: #333;line-height: 25px;">${FirstColumn.name}</h2>                           
	</div>
	</c:if>
	
	<c:if test="${status.count==4}">
	<div class="news-info-hd" style="clear:both;height: 50px;border-bottom: 2px solid #65e5e7;">
	        <h2 style="font-size: 24px;color: #333;line-height: 25px;">${FirstColumn.name}</h2>                           
	</div>
	</c:if>
	
		
	<c:if test="${status.count==5}">
	<div class="news-info-hd" style="clear:both;height: 50px;border-bottom: 2px solid #68b4ef;">
	        <h2 style="font-size: 24px;color: #333;line-height: 25px;">${FirstColumn.name}</h2>                           
	</div>
	</c:if>
			

	<c:if test="${status.count==6}">
	<div class="news-info-hd" style="clear:both;height: 50px;border-bottom: 2px solid #a6f59c;">
	        <h2 style="font-size: 24px;color: #333;line-height: 25px;">${FirstColumn.name}</h2>                           
	</div>
	</c:if>
	
	
	
	<div class="cu-floor-bd">
		<!-- 通信电子数码内容 -->
		<div class="cu-grid-2">
			<div class="cu-grid-l clothing">
				<div class="sidebar_na">
					<div class="sidebar_na_bg">
					
					<c:if test="${status.count==1}">
						<img src="<s:url value='/images/sidebar_na_bg01.png'/>" class="lazy" width="330" height="516" alt="">
					</c:if>	
					<c:if test="${status.count==2}">
						<img src="<s:url value='/images/sidebar_na_bg02.png'/>" class="lazy" width="330" height="516" alt="">
					</c:if>	
					<c:if test="${status.count==3}">
						<img src="<s:url value='/images/sidebar_na_bg03.png'/>" class="lazy" width="330" height="516" alt="">
					</c:if>	
					<c:if test="${status.count==4}">
						<img src="<s:url value='/images/sidebar_na_bg04.png'/>" class="lazy" width="330" height="516" alt="">
					</c:if>	
					<c:if test="${status.count==5}">
						<img src="<s:url value='/images/sidebar_na_bg05.png'/>" class="lazy" width="330" height="516" alt="">
					</c:if>	
					<c:if test="${status.count==6}">
						<img src="<s:url value='/images/sidebar_na_bg06.png'/>" class="lazy" width="330" height="516" alt="">
					</c:if>	
																																					
					</div>
					<div class="sidebar_na_link">
					<div class="price_range">
						<ul class="clear">
						<c:forEach items="${FirstColumn.secondColumns}"  var="secondColumn" varStatus="status">
					  		<li><a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=${secondColumn.id}&secondColumnName=${secondColumn.name}'/>" target="_blank">${secondColumn.name}</a></li>
					  	</c:forEach>
							
						</ul>
					</div>
			
					</div>
				</div>
				<div class="brand-list patent-list">
					<ul>
						<%--  <c:forEach items="${recommendPatents['2']}"  var="patent"> --%>
					<%-- <c:forEach items="${recommendPatents['${status.count}+1']}" var="patent"> --%>
						<c:forEach items="${recommendPatents}" begin="${FirstColumn.id-1}" end="${FirstColumn.id-1}" var="patents">
							<c:forEach items="${patents.value}" var="patent">
						<li>	
								<a href="<s:url value='/patent/getPatentDetailByPatentId.html'/>?patentId=<c:out value='${patent.patentId}'/>" target="_blank" title="${patent.patentName}" class="img">
									<c:choose>
										<c:when test="${not empty patent.patentImageUrl }">
											<img onerror="<s:url value='${patent.patentImageUrl }'/>" src="<s:url value='${patent.patentImageUrl }'/>" class="lazy">
										</c:when>
										<c:otherwise>
											<img onerror="<s:url value='/images/goods/${patent.secondColumn}.jpg'/>" src="<s:url value='/images/goods/${patent.secondColumn}.jpg'/>" class="lazy">
										</c:otherwise>
									</c:choose>
				                	</a>
								<div class="brand-info">
									<div class="line1">
										<a href="<s:url value='/patent/getPatentDetailByPatentId.html'/>?patentId=<c:out value='${patent.patentId}'/>" title="${patent.patentName}" target="_blank">
											${patent.patentName}</a></div>
									<div class="line2">
										<div class="content_type"><em class="content_type_left"><span>
										  ${patent.secondColumn}</span></em></div>
										
									</div>
									<div class="line3">
										<a href="javascript:;" class="icon_feng"></a>
										<i>¥</i>
											<span>${patent.price}</span>
										</div>
								</div>
						</li>
							</c:forEach>
						</c:forEach>
					</ul>
				</div>
				<div style="clear:both;"></div>
			</div>
		</div>
	</div>
	
<!--  -->	

</div>
</c:forEach> 



<script type="text/javascript">
function getbrandDetail(brandId) {
	window.location.href="<s:url value='/brand/getbrandDetail.html'/>?brandId=" + brandId;
}
</script>
