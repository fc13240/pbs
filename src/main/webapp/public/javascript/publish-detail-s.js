var ctx = $("#J_header_val_ctx").val();
var ctjy = $("#J_header_val_ctjy").val();
var cthylogin = $("#J_header_val_cthylogin").val();
var curSendId = $("#J_val_sendId").val();
var actyGoods = $("#actyGoods").val();
$(function() {
	
	//双旦活动
	doubleDD();
	huodong();
	var _t_usernamecall_jsonp = window.setInterval(function() {
		if ($('#J_header_userid').val() != null
				&& $('#J_header_userid').val() != '') {
			window.clearInterval(_t_usernamecall_jsonp);
			asyncLoadSellerInfo();
		}
	}, 200);
	// asyncLoadMallService();
	function initYkj() {
		$("#ykj").hide();
		if (isOnePrice != null && isOnePrice != undefined) {
			if (isOnePrice == 2 || permitIsOnePrice == 2)
				$("#ykj").show();
		}
	}
	initYkj();
	$(".priceClass").click(function() {
		var isActy = $("#isActy").val();
		if (isActy!=null && isActy == "true") {
			return;
		}
		var $e = $(this);
		var id = $e.attr("id");
		id = id.substring(3);
		$(".trading-ways .active").removeClass("active");
		$e.addClass("active");
		var tradeType = $("#tradeType" + id).val();
		var price = $("#price" + id).val();
		var isNeg = $("#isNeg" + id).val();
		$("#isNeg").val(isNeg);
		$("#tradeType").val(tradeType);
		$("#price").val(price);
		if (isNeg == 1 || price == 0) {// 如果为1，那么就是 “面议” ，反之。有价格
			$("#orid").hide();
			$("#goodsid").hide();
			$("span#sid").text("面议");
			$("#ykj").hide();
		} else {
			$("#orid").show();
			$("#goodsid").show();
			// 转让
			if (tradeType == 01) {
				isOnePrice == 2 ? change(1) : change(2);
				// 许可
			} else if (tradeType == 03) {
				permitIsOnePrice == 2 ? change(1) : change(2);
			} else {
				$("#price").text("价格 :");
			}

			if (Number(price) > 1) {
				$("span#sid").text("￥" + Math.round(price));
			} else {
				$("span#sid").text("￥" + price);
			}
		}
	});

	function change(t) {
		if (t == 1) {
			$("#price").text("一口价 :");
			$("#ykj").show();
			$("#yj").hide();
		} else {
			$("#price").text("价格 :");
			$("#yj").show();
		}

	}
	// 价格显示
	$("#ltt1").trigger('click');
	// 图片轮播
	$(".picBtnLeft").slide({
		mainCell : ".bd ul",
		effect : "fold",
		autoPlay : true
	});
	$(window).scroll(function() {
		var top = $(window).scrollTop();
		var minTop = $(".J_minTop").offset().top - 50;
		if (top < minTop) {
			$(".content-top1").removeClass('pos-fixed');
		} else {
			$(".content-top1").addClass('pos-fixed');
		}
	});
	$('.content-top1').find('li').each(function(i) {
		$(this).click(function() {
			bScroll = true
			if (bScroll) {
				$('.content-top1').find('li').removeClass('on');
				$('.content-top1').find('li').eq(i).addClass('on');
				if (i == $('.content-top1').find('li').size() - 1) {
					$('html, body').animate({
						scrollTop : $('caption').eq(0).offset().top - 50
					})
					$(this).find('li').removeClass('on');
					$(this).find('li').eq(0).addClass('on');
				} else {
					$('html, body').animate({
						scrollTop : $('.list-item').eq(i).offset().top - 50
					});
				}
			}
			;
		});
	});

	// 卖家区域登录链接
	$(".J_link_login").click(function(e) {
		e.preventDefault();
		$.login();
		return false;
	});

	// 加入购物车
	$(".J_btn_cart").click(function() {
		var userids1 = $("#J_header_userid").val();
		var type = $("#typeidess").val();
		var tradeType = $("#tradeType").val();
		var price = $("#price").val();
		var isActy = $("#isActy").val();
		if ($.isLogin()) {
			var userids2 = $(".J_div_sellerinfo").attr('data-sellerid');
			if (userids1 == userids2) {
				wtoip.alert.error({
					msg1 : '不能对自己的卖品加入购物车',
					title : '操作结果：'
				});
				return false;
			}
			var data = {
				tradid : curSendId,
				transType : tradeType,
				tradeFee : price,
				jsoncallback : 'test'
			};
			if (isActy && isActy == 'true') {
				data.activityId = actyId;
			}
			$.ajax({
				url : ctjy + ctx + '/wtoipShoppingController/asyncSave',
				dataType : 'jsonp',
				crossDomain : true,
				jsonpCallback : 'test',
				data : data,
				success : function(data) {
					if (data.status) {
						wtoip.alert.ok({
							msg1 : '成功加入购物车！',
							title : '操作结果：'
						});
					} else {
						wtoip.alert.error({
							msg1 : '加入购物车失败!',
							title : '操作结果：'
						});
					}
				}
			});
		}
	});

	/**
	 * 订单详情下订单控制
	 * 
	 * @param tradid
	 * @return
	 */
	$(".J_btn_order").click(function() {
		var userids1 = $("#J_header_userid").val();
		var tradeType = $("#tradeType").val();
		var price = $("#price").val();
		var type = $("#typeidess").val();
		var status = $("#statusess").val();
		var isActy = $("#isActy").val();
		var isMember = $("#isMember").val();
		if ($.isLogin()) {
			var userids2 = $(".J_div_sellerinfo").attr('data-sellerid');
			if (userids1 == userids2) {
				wtoip.alert.error({
					msg1 : '用户不能对自己下单!',
					title : '操作结果：'
				});
				return false;
			}
			if (status == '02') {
				var tradid = $(this).attr('data-sendid');
				$.ajax({
					url : ctjy + ctx + '/wtoipypbargain/CheckFBXQ',
					dataType : 'jsonp',
					crossDomain : true,
					jsonpCallback : 'test',
					data : {
						"tradid" : tradid,
						"transType" : tradeType,
						"jsoncallback" : "test"
					},
					success : function(data) {
						if (data.status) {
							wtoip.alert.error({
								msg1 : '已有订单正在处理中！',
								title : '提示信息:'
							});
							return false;
						} else {
							// window.location.href=ctx+"/wtoipOrderController/add?orderType=01&tradid="+tradid+"&payStatus=00&transType="+tradeType+"&type="+type+"&status="+status;
							doAjax(isMember, tradid, userids1, price,tradeType);// modify by ljb
						}
					}
				});
			} else if (status == '01') {
				wtoip.alert.ok({
					msg1 : '该商品已下架,无法再进行下单操作！',
					title : '提示信息：'
				});
				return false;
			}
		}
	});

	loadMetaInfo();// 异步加载页面交易流程等信息

	function doAjax(isMember, tradid, userids1, price,tradeType) {
		var url = ctjy + ctx + "/wtoipOrderController/add?tradid=" + tradid
		+ "&transType=" + tradeType;//下单路径
		
		if (isMember && isMember == "true") {
			var sign = "";
			var data = {
				isBaoyou : 1,
				tradid : tradid,
				fixedPrice : price,
				loginid : userids1
			};
			$.ajax({
				url :	ctjy + ctx + '/acty/sign' ,
				dataType : 'jsonp',
				crossDomain : true,
				jsonpCallback : 'test',
				data : data,
				success : function(rst) {
					if(rst.success){
						sign = rst.sign;
					}
				}
			}).done(function(){
					window.location.assign(url + "&sign=" + sign +"&fixedPrice=" +price + "&isBaoyou=1&sqlwhere=10" );
			});
		} else {
			var isActy = $("#isActy").val();
			if (isActy && isActy == 'true') {
					window.location.assign(url + "&activityId=" + actyId);
			} else {
				window.location.assign(url);
			}
		}
	}
});

