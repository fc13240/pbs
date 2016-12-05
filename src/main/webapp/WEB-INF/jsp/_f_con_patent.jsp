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
	<div class="news-info-hd" style="clear:both;height: 50px;border-bottom: 2px solid #f99885;">
	        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_02.png'/>) no-repeat 0 -25px;">1F</div>
	        <h2>专利推荐</h2>                            
	</div>
	<div class="news-info-con" style="height: 340px;">
		<div class="news-info-bd clear">
		
		
			<div class="left-item">
		      <div class="g-item">
		        <div class="g-dtl"> 
		          <a href="<s:url value='/business/patent_article.html?shopType=1'/>" target="_blank"> 
		          	<img class="d-img" src="<s:url value='/images/patent_type_01.jpg'/>"> 
		          </a>
		          <a href="<s:url value='/business/patent_article.html?shopType=1'/>" target="_blank" title="农业/食品/医疗" class="d-name">
		          	<span style="margin-left:20px;font-size:14px;font-weight:700;line-height:45px;">农业/食品/医疗</span>
		          </a>
	        
				  <div>
					  <div style="float:left;width:100px;">
					  	<strong class="p-money"><sub class="m-mark">¥</sub><span class="m-count JS_async_price">1200</span></strong>
					  </div>
					  <div style="float:right;width:100px;" class="box_buy">
					  <a target="_blank" title="立即抢购" href="<s:url value='/business/patent_article.html?shopType=1'/>" class="btn_buy">立即抢购</a>
					  </div>
				  </div>     
		        </div>
		      </div> 	
			</div>	  

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




<div class="floor_1F">
	<div class="news-info-hd" style="clear:both;height: 50px;border-bottom: 2px solid #f99885;">
	        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_02.png'/>) no-repeat 0 -25px;">1F</div>
	        <h2>日常生活领域</h2>                            
	</div>
	<div class="news-info-con" style="height: 340px;">
		<div class="news-info-bd clear">
			
			<div class="sec">
                <div class="sec_l">
                	<img src="http://img3.wtoip.com/publish/ad/20160326/2016_03_26_12_00_024NBQmG.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160326/2016_03_26_12_00_024NBQmG.jpg" width="332" height="342" alt="仪器设备" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
								<div class="white_mask"></div>
					<div class="cgr_lists">
					<a class="f-db" href="" target="_blank">服装/鞋帽</a>
							<a class="f-db" href="" target="_blank">家具/家装</a>
							<a class="f-db" href="" target="_blank">家电/照明</a>
							<a class="f-db" href="" target="_blank">教学/学习</a>
							<a class="f-db" href="" target="_blank">市政/环卫</a>
							<a class="f-db" href="" target="_blank">体育/健身</a>
							<a class="f-db" href="" target="_blank">行政/办公</a>
							<a class="f-db" href="" target="_blank">娱乐/玩具</a>							<a class="f-db" href="" target="_blank">地质/矿产</a>
							<a class="f-db" href="" target="_blank">艺术/乐器</a>							
							<a class="f-db" href="" target="_blank">日常生活领域</a>	
							</div>
					
                    <div class="tag_box">
					
						<div class="tag_lists">
							</div>
						
						<div class="tag_lists">
							</div>
                    </div>
                </div>
				
				<div class="sec_r">
                    <ul>
						<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/84" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_45_42rus0HY.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_45_42rus0HY.jpg" width="213" height="259" alt="差示扫描量热仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/85" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_03dt6IIn.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_03dt6IIn.jpg" width="213" height="259" alt="电感耦合等离子体质谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/86" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_51I15jWz.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_51I15jWz.jpg" width="213" height="259" alt="原子吸收光谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/87" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_49_02EJGcCI.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_49_02EJGcCI.jpg" width="213" height="259" alt="600MHz 超导傅立叶变换核磁共振谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/88" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_53_20zZ5D25.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_53_20zZ5D25.jpg" width="213" height="259" alt="火焰/石墨炉原子吸收分光光度计" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/89" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_54_296XtlLD.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_54_296XtlLD.jpg" width="213" height="259" alt="蛋白质分离纯化系统" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/90" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_55_32pHu1AU.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_55_32pHu1AU.jpg" width="213" height="259" alt="全自动比表面积分析仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/94" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_18_20_37RybWxL.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_18_20_37RybWxL.jpg" width="213" height="259" alt="激光粒度分析仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									</ul>
                </div>
            </div>
			
			<div class="left-item">
		      <div class="g-item">
		        <div class="g-dtl"> 
		          <a href="<s:url value='/business/patent_article.html?shopType=1'/>" target="_blank"> 
		          	<img class="d-img" src="<s:url value='/images/patent_type_01.jpg'/>"> 
		          </a>
		          <a href="<s:url value='/business/patent_article.html?shopType=1'/>" target="_blank" title="农业/食品/医疗" class="d-name">
		          	<span style="margin-left:20px;font-size:14px;font-weight:700;line-height:45px;">农业/食品/医疗</span>
		          </a>
	        
				  <div>
					  <div style="float:left;width:100px;">
					  	<strong class="p-money"><sub class="m-mark">¥</sub><span class="m-count JS_async_price">1200</span></strong>
					  </div>
					  <div style="float:right;width:100px;" class="box_buy">
					  <a target="_blank" title="立即抢购" href="<s:url value='/business/patent_article.html?shopType=1'/>" class="btn_buy">立即抢购</a>
					  </div>
				  </div>     
		        </div>
		      </div> 	
			</div>	  
	
	
		
		
		</div>
	</div>
	
