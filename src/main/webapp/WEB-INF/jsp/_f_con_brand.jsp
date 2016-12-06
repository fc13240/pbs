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
<div class="floor_1F" style="height:340px;">
	<div class="floor_top clearfix">
		<div class="news-info-hd" style="width:100%;clear:both;height: 50px;border-bottom: 2px solid #f99885;">
		        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_02.png'/>) no-repeat 0 -25px;">1F</div>
		        <h2>商标推荐</h2> <h2 style="float:left;margin-left:300px;"><a href="<s:url value='/brand/alreadySalebrands.html?page.currentPage=1'/>" target="_blank">已售出商标</a></h2> 
		        <div style="clear:both;"></div>
		</div>

		<div  style="width:1188px;height:290px;overflow:hidden;position:relative;">
		
	    <ul class="sy_buy_list_box">
	    	<c:forEach items="${slideBrands}" var="brand">
				
				<li class="col-md-3 col-sm-6">
		          <div class="syPub_list">
		              
		              <a style=":active{color:black;text-decoration:none;}" target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>">
						
						<c:choose>
							<c:when test="${not empty brand.imageUrl }">
							<div style="background: url(<s:url value='${brand.imageUrl }'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">
							</c:when>
							<c:otherwise>
							<div style="background: url(<s:url value='/images/brands_img/${brand.brandCategory.categoryId}_imagemagick_small.jpg'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">   
							</c:otherwise>
						</c:choose>							
						
			          			<div style="font-family:Microsoft YaHei;font-size:25px;padding-top: 80px;text-align: center;">${brand.name}</div>
							 
			            </div>
		 			  </a>
		 			 
		 			  <div>
			          <h3>
			          	<a target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>" class="overflow_clear">${brand.name}</a>
			          </h3>
			        
			          <hr style="border:none 0px; border-bottom: 1px solid #e0e0e0; margin-top:6px;"/>
			          <div class="btn_box">
				          <div class="left price">&yen;${brand.price}</div>
				          <div class="right">
				          	<button title="${brand.name}" onclick="getbrandDetail(${brand.id})"  class="btn">立即抢购</button>
				          </div>
			          </div>
		          </div>
		      	</li>
				
			</c:forEach>
	    
	    </ul>  
		
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
width: 235px;
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
</style>  


<div class="floor_1F" style="height:340px;">
	<div class="floor_top clearfix">
		<div class="news-info-hd" style="width:100%;clear:both;height: 50px;border-bottom: 2px solid #488bad;">
		        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_03.png'/>) no-repeat 0 -25px;">2F</div>
		        <h2>第03类-日化用品</h2> 
		        <div style="clear:both;"></div>
		</div>

		<div  style="width:1188px;height:290px;overflow:hidden;position:relative;">
		
	    <ul class="sy_buy_list_box">
	    	<c:forEach items="${recommendBrands['3']}" var="brand">
				
				<li class="col-md-3 col-sm-6">
		          <div class="syPub_list">
		              
		              <a style=":active{color:black;text-decoration:none;}" target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>">
						<c:choose>
							<c:when test="${not empty brand.imageUrl }">
							<div style="background: url(<s:url value='${brand.imageUrl }'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">
							</c:when>
							<c:otherwise>
							<div style="background: url(<s:url value='/images/brands_img/${brand.brandCategory.categoryId}_imagemagick_small.jpg'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">   
							</c:otherwise>
						</c:choose>		
			          		<div style="font-family:Microsoft YaHei;font-size:25px;padding-top: 80px;text-align: center;">${brand.name}</div>
							 
			            </div>
		 			  </a>
		 			 
		 			  <div>
			          <h3>
			          	<a target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>" class="overflow_clear">${brand.name}</a>
			          </h3>
			        
			          <hr style="border:none 0px; border-bottom: 1px solid #e0e0e0; margin-top:6px;"/>
			          <div class="btn_box">
				          <div class="left price">&yen;${brand.price}</div>
				          <div class="right">
				          	<button title="${brand.name}" onclick="getbrandDetail(${brand.id})"  class="btn">立即抢购</button>
				          </div>
			          </div>
		          </div>
		      	</li>
				
			</c:forEach>
	    
	    </ul>  
		
		</div>
	</div>	
