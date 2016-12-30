<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
.top-item dl a{
color:#ffffff !important;
margin-right:5px;
}
.top-item{
padding-left:10px;
}
.top-item:hover dl a{
color:#c9033b !important;
}
.top-item .f-s16{
color:#ffffff !important;
margin-right:5px;
}
.top-item:hover .f-s16{
color:#c9033b !important;
}

.top-item .top_tuijian{
color:#ffffff !important;
margin-right:5px;
}
.top-item:hover .top_tuijian{
color:#c9033b !important;
}
</style>
<div class="w clearfix">
	<div id="JS_mll_header_menu_panel" class="menu-panel forbid">
		<h2 style="margin-top: 0px;"><span>全部商品分类</span></h2>
		<ul id="JS_mll_menu_map" class="top" >
			
			<li class="top-item recommend" style="height: 31px;">
				
				<span class="top_tuijian">精选推荐</span>
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
				
			</li>

	
			<c:forEach items="${AllColumns}" var="FirstColumn" varStatus="status">							
			<li class="top-item" style="height: 61px;">
				<dl>
                    <dt class="f-s16">${FirstColumn.name}</dt>
                    <dd>
                    <c:forEach items="${FirstColumn.secondColumns}" begin="0" end="1"  var="secondColumn" varStatus="status">
                    	<a href="<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=${secondColumn.id}&secondColumnName=${secondColumn.name}'/>" target="_blank">${secondColumn.name}</a>
                    </c:forEach>
               		</dd>
                </dl>
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
			</li>
			</c:forEach>
			
																
						
																	
		</ul>
	</div>
	

	<ul class="navigator">
      <li><a href="<s:url value='/'/>" title="龙图腾专利商标交易">首页</a></li>
      <li><a href="<s:url value='/patent/index.html'/>" title="专利">专利市场</a></li>
      <li><a href="<s:url value='/brand/index.html'/>" title="商标">商标市场</a></li>
      <li><a href="<s:url value='/patent/getAlreadySalePatent.html'/>" title="专利案例">专利案例</a></li>
      <li><a href="<s:url value='/brand/alreadySalebrands.html'/>" title="商标案例">商标案例</a></li>
      <li><a target="_blank" href="http://g.lotut.com" title="专利管家">专利管家</a></li>
      <li><a href="<s:url value='/patent/getLotutSelfSupportPatents.html'/>" title="龙图腾自营">龙图腾自营
       <i class="hot" title="龙图腾自营"></i>
      </a></li>  	   
	</ul>
</div>
<iframe id="feeExcelFileFrame" style="display:none"></iframe>	  
<script>
function exportFees() {
	
	var iframe = document.getElementById('feeExcelFileFrame');
	iframe.src = "/patent/exportPatents.html";		
}
</script>