</div>

<div class="floor_1F">
	<div class="news-info-hd" style="clear:both;height: 50px;border-bottom: 2px solid #f99885;">
	        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_02.png'/>) no-repeat 0 -25px;">2F</div>
	        <h2>农林渔牧/食品</h2>                            
	</div>
	<div class="news-info-con" style="height: 340px;">
		<div class="news-info-bd clear">
			
			<div class="sec">
                <div class="sec_l">
                	<img src="http://img3.wtoip.com/publish/ad/20160326/2016_03_26_12_00_024NBQmG.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160326/2016_03_26_12_00_024NBQmG.jpg" width="332" height="342" alt="仪器设备" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
								<div class="white_mask"></div>
					<div class="cgr_lists">
					<a class="f-db" href="" target="_blank">农业</a>
							<a class="f-db" href="" target="_blank">林业</a>
							<a class="f-db" href="" target="_blank">渔业</a>
							<a class="f-db" href="" target="_blank">畜牧业</a>
							<a class="f-db" href="" target="_blank">肥料</a>
							<a class="f-db" href="" target="_blank">饲料</a>
							<a class="f-db" href="" target="_blank">农药</a>
							<a class="f-db" href="" target="_blank">兽药</a>							<a class="f-db" href="" target="_blank">地质/矿产</a>
							<a class="f-db" href="" target="_blank">食品/酒饮</a>							
							<a class="f-db" href="" target="_blank">农林渔牧/食品</a>	
							</div>
					
                    <div class="tag_box">
					
						<div class="tag_lists">
							</div>
						
						<div class="tag_lists">
							</div>
                    </div>
                </div>
				
				<div class="sec_r">
                    <ul>
						<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/84" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_45_42rus0HY.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_45_42rus0HY.jpg" width="213" height="259" alt="差示扫描量热仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/85" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_03dt6IIn.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_03dt6IIn.jpg" width="213" height="259" alt="电感耦合等离子体质谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/86" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_51I15jWz.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_51I15jWz.jpg" width="213" height="259" alt="原子吸收光谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/87" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_49_02EJGcCI.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_49_02EJGcCI.jpg" width="213" height="259" alt="600MHz 超导傅立叶变换核磁共振谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/88" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_53_20zZ5D25.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_53_20zZ5D25.jpg" width="213" height="259" alt="火焰/石墨炉原子吸收分光光度计" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/89" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_54_296XtlLD.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_54_296XtlLD.jpg" width="213" height="259" alt="蛋白质分离纯化系统" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/90" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_55_32pHu1AU.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_55_32pHu1AU.jpg" width="213" height="259" alt="全自动比表面积分析仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/94" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_18_20_37RybWxL.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_18_20_37RybWxL.jpg" width="213" height="259" alt="激光粒度分析仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									</ul>
                </div>
            </div>
			
			<div class="left-item">
		      <div class="g-item">
		        <div class="g-dtl"> 
		          <a href="<s:url value='/business/patent_article.html?shopType=1'/>" target="_blank"> 
		          	<img class="d-img" src="<s:url value='/images/patent_type_01.jpg'/>"> 
		          </a>
		          <a href="<s:url value='/business/patent_article.html?shopType=1'/>" target="_blank" title="农业/食品/医疗" class="d-name">
		          	<span style="margin-left:20px;font-size:14px;font-weight:700;line-height:45px;">农业/食品/医疗</span>
		          </a>
	        
				  <div>
					  <div style="float:left;width:100px;">
					  	<strong class="p-money"><sub class="m-mark">¥</sub><span class="m-count JS_async_price">1200</span></strong>
					  </div>
					  <div style="float:right;width:100px;" class="box_buy">
					  <a target="_blank" title="立即抢购" href="<s:url value='/business/patent_article.html?shopType=1'/>" class="btn_buy">立即抢购</a>
					  </div>
				  </div>     
		        </div>
		      </div> 	
			</div>	  
	
	
		
		
		</div>
	</div>
	
