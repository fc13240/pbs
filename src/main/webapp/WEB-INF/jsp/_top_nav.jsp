<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<s:url value='/css/mll.common.min.css?20160311'/>" />
<link href="<s:url value='/css/category.min.css?2016322'/>" rel="stylesheet" type="text/css"/> 
<link rel="stylesheet" href="http://r.lotut.com/Themes/Home/default/Public/css/top_footer.css">
<style>
.navigator li .hot {
    width: 12px;
    height: 12px;
    margin-top: 3px;
    background-position: -167px -65px;
    _margin-top: -3px;
}

.navigator li  i {
    background: url(<s:url value='/images/common/menu-icon.png?1516'/>) no-repeat;
    _background: url(<s:url value='/images/common/menu-icon.gif?1516'/>) no-repeat;
    float: left;}
</style>
<div class="w clearfix">
	<div id="JS_mll_header_menu_panel" class="menu-panel forbid">
		<h2 style="margin-top: 0px;"><span>全部商品分类</span></h2>
		<ul id="JS_mll_menu_map" class="top" style="padding-bottom:0;">
			
			<li class="top-item recommend" style="height: 40px;">
				<em class="flag flag0" style="margin-top: 11px;"></em>
				<span class="txt" style="height:40px;line-height:40px;font-size:13px;">精选推荐</span>
				<ul id="JS_sub_recommend" data-show="show" style="width: 120px;">
					<li><a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=3&secondColumnName=家具/家装'/>" class="sub-item" target="_blank">家具/家装</a></li>
					<li><a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=2&secondColumnName=服装/鞋帽'/>" class="sub-item" target="_blank">服装/鞋帽</a></li>
					<li><a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=8&secondColumnName=体育/健身'/>" class="sub-item" target="_blank">体育/健身</a></li>
					<li><a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=36&amp;secondColumnName=五金配件'/>" class="sub-item" target="_blank">五金配件</a></li>
					<li><a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=20&amp;secondColumnName=食品/酒饮'/>" class="sub-item" target="_blank">食品/酒饮</a></li>
					<li><a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=10&secondColumnName=娱乐/玩具'/>" class="sub-item" target="_blank">娱乐/玩具</a></li>
					<li><a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=29&amp;secondColumnName=美容护肤'/>" class="sub-item" target="_blank">美容护肤</a></li>
					<li><a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=22&amp;secondColumnName=医药/中西药'/>" class="sub-item" target="_blank">医药/中西药</a></li>
					<li><a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=58&amp;secondColumnName=互联网物联网'/>" class="sub-item" target="_blank">互联网物联网</a></li>
					<li><a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=52&amp;secondColumnName=建筑领域'/>" class="sub-item" target="_blank">建筑领域</a></li>
					<li><a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=48&amp;secondColumnName=纺织领域'/>" class="sub-item" target="_blank">纺织领域</a></li>
					<li><a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=40&amp;secondColumnName=环保领域'/>" class="sub-item" target="_blank">环保领域</a></li>

				</ul>
				<i class="arrow" style="margin-top: 17px;"></i>
			</li>
										
			<c:forEach items="${AllColumns}" var="FirstColumn" varStatus="status">							
			<li class="top-item" style="height: 40px;">
			<em class="flag flag1" style="margin-top: 11px;"></em>
				<a title="${FirstColumn.name}" class="txt" target="_blank" style="height:40px;line-height:40px;font-size:13px;" href="<s:url value='/'/>">${FirstColumn.name}</a>				
				<div class="sub" style="width:450px">
					<div class="title clearfix">
						<h4 class="Left"><a target="_blank" href="<s:url value='/'/>" class="red">${FirstColumn.name}<span class="darrow">&gt;&gt;</span></a></h4>
					</div>
					<div class="list clearfix">
					<c:forEach items="${FirstColumn.secondColumns}" var="secondColumn" varStatus="status">
						 <a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=${secondColumn.id}&secondColumnName=${secondColumn.name}'/>" class="sub-item" target="_blank">${secondColumn.name}</a> 
					</c:forEach>
					</div>

				</div>
				<i class="arrow" style="margin-top: 17px;"></i>                
			</li>
			</c:forEach>	
			
			
			<li class="top-item" style="height: 40px;">
				<em class="flag flag1" style="margin-top: 11px;"></em>
				<a title="商标01-15类" target="_blank" class="txt" style="height:40px;line-height:40px;font-size:13px;" href="<s:url value='/'/>">商标01-15类</a>				
				<div class="sub" style="width:450px">
					<div class="title clearfix">
						<h4 class="Left"><a target="_blank" href="<s:url value='/'/>" class="red">商标01-15类<span class="darrow">&gt;&gt;</span></a></h4>
					</div>
					<div class="list clearfix">
					
				  <a href="<s:url value='/brand/showBrandsList.html?categoryId=1&currentPage=1'/>" class="sub-item" target="_blank">第01类-化学原料</a> 
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=2&currentPage=1'/>" class="sub-item" target="_blank">第02类-颜料油漆</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=3&currentPage=1'/>" class="sub-item" target="_blank">第03类-日化用品</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=4&currentPage=1'/>" class="sub-item" target="_blank">第04类-燃料油脂</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=5&currentPage=1'/>" class="sub-item" target="_blank">第05类-医用药品</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=6&currentPage=1'/>" class="sub-item" target="_blank">第06类-金属材料</a> 
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=7&currentPage=1'/>" class="sub-item" target="_blank">第07类-机械设备</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=8&currentPage=1'/>" class="sub-item" target="_blank">第08类-手工器械</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=9&currentPage=1'/>" class="sub-item" target="_blank">第09类-科学仪器</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=10&currentPage=1'/>" class="sub-item" target="_blank">第10类-医疗器械</a> 
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=11&currentPage=1'/>" class="sub-item" target="_blank">第11类-家用电器</a> 
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=12&currentPage=1'/>" class="sub-item" target="_blank">第12类-运输工具</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=13&currentPage=1'/>" class="sub-item" target="_blank">第13类-军火烟火</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=14&currentPage=1'/>" class="sub-item" target="_blank">第14类-珠宝钟表</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=15&currentPage=1'/>" class="sub-item" target="_blank">第15类-音乐器材</a>

									
					</div>

				</div>
				<i class="arrow" style="margin-top: 17px;"></i>
			</li>
			
			<li class="top-item" style="height: 40px;">
				<em class="flag flag1" style="margin-top: 11px;"></em>
				<a title="商标16-30类" target="_blank" class="txt" style="height:40px;line-height:40px;font-size:13px;" href="<s:url value='/'/>">商标16-30类</a>				
				<div class="sub" style="width:450px">
					<div class="title clearfix">
						<h4 class="Left"><a target="_blank" href="<s:url value='/'/>" class="red">商标16-30类<span class="darrow">&gt;&gt;</span></a></h4>
					</div>
					<div class="list clearfix">

                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=16&currentPage=1'/>" class="sub-item" target="_blank">第16类-办公文具</a> 
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=17&currentPage=1'/>" class="sub-item" target="_blank">第17类-橡胶制品</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=18&currentPage=1'/>" class="sub-item" target="_blank">第18类-皮革皮具</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=19&currentPage=1'/>" class="sub-item" target="_blank">第19类-建筑材料</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=20&currentPage=1'/>" class="sub-item" target="_blank">第20类-家具用品</a> 
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=21&currentPage=1'/>" class="sub-item" target="_blank">第21类-厨房洁具</a> 
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=22&currentPage=1'/>" class="sub-item" target="_blank">第22类-绳网袋篷</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=23&currentPage=1'/>" class="sub-item" target="_blank">第23类-纺织纱线</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=24&currentPage=1'/>" class="sub-item" target="_blank">第24类-布料床单</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=25&currentPage=1'/>" class="sub-item" target="_blank">第25类-服装鞋帽</a> 
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=26&currentPage=1'/>" class="sub-item" target="_blank">第26类-花边配饰</a> 
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=27&currentPage=1'/>" class="sub-item" target="_blank">第27类-地毯席垫</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=28&currentPage=1'/>" class="sub-item" target="_blank">第28类-健身娱乐</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=29&currentPage=1'/>" class="sub-item" target="_blank">第29类-肉食蜜饯</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=30&currentPage=1'/>" class="sub-item" target="_blank">第30类-小食配料</a> 
									
					</div>

				</div>
				<i class="arrow" style="margin-top: 17px;"></i>
			</li>
			<li class="top-item" style="height: 40px;">
				<em class="flag flag1" style="margin-top: 11px;"></em>
				<a title="商标31-45类" target="_blank" class="txt" style="height:40px;line-height:40px;font-size:13px;" href="<s:url value='/'/>">商标31-45类</a>				
				<div class="sub" style="width:450px">
					<div class="title clearfix">
						<h4 class="Left"><a target="_blank" href="<s:url value='/'/>" class="red">商标31-45类<span class="darrow">&gt;&gt;</span></a></h4>
					</div>
					<div class="list clearfix">
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=31&currentPage=1'/>" class="sub-item" target="_blank">第31类-饲料花木</a> 
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=32&currentPage=1'/>" class="sub-item" target="_blank">第32类-啤酒饮料</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=33&currentPage=1'/>" class="sub-item" target="_blank">第33类-酒精饮料</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=34&currentPage=1'/>" class="sub-item" target="_blank">第34类-烟草烟具</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=35&currentPage=1'/>" class="sub-item" target="_blank">第35类-广告销售</a>

                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=36&currentPage=1'/>" class="sub-item" target="_blank">第36类-金融物管</a> 
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=37&currentPage=1'/>" class="sub-item" target="_blank">第37类-建筑修理</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=38&currentPage=1'/>" class="sub-item" target="_blank">第38类-通讯服务</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=39&currentPage=1'/>" class="sub-item" target="_blank">第39类-运输贮藏</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=40&currentPage=1'/>" class="sub-item" target="_blank">第40类-材料加工</a>

                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=41&currentPage=1'/>" class="sub-item" target="_blank">第41类-教育娱乐</a> 
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=42&currentPage=1'/>" class="sub-item" target="_blank">第42类-技术服务</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=43&currentPage=1'/>" class="sub-item" target="_blank">第43类-餐饮住宿</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=44&currentPage=1'/>" class="sub-item" target="_blank">第44类-医疗园艺</a>
                  <a href="<s:url value='/brand/showBrandsList.html?categoryId=45&currentPage=1'/>" class="sub-item" target="_blank">第45类-社会服务</a>

        
        				
					</div>

				</div>
				<i class="arrow" style="margin-top: 17px;"></i>
			</li>														
		</ul>
	</div>
	

	<ul class="navigator">
      <li><a href="<s:url value='/'/>" title="龙图腾专利商标交易">首页</a></li>
      <li><a href="<s:url value='http://www.lotut.com'/>" title="专利">创意门户</a></li>
      <li><a href="<s:url value='http://ip.lotut.com'/>" title="专利">专利市场</a></li>
      <li><a href="<s:url value='/brand/index.html'/>" title="商标">商标市场</a></li>
     <%--  <li><a href="<s:url value='/patent/getAlreadySalePatent.html'/>" title="专利案例">专利案例</a></li>
      <li><a href="<s:url value='/brand/alreadySalebrands.html'/>" title="商标案例">商标案例</a></li> --%>
      <li><a target="_blank" href="http://g.lotut.com" title="专利管家">专利管家</a></li>
      <li><a href="<s:url value='/patent/getLotutSelfSupportPatents.html'/>" title="龙图腾自营">
      <i class="hot" title="龙图腾自营"></i>龙图腾自营       
      </a></li>   	   
	</ul>
</div>
<iframe id="feeExcelFileFrame" style="display:none"></iframe>	  
<script>
function exportFees() {
	alert(123);
	var iframe = document.getElementById('feeExcelFileFrame');
	iframe.src = "/patent/exportPatents.html";		
}
</script>