</div>

<div class="floor_1F" style="height:340px;">
	<div class="floor_top clearfix">
		<div class="news-info-hd" style="width:100%;clear:both;height: 50px;border-bottom: 2px solid #f99885;">
		        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_02.png'/>) no-repeat 0 -25px;">3F</div>
		        <h2>第05类-医用药品</h2>
		        <div style="clear:both;"></div>
		</div>

		<div  style="width:1188px;height:290px; overflow:hidden;position:relative;">
		
		<ul class="sy_buy_list_box">
	    	<c:forEach items="${recommendBrands['5']}" var="brand">
				
				<li class="col-md-3 col-sm-6">
		          <div class="syPub_list">
		              
		              <a style=":active{color:black;text-decoration:none;}" target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>">
						<c:choose>
							<c:when test="${not empty brand.imageUrl }">
							<div style="background: url(<s:url value='${brand.imageUrl }'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">
							</c:when>
							<c:otherwise>
							<div style="background: url(<s:url value='/images/brands_img/${brand.brandCategory.categoryId}_imagemagick_small.jpg'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">   
							</c:otherwise>
						</c:choose>		
			          		<div style="font-family:Microsoft YaHei;font-size:25px;padding-top: 80px;text-align: center;">${brand.name}</div>
							 
			            </div>
		 			  </a>
		 			  
		 			  <div>
			          <h3>
			          	<a target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>" class="overflow_clear">${brand.name}</a>
			          </h3>
			        
			          <hr style="border:none 0px; border-bottom: 1px solid #e0e0e0; margin-top:6px;"/>
			          <div class="btn_box">
				          <div class="left price">&yen;${brand.price}</div>
				          <div class="right">
				          	<button title="${brand.name}" onclick="getbrandDetail(${brand.id})"  class="btn">立即抢购</button>
				          </div>
			          </div>
		          </div>
		      	</li>
				
			</c:forEach>
	    
	    </ul>  
		
		
		</div>
	</div>	
</div>

<div class="floor_1F" style="height:340px;">
	<div class="floor_top clearfix">
		<div class="news-info-hd" style="width:100%;clear:both;height: 50px;border-bottom: 2px solid #488bad;">
		        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_03.png'/>) no-repeat 0 -25px;">4F</div>
		        <h2>第09类-科学仪器</h2>
		        <div style="clear:both;"></div>
		</div>

		<div  style="width:1188px;height:290px; overflow:hidden;position:relative;">
		<ul class="sy_buy_list_box">
	    	<c:forEach items="${recommendBrands['9']}" var="brand">
				
				<li class="col-md-3 col-sm-6">
		          <div class="syPub_list">
		              
		              <a style=":active{color:black;text-decoration:none;}" target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>">
						<c:choose>
							<c:when test="${not empty brand.imageUrl }">
							<div style="background: url(<s:url value='${brand.imageUrl }'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">
							</c:when>
							<c:otherwise>
							<div style="background: url(<s:url value='/images/brands_img/${brand.brandCategory.categoryId}_imagemagick_small.jpg'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">   
							</c:otherwise>
						</c:choose>		
			          		<div style="font-family:Microsoft YaHei;font-size:25px;padding-top: 80px;text-align: center;">${brand.name}</div>
							 
			            </div>
		 			  </a>
		 			  
		 			  <div>
			          <h3>
			          	<a target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>" class="overflow_clear">${brand.name}</a>
			          </h3>
			        
			          <hr style="border:none 0px; border-bottom: 1px solid #e0e0e0; margin-top:6px;"/>
			          <div class="btn_box">
				          <div class="left price">&yen;${brand.price}</div>
				          <div class="right">
				          	<button title="${brand.name}" onclick="getbrandDetail(${brand.id})"  class="btn">立即抢购</button>
				          </div>
			          </div>
		          </div>
		      	</li>
				
			</c:forEach>
	    
	    </ul>  
		
		
		</div>
	</div>	
