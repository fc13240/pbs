<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" href="<s:url value='/css/mll.common.min.css?20160311'/>" />
<link href="<s:url value='/css/category.min.css?2016322'/>" rel="stylesheet" type="text/css"/> 
<link rel="stylesheet" href="http://r.lotut.com/Themes/Home/default/Public/css/top_footer.css">
<script type="text/javascript" src="http://r.lotut.com/public/javascript/jquery-1.8.3.min.js"></script> 

</head>
<body>
  <div class="container head-cont"> 
    <!--logo-->
    <div class="head-mod more-item-box">
      <div class="logo f-fl">
        <h1><a href=""><img src="<s:url value='/images/logo.png'/>" alt="" width="210"></a></h1>
      </div>
      <!--logo end /-->
      <div class="search-mod f-fl mt20">
        <div class="search_box">    
           
            <div style="margin-left:auto; margin-right:auto;">
                <!-- <form class="form-4" action="/index.php/search.html" name="site_search" target="_blank" method="get" id="site_search"> -->
                <div class="mc-field-group">
                <input placeholder="输入名称和申请号查询" name="keyword" class="text" id="mce-EMAIL" type="text" style="padding-left:5px;">
                <input value="搜索" id="mc-embedded-subscribe" class="button" type="button" onclick="searchBrands($('#mce-EMAIL').val())"><span style="margin-left:10px;"></span>
                </div>            
                <!-- </form>   -->
                <div class="check_box" style="margin-top:10px;">
      
                </div>                   
            </div>
        </div>    
        </div>
      <div class="header_tel f-fl">
        <i class="icon_tel f-ib"></i>
        <div class="right topTwo_b">
          <div class="tel">
          <p class="on">0551-65771310</p>
            </div>
        </div>


      </div>
      <!--wx-code--> 
      
      <!--/wx-code--></div>
  </div>
  <!-- 主菜单 nav -->
  <div class="nav clear">
    <div class="container"> 
      <!-- 主菜单-特色服务 all-category -->
      <div class="all-category">
        <div class="mod">
          <div class="hd"><a href="<s:url value='/'/>"><strong>全部商品分类</strong></a></div>
          <div class="bd"></div>
        </div>
      </div>
      <!-- 主菜单-特色服务 all-category end / --> 
      <!-- 主菜单-列表 menu  -->
      <ul class="menu">
        <li><a href="<s:url value='/'/>" class="active">首页</a></li>
        <li><a href="<s:url value='/brand/getAllBrandsList.html?currentPage=1'/>" target="_blank" style="width:95px;">商标市场</a></li>
        <li><a href="http://a.lotut.com" target="_blank" style="width:115px;">代账会计188/月</a></li>
        <li><a href="http://so.lotut.com" target="_blank" style="width:95px;">专利搜索</a></li>
        <li><a href="http://g.lotut.com" target="_blank" style="width:115px;">专利管理系统</a></li>
      </ul>
      <!-- 主菜单-列表 menu end / --> 
    </div>
  </div>
  <!-- 主菜单 nav end / --> 
  <script type="text/javascript">
  	function searchBrands(keyword){
  		window.open("<s:url value='/brand/searchBrands.html'/>?page.currentPage=1&keyword="+keyword);
  	}
  
  </script>
</body>