</div>

<!-- 3f bg -->
<div class="floor_1F">
	<div class="news-info-hd" style="clear:both;height: 50px;border-bottom: 2px solid #f99885;">
	        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_02.png'/>) no-repeat 0 -25px;">3F</div>
	        <h2>医疗/保健/美容</h2>                            
	</div>
	<div class="news-info-con" style="height: 340px;">
		<div class="news-info-bd clear">
			
			<div class="sec">
                <div class="sec_l">
                	<img src="http://img3.wtoip.com/publish/ad/20160326/2016_03_26_12_00_024NBQmG.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160326/2016_03_26_12_00_024NBQmG.jpg" width="332" height="342" alt="仪器设备" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
								<div class="white_mask"></div>
					<div class="cgr_lists">
					<a class="f-db" href="" target="_blank">医药/中西药</a>
							<a class="f-db" href="" target="_blank">医药加工</a>
							<a class="f-db" href="" target="_blank">医疗器械</a>
							<a class="f-db" href="" target="_blank">医疗用品</a>
							<a class="f-db" href="" target="_blank">消毒洁净</a>
							<a class="f-db" href="" target="_blank">保健品</a>
							<a class="f-db" href="" target="_blank">保健器械</a>
							<a class="f-db" href="" target="_blank">美容护肤</a>							<a class="f-db" href="" target="_blank">地质/矿产</a>
							<a class="f-db" href="" target="_blank">日化领域</a>							
							<a class="f-db" href="" target="_blank">医疗/保健/美容</a>	
							</div>
					
                    <div class="tag_box">
					
						<div class="tag_lists">
							</div>
						
						<div class="tag_lists">
							</div>
                    </div>
                </div>
				
				<div class="sec_r">
                    <ul>
						<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/84" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_45_42rus0HY.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_45_42rus0HY.jpg" width="213" height="259" alt="差示扫描量热仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/85" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_03dt6IIn.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_03dt6IIn.jpg" width="213" height="259" alt="电感耦合等离子体质谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/86" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_51I15jWz.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_51I15jWz.jpg" width="213" height="259" alt="原子吸收光谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/87" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_49_02EJGcCI.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_49_02EJGcCI.jpg" width="213" height="259" alt="600MHz 超导傅立叶变换核磁共振谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/88" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_53_20zZ5D25.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_53_20zZ5D25.jpg" width="213" height="259" alt="火焰/石墨炉原子吸收分光光度计" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/89" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_54_296XtlLD.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_54_296XtlLD.jpg" width="213" height="259" alt="蛋白质分离纯化系统" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/90" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_55_32pHu1AU.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_55_32pHu1AU.jpg" width="213" height="259" alt="全自动比表面积分析仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/94" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_18_20_37RybWxL.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_18_20_37RybWxL.jpg" width="213" height="259" alt="激光粒度分析仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									</ul>
                </div>
            </div>
			
			<div class="left-item">
		      <div class="g-item">
		        <div class="g-dtl"> 
		          <a href="<s:url value='/business/patent_article.html?shopType=1'/>" target="_blank"> 
		          	<img class="d-img" src="<s:url value='/images/patent_type_01.jpg'/>"> 
		          </a>
		          <a href="<s:url value='/business/patent_article.html?shopType=1'/>" target="_blank" title="农业/食品/医疗" class="d-name">
		          	<span style="margin-left:20px;font-size:14px;font-weight:700;line-height:45px;">农业/食品/医疗</span>
		          </a>
	        
				  <div>
					  <div style="float:left;width:100px;">
					  	<strong class="p-money"><sub class="m-mark">¥</sub><span class="m-count JS_async_price">1200</span></strong>
					  </div>
					  <div style="float:right;width:100px;" class="box_buy">
					  <a target="_blank" title="立即抢购" href="<s:url value='/business/patent_article.html?shopType=1'/>" class="btn_buy">立即抢购</a>
					  </div>
				  </div>     
		        </div>
		      </div> 	
			</div>	  
	
	
		
		
		</div>
	</div>
	
