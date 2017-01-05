<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="spring" prefix="s" %>
<%@ taglib uri="c" prefix="c" %>
<%@ taglib uri="fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>专利交易-${good.firstColumn.name }</title>
<meta name="keywords" content="专利交易" />
<meta name="description" content="专利交易" />
<meta itemprop="name" content="" />
<meta http-equiv="cache-control" content="no-transform">
<link rel="stylesheet" href="<s:url value='/css/mll.common.min.css?20160311'/>" />
<link href="<s:url value='/css/category.min.css?2016322'/>" rel="stylesheet" type="text/css"/> 
<link rel="stylesheet" href="<s:url value='/Themes/Home/default/Public/css/top_footer.css'/>">
<script type="text/javascript" src="<s:url value='/public/javascript/jquery-1.8.3.min.js'/>"></script> 
<link rel="stylesheet" href="<s:url value='/css/details.css'/>" />



<link rel="stylesheet" href="<s:url value='/temp/css/bootstrap.min.css'/>" />
<script src="<s:url value='/static/js/bootstrap.min.js'/>" type="text/javascript"></script>


</head>
<body>
<style type="text/css">

.s-class {
border: 1px solid #bababa;
float: left;
height: 34px;
line-height: 34px;
text-align: center;
cursor: pointer;
margin-top: 10px;
margin-right: 5px;
background: #f5f5f5;
font-size: 12px;
padding: 0 13px;
}
.s-hover {
background: url("<s:url value='/images/111.png'/>") no-repeat right 12px;
}
</style>
<script type="text/javascript">(function(){var screenWidth=window.screen.width;if(screenWidth>=1280){document.body.className=document.body.className+" root_body";;window.LOAD=true;}else{window.LOAD=false;}})()</script>


<div class="header-box">
	<div class="site-nav">
	<%@ include file="_site-nav.jsp"%>
	</div>
	
	<div class="page-header">
	<%@ include file="_page-header.jsp"%>
	</div>
	
	<div class="mll-navigator navigator-other">
 	<%@ include file="_top_nav_list.jsp"%>
	</div>
</div>


     
<link rel="stylesheet" href="<s:url value='/public/css/details.css'/>" />
<input type="hidden" id="J_val_title">
<!--当前位置-->
<div class="container">
  <div class="current-location" style="margin-top:0px;"> <a href="<s:url value='/index.html'/>">首页</a> > 专利交易</div>
</div>
<!--当前位置 end--> 

<!--专利、卖家信息-->

