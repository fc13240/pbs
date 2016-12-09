$(function(){
	var memberUrl = "http://member.wtoip.com";
	var imageUrl = "http://img2.wtoip.com";
	var tradingUrl = "http://www.wtoip.com";
	var ctxAllPublish = (location.hostname.indexOf("localhost") != -1 || location.hostname.indexOf("192.168.30.79") != -1) ? "http://localhost:8080/publish" : "http://" + location.hostname;
	try{
		$.ajax({
			url: memberUrl + '/member/usernameCall',
			dataType:'jsonp',
			crossDomain: true,
			async: false,
			jsonpCallback:'usernameCall',
			success: function(data) {
				if (data.status == 'true') {	
					var username=data.username;
					var memberid=data.memberid;
					$('#J_header_userid').val(memberid);
					$('#J_header_username').val(username);
					$('#J_header_div_member').show();
					$loginNameLink = $("<a href='http://member.wtoip.com/member/index/indexfrom'></a>");
					$('#J_header_div_member').find('span').append($loginNameLink.text(username)).append('，欢迎光临汇桔！');
					$('#J_header_div_member').find('a.logout').text('【退出】');
					$('#J_header_div_visitor').hide();
				} else {
					$('#J_header_userid').val('');
					$('#J_header_username').val('');
					$('#J_header_div_member').hide();
					$('#J_header_div_visitor').show();
				}
				// 显示登陆状态
				if (typeof(displayLoginStatus) == "function") {
					displayLoginStatus();
				}
				// 显示购物车
				if (typeof(showCart) == "function") {
					showCart($('#J_header_userid').val());
				}
			},
			error:function(xhr,str){
				$('#J_header_userid').val('');
				$('#J_header_username').val('');
				$('#J_header_div_member').hide();
				$('#J_header_div_visitor').show();
			}
		});
	}catch(e){
	}
	
	
	function showCart(loginId) {
		if (loginId != 'undefined' && loginId != null && loginId != '') {
			$.ajax({
				type: "POST",
				url: ctxAllPublish + "/getCart",
				data: "loginId=" + loginId,
				success: function(data){
					$("#noCart").remove();
					if (data.success && data.status) {
						$ul = $('<ul class="clear"></ul>');
						$("#showCart").append($ul);
					    for (var i = 0; i < data.li.length; i++) {
					    	$li = $('<li><a class="f-db" href="javascript:void(0);" target="_blank"><img class="f-db f-fl cart_pic" src="" width="48" height="38"/><div class="f-fl"><p class="titleP"></p><p class="transTypeP"></p></div></a></li>');
					    	$ul.append($li);
					    	var $items = data.li[i];
					    	// var id = $items.id;
					    	var title = $items.title;
					    	var thumb = $items.thumb ;
					    	var transType = $items.transType;
					    	// var cstatus = $items.cstatus;
					    	var cartPrice = ($items.cartPrice == 'undefined' || $items.cartPrice == null || isNaN($items.cartPrice)) ? 0 : $items.cartPrice;
					    	var goodsPrice = ($items.goodsPrice == 'undefined' || $items.goodsPrice == null || isNaN($items.goodsPrice)) ? 0 : $items.goodsPrice;
					    	
					    	goodsPrice = (goodsPrice <= 0) ? ((cartPrice <= 0) ? "面议" : cartPrice) : goodsPrice;
					    	
					    	var type = $items.type;
					    	$li.find("a").attr("href", tradingUrl + $items.url);
					    	
					    	if (thumb == 'undefined' || thumb == null || thumb == '') {
					    		$li.find("img").attr("src", tradingUrl + "/home/img/bg/no_photo_error.jpg");
					    	} else {
					    		$li.find("img").attr("src", imageUrl + thumb);
					    	}
					    	
					    	var $typeLabel = $("<strong></strong>");
					    	if (type == "01") {
					    		$typeLabel.text("【专利】");
					    	} else if (type == "02") {
					    		$typeLabel.text("【商标】");
					    	} else if (type == "04") {
					    		$typeLabel.text("【域名】");
					    	} else if (type == "05") {
					    		$typeLabel.text("【技术】");
					    	}
					    	$li.find("p.titleP").append($typeLabel);
					    	$li.find("p.titleP").append(title);
					    	
					    	var transTypeLabel = $("<strong></strong>");
					    	transTypeLabel.text("￥" + goodsPrice);
					    	if (transType == "01") {
					    		$li.find("p.transTypeP").append("转让/");
					    	} else if (transType == "03") {
					    		$li.find("p.transTypeP").append("许可/");
					    	}
					    	$li.find("p.transTypeP").append(transTypeLabel);
					    	$li.find("p.transTypeP").append(transTypeLabel);
					    	
					    }
					    $numdiv = $('<div class="cart_bottom"><em class="f-ib f-fl">共<strong class="f-fwb">' + data.total_count + '</strong>件商品</em><a class="cart_link f-fr" href="http://trading.wtoip.com/Trading/wtoipShoppingController/selectAll" target="_blank">查看我的购物车</a></div>');
					    $("#showCart").append($numdiv);
					    $("#cartNum").text(data.total_count);
					} else {
						$numdiv = $('<div class="cart_bottom"><a class="cart_link f-fr" href="http://trading.wtoip.com/Trading/wtoipShoppingController/selectAll" target="_blank">查看我的购物车</a></div>');
						$("#showCart").append($numdiv);
					}
				}
			});	
		} else {
			$("#showCart").remove();
		}

	}
	
	
});