</div>

<!-- 4f bg -->
<div class="floor_1F">
	<div class="news-info-hd" style="clear:both;height: 50px;border-bottom: 2px solid #f99885;">
	        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_02.png'/>) no-repeat 0 -25px;">4F</div>
	        <h2>机电/能源/环保</h2>                            
	</div>
	<div class="news-info-con" style="height: 340px;">
		<div class="news-info-bd clear">
			
			<div class="sec">
                <div class="sec_l">
                	<img src="http://img3.wtoip.com/publish/ad/20160326/2016_03_26_12_00_024NBQmG.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160326/2016_03_26_12_00_024NBQmG.jpg" width="332" height="342" alt="仪器设备" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
								<div class="white_mask"></div>
					<div class="cgr_lists">
					<a class="f-db" href="" target="_blank">机电工程</a>
							<a class="f-db" href="" target="_blank">机械工程</a>
							<a class="f-db" href="" target="_blank">模具铸造</a>
							<a class="f-db" href="" target="_blank">生产加工</a>
							<a class="f-db" href="" target="_blank">五金配件</a>
							<a class="f-db" href="" target="_blank">电力工程</a>
							<a class="f-db" href="" target="_blank">新能源</a>
							<a class="f-db" href="" target="_blank">矿产开采</a>							<a class="f-db" href="" target="_blank">地质/矿产</a>
							<a class="f-db" href="" target="_blank">环保领域</a>							
							<a class="f-db" href="" target="_blank">机电/能源/环保</a>	
							</div>
					
                    <div class="tag_box">
					
						<div class="tag_lists">
							</div>
						
						<div class="tag_lists">
							</div>
                    </div>
                </div>
				
				<div class="sec_r">
                    <ul>
						<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/84" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_45_42rus0HY.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_45_42rus0HY.jpg" width="213" height="259" alt="差示扫描量热仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/85" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_03dt6IIn.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_03dt6IIn.jpg" width="213" height="259" alt="电感耦合等离子体质谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/86" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_51I15jWz.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_51I15jWz.jpg" width="213" height="259" alt="原子吸收光谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/87" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_49_02EJGcCI.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_49_02EJGcCI.jpg" width="213" height="259" alt="600MHz 超导傅立叶变换核磁共振谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/88" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_53_20zZ5D25.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_53_20zZ5D25.jpg" width="213" height="259" alt="火焰/石墨炉原子吸收分光光度计" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/89" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_54_296XtlLD.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_54_296XtlLD.jpg" width="213" height="259" alt="蛋白质分离纯化系统" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/90" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_55_32pHu1AU.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_55_32pHu1AU.jpg" width="213" height="259" alt="全自动比表面积分析仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/94" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_18_20_37RybWxL.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_18_20_37RybWxL.jpg" width="213" height="259" alt="激光粒度分析仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									</ul>
                </div>
            </div>
			
			<div class="left-item">
		      <div class="g-item">
		        <div class="g-dtl"> 
		          <a href="<s:url value='/business/patent_article.html?shopType=1'/>" target="_blank"> 
		          	<img class="d-img" src="<s:url value='/images/patent_type_01.jpg'/>"> 
		          </a>
		          <a href="<s:url value='/business/patent_article.html?shopType=1'/>" target="_blank" title="农业/食品/医疗" class="d-name">
		          	<span style="margin-left:20px;font-size:14px;font-weight:700;line-height:45px;">农业/食品/医疗</span>
		          </a>
	        
				  <div>
					  <div style="float:left;width:100px;">
					  	<strong class="p-money"><sub class="m-mark">¥</sub><span class="m-count JS_async_price">1200</span></strong>
					  </div>
					  <div style="float:right;width:100px;" class="box_buy">
					  <a target="_blank" title="立即抢购" href="<s:url value='/business/patent_article.html?shopType=1'/>" class="btn_buy">立即抢购</a>
					  </div>
				  </div>     
		        </div>
		      </div> 	
			</div>	  
	
	
		
		
		</div>
	</div>
	