<div class="container box-red-line" >
	<div class="left-sec">
		<div class="flexslider">
      		<div class="picBtnLeft">
        		<div class="bd">
					<ul>
					  <li>
					  	<a href="#">
					  	<c:choose>
						<c:when test="${not empty good.patentImageUrl }">
						<img src="<s:url value='${good.patentImageUrl }'/>" >
						</c:when>
						<c:otherwise>
						<img src="<s:url value='/images/goods/${good.secondColumn.id }.jpg'/>" >
						</c:otherwise>
						</c:choose>                    
					  	</a>
					  </li>
					</ul>
        		</div>

      		</div>
    	</div>
	    <table class="goods-tb pos-rlt" width="580" border="0" cellspacing="0" cellpadding="0">
			<tr>
			<td  colspan="2">
			<span style="line-height: 44px;font-size:20px;collor:#000000;">
			<font style="font-weight: 700;">[${good.patentType.typeDescription }]${good.patentName }</font>&nbsp;<font color="#f08200" style="font-weight: bold;">${good.patentStatusText }</font>
			
			</span> 
			</td>
			</tr>
			   <tr style="border-bottom:1px dashed #ececec">
			  <td height="15">
			</tr>
			<tr>
			  <td width="250px;">专利号：${good.appNo }</td>
			<td>第一申请人：<span>${good.appPerson }</span></td>
			
			</tr>
			<tr>
			  <td width="250px;">申请日：<fmt:formatDate value="${good.appDate }" pattern="yyyy-MM-dd"/> </td>
			<%-- <td>发布日期：<fmt:formatDate value="${good.publishDate }" pattern="yyyy-MM-dd"/></td> --%>
			<td>发布日期：<fmt:formatDate value="${good.addDate }" pattern="yyyy-MM-dd"/></td>
			
			</tr>
			<tr>
			  <td width="250px;">所属领域：${good.firstColumn.name }</td>
			  <td>转让方：
			  	<a style="color:red;font-size:20px;cursor:pointer;" data-toggle = "modal" data-target = "#transferorModal">
					${good.transferor }
				</a>
				
				</td>
			
			</tr>
	
	         
			<tr style="border-top:1px dashed #ececec">
				<td>${good.transactionTypeText }价格：
				<span style="color:red;font-size:20px;">
				<c:if test="${good.price > 0}">&yen;${good.price }</c:if>
				<c:if test="${good.price == 0}">面议</c:if>
				</span>
				</td>
				<td>
       
				</td>
			</tr>
			<c:if test="${not empty good.description }">
			  <tr>
			  	<td colspan="2">说明：${good.description }</td>
			  </tr>
			</c:if>
			<tr >
				<td height="15" colspan="2"></td>
			</tr>
			<tr style="">
				<td colspan="2">
					<div style="float:left;">官方客服：</div>
					<div style="float:left;margin-left:15px;">  马环静：</div>
					<div style="float:left;">
					<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2851238686&site=qq&menu=yes"><img src="<s:url value='/Themes/Home/default/Public/image/zx_qq.gif'/>" border="0" style="" href="http://wpa.qq.com/pa?p=2:2851238686:51" alt="与客服小马进行交谈" title="与客服小马进行交谈"/></a>
					</div> 
					<div style="float:left;margin-left:15px;">肖莹莹：</div>
					<div style="float:left;">
						<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2851238688&site=qq&menu=yes"><img src="<s:url value='/Themes/Home/default/Public/image/zx_qq.gif'/>" border="0" href="http://wpa.qq.com/pa?p=2:2851238688:51" alt="与客服莹莹进行交谈" title="与客服莹莹进行交谈"/></a>
					</div>
				</td>
			</tr>
			<tr>
				<td class="po-re" colspan="2">
					<div class="yellowbg_tips">
						<strong>温馨提示：</strong>任何用户均可直接在专利管家免费发布交易信息。如您选择自行与转让方对接，请自行鉴别真伪，否则由此产生的所有风险均由您独自承担。建议您委托龙图腾官方客服作为您的交易经理人，以防被骗。
						
					</div>
				</td>
			</tr>
			<tr><td style="height:65px;"></td></tr>
	    </table>
	    
	    <div class="details_goods_wrap">
		<div class="content-top">
			<ul>
				<li class="active"><a href="#anchor1">专利详情</a></li>
				<li class=""><a href="#anchor3">交易流程</a></li>
				<li class=""><a href="#anchor4">过户材料</a></li>
               	<li class=""><a href="#anchor5">支付方式</a></li>
               	<li class=""><a href="#anchor6">同类专利</a></li>
			</ul>
		</div>
		<div class="list-item J_minTop">
			<h3 id="anchor1">专利详情</h3>
			<div class="list-item-main">
			<c:if test="${empty mongoPatent.patentAbstract}">
				此专利未公开
			</c:if>
			${mongoPatent.patentAbstract}
			</div>
		</div>
		
		<div class="list-item">
			 <h3 id="anchor3">交易流程</h3>
           <div class="list-item-step">
               <ul class="clear step4">
                   <li>买家选<br>
                       专利</li>
                   <li class="row1">下单付款</li>
                   <li>平台办理官<br>
                       方过户手续</li>
                   <li>支付卖方<br>
                       交易款</li>
               </ul>
           </div>
		</div>
		<div class="list-item">
			<h3 id="anchor4">过户材料</h3>
           <table class="list-item-material" cellspacing="0" cellpadding="0">
               <tbody><tr><th colspan="3" width="60%">买卖双方需提供材料</th><th width="20%">平台提供</th><th width="20%">过户后您将会获得</th></tr>
               <tr>
                   <td></td>
                   <td>公司</td>
                   <td>个人</td>
                   <td rowspan="3">专利代理委托书<br>
                       专利权转让协议<br>
                       办理文件副本请求书<br>
                       发明人变更声明</td>
                   <td rowspan="3">专利证书<br>
                       手续合格通知书<br>
                       专利登记簿副本</td>
               </tr>
               <tr>
                   <td>买家</td>
                   <td>企业营业执照<br>
                       企业组织机构代码证</td>
                   <td>身份证</td>
               </tr>
               <tr>
                   <td>卖家</td>
                   <td>企业营业执照<br>
                       专利证书原件</td>
                   <td>身份证<br>
                       专利证书原件</td>
               </tr>
           	</tbody></table>
		</div>
		<div class="list-item">
			<h3 id="anchor5">支付方式</h3>
           <ul class="list-item-pay clear">
               <li class="sml-width">
                   <div class="pay-ico"><i class="i-pay-ico i-pay-ye"></i>支付方式一</div>
                   <div class="pay-cont">
                       <p>支付方式一</p>
                   </div>
               </li>
               <li>
                   <div class="pay-ico"><i class="i-pay-ico i-pay-hk"></i>支付方式二</div>
                   <div class="pay-cont">
                       <p>支付方式二</p>
                   </div>
               </li>
               <li class="sml-width">
                   <div class="pay-ico"><i class="i-pay-ico i-pay-wy"></i>支付方式三</div>
                   <div class="pay-cont">
                       <p>支付方式三</p>
                   </div>
               </li>
               <li>
                   <div class="pay-ico"><i class="i-pay-ico i-pay-sm"></i>支付方式四</div>
                   <div class="pay-cont">
                       <p>支付方式四</p>
                   </div>
               </li>
           </ul>
		</div>
	   
	
	    <div class="list-item" >
	      <h3 style="font-size:16px;" id="anchor6">专利列表</h3>
			<ul class="h_second_list" >
			<c:forEach items="${patents}" var="patent">
				<li>
				<span class="h_list_tit" style="font-size:14px;">
					<a href="<s:url value='/patent/getPatentDetail.html?patentId=${patent.patent_id}'/>" target="_blank">[${patent.patent_type_name}]${patent.patent_name} - ${patent.app_no}</a>
				</span> 
				</li>			
			</c:forEach>
			</ul>
			<div class="i_m qs_clear" style="margin-left: 38px;"> 
			<c:if test="${page.totalPages > 0}">
	            <li>
		            <div class="col-lg-12" style="color:#333;"> 共 ${page.totalPages}页${page.totalRecords}条记录   
		          	 <span id="now-page"> 第 ${page.currentPage}页</span>
		             <span><a id="first-page" href="javascript:flashPage(${good.patentId},1)">首页</a>
		              <c:choose>
		                <c:when test="${page.currentPage - 1 > 0}"> <a id="before-page" href="javascript:flashPage(${good.patentId},${page.currentPage-1})">上一页</a> </c:when>
		                <c:when test="${page.currentPage - 1 <= 0}"> <a id="before-page"  href="javascript:flashPage(${good.patentId},${page.currentPage})">上一页</a> </c:when>
		              </c:choose>
		              <c:choose>
		                <c:when test="${page.totalPages==0}"> <a id="after-page" href="javascript:flashPage(${good.patentId},${page.currentPage})">下一页</a> </c:when>
		                <c:when test="${page.currentPage + 1 < page.totalPages}"> <a id="after-page" href="javascript:flashPage(${good.patentId},${page.currentPage+1})">下一页</a> </c:when>
		                <c:when test="${page.currentPage + 1 >= page.totalPages}"> <a id="after-page" href="javascript:flashPage(${good.patentId},${page.currentPage})">下一页</a> </c:when>
		              </c:choose>
		              <c:choose>
		                <c:when test="${page.totalPages==0}"> <a id="last-page" href="javascript:flashPage(${good.patentId},${page.currentPage})">尾页</a> </c:when>
		                <c:otherwise> <a id="last-page" href="javascript:flashPage(${good.patentId},${page.totalPages})">尾页</a> </c:otherwise>
		              </c:choose>
		              <!-- 分页功能 End -->
		              <input type="text" id="page.pageNo" style="width:50px;height:18px" name="currentPage" onKeyDown="gotoPageForEnter(event)"/>
		              <a href="javascript:void;" onClick="javascript:gotoPage()">跳转</a> 
		              </span>
		            </div>
				</li>
				<!-- 分页用原来的 -->
			</c:if>	
			</div> 
	    </div>
	    </div>
	</div>
 	<div class="right-sec">
	    <h2>精品推荐</h2>
	    <ul class="good-list-item">
	    
	      <li>
	      <c:forEach items="${recommedPatents}" var="patent">
	        <dl>
	          <dd class="pic"> 
	          	<a href="<s:url value='/patent/getPatentDetail.html'/>?patentId=<c:out value='${patent.patentId}'/>" target="_blank">
		   			<div style="position: relative;width:192px;height:154px;">   
						
						<c:choose>
											<c:when test="${not empty patent.patentImageUrl }">
												<img class="d-img" onerror="<s:url value='${patent.patentImageUrl }'/>" src="<s:url value='${patent.patentImageUrl }'/>" >
											</c:when>
											<c:otherwise>
												<img class="d-img" onerror="<s:url value='/images/goods/${patent.secondColumn.id}.jpg'/>" src="<s:url value='/images/goods/${patent.secondColumn.id}.jpg'/>">
											</c:otherwise>
										</c:choose>
		            </div>
	          	</a> 
	          </dd>
	          <dt class="name"> 
	          	<div style="width:110px;float:left;">
	          		<a href="<s:url value='/patent/getPatentDetail.html'/>?patentId=<c:out value='${patent.patentId}'/>" target="_blank" title="${patent.patentName}">${patent.patentName}</a>
	          	</div> 
	          	<!-- <div class="num" style="float:left;">&yen;${patent.price}</div> -->
	          </dt>
	        </dl>
	        </c:forEach>
	      </li>
	    
	    </ul> 
  	</div> 
