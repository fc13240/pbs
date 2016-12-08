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
										<li><a title="发明专利" target="_blank" href="<s:url value='/business/patent_registration.html?type=1'/>">发明专利</a></li>
										<li><a title="实用新型" target="_blank" href="<s:url value='/business/patent_registration.html?type=2'/>">实用新型</a></li>
										<li><a title="外观设计" target="_blank" href="<s:url value='/business/patent_registration.html?type=3'/>">外观设计</a></li>
										<li><a title="普通版权" target="_blank" href="<s:url value='/business/copyright_registration.html?type=1'/>">普通版权</a></li>
										<li><a title="计算机版权" target="_blank" href="<s:url value='/business/copyright_registration.html?type=2'/>">计算机版权</a></li>
										<li><a title="办公文具" target="_blank" href="<s:url value='/brand/showBrandsList.html?categoryId=16&currentPage=1'/>">办公文具</a></li>
										<li><a title="日化用品" target="_blank" href="<s:url value='/brand/showBrandsList.html?categoryId=3&currentPage=1'/>">日化用品</a></li>
										<li><a title="医用药品" target="_blank" href="<s:url value='/brand/showBrandsList.html?categoryId=5&currentPage=1'/>">医用药品</a></li>
										<li><a title="厨房洁具" target="_blank" href="<s:url value='/brand/showBrandsList.html?categoryId=21&currentPage=1'/>">厨房洁具</a></li>
										<li><a title="餐饮住宿" target="_blank" href="<s:url value='/brand/showBrandsList.html?categoryId=43&currentPage=1'/>">餐饮住宿</a></li>
										<li><a title="健身娱乐" target="_blank" href="<s:url value='/brand/showBrandsList.html?categoryId=28&currentPage=1'/>">健身娱乐</a></li>
										<li><a title="珠宝钟表" target="_blank" href="<s:url value='/brand/showBrandsList.html?categoryId=14&currentPage=1'/>">珠宝钟表</a></li>
				</ul>
				
			</li>

	
			<c:forEach items="${AllColumns}" var="FirstColumn" varStatus="status">							
			<li class="top-item" style="height: 61px;">
				<dl>
                    <dt class="f-s16">${FirstColumn.name}</dt>
                    <dd>
                    <c:forEach items="${FirstColumn.secondColumns}" begin="0" end="1"  var="secondColumn" varStatus="status">
                    	<a href=""<s:url value='/patent/getGoodListBySecondColumn.html?secondColumnId=${secondColumn.id}&secondColumnName=${secondColumn.name}'/>"" target="_blank">${secondColumn.name}</a>
                    </c:forEach>
               		</dd>
                </dl>
				<div class="sub" style="width:450px">
					<div class="title clearfix">
						<h4 class="Left"><a target="_blank" href="<s:url value='/'/>" class="red">${FirstColumn.name}<span class="darrow">&gt;&gt;</span></a></h4>
					</div>
					<div class="list clearfix">
					<c:forEach items="${FirstColumn.secondColumns}" var="secondColumn" varStatus="status">
						 <a href="<s:url value='/brand/showBrandsList.html?categoryId=16&currentPage=1'/>" class="sub-item" target="_blank">${secondColumn.name}</a> 
					</c:forEach>
					</div>

				</div>                
			</li>
			</c:forEach>
			
																
						
																	
		</ul>
	</div>
	

	<ul class="navigator">
      <li><a href="<s:url value='/'/>" title="龙图腾专利商标交易">首页</a></li>
      <li><a href="<s:url value='/patent/index.html'/>" title="专利">专利</a></li>
      <li><a href="<s:url value='/brand/index.html'/>" title="商标">商标</a></li>
      <li><a  id="JS_mll_head_menu_expr" href="<s:url value='/business/patent_article.html?shopType=2'/>" title="化工/冶金/生物">化工/冶金/生物</a></li>
      <li><a href="<s:url value='/business/patent_article.html?shopType=3'/>" title="专利申请">交通/包装/建筑</a></li>
      <li><a  href="<s:url value='/business/patent_article.html?shopType=4'/>" title="工商财务">电力/环保/通讯</a></li>
      <li><a target="_blank" href="http://g.lotut.com" title="专利管家">专利管家</a></li>   	   
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