function getAddOrd(tradid) {
	var userids1 = $("#J_header_userid").val();
	var tradeType = $("#tradeType").val();
	var price = $("#price").val();
	var type = $("#typeidess").val();
	var status = $("#statusess").val();
	if ($.isLogin()) {
		var userids2 = $(".J_div_sellerinfo").attr('data-sellerid');
		if (userids1 == userids2) {
			wtoip.alert.error({
				msg1 : '用户不能对自己下单!',
				title : '操作结果：'
			});
			return false;
		}
		if (status == '02') {
			$.ajax({
				url : ctx + "/wtoipypbargain/Check",
				async : false,
				cache : false,
				type : "post",
				datatype : "josn",
				data : {
					"tradid" : tradid,
					"transType" : tradeType
				},
				success : function(data) {
					if (data) {
						wtoip.alert.ok({
							msg1 : '已有订单正在处理中！',
							title : '提示信息'
						});
						return false;
					}
				}
			});
			// window.open(ctx+"/wtoipOrderController/add?orderType=01&tradid="+tradid+"&payStatus=00&transType="+tradeType+"&totalAmt="+price+"&type="+type+"&status="+status);
			window.open(ctx + "/wtoipOrderController/add?tradid=" + tradid
					+ "&transType=" + tradeType);
		} else if (status == '01') {
			wtoip.alert.ok({
				msg1 : '该商品已下架,无法再进行下单操作！',
				title : '提示信息：'
			});
			return false;
		}
	}
}