</div>

<div class="floor_1F" style="height:340px;">
	<div class="floor_top clearfix">
		<div class="news-info-hd" style="width:100%;clear:both;height: 50px;border-bottom: 2px solid #f99885;">
		        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_02.png'/>) no-repeat 0 -25px;">5F</div>
		        <h2>第12类-运输工具</h2>
		        <div style="clear:both;"></div>
		</div>

		<div  style="width:1188px;height:290px; overflow:hidden;position:relative;">
		<ul class="sy_buy_list_box">
	    	<c:forEach items="${recommendBrands['12']}" var="brand">
				
				<li class="col-md-3 col-sm-6">
		          <div class="syPub_list">
		              
		              <a style=":active{color:black;text-decoration:none;}" target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>">
						<c:choose>
							<c:when test="${not empty brand.imageUrl }">
							<div style="background: url(<s:url value='${brand.imageUrl }'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">
							</c:when>
							<c:otherwise>
							<div style="background: url(<s:url value='/images/brands_img/${brand.brandCategory.categoryId}_imagemagick_small.jpg'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">   
							</c:otherwise>
						</c:choose>		
			          		<div style="font-family:Microsoft YaHei;font-size:25px;padding-top: 80px;text-align: center;">${brand.name}</div>
							 
			            </div>
		 			  </a>
		 			 
		 			  <div>
			          <h3>
			          	<a target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>" class="overflow_clear">${brand.name}</a>
			          </h3>
			        
			          <hr style="border:none 0px; border-bottom: 1px solid #e0e0e0; margin-top:6px;"/>
			          <div class="btn_box">
				          <div class="left price">&yen;${brand.price}</div>
				          <div class="right">
				          	<button title="${brand.name}" onclick="getbrandDetail(${brand.id})"  class="btn">立即抢购</button>
				          </div>
			          </div>
		          </div>
		      	</li>
				
			</c:forEach>
	    
	    </ul>  
		
		
		</div>
	</div>	
</div>

<div class="floor_1F" style="height:340px;">
	<div class="floor_top clearfix">
		<div class="news-info-hd" style="width:100%;clear:both;height: 50px;border-bottom: 2px solid #488bad;">
		        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_03.png'/>) no-repeat 0 -25px;">6F</div>
		        <h2>第20类-家具用品</h2>
		        <div style="clear:both;"></div>
		</div>

		<div  style="width:1188px;height:290px; overflow:hidden;position:relative;">
		<ul class="sy_buy_list_box">
	    	<c:forEach items="${recommendBrands['20']}" var="brand">
				
				<li class="col-md-3 col-sm-6">
		          <div class="syPub_list">
		              
		              <a style=":active{color:black;text-decoration:none;}" target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>">
						<c:choose>
							<c:when test="${not empty brand.imageUrl }">
							<div style="background: url(<s:url value='${brand.imageUrl }'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">
							</c:when>
							<c:otherwise>
							<div style="background: url(<s:url value='/images/brands_img/${brand.brandCategory.categoryId}_imagemagick_small.jpg'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">   
							</c:otherwise>
						</c:choose>		
			          		<div style="font-family:Microsoft YaHei;font-size:25px;padding-top: 80px;text-align: center;">${brand.name}</div>
							 
			            </div>
		 			  </a>
		 			 
		 			  <div>
			          <h3>
			          	<a target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>" class="overflow_clear">${brand.name}</a>
			          </h3>
			        
			          <hr style="border:none 0px; border-bottom: 1px solid #e0e0e0; margin-top:6px;"/>
			          <div class="btn_box">
				          <div class="left price">&yen;${brand.price}</div>
				          <div class="right">
				          	<button title="${brand.name}" onclick="getbrandDetail(${brand.id})"  class="btn">立即抢购</button>
				          </div>
			          </div>
		          </div>
		      	</li>
				
			</c:forEach>
	    
	    </ul>  
		
		</div>
	</div>	
</div>