</div>
<!--专利、卖家信息 end--> 
<!--专利详情、精品专利-->

<!--转让方start-->
<div class = "modal fade" id = "transferorModal" tabindex = "-1" role = "dialog" 
   aria-labelledby = "myModalLabel" aria-hidden = "true" >
   
   <div class = "modal-dialog" >
      <div class = "modal-content">
         
         <div class = "modal-header">
            <button type = "button" class = "close" data-dismiss = "modal" aria-hidden = "true" id="transferorModalCloseBtn">
               ×
            </button>
            
            <h4 class = "modal-title" id = "myModalLabel" style="font-size:18px;">
            	转让方 ${good.transferor } 详细信息
            </h4>
         </div>
         <div class = "modal-body" id="modal-body">
         	<c:if test="${empty transferorUser }">
         		<h5>暂无详细信息。</h5>
         	</c:if>
         	<c:if test="${not empty transferorUser }">
				<h5>真实姓名:</h5>
				<input class="form-control" style="width:460px;" type="text" value="${transferorUser.name }" readonly="readonly"/>
				<br>
				<h5>电子邮箱:</h5>
				<input class="form-control" style="width:460px;" type="text" value="${transferorUser.email }" readonly="readonly"/>
				<br>		  
				<h5>手机或电话号码:</h5>
				<input class="form-control" style="width:460px;" type="text" value="${transferorUser.phone }" readonly="readonly"/>
				<br>
				<h5>QQ号:</h5>
				<input class="form-control" style="width:460px;" type="text" value="${transferorUser.qq }" readonly="readonly"/>
				<br>
				<h5>微信号:</h5>
				<input class="form-control" style="width:460px;" type="text" value="${transferorUser.weChat }" readonly="readonly"/>
				<br>
				<h5 style="font-weight:700;font-size:15px;">默认联系地址</h5>
				<textarea class="form-control" style="width:460px;resize: none;" rows="2" cols="60" readonly="readonly">联系人：${contactAddress.receiver}&nbsp;&nbsp;&nbsp;&nbsp;联系电话：${contactAddress.phone}&#13;&#10;地址：${contactAddress.provinceName} ${contactAddress.cityName} ${contactAddress.districtName} ${contactAddress.detailAddress}</textarea>
				
				<br/>
			</c:if>
				
         </div>
      </div>
   </div>
</div>
<!--转让方end-->

 <style type="text/css">