function getAddShopping(id) {
	var userids1 = $("#J_header_userid").val();
	var type = $("#typeidess").val();
	var tradeType = $("#tradeType").val();
	var price = $("#price").val();
	if ($.isLogin()) {
		var userids2 = $(".J_div_sellerinfo").attr('data-sellerid');
		if (userids1 == userids2) {
			param = {
				msg1 : '不能对自己的卖品加入购物车',
				title : '操作结果：'
			};
			wtoip.alert.error(param);
			return false;
		}
		window.open(ctx + "/wtoipShoppingController/save?tradid=" + id
				+ "&transType=" + tradeType + "&tradeFee=" + price);
	}
}

function getNegPrice(id) {
	var tradeType = $("#tradeType").val();
	var price = $("#price").val();
	var userids1 = $("#J_header_userid").val();
	var type = $("#typeidess").val();
	if ($.isLogin()) {
		var userids2 = $(".J_div_sellerinfo").attr('data-sellerid');
		if (userids1 == userids2) {
			if (userids1 == userids2) {
				wtoip.alert.error({
					msg1 : '用户不能自己对自己卖品进行议价!',
					title : '操作结果：'
				});
				return false;
			}
		}
		window.location = ctx + "/wtoipypbargain/form?custType=2&tradid=" + id
				+ "&transType=" + tradeType;
	}
}