<div class="floor_1F" style="height:340px;">
	<div class="floor_top clearfix">
		<div class="news-info-hd" style="width:100%;clear:both;height: 50px;border-bottom: 2px solid #f99885;">
		        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_02.png'/>) no-repeat 0 -25px;">7F</div>
		        <h2>第21类-厨房洁具</h2>
		        <div style="clear:both;"></div>
		</div>

		<div  style="width:1188px;height:290px; overflow:hidden;position:relative;">
		<ul class="sy_buy_list_box">
	    	<c:forEach items="${recommendBrands['21']}" var="brand">
				
				<li class="col-md-3 col-sm-6">
		          <div class="syPub_list">
		              
		              <a style=":active{color:black;text-decoration:none;}" target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>">
						<c:choose>
							<c:when test="${not empty brand.imageUrl }">
							<div style="background: url(<s:url value='${brand.imageUrl }'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">
							</c:when>
							<c:otherwise>
							<div style="background: url(<s:url value='/images/brands_img/${brand.brandCategory.categoryId}_imagemagick_small.jpg'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">   
							</c:otherwise>
						</c:choose>		
			          		<div style="font-family:Microsoft YaHei;font-size:25px;padding-top: 80px;text-align: center;">${brand.name}</div>
							 
			            </div>
		 			  </a>
		 			  
		 			  <div>
			          <h3>
			          	<a target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>" class="overflow_clear">${brand.name}</a>
			          </h3>
			        
			          <hr style="border:none 0px; border-bottom: 1px solid #e0e0e0; margin-top:6px;"/>
			          <div class="btn_box">
				          <div class="left price">&yen;${brand.price}</div>
				          <div class="right">
				          	<button title="${brand.name}" onclick="getbrandDetail(${brand.id})"  class="btn">立即抢购</button>
				          </div>
			          </div>
		          </div>
		      	</li>
				
			</c:forEach>
	    
	    </ul>  
		
		</div>
	</div>	
</div>

<div class="floor_1F" style="height:340px;">
	<div class="floor_top clearfix">
		<div class="news-info-hd" style="width:100%;clear:both;height: 50px;border-bottom: 2px solid #488bad;">
		        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_03.png'/>) no-repeat 0 -25px;">8F</div>
		        <h2>第25类-服装鞋帽</h2>
		        <div style="clear:both;"></div>
		</div>

		<div  style="width:1188px;height:290px;overflow:hidden;position:relative;">
		<ul class="sy_buy_list_box">
	    	<c:forEach items="${recommendBrands['25']}" var="brand">
				
				<li class="col-md-3 col-sm-6">
		          <div class="syPub_list">
		              
		              <a style=":active{color:black;text-decoration:none;}" target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>">
						<c:choose>
							<c:when test="${not empty brand.imageUrl }">
							<div style="background: url(<s:url value='${brand.imageUrl }'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">
							</c:when>
							<c:otherwise>
							<div style="background: url(<s:url value='/images/brands_img/${brand.brandCategory.categoryId}_imagemagick_small.jpg'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">   
							</c:otherwise>
						</c:choose>		
			          		<div style="font-family:Microsoft YaHei;font-size:25px;padding-top: 80px;text-align: center;">${brand.name}</div>
							 
			            </div>
		 			  </a>
		 			  
		 			  <div>
			          <h3>
			          	<a target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>" class="overflow_clear">${brand.name}</a>
			          </h3>
			        
			          <hr style="border:none 0px; border-bottom: 1px solid #e0e0e0; margin-top:6px;"/>
			          <div class="btn_box">
				          <div class="left price">&yen;${brand.price}</div>
				          <div class="right">
				          	<button title="${brand.name}" onclick="getbrandDetail(${brand.id})"  class="btn">立即抢购</button>
				          </div>
			          </div>
		          </div>
		      	</li>
				
			</c:forEach>
	    
	    </ul>  
		
		</div>
	</div>	
</div>