.po-re {
    position: relative;
}
.yellowbg_tips {
    background: #f5f5f5;
    padding: 4px 10px 6px 10px;
    font-size: 12px;
    color: #666;
    line-height: 18px;
    height: 50px;
    overflow: hidden;
    width: 510px;
    position: absolute;
    z-index: 1;
    border:1px solid #f5f5f5;
}
.triangle-down {
    width: 0;
    height: 0;
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
    border-top: 4px solid #555;
    position: relative;
    top: -47px;
    left: 496px;
}
h5 {
    font-size: 14px;
}
.form-control {
    display: block;
    width: 100%;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
.details_goods_wrap {
    width: 100%;
    float: right;
    padding: 0 0 30px;
    font: 13px/28px '\5B8B\4F53';
    color: #666;
    margin-top: 28px;
    font-family: Arial;
}

.content-top {
    height: 50px;
    background: #f5f5f5;
    position: relative;
    border: 1px solid #d9d9d9;
    width:900px;
}

.content-top li.active {
    background: #fff;
    border: 1px solid #d9d9d9;
    border-top: 2px solid #ff510c;
    border-bottom: 1px solid #fff;
    top: -1px;
    left: -1px;
}

.content-top li {
    float: left;
    position: relative;
    line-height: 50px;
    width: 120px;
	text-align: center;
	font-size: 14px;
	
}
.content-top li a {
    font: 15px/15px "\5B8B\4F53";
    color: #535353;
    padding: 0 30px;
    background: url(<s:url value='/images/icon_details.png'/>) 0 -47px no-repeat;
    font-family: Arial;
}

.content-top li.active a, .content-top li:hover a {
    color: #ff510c;
    text-decoration: none;
}
.content-top li.active a, .content-top li.active + li a {
    background: none;
}
.content-top li:first-child a {
    background: none;
}
.content-top.pos-fixed {
    position: fixed;
    top: 0;
    z-index: 999;
}

.r_detail_about {
    padding: 15px 0;
    border-bottom: 1px solid #ccc;
    margin-bottom: 15px;
    position: relative;
}

.r_detail_about span{
font-family: "微软雅黑", Microsoft YaHei, arial, verdana, sans-serif;
    color: #333;font-size:16px;
}
.r_detail_about a{
font-family: "微软雅黑", Microsoft YaHei, arial, verdana, sans-serif;
    color: #333;font-size:16px;
}
.article-con {
    border: 1px solid #ececec;
    padding: 15px;
}
.h_second_list {
    padding: 20px 10px 40px 25px;
}
.h_second_list li {
    height: 46px;
    font-size:16px;
    font-family: "微软雅黑", Microsoft YaHei, arial, verdana, sans-serif;
    color: #333;
    line-height: 46px;
    border-bottom: 1px solid #cdd5d8;
    background: url(../images/second_hui.png) no-repeat left;
    padding-left: 15px;
    overflow: hidden;
}
.h_second_list li .h_list_deta {
    font-size:16px;
    font-family: "微软雅黑", Microsoft YaHei, arial, verdana, sans-serif;
    color: #333;
    float: right;
    padding-right: 10px;
}
	
</style>   




<script type="text/javascript" src="<s:url value='/public/javascript/jquery.lazyload.js'/>"></script> 

<!-- End Piwik Code --> 

<script src="<s:url value='/js/mll/jq.js?0405'/>"></script> 

<script>window.M = window.M || {};if($.addToCart)M.addToCart = $.addToCart</script><script type="text/javascript">
(function(c,b){var a=b("#JS_head_login");a.on("click","#JS_login_out",function(){jQuery.ajax({url:"/user/?act=logout",type:"get",cache:false,dataType:"json",success:function(d){if(d.error==0){window.location.reload();return false;}else{jQuery.alert("注销失败，请重试！");}},error:function(){jQuery.alert("网络异常，请重试！");}});});})(document,jQuery);function _INIT_HEAD_SEARCH(data){var json;try{json=eval(data.html_content);}catch(e){}if(json&&json.length){var url=location.pathname;var wordIndex=-1;var tmpFilter;window.__HEAD_SEARCH_WORDS_ARR=[];window.__HEAD_SEARCH_WORDS_OBJ={};if(/\/jiaju\//.test(url)){wordIndex=0;}else{if(/\/jiancai\//.test(url)){wordIndex=1;}else{if(/\/shipin\//.test(url)){wordIndex=2;}}}for(var k=0,kk=json.length;k<kk;k++){tmpFilter=json[k].type.split("");if(wordIndex==-1||tmpFilter[wordIndex]==1){__HEAD_SEARCH_WORDS_ARR.push(json[k]);__HEAD_SEARCH_WORDS_OBJ[json[k].text]=json[k];}}var inpt=$("#JS_MLL_search_header_input")[0];if(__HEAD_SEARCH_WORDS_ARR.length&&inpt&&inpt.value==""){inpt.value=MLL_Header_search_words();inpt.onfocus=function(){this.value="";this.onfocus=function(){};};inpt.onblur=function(){if(this.value==""){this.value=MLL_Header_search_words();this.onfocus=function(){this.value="";this.onfocus=function(){};};}};}}}function MLL_Header_search_words(){var b=__HEAD_SEARCH_WORDS_ARR,a=Math.floor(Math.random()*b.length);return b[a].text;}function MLL_header_search_submit(){var a=$("#JS_MLL_search_header_input")[0];var b=$("#JS_search_form")[0];var c=a.value+"";c=$.trim(c||"");if(!c){return false;}if(window.__HEAD_SEARCH_WORDS_OBJ&&__HEAD_SEARCH_WORDS_OBJ[c]){location.href=__HEAD_SEARCH_WORDS_OBJ[c].href+(__HEAD_SEARCH_WORDS_OBJ[c].href.indexOf("#")>=0?"&":"#")+"kw="+encodeURIComponent(c);return false;}else{a.value=c;return true;}}function _show_(j,d){if(!j){return;}if(d&&d.source&&d.target){var b=typeof d.source==="string"?$("#"+d.source):$(d.source);var l=typeof d.target==="string"?$("#"+d.target):$(d.target);var f=typeof d.data==="string"?$("#"+d.data):$(d.data);if(b.length&&l.length&&!l.isDone){var h=$(b.val()||sourse.html());if(f.length&&typeof d.templateFunction=="function"){var i=f.val()||f.html();i=$.parseJSON(i);h=d.templateFunction(h,i);f.remove();}l.empty().append(h);b.remove();if(typeof d.callback=="function"){d.callback();}l.isDone=true;}}$(j).addClass("hover");if(d&&d.isLazyLoad&&j.isDone){var g=j.find("img");for(var e=0,c=g.length;e<c;e++){var a=g[e].getAttribute("data-src_index_menu");if(a){g[e].setAttribute("src",a);g[e].removeAttribute("data-src_index_menu");}}j.isDone=true;}}function _hide_(b){if(!b){return;}var a=$(b);if(a.hasClass("hover")){a.removeClass("hover");}}function shoucang(){window._gaq=window._gaq||[];_gaq.push(["_trackEvent","headerAddFavorite",location.href]);var b=window.location.href;var a=document.title;try{window.external.addFavorite(b,a);}catch(c){try{window.sidebar.addPanel(a,b,"");}catch(c){alert("对不起，您的浏览器不支持此操作！\n请您使用菜单栏或Ctrl+D收藏本站。");}}}var car_number=0;function DY_cart_detail_nav_cb(b){Cart.goodsList=1;Cart.saleLimit=b.saleLimit||100;var a=b.goods_list.length;if(a>0){Cart.formatData(b)||{};Cart.info.goodsData=b.goods_list;}Cart.update();}var Cart={};Cart.init=function(){Cart.handdler=$("#JS_cart");Cart.Dom=Cart.handdler.find("#JS_cart_list");Cart.number=Cart.handdler.find("#JS_cart_num");Cart.countArea=Cart.handdler.find("#JS_count_area");Cart.countNum=Cart.handdler.find("#JS_cart_count");Cart.sum=Cart.handdler.find("#JS_count_total");Cart._isIE=!-[1,];Cart.info={goodsData:[],sum:0,goodsNumber:0,giftsNumber:0,kindsNumber:0};Cart.number.html($.cookie("cart_number")||0);};Cart.isLogin=function(){return($.cookie("meilele_login")=="1"||$.cookie("ECS[username]"));};Cart.show=function(){if(Cart.isLogin()&&!Cart.moveToCollect.moved){Cart.moveToCollect(a);}else{a();}function a(b){if(!Cart.goodsList){Cart.Dom.html("")[0].className="cart-list";Cart.countArea.addClass("none");Cart.getCartInfo(null,b);}}Cart.handdler.addClass("hover");if(Cart._isIE){Cart.handdler.find(".cart-arrow").addClass("cart-arrow-ie");}};Cart.getCartInfo=function(b,a){Cart.info={goodsData:[],sum:0,goodsNumber:0,giftsNumber:0,kindsNumber:0};var c={};if(a&&a.length){c.filterGoodsIds=a.join("!");}jQuery.ajax({url:"/mll_api/api/cart_info",dataType:"json",cache:false,data:c,success:function(d){DY_cart_detail_nav_cb(d);b&&b(d);}});};Cart.setCartNum=function(a){jQuery.cookie("cart_number",a||0);};Cart.hide=function(){Cart.handdler.removeClass("hover");if(Cart._isIE){Cart.handdler.find(".cart-arrow").removeClass("cart-arrow-ie");}};Cart.del=function(l,d){var o=l||window.event,m=o.target||o.srcElement;if(d){m=d;}var a=$(m);if(!a.hasClass("Cart_del")){return false;}var j=a.attr("data-index"),b=a.attr("data-rec_id"),h=a.attr("data-num"),i=a.attr("data-goods_price"),n=a.attr("data-act_id");var g=[];var f={};if(n>0){var k=Cart.Dom.find(".JS_cart_list_act_"+n);k.each(function(r,s){var t=$(this);var q=t.data("rec_id");var p=t.data("index");var e=t.data("num");g.push(q);f[q]={index:p,num:e,price:0};});}else{g.push(b);f[b]={index:j,num:h,price:i};}if(!Cart.inDelAjax&&g.length>0){Cart.inDelAjax=true;$.ajax({url:"/add_cart/?step=dropGoods&ajax=1&goods="+g.join("|"),type:"GET",dataType:"json",success:function(e){if(e.error==0){c(g,f);}else{this.error();}},error:function(){alert("删除失败，请稍后再试！");},complete:function(){Cart.inDelAjax=false;}});}function c(q,p){var e=Cart.info;for(var r=0;r<q.length;r++){var t=q[r];var v=p[t].index;var s=p[t].num||0;var u=p[t].price||0;var x=s*u;var w=$(".JS_cart_list_gift_"+t);w.each(function(y){var z=parseInt(w.eq(y).attr("data-num"));e.giftsNumber-=z;});$("#JS_cart_list_index_"+v).remove();w.remove();e.goodsNumber-=s;e.kindsNumber--;e.sum-=x;}Cart.update();}};Cart.formatData=function(c){var b=Cart.info;var f=c.goods_list;var h=0;var d=0;var g=[];for(var i=0,a=f.length;i<a;i++){var e=(f[i].goods_thumb_1)?f[i].goods_thumb_1:f[i].goods_thumb;g.push('<li id="JS_cart_list_index_'+i+'" class="'+(f[i].goods_activity_type!="newgift"?"":"JS_cart_list_gift_"+f[i].activity_par_id)+(f[i].price_activity_id>0?" JS_cart_list_act_"+f[i].price_activity_id:"")+' cart-item" data-num="'+f[i].goods_number+'" data-rec_id="'+f[i].rec_id+'" data-index="'+i+'">');g.push('<a class="Left" href="'+f[i].url+'" target="_blank" title="'+f[i].goods_name+'"><img class="cart-img" src="http://image.meilele.com/'+e+'" alt="'+f[i].goods_name+'" ></a>');g.push('<a target="_blank" class="cart-link" title="'+f[i].goods_name+'" href="'+f[i].url+'">'+f[i].goods_name+"</a>");if(f[i].goods_activity_type!="newgift"){g.push('<p class="cart-cal"><a data-goods_id="'+f[i].goods_id+'" class="cart-del Right Cart_del" href="javascript:void(0)" data-index="'+i+'" data-rec_id="'+f[i].rec_id+'" data-num="'+f[i].goods_number+'" data-goods_price="'+f[i].goods_price+'" data-act_id="'+(f[i].price_activity_id||0)+'">删除</a><strong class="cart-price red" id="JS_danjia'+i+'">&yen;'+f[i].goods_price+'</strong>×<strong class="black">'+f[i].goods_number+"</strong></p>");b.goodsNumber+=f[i].goods_number-0;b.kindsNumber++;b.sum+=(f[i].goods_number||0)*(f[i].goods_price||0);}else{g.push('<p class="cart-cal"><strong style="margin-left:12px"><span class="cl red">赠品</span>&times;'+f[i].goods_number+"</strong></p>");d+=parseInt(f[i].goods_number)||0;b.giftsNumber+=f[i].goods_number-0;}g.push("</li>");h+=parseInt(f[i].goods_number)||0;}Cart.Dom.html(g.join(""));Cart.update();return b;};Cart.goPreCheckOut=function(){jQuery.showLoginBox(function(){location.href="/flow/?step=pre_checkout&rel=header";});};Cart.moveToCollect=function(a){Cart.countArea.find(".cart-tip").remove();jQuery.ajax({url:"/add_cart/?step=insertCollect",type:"GET",dataType:"JSON",cache:false,success:function(g){if(g&&g.error=="0"&&g.moveToCollect&&g.moveToCollect.length){var c=g.moveToCollect;var d=[];var f=[];f.push('<div class="cart-tip"><span class="red"><b>提示：</b>购物车里有'+c.length+'件商品被移入收藏夹</span><p class="tip-content">');for(var e=0,b=c.length;e<b;e++){if(e<3){f.push('<a target="_blank" class="tip-link" href="'+c[e].goodsLink+'">'+c[e].goodsName+"</a>");}d.push(c[e].goodsId);}f.push('</p><a href="/user/?act=collection_list" target="_blank" class="red">查看收藏夹&gt;&gt;</a></div>');Cart.countArea.append(f.join(""));a&&a(d);}else{this.error();}Cart.moveToCollect.moved=true;},error:function(){a&&a([]);Cart.moveToCollect.moved=false;}});};Cart.update=function(b){var b=b||Cart.info;var a=Number(b.goodsNumber||0)+Number(b.giftsNumber||0);if(a==0){Cart.setCartNum(0);Cart.number.html(0);Cart.Dom.html('<li class="nothing"><b class="common-bg nothing-icon"></b>&nbsp;购物车中还没有商品，赶紧选购吧！</li>');Cart.countArea.addClass("none");Cart.Dom.removeClass("cart-full");return;}Cart.number.html(a);Cart.countNum.html(a);Cart.sum.html("&yen;"+Number(b.sum||0).toFixed(2));Cart.Dom.addClass("cart-full");Cart.countArea.removeClass("none");Cart.setCartNum(a);var c=Cart.Dom.find(".cart-item").length;Cart.Dom.addClass("cart-full"+(c>2?3:c));if(c==0){Cart.Dom[0].className="cart-list";}};function exprCallBackNum(json){if(json&&json.html_content){try{eval("json.html_content="+json.html_content);}catch(e){jQuery("#JS_head_scoll_phone_527").siblings("span.blank").remove();return;}if(!json){return;}var o1=$("#JS_mll_head_menu_expr");var o3=$("#JS_Header_Home_Link");var o4=$("#JS_Header_Logo_link_home");if(json.html_content&&json.html_content.expr_count>0&&json.html_content.pinyin){o1.attr("href","/"+json.html_content.pinyin+"/expr.html").html(json.html_content.city+'体验馆<img src="'+$.__IMG+'/images/hot2015.gif" style="position:absolute;background:none;right:0px;top:-5px;" />');o3.attr("href","/"+json.html_content.pinyin+"/");o4.attr("href","/"+json.html_content.pinyin+"/");}else{jQuery("#JS_head_scoll_phone_527").siblings("span.blank").remove();}var len=exprCallBackNum.callFnArr.length;for(var i=0;i<len;i++){exprCallBackNum.callFnArr[i]&&exprCallBackNum.callFnArr[i](json);}}else{jQuery("#JS_head_scoll_phone_527").siblings("span.blank").remove();}}exprCallBackNum.callFnArr=[];window._headPhoneScroll527Now=0;function Head_scroll_phone_527_fn(){if(window._headPhoneScroll527Lock){return;}var c=window._headPhoneScroll527Dom;var a=window._headPhoneScroll527Length;var b=window._headPhoneScroll527Now;if(c&&a){jQuery(c).animate({marginTop:(b+1)*-22+"px"},300,"linear",function(){window._headPhoneScroll527Now++;if(window._headPhoneScroll527Now>=window._headPhoneScroll527Length/2){window._headPhoneScroll527Dom.css("margin-top","0px");window._headPhoneScroll527Now=0;}});}}var isIE=!-[1,];window._gaq=window._gaq||[];$("#JS_quick_memu").on("mouseenter",".sncq-item",function(){if($(this).hasClass("keep")||$(this).hasClass("terminal")){_gaq.push(["_trackEvent","首页导航二维码",'移入"'+$(this).find(".link-text").text()+'"']);}jQuery(this).addClass("hover");if(isIE){jQuery(this).find(".snc-arrow").addClass("snc-arrow-ie");}}).on("mouseleave",".sncq-item",function(){var a=!-[1,];$(this).removeClass("hover");if(a){jQuery(this).find(".snc-arrow").removeClass("snc-arrow-ie");}}).on("click",".JS_header_ga",function(){_gaq.push(["_trackEvent","首页导航二维码","点击“关注美乐乐下方文案”"]);}).on("click",".JS_header_gaerCode",function(){_gaq.push(["_trackEvent","首页导航二维码","点击“关注美乐乐二维码”"]);}).on("click",".JS_header_gaMoberCode",function(){_gaq.push(["_trackEvent","首页导航二维码","点击“移动客户端二维码”"]);}).on("click",".JS_header_gaMob",function(){_gaq.push(["_trackEvent","首页导航二维码","点击“移动客户端文案”"]);});$("#JS_cart").hover(Cart.show,Cart.hide);Cart.init();(function(a){a.fn.menu=function(c){this.each(function(){b.call(this,c);});return this;};function b(o){var h=a(this),k=null,f=[],j=null,i=null,r=null,e=a.extend({rowSelector:"> li",submenuSelector:"*",submenuDirection:"right",tolerance:75,enter:a.noop,exit:a.noop,activate:a.noop,deactivate:a.noop,exitMenu:a.noop,firstDelay:0},o);var c=3,m=300,l=0;var g=function(w){f.push({x:w.pageX,y:w.pageY});if(f.length>c){f.shift();}};var n=function(){clearTimeout(r);if(i){clearTimeout(i);}if(e.exitMenu(this)){if(k){e.deactivate(k);}}k=null;};var q=function(){(!k)&&clearTimeout(r);};var t=function(w){if(i){clearTimeout(i);}e.enter(this);s(this);},p=function(w){e.exit(this);};var u=function(w){d(this);w.stopPropagation();};var d=function(x){clearTimeout(r);if(k){e.deactivate(k);}if(!k&&e.firstDelay){r=setTimeout(function(){w(x);},e.firstDelay);}else{w(x);}function w(y){e.activate(y);k=y;}};var s=function(x){var w=v();if(w){i=setTimeout(function(){s(x);},w);}else{d(x);}};var v=function(){if(!k||!a(k).is(e.submenuSelector)){return 0;}var A=h.offset(),w={x:A.left,y:A.top-e.tolerance},H={x:A.left+h.outerWidth(),y:w.y},J={x:A.left,y:A.top+h.outerHeight()+e.tolerance},B={x:A.left+h.outerWidth(),y:J.y},C=f[f.length-1],G=f[0];if(!C){return 0;}if(!G){G=C;}if(G.x<A.left||G.x>B.x||G.y<A.top||G.y>B.y){return 0;}if(j&&C.x==j.x&&C.y==j.y){return 0;}function D(L,K){return(K.y-L.y)/(K.x-L.x);}var F=H,x=B;if(e.submenuDirection=="left"){F=J;x=w;}else{if(e.submenuDirection=="below"){F=B;x=J;}else{if(e.submenuDirection=="above"){F=w;x=H;}}}var y=D(C,F),E=D(C,x),I=D(G,F),z=D(G,x);if(y<I&&E>z){j=C;return m;}j=null;return 0;};h.on("mouseleave",n).on("enter",q).find(e.rowSelector).on("mouseenter",t).on("mouseleave",p).on("click",u);a(document).mousemove(g);}})(jQuery);var globalMenu=$("#JS_mll_menu_map");globalMenu.menu({activate:function(b){var d=$(b);if(!d.data("imgLoaded")){var a=d.find(".sub img");a.prop("src",a.attr("menu-lazy-src"));d.data("imgLoaded",1);}d.addClass("hover").find("em").stop().animate({"margin-left":"19px"},200);var c=globalMenu.find("#JS_sub_recommend");if(d.hasClass("recommend")){d.hasClass("recommend")&&c.animate({"padding-left":"11px"},200).show();}else{d.find(".sub").stop().animate({opacity:"1","padding-left":"27px"},200).show();c.css("display")!="none"&&c.animate({"padding-left":"5px"},200).hide();}},deactivate:function(a){var b=$(a);b.removeClass("hover").find("em").stop().animate({"margin-left":"14px"},200);b.find(".sub").stop().animate({opacity:"0.8","padding-left":"17px"},200).hide();},rowSelector:"li.top-item",exitMenu:function(c){var c=$(c);var b=c.find(".hover");var a=b.find(".sub");b.find("em").stop().animate({"margin-left":"14px"},100);a.animate({opacity:"0.8","padding-left":"17px"},100,function(){a.hide();});var d=globalMenu.find("#JS_sub_recommend");d.data("show")?d.stop().animate({"padding-left":"11px"},100).show():d.stop().animate({"padding-left":"5px"},100,function(){d.hide();});b.removeClass("hover");},firstDelay:window._isIndexPage?200:100});(function(b,c){var a=c("#JS_mll_header_menu_panel");if(a.hasClass("forbid")){return;}a.hover(function(){a.addClass("hover").find(".top").show();},function(){a.removeClass("hover").find(".top").hide();});})(window,$);
/*sheqiulin:2015-11-19 16:21:27*/</script>
<script>var City={};City.init=function(){if(City.ready&&City.currentCity==$("#DY_site_name").html().replace("站","")){return;}City.currentCity=$("#DY_site_name").html().replace("站","");City.handdler=$("JS_header_city_char");City.chars=$("#JS_header_city_char a");City.stage=$("#JS_header_city_list");City.lists=$("#JS_header_city_list tr");City.setDefaultDom=$("#JS_set_default_city_header");City.deleteDefaultCityDom=$("#JS_default_city_delete");City.nearDom=$("#JS_my_near_expr");City.currentBox=$("#JS_current_city_box");var c=City.stage.find("a");City.cityData={};for(var a=0,d=c.length;a<d;a++){var f=c[a];var g=f.getAttribute("data-region_id");var b=f.getAttribute("data-pinyin");var e=f.innerHTML;City.cityData[e]=City.cityData[b]=City.cityData[g]={regionId:g,pinyin:b,regionName:e};}c=null;City.defaultCity={};if($.cookie("default_rgn_id")){City.defaultCity=City.cityData[$.cookie("default_rgn_id")]||{};}$("#JS_city_current_city").html(City.currentCity);City.currentCityData=City.cityData[City.currentCity];City.refreshDefaultCityDom();City.inputDom=$("#JS_search_city_input_header");City.tip=$("#JS_search_city_tip_header");City.inputDom.keyup(function(h){City.tip.hide();if(h.keyCode==13){City.goSearch();}});City.inputDom.focus(function(){if(this.value=="输入城市名"){this.value="";}City.tip.hide();});$("#JS_search_city_submit_header").click(City.goSearch);City.bar=$("#JS_header_city_bar");City.barBox=$("#JS_header_city_bar_box");City.size=City.chars.length;City.allHeight=City.stage.height();City.rate=(City.allHeight-170)/(180-36);City.to=0;City.to2=0;City.nowH=0;City.mouseDown=false;City.selectByChar();City.scrollBar();City.scrollByWheel();City.ready=true;};City.refreshDefaultCityDom=function(){if(City.currentCity!="全国"&&City.currentCityData&&City.currentCityData.regionId!=City.defaultCity.regionId){City.setDefaultDom.show();City.setDefaultDom.attr("href","javascript:City.setDefaultCity('"+City.currentCityData.regionId+"')");}else{City.setDefaultDom.hide();City.nearDom.hide();}if(City.currentCity!="全国"&&City.currentCityData){City.nearDom.attr("href","/"+City.currentCityData.pinyin+"/area.html");City.nearDom.show();City.currentBox.show();}else{City.nearDom.hide();City.currentBox.hide();}if(City.defaultCity&&City.defaultCity.regionId){City.deleteDefaultCityDom.html('您默认的城市是：<a href="javascript:;" onclick="M.goExpr(City.defaultCity.pinyin,City.defaultCity.regionId,\'{$goExprUrlType}\',City.defaultCity.regionName);return false;" class="red">'+City.defaultCity.regionName+'</a> <a href="javascript:City.delDefaultCity();" class="red">[删除]</a>');City.deleteDefaultCityDom.show();}else{City.deleteDefaultCityDom.hide();}};City.setDefaultCity=function(a){if(a&&City.cityData[a]){City.defaultCity=City.cityData[a];$.cookie("default_rgn_id",City.cityData[a].regionId,{expires:365});City.refreshDefaultCityDom();}};City.delDefaultCity=function(){City.defaultCity={};$.cookie("default_rgn_id","",{expires:-1});City.refreshDefaultCityDom();};City.goSearch=function(){var b=(City.inputDom.val()+"").replace(/[\s\d]/g,"");var a=City.cityData[b];if(a){City.tip.hide();$.goExpr(a.pinyin,a.regionId,"{$goExprUrlType}",a.regionName);}else{City.tip.show();}};City.selectByChar=function(){var b=0;for(var a=0;a<City.size;a++){City.chars[a]._h=b;City.chars[a].onmouseover=function(){var c=this;window._cityTimer=setTimeout(function(){City.move(c._h);City.to2=City.to;},300);};City.chars[a].onmouseout=function(){if(window._cityTimer){clearTimeout(window._cityTimer);return;}};b+=City.lists.eq(a).height();}};City.move=function(b,a){if(b<0){b=0;}b=b>=(City.allHeight-170)?(City.allHeight-170):b;var c=parseInt(b/City.rate);if(a){City.stage.css("margin-top",(0-b)+"px");City.bar.css("margin-top",c+"px");}else{City.stage.stop(true,false).animate({marginTop:(0-b)+"px"});City.bar.stop(true,false).animate({marginTop:c+"px"});}City.to=c;City.nowH=b;};City.scrollBar=function(){City.bar.on("mousedown",function(a){a=a||window.event;City.mouseDown=true;City.nowHeight=a.pageY||a.clientY;a.returnValue=false;return false;});City.bar.on("dragstart",function(a){a=a||window.event;a.returnValue=false;});$("body").on("mouseup",function(a){a=a||window.event;City.mouseDown=false;City.to2=City.to;a.returnValue=false;return false;});City.barBox.on("mousemove",function(a){if(!City.mouseDown){return;}a=a||window.event;var b=a.pageY||a.clientY;City.move((b-City.nowHeight+City.to2)*City.rate,true);a.returnValue=false;return false;});};City.scrollByWheel=function(a){City.addScrollListener(City.barBox[0],function(c){c=c||window.event;var b;if(c.wheelDelta){b=(0-c.wheelDelta)/Math.abs(c.wheelDelta);}else{b=c.detail/Math.abs(c.detail);}City.move(City.nowH+b*50);City.to2=City.to;if(navigator.userAgent.toLowerCase().indexOf("msie")>=0){event.returnValue=false;}else{c.preventDefault();}});};City.addScrollListener=function(e,d){if(typeof e!="object"){return;}if(typeof d!="function"){return;}if(typeof arguments.callee.browser=="undefined"){var c=navigator.userAgent;var a={};a.opera=c.indexOf("Opera")>-1&&typeof window.opera=="object";a.khtml=(c.indexOf("KHTML")>-1||c.indexOf("AppleWebKit")>-1||c.indexOf("Konqueror")>-1)&&!a.opera;a.ie=c.indexOf("MSIE")>-1&&!a.opera;a.gecko=c.indexOf("Gecko")>-1&&!a.khtml;arguments.callee.browser=a;}if(e==window){e=document;}if(arguments.callee.browser.ie){e.attachEvent("onmousewheel",d);}else{e.addEventListener(arguments.callee.browser.gecko?"DOMMouseScroll":"mousewheel",d,false);}};City.exed=true;
/*leihao:2015-01-28 10:21:22*/</script>

<script type="text/javascript"  src="<s:url value='/public/javascript/template.js'/>"></script> 
<script type="text/javascript" src="<s:url value='/public/javascript/underscore-min.js'/>"></script> 
<script type="text/javascript" src="<s:url value='/public/javascript/jquery.SuperSlide.2.1.1.js'/>"></script> 
<script type="text/javascript" src="<s:url value='/public/javascript/jquery.lazyload.js'/>"></script> 
<script type="text/javascript" src="<s:url value='/public/common.js'/>"></script> 
<script type="text/javascript" src="<s:url value='/public/javascript/publish-detail-s.js'/>"></script> 
<script type="text/javascript" src="<s:url value='/public/javascript/hy-detail.js'/>"></script> 
<script>
    var isOnePrice = '3';
    var permitIsOnePrice = '0';
    var actyId = '84009';
    window._bd_share_config = {
      "common" : {
        "bdSnsKey" : {},
        "bdText" : "",
        "bdMini" : "2",
        "bdMiniList" : false,
        "bdPic" : "",
        "bdStyle" : "0",
        "bdSize" : "16"
      },
      "share" : {}
    };
    with (document)
      0[(getElementsByTagName('head')[0] || body)
          .appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
          + ~(-new Date() / 36e5)];
  </script>
  

<script type="text/javascript">

function gotoPage() {
	var pageNo = document.getElementById("page.pageNo").value;
	
	if (isNaN(pageNo)) {
		alert("请输入数值");
		return;
	}
	
	if(pageNo==""){
		alert("请输入数值")
		return;
	}
	
	pageNo = parseInt(pageNo);
	
	if (pageNo < 1 || pageNo > parseInt("${page.totalPages}")) {
		alert("只能输入1-${page.totalPages}之间的数值");
		return;
	}
	
	flashPage(${good.patentId},pageNo);
	
}

function gotoPageForEnter(event) {
	var e = event ? event : window.event;
			
	if(event.keyCode == 13) {
		gotoPage();
	}
}

function flashPage(patentId,pageNo) {
	var totalPage = ${page.totalPages};
	$.ajax({
		url:"<s:url value='/patent/getSimilarPatentList.html'/>?currentPage=" + pageNo + "&patentId=" +patentId,
		type: 'get',
		dataType: 'json',
		success:function(data){
			$('.h_second_list').empty();
			$.each(data,function(i,item){
				var url = "<s:url value='/patent/getPatentDetail.html'/>?patentId=" + item.patent_id;
				$('.h_second_list').append(
				"<li><span class='h_list_tit' style='font-size:14px;'>" +
					"<a href='" + url + "' target='_blank'>[" +item.patent_type_name + "]" + item.patent_name + " - " +  item.app_no +
				"</a></span> </li>"
				);
			})
			$("#page.pageNo").val("");
			$("#now-page").text("第" + pageNo + "页");
			if(pageNo-1 > 0){
				var n = parseInt(pageNo)-1;
				$("#before-page").attr("href","javascript:flashPage(" + patentId + "," + n +")");
			}else {
				$("#before-page").attr("href","javascript:flashPage(" + patentId + "," + pageNo +")");
			}
			
			if(totalPage == 0) {
				$("#after-page").attr("href","javascript:flashPage(" + patentId + "," + pageNo +")");
			} else if(pageNo+1 < totalPage) {
				var n = parseInt(pageNo)+1;
				$("#after-page").attr("href","javascript:flashPage(" + patentId + "," + n +")");
			}else {
				$("#after-page").attr("href","javascript:flashPage(" + patentId + "," + totalPage +")");
			}
		},
		
		 
	 })
}

$(window).scroll(function() {
	var top = $(window).scrollTop();
	var minTop = $(".J_minTop").offset().top - 50;
	if (top < minTop) {
		$(".content-top").removeClass('pos-fixed');
	} else {
		$(".content-top").addClass('pos-fixed');
	}
});
$('.content-top').find('li').each(function(i) {
	$(this).click(function() {
		bScroll = true
		if (bScroll) {
			$('.content-top').find('li').removeClass('active');
			$('.content-top').find('li').eq(i).addClass('active');
			if (i == $('.content-top').find('li').size() - 1) {
				$('html, body').animate({
					scrollTop : $('caption').eq(0).offset().top - 50
				})
				$(this).find('li').removeClass('active');
				$(this).find('li').eq(0).addClass('active');
			} else {
				$('html, body').animate({
					scrollTop : $('.list-item').eq(i).offset().top - 50
				});
			}
		}
		;
	});
});
	
</script>
  

<!--footer-->
<%@ include file="_footer.jsp"%>
<!--/footer-->

</body>
<html>