function asyncLoadSellerInfo() {
	$.ajax({
		url : ctjy + ctx + '/wtoipreleasegoods/asyncLoadSellerInfo',
		dataType : 'jsonp',
		crossDomain : true,
		async : false,
		jsonp : "jsoncallback",
		jsonpCallback : 'test',
		data : {
			sellerMemberId : $('.J_div_sellerinfo').attr('data-sellerid'),
			jsoncallback : 'test'
		},
		success : function(data) {
			if (data.status) {
				if (data.seller != null) {
					var _s_json = data.seller;
					if (_s_json.name != null && _s_json.name != '') {
						$('.J_li_si_name').find('span').text(_s_json.name);
						$('.J_li_si_name').show();
					}
					if (_s_json.email != null && _s_json.email != '') {
						$('.J_li_si_email').find('span').text(_s_json.email);
						$('.J_li_si_email').show();
					}
					if (_s_json.emaill != null && _s_json.emaill != '') {
						$('.J_li_si_email').find('span').text(_s_json.emaill);
						$('.J_li_si_email').show();
					}
					if (_s_json.mobile != null && _s_json.mobile != '') {
						$('.J_li_si_mobile').find('span').text(_s_json.mobile);
						$('.J_li_si_mobile').show();
					}
				} else {
					var _u_json = data.user;
					if (_u_json.isVerified) {
						$('.J_li_si_name').find('span').text(_u_json.userName);
						$('.J_li_si_name').show();
					} else {
						$('.J_li_si_name').find('span').text('***');
						$('.J_li_si_name').show();
					}
					if (_u_json.email != null && _u_json.email != ''
							&& _u_json.email != 'null') {
						$('.J_li_si_email').find('span').text(_u_json.email);
						$('.J_li_si_email').show();
					}
					if (_u_json.tPhon != null && _u_json.tPhon != ''
							&& _u_json.tPhon != 'null') {
						$('.J_li_si_mobile').find('span').text(_u_json.tPhon);
						$('.J_li_si_mobile').show();
					}
				}
				$('.J_li_si_visitor').hide();
			} else {
				// console.log(data.msg);
			}
		}
	});
}
function asyncLoadMallService() {
	var seller_id = $('.J_div_sellerinfo').attr('data-sellerid');
	var seller_type = $('.J_div_sellerinfo').attr('data-sellerType');
	$.ajax({
		url : ctjy + ctx + '/asyncLoadMallService',
		type : 'post',
		dataType : 'jsonp',
		crossDomain : true,
		jsonp : 'jsoncallback',
		jsonCallback : 'a_l_m_s',
		data : {
			sellerId : seller_id,
			sellerType : seller_type,
			jsoncallback : 'a_l_m_s'
		},
		success : function(data) {
			if (data.status) {
				var _msc_json_arr = data.mcsList;
				var _len = _msc_json_arr.length;
				if (_len > 0) {
					var $ul = $('#sideService').find('ul.btn-list').empty();
					if (_len > 2)
						_len = 2;
					for (var i = 0; i < _len; i++) {
						$('<li>', {
							'html' : $('<a>', {
								'href' : 'javascript:void(0);',
								'data-hjid' : _msc_json_arr[i].hj_id,
								'html' : _msc_json_arr[i].hj_name
							})
						}).appendTo($ul);
					}
				}
			}
		}
	});
}

function loadMetaInfo() {
	var arr = [ 'J_temp_serviceFlow', 'J_temp_delegate', 'J_temp_security' ];
	_.each(arr, function(id) {
		if ($('#' + id).size() > 0) {
			var html = template(id, {});
			$('#' + id).prev('.list-item-main').empty().append(html);
		}
	});

}

//双旦设计：交易品title包含的“限时特惠，整点秒杀，平价超市，限时抢购，新手专区”字眼或者goods表这个字段不为空privilege_tag 的需要在详情中显示增加一个图标和链接
function doubleDD(){

	/*
	var title = $("#J_val_title").val();
	var privilegeTag = $("#J_val_privilegeTag").val();
	
	if((title.indexOf("限时特惠") >= 0) || (title.indexOf("整点秒杀") >= 0) || (title.indexOf("平价超市") >= 0) || (title.indexOf("限时抢购") >=0) || (title.indexOf("新手专区") >= 0) 
			|| ((null != privilegeTag)&&("" != privilegeTag))){
		
		var $pa = $("#J_activity_title");//盒子
		
		//新手专区
		if(title.indexOf("新手专区") >= 0){
			$pa.append("<div class='activity_text'><p>活动期间新注册用户专享——购买专区内商品，享1000元现金奖励！<a  href='http://www.wtoip.com/2016#rule' target='_blank'>（详见活动细则）</a></p></div>");
		}
		$pa.append("<div class='activity_title'><a href='http://www.wtoip.com/2016/' target='_blank'><h3>风云跨年，岁末盛典&nbsp;&nbsp;&nbsp;2015.12.29-2016.1.6<span>去看看></span></h3></a></div>"); 
	}
	*/
	//爱心after
	$(".favorite").after("<div class='favorite1'><a title='小桔助学公益项目'><i class='favorite-icon1'></i>“小桔助学”公益项目</a></div>");
}

//201601月份活动
function huodong(){
	var title = $("#J_val_title").val();
	if((title.indexOf("精品商标") >= 0) || (title.indexOf("特惠专场") >= 0)){
		
		var $pa = $("#J_activity_title");//盒子
		$pa.append("<div class='activity_title'><a href='http://www.wtoip.com/shangbiaoshow/' target='_blank'><h3>精品商标特惠专场&nbsp;&nbsp;&nbsp;1月13日-1月19日<span>去看看></span></h3></a></div>"); 
	}
}