<div class="floor_1F" style="height:340px;">
	<div class="floor_top clearfix">
		<div class="news-info-hd" style="width:100%;clear:both;height: 50px;border-bottom: 2px solid #f99885;">
		        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_02.png'/>) no-repeat 0 -25px;">9F</div>
		        <h2>第33类-酒精饮料</h2>
		        <div style="clear:both;"></div>
		</div>

		<div  style="width:1188px;height:290px;overflow:hidden;position:relative;">
		<ul class="sy_buy_list_box">
	    	<c:forEach items="${recommendBrands['33']}" var="brand">
				
				<li class="col-md-3 col-sm-6">
		          <div class="syPub_list" >
		              
		              <a style=":active{color:black;text-decoration:none;}" target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>">
						<c:choose>
							<c:when test="${not empty brand.imageUrl }">
							<div style="background: url(<s:url value='${brand.imageUrl }'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">
							</c:when>
							<c:otherwise>
							<div style="background: url(<s:url value='/images/brands_img/${brand.brandCategory.categoryId}_imagemagick_small.jpg'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">   
							</c:otherwise>
						</c:choose>		
			          		<div style="font-family:Microsoft YaHei;font-size:25px;padding-top: 80px;text-align: center;">${brand.name}</div>
							 
			            </div>
		 			  </a>
		 			  
		 			  <div>
			          <h3>
			          	<a target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>" class="overflow_clear">${brand.name}</a>
			          </h3>
			        
			          <hr style="border:none 0px; border-bottom: 1px solid #e0e0e0; margin-top:6px;"/>
			          <div class="btn_box">
				          <div class="left price">&yen;${brand.price}</div>
				          <div class="right">
				          	<button title="${brand.name}" onclick="getbrandDetail(${brand.id})"  class="btn">立即抢购</button>
				          </div>
			          </div>
		          </div>
		      	</li>
				
			</c:forEach>
	    
	    </ul>  
		
		</div>
	</div>	
</div>

<div class="floor_1F" style="height:340px;">
	<div class="floor_top clearfix">
		<div class="news-info-hd" style="width:100%;clear:both;height: 50px;border-bottom: 2px solid #488bad;">
		        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_03.png'/>) no-repeat 0 -25px;">10F</div>
		        <h2>第43类-餐饮住宿</h2>
		        <div style="clear:both;"></div>
		</div>

		<div  style="width:1188px;height:290px;overflow:hidden;position:relative;">
		<ul class="sy_buy_list_box">
	    	<c:forEach items="${recommendBrands['43']}" var="brand">
				
				<li class="col-md-3 col-sm-6">
		          <div class="syPub_list">
		              
		              <a style=":active{color:black;text-decoration:none;}" target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>">
						<c:choose>
							<c:when test="${not empty brand.imageUrl }">
							<div style="background: url(<s:url value='${brand.imageUrl }'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">
							</c:when>
							<c:otherwise>
							<div style="background: url(<s:url value='/images/brands_img/${brand.brandCategory.categoryId}_imagemagick_small.jpg'/>) no-repeat;background-size:200px 200px;width:200px;height:200px;">   
							</c:otherwise>
						</c:choose>		
			          		<div style="font-family:Microsoft YaHei;font-size:25px;padding-top: 80px;text-align: center;">${brand.name}</div>
							 
			            </div>
		 			  </a>
		 			  
		 			  <div>
			          <h3>
			          	<a target="_blank" title="${brand.name}" href="<s:url value='/brand/getbrandDetail.html'/>?brandId=<c:out value='${brand.id}'/>" class="overflow_clear">${brand.name}</a>
			          </h3>
			        
			          <hr style="border:none 0px; border-bottom: 1px solid #e0e0e0; margin-top:6px;"/>
			          <div class="btn_box">
				          <div class="left price">&yen;${brand.price}</div>
				          <div class="right">
				          	<button title="${brand.name}" onclick="getbrandDetail(${brand.id})"  class="btn">立即抢购</button>
				          </div>
			          </div>
		          </div>
		      	</li>
				
			</c:forEach>
	    
	    </ul>  
		
		</div>
	</div>	
</div>

<script type="text/javascript">
function getbrandDetail(brandId) {
	window.location.href="<s:url value='/brand/getbrandDetail.html'/>?brandId=" + brandId;
}
</script>