</div>

<!-- 5f bg -->
<div class="floor_1F">
	<div class="news-info-hd" style="clear:both;height: 50px;border-bottom: 2px solid #f99885;">
	        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_02.png'/>) no-repeat 0 -25px;">5F</div>
	        <h2>化工/冶金/纺织</h2>                            
	</div>
	<div class="news-info-con" style="height: 340px;">
		<div class="news-info-bd clear">
			
			<div class="sec">
                <div class="sec_l">
                	<img src="http://img3.wtoip.com/publish/ad/20160326/2016_03_26_12_00_024NBQmG.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160326/2016_03_26_12_00_024NBQmG.jpg" width="332" height="342" alt="仪器设备" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
								<div class="white_mask"></div>
					<div class="cgr_lists">
					<a class="f-db" href="" target="_blank">化工设备</a>
							<a class="f-db" href="" target="_blank">化工材料</a>
							<a class="f-db" href="" target="_blank">石化领域</a>
							<a class="f-db" href="" target="_blank">生物工程</a>
							<a class="f-db" href="" target="_blank">基因工程</a>
							<a class="f-db" href="" target="_blank">冶金领域</a>
							<a class="f-db" href="" target="_blank">纺织领域</a>
							<a class="f-db" href="" target="_blank">皮革领域</a>							<a class="f-db" href="" target="_blank">地质/矿产</a>
							<a class="f-db" href="" target="_blank">造纸领域</a>							
							<a class="f-db" href="" target="_blank">化工/冶金/纺织</a>	
							</div>
					
                    <div class="tag_box">
					
						<div class="tag_lists">
							</div>
						
						<div class="tag_lists">
							</div>
                    </div>
                </div>
				
				<div class="sec_r">
                    <ul>
						<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/84" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_45_42rus0HY.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_45_42rus0HY.jpg" width="213" height="259" alt="差示扫描量热仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/85" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_03dt6IIn.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_03dt6IIn.jpg" width="213" height="259" alt="电感耦合等离子体质谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/86" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_51I15jWz.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_51I15jWz.jpg" width="213" height="259" alt="原子吸收光谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/87" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_49_02EJGcCI.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_49_02EJGcCI.jpg" width="213" height="259" alt="600MHz 超导傅立叶变换核磁共振谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/88" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_53_20zZ5D25.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_53_20zZ5D25.jpg" width="213" height="259" alt="火焰/石墨炉原子吸收分光光度计" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/89" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_54_296XtlLD.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_54_296XtlLD.jpg" width="213" height="259" alt="蛋白质分离纯化系统" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/90" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_55_32pHu1AU.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_55_32pHu1AU.jpg" width="213" height="259" alt="全自动比表面积分析仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/94" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_18_20_37RybWxL.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_18_20_37RybWxL.jpg" width="213" height="259" alt="激光粒度分析仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									</ul>
                </div>
            </div>
			
			<div class="left-item">
		      <div class="g-item">
		        <div class="g-dtl"> 
		          <a href="<s:url value='/business/patent_article.html?shopType=1'/>" target="_blank"> 
		          	<img class="d-img" src="<s:url value='/images/patent_type_01.jpg'/>"> 
		          </a>
		          <a href="<s:url value='/business/patent_article.html?shopType=1'/>" target="_blank" title="农业/食品/医疗" class="d-name">
		          	<span style="margin-left:20px;font-size:14px;font-weight:700;line-height:45px;">农业/食品/医疗</span>
		          </a>
	        
				  <div>
					  <div style="float:left;width:100px;">
					  	<strong class="p-money"><sub class="m-mark">¥</sub><span class="m-count JS_async_price">1200</span></strong>
					  </div>
					  <div style="float:right;width:100px;" class="box_buy">
					  <a target="_blank" title="立即抢购" href="<s:url value='/business/patent_article.html?shopType=1'/>" class="btn_buy">立即抢购</a>
					  </div>
				  </div>     
		        </div>
		      </div> 	
			</div>	  
	
	
		
		
		</div>
	</div>
	
</div>

<!-- 6f bg -->
<div class="floor_1F">
	<div class="news-info-hd" style="clear:both;height: 50px;border-bottom: 2px solid #f99885;">
	        <div class="floor_num" style="background: url(<s:url value='/images/icon_floorNav_02.png'/>) no-repeat 0 -25px;">6F</div>
	        <h2>建筑/交通/通讯</h2>                            
	</div>
	<div class="news-info-con" style="height: 340px;">
		<div class="news-info-bd clear">
			
			<div class="sec">
                <div class="sec_l">
                	<img src="http://img3.wtoip.com/publish/ad/20160326/2016_03_26_12_00_024NBQmG.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160326/2016_03_26_12_00_024NBQmG.jpg" width="332" height="342" alt="仪器设备" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
								<div class="white_mask"></div>
					<div class="cgr_lists">
					<a class="f-db" href="" target="_blank">建筑领域</a>
							<a class="f-db" href="" target="_blank">水利公路桥梁</a>
							<a class="f-db" href="" target="_blank">交通领域</a>
							<a class="f-db" href="" target="_blank">交通工具及配件</a>
							<a class="f-db" href="" target="_blank">物流仓储</a>
							<a class="f-db" href="" target="_blank">通信领域</a>
							<a class="f-db" href="" target="_blank">互联网物联网</a>
							<a class="f-db" href="" target="_blank">电子电路及元件</a>							<a class="f-db" href="" target="_blank">地质/矿产</a>
							<a class="f-db" href="" target="_blank">手机电脑及配件</a>							
							<a class="f-db" href="" target="_blank">建筑/交通/通讯</a>	
							</div>
					
                    <div class="tag_box">
					
						<div class="tag_lists">
							</div>
						
						<div class="tag_lists">
							</div>
                    </div>
                </div>
				
				<div class="sec_r">
                    <ul>
						<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/84" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_45_42rus0HY.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_45_42rus0HY.jpg" width="213" height="259" alt="差示扫描量热仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/85" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_03dt6IIn.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_03dt6IIn.jpg" width="213" height="259" alt="电感耦合等离子体质谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/86" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_51I15jWz.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_47_51I15jWz.jpg" width="213" height="259" alt="原子吸收光谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/87" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_49_02EJGcCI.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_49_02EJGcCI.jpg" width="213" height="259" alt="600MHz 超导傅立叶变换核磁共振谱仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/88" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_53_20zZ5D25.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_53_20zZ5D25.jpg" width="213" height="259" alt="火焰/石墨炉原子吸收分光光度计" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/89" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_54_296XtlLD.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_54_296XtlLD.jpg" width="213" height="259" alt="蛋白质分离纯化系统" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/90" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_55_32pHu1AU.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_17_55_32pHu1AU.jpg" width="213" height="259" alt="全自动比表面积分析仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									<li>
										<a class="f-db" href="http://reslib.wtoip.com/equip/detail/94" target="_blank">
											<img src="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_18_20_37RybWxL.jpg" class="lazy f-db" data-url="http://img3.wtoip.com/publish/ad/20160129/2016_01_29_18_20_37RybWxL.jpg" width="213" height="259" alt="激光粒度分析仪" onerror="javascript:this.src='/home/img/bg/no_photo_error.jpg'">
										</a> 
									</li>
									</ul>
                </div>
            </div>
			
			<div class="left-item">
		      <div class="g-item">
		        <div class="g-dtl"> 
		          <a href="<s:url value='/business/patent_article.html?shopType=1'/>" target="_blank"> 
		          	<img class="d-img" src="<s:url value='/images/patent_type_01.jpg'/>"> 
		          </a>
		          <a href="<s:url value='/business/patent_article.html?shopType=1'/>" target="_blank" title="农业/食品/医疗" class="d-name">
		          	<span style="margin-left:20px;font-size:14px;font-weight:700;line-height:45px;">农业/食品/医疗</span>
		          </a>
	        
				  <div>
					  <div style="float:left;width:100px;">
					  	<strong class="p-money"><sub class="m-mark">¥</sub><span class="m-count JS_async_price">1200</span></strong>
					  </div>
					  <div style="float:right;width:100px;" class="box_buy">
					  <a target="_blank" title="立即抢购" href="<s:url value='/business/patent_article.html?shopType=1'/>" class="btn_buy">立即抢购</a>
					  </div>
				  </div>     
		        </div>
		      </div> 	
			</div>	  
	
	
		
		
		</div>
	</div>
	
</div>
<script type="text/javascript">
function getbrandDetail(brandId) {
	window.location.href="<s:url value='/brand/getbrandDetail.html'/>?brandId=" + brandId;
}
</script>
