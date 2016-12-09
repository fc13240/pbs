var ctx = $("#J_header_val_ctx").val();
var ctxSEO = $("#J_header_val_ctxSEO").val();
var ctxStatic = $("#J_header_val_ctxStatic").val();
var cts = $('#J_header_val_cts').val();
var ctjy = $("#J_header_val_ctjy").val();
var cthylogin = $("#J_header_val_cthylogin").val();
var cthy = $("#J_header_val_cthy").val();
var cur_url = window.location.href;
$(function(){
	if($('#J_header_userid').val()==null || $('#J_header_userid').val()==''){
		asyncUsernameCall();
	}
	$("img[data-original]").lazyload({effect : "fadeIn",failurelimit : 50});
	/*if($('.J_header_ul_backmenu').length>0 && $('.J_header_ul_backmenu').data('lock')==null && $('.J_header_ul_backmenu li:eq(1)').text().indexOf('代办服务')<0){
		asyncLoadStroeURL();
		//lock remote call make sure only invoke once
		$('.J_header_ul_backmenu').data('lock',1);
	}*/
	//top search
	$(".J_btn_topsearch").click(function(){
		var url;
		var $form = $(this).parents('form');
		var title = $form.find("input[name='title']").val();
		var type = $form.find("select[name='type'] option:selected").val();
		if(type == "0") type = "00";
		var catid = '';
		if(/list0[0-9]{4}/.test(cur_url)){
			var _index = cur_url.indexOf('/list')+5;
			catid=cur_url.substring(_index+2,_index+5);
		}
		if(title !=null && title!=''){
			$.ajax({
				url:ctx+'/compressCode',
				type:'POST',
				async:false,
				dataType:'JSON',
				data:{
					title:title
				},
				success:function(data){
					data = eval('('+data+')');
					if(data.status){
						title = data.title;
					}else{
						title = '';
						if(window.console){
							console.log(data.errorMsg);
						}
					}
				}
			});
		}
		if(type=='99'){
			if(title ==null || title==''){
				url = ctxMallSEO+"/mall/list.html";
			}else{
				url =  ctxMallSEO+"/mall/list"+title+".html";
			}
			window.location.assign(url);
			return ;
		}
		if(title !=null && title!=''){
			if(catid == '') catid='000';
			url = ctxSEO + "/list" + type + catid + title + '.html';
			window.location.assign(url);
		}else{
			if (type=='00' && catid=='') {
				url = ctxSEO + "/list.html";
			}else{
				url = ctxSEO + "/list" + type + catid + '.html';
			}
			window.location.assign(url);
		}

		
	});
	$("#title").keydown(function(event){
		var keycode = (event.keyCode ? event.keyCode : event.which);  
		if (keycode == 13){
			$(".J_btn_topsearch").trigger('click');
			return false;
		}
	});
	//top login
	$(".mod-sitemap-login").click(function(e){
		e.preventDefault();
		$.login();
		return false;
	});
	
	//打开委托经纪人弹出框
	$('.J_btn_delegate').click(hasDelegate);
	//提交委托经纪人
	$('.J_btn_delegate_submit').click(addDelegate);
	//添加收藏
	$('.J_link_collect').click(addCollect);
	
	//添加特惠收藏
	$('.J_link_collect_t').click(addCollectActy);
	
	
	/*导航下拉*/
	$(".item.sitemap").hover(
	  function(){
		$(this).addClass("on");
		$(this).next().removeClass("bg");
	  },
	  function(){
		$(this).removeClass("on");
		$(this).next().addClass("bg");
	  }
	);
	
	//弹窗关闭
	$('.win-closebtn,.win_cancel_btn').click(function(){
		$(this).parents(".mask").fadeOut("fast");
	});
	
	//委托经纪人弹窗切换
	$(".broker-tab li").click(function(){
		$(this).addClass("cur").siblings().removeClass("cur");
		$(".broker-cont .broker-cont-item").eq($(this).index()).show().siblings().hide();
	});
	//删除提示框
	$('.J_link_delete').click(function(e){
		var $e = $(this);
		e.preventDefault();
		wtoip.alert.confirm({
			msg1:'您确认要删除交易品吗？（删除后将不可恢复）',
			ok:function(){
				window.location.assign($e.attr('href'));
			}
		});
	});
	
	//下拉选择框
	selecta("categoryselect");
	
	//多选、反选
	$(".tbox").click(function(){
		if (this.checked){
			$("[name=cboxid]:checkbox").attr("checked",true);
		}else{	
			$("[name=cboxid]:checkbox").attr("checked",false);	
		}
	});
	
	/*点击展开更多*/
    var category = $('.any-order a:gt(9)');
	category.css('display','none');
	var toggleBtn = $('.themore');
	toggleBtn.toggle(function(){
		category.css('display','inline-block');
		$(this).text('收起').addClass('up');	
	},function(){
		category.hide();
		$(this).text('更多').removeClass('up');
	});
	
	/*侧边栏*/
	  $('.right-sidebar').returnTop();
	  // 二维码弹出层
	  $('.code').bind({
	      mouseover : function(){ $(this).find(".popPanel").stop().show().animate({ right:196, opacity:1 }); },
	      mouseout : function(){ $(this).find(".popPanel").stop().animate({ right:220, opacity:0 },function(){ $(this).hide(); }); }
	  });
	  
});
//侧边导航栏
var rgside=$(".right-sidebar").offset().top;
$(window).scroll(function(e){
    st=$(document).scrollTop();
    if(st>rgside){$(".right-sidebar .return-top").css("display","block");}
    else{$(".right-sidebar .return-top").css("display","none");}
});
//选项卡
function test_item(n){
	var menu = document.getElementById("tab-menu");
	var menuli = menu.getElementsByTagName("li");
	for(var i = 0; i< menuli.length;i++){
		menuli[i].className= "";
		menuli[n].className="yes";
		document.getElementById("tab"+ i).className = "no";
		document.getElementById("tab"+ n).className = "tab-content";
	}
}

function asyncLoadStroeURL(){//暂时不使用
	var $ul= $('#J_ul_leftMenu_release');
	var active = $ul.parents('div.trading-system-sidebar').data('active');
	var leftLinkSource = '{{if status==2}}'
		+'<li><a href="'+ctx+'/wtoipreleasegoods/list?type=04&status=02"{{if active==17}} class="active"{{/if}}>&middot;我的域名</a></li>'
		+'{{else}}'
		+'<li><a href="'+ctx+'/wtoipreleasegoods/list?type=05&status=02"{{if active==13}} class="active"{{/if}}>&middot;我的技术</a></li>'
		+'{{/if}}';
	var topLinkSource = '{{if status==1}}'
		+'<li><a href="'+$("#J_header_val_ctzd").val()+'/storemanager" target="_blank">我的知店</a></li>'
		+'{{else}}'
		+'<li><a href="'+$("#J_header_val_ctmall").val()+'/member/mallInfo/info" target="_blank">我的商城</a></li>'
		+'{{/if}}';
	var cur_memberid = $('#J_header_userid').val();
	$.ajax({
		url : cthy+"/member/checkHasMallOrZhidian",
		type : "post",
		dataType : "jsonp",
		jsonpCallback:'call',
		//crossDomain:true, 强制跨域
		async : false,//设置为同步操作就可以给全局变量赋值成功
		success : function(data) {
			if (window.console) {
				console.log(data);
			}
			locache.set('store_info',data);
			locache.set('memberid',cur_memberid);
			if (data.result) {
				var render = template.compile(topLinkSource);
				var html = render(data);
				$('.J_header_ul_backmenu').append(html);
				$.extend(data,{
					active:active
				});
				render = template.compile(leftLinkSource);
				html = render(data);
				$ul.append(html);
			}
		},
		error : function(e) { //会员登录失效 调用失败  返回true 提交时会检测是否登录 失效返回登录页
			res = true;
		}
	});
	/*if(locache.get('store_info')==null || locache.get('memberid')!=cur_memberid){
		$.ajax({
			url : cthy+"/member/checkHasMallOrZhidian",
			type : "post",
			dataType : "jsonp",
			jsonpCallback:'call',
			//crossDomain:true, 强制跨域
			async : false,//设置为同步操作就可以给全局变量赋值成功 
			success : function(data) {
				locache.set('store_info',data);
				locache.set('memberid',cur_memberid);
				if (data.result) {
					var render = template.compile(source);
					var html = render(data);
					$('.J_header_ul_backmenu').append(html);
				}
			},
			error : function(e) { //会员登录失效 调用失败  返回true 提交时会检测是否登录 失效返回登录页
				res = true;
			}
		});
	}else{
		var data = locache.get('store_info');
		if (data.result) {
			var render = template.compile(source);
			var html = render(data);
			$('.J_header_ul_backmenu').append(html);
		}
	}*/
}

function asyncUsernameCall(){
	try{
		$.ajax({
			url:cthy+'/member/usernameCall',
			dataType:'jsonp',
			crossDomain:true,
			async:false,
			jsonp: "jsoncallback",
			jsonpCallback:'usernameCall',
			success:function(data){//success 返回，则可认为是已登陆
				if(data.status=='true'){
					var username=data.username;
					var memberid=data.memberid;
					var url_preffix = '';
					if(cur_url.indexOf(ctx)>0){
						url_preffix = ctx;
					}
					if(cur_url.indexOf('item-')<=0){
						$.ajax({
							url:ctjy+ctx+'/wtoipreleasegoods/i',
							dataType:'jsonp',
							crossDomain:true,
							async:false,
							jsonp: "jsoncallback",
							jsonpCallback:'intercept',
							success:function(data){
								//console.log(data);
								//console.log($('#J_header_userid').val());
								//console.log($('#J_header_username').val());
							}
						});
					}
					$('#J_header_userid').val(memberid);
					$('#J_header_username').val(username);
					$('#J_header_div_member').show();
					$('#J_header_div_member').find('span').text(username+'，欢迎光临汇桔！');
					$('#J_header_div_visitor').hide();
				}else{
					$('#J_header_userid').val('');
					$('#J_header_username').val('');
					$('#J_header_div_member').hide();
					$('#J_header_div_visitor').show();
					if(cur_url.indexOf('item-')>0){
						$('.J_li_si_member').find('span').text('');
						$('.J_li_si_member').hide();
						$('.J_li_si_visitor').show();
					}
				}
			},
			error:function(xhr,str){
				//当未登陆时，会做跳转，跳到的是登陆时，会出错
			}
		});
	}catch(e){
	}
}

function selecta(id){
	var cateSelect =  document.getElementById(id);
	if(cateSelect==null){
		return;
	}
	var curSelect = cateSelect.getElementsByTagName("span")[0];
	var oSelect = cateSelect.getElementsByTagName("select")[0];
	var aOption = cateSelect.getElementsByTagName("option");
	oSelect.onchange = function () {
		var text=oSelect.options[oSelect.selectedIndex].text;
		curSelect.innerHTML = text;
	}
}

function gettxtPage(url){   
	var txtPage = $("#txtPage").val() ;
	var param = {page:txtPage};
	window.location.assign(url+"&"+$.param(param));
}

function hasDelegate(){
	if($.isLogin()){
		var $e = $(this);
		var $mask = $('.delegate_mask');
		$mask.find("input:text").val("");
		$mask.find("textarea").val("");
		var tradid = $e.attr('data-sendId');
		if(_.isEmpty(tradid) || tradid ==0){
			wtoip.alert.error({msg1:'此种交易品类型不能委托经纪人。'});
			return ;
		}
		var transType = $e.attr('data-tradeType');
		if($('#tradeType')!=null && $('#tradeType').val()!=null && $('#tradeType').val()!=''){
			transType = $('#tradeType').val();
		}
		var sort = $mask.find("input[name='sort']").val();
		var url = ctjy+ctx+'/wtoipPrincipalController/isAdd';
		$.ajax({
			url: url,
			dataType:'jsonp',
			jsonp: "jsoncallback",
			jsonpCallback:"test",
			type:'post',
			data:{'gid':tradid,'sort':sort,'transType':transType,jsoncallback:'test'},
			success: function(data){
				if(data.status){
					wtoip.alert.error({msg1:'同一资产同一交易方式同一天只能委托一次！',title:'提示信息：'});
				}else{
					$mask.fadeIn('normal','linear');
					$mask.find("[name='gid']").val(tradid);
					$mask.find("[name='transType']").val(transType);
				}
			}
		});
	}
}

function addDelegate(){
	var $e = $(this);
	$("#errorEntrust").remove();
	var $mask = $e.parents('.mask');
	var $message = $mask.find("[name='message']");
	var $username = $mask.find("[name='username']");
	var $mobile = $mask.find("[name='mobile']");
	var $price = $mask.find("[name='price']");
	if($message.val()==''){
		$message.parent().append('<span style="color:#FF8C00;font-size:15px" id="errorEntrust"> 请简要描述您需要委托的情况，140字以内  </span>');
		return false;
	}
	if($username.val()==''){
		$username.parent().append('<span style="color:#FF8C00;font-size:15px" id="errorEntrust" > 请输入您的称呼  </span>');
		return false;
	}
	if(!(/^[1][34578]\d{9}$/.test($mobile.val()))){
		$mobile.parent().append('<span style="color:#FF8C00;font-size:15px" id="errorEntrust">手机号码仅支持13/4/5/7/8开头的11位数字 </span>');
		return false;
	}
	if(!(/^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$/.test($price.val()))) {
		$price.parent().append('<span style="color:#FF8C00;font-size:15px;width: 110px;" id="errorEntrust"> 请输入数字</span>');
		return false;
	}
	var url = ctjy+ctx + '/wtoipPrincipalController/add';
	$.ajax({
		url: url,
		dataType:'jsonp',
		jsonp: "jsoncallback",
		jsonpCallback:"test",
		type:'post',
		data:{
			gid:$mask.find("[name='gid']").val(),
			price:$price.val(),
			transType:$mask.find("[name='transType']").val(),
			message:$message.val(),
			username:$username.val(),
			mobile:$mobile.val(),
			sort:$mask.find("[name='sort']").val(),
			jsoncallback:'test'
		},
		success:function(data){
			if(data.success){
				wtoip.alert.ok({
					msg1:'委托已成功提交，我们会在1个工作日内联系您。',
					title:'操作结果:',
					ok:function(){$mask.fadeOut('fast');}
				});
			}else{
				wtoip.alert.error({
					msg1:'委托失败，请稍后再试！',
					title:'操作结果:',
					ok:function(){$mask.fadeOut('fast');}
				});
			}
		}
	});
}

$(function() { 
	$(".ipt").keyup(function() {
		checkInput();
	});
});

function checkInput() {
	var $e = $(this);
	$("#errorEntrust").remove();
	var $mask = $e.parents('.mask');
	var $message = $mask.find("[name='message']");
	var $username = $mask.find("[name='username']");
	var $mobile = $mask.find("[name='mobile']");
	var $price = $mask.find("[name='price']");
	if($message.val()==''){
		$message.parent().append('<span style="color:#FF8C00;font-size:15px" id="errorEntrust"> 请简要描述您需要委托的情况，140字以内  </span>');
		return false;
	}
	if($username.val()==''){
		$username.parent().append('<span style="color:#FF8C00;font-size:15px" id="errorEntrust" > 请输入您的称呼  </span>');
		return false;
	}
	if(!(/^[1][34578]\d{9}$/.test($mobile.val()))){
		$mobile.parent().append('<span style="color:#FF8C00;font-size:15px" id="errorEntrust">手机号码仅支持13/4/5/7/8开头的11位数字 </span>');
		return false;
	}
	if(!(/^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$/.test($price.val()))) {
		$price.parent().append('<span style="color:#FF8C00;font-size:15px;width: 110px;" id="errorEntrust"> 请输入数字</span>');
		return false;
	}	
}

function addCollect(){
	if($.isLogin()){
		var $e = $(this);
		userid = $('#J_header_userid').val();
		var sendId = $e.attr('data-sendId');
		$.ajax({
			url:ctjy+ctx+'/wtoipCollectionController/save',
			dataType:'jsonp',
			crossDomain:true,
			jsonp: "jsoncallback",
			jsonpCallback:'test',
			data:{
				tradid:sendId,
				collectionType:'02',
				jsoncallback:'test',
				sellerUserid:userid
			},
			success:function(data){
				if(data.success){
					wtoip.alert.ok({msg1:data.msg,title:'操作结果：'});
				}
			}
		});
	}
}

function addCollectActy(){
	if($.isLogin()){
		var $e = $(this);
		userid = $('#J_header_userid').val();
		var sendId = $e.attr('data-sendId');
		var actyId = $e.attr('data-actyId');
		$.ajax({
			url:ctjy+ctx+'/wtoipCollectionController/save',
			dataType:'jsonp',
			crossDomain:true,
			jsonp: "jsoncallback",
			jsonpCallback:'test',
			data:{
				tradid:sendId,
				collectionType:'02',
				jsoncallback:'test',
				sellerUserid:userid,
				activityId : actyId
			},
			success:function(data){
				if(data.success){
					wtoip.alert.ok({msg1:data.msg,title:'操作结果：'});
				}
			}
		});
	}
}

function addOrder(url,orderType,orderSn,operateType,cust_type,userid){ 
	var params = {
		orderType:orderType,
		orderSn:orderSn,
		operateType:operateType
	};
	if(cust_type==1){
		$.extend(params, {sellerUserid:userid});
	}else if(cust_type==2){
		$.extend(params, {buyerUserids:userid});
	}else{
		$.extend(params, {sellerUserid:userid,buyerUserids:userid});
	}
	window.location.href=url+'?'+$.param(params);
}

/**
 * 限制文本输入框只能输入整数（<input onkeydown="onlyNum();" style="ime-mode:Disabled"> ）
 */
function onlyNum() 
{ 
if(!(event.keyCode==46)&&!(event.keyCode==8)&&!(event.keyCode==37)&&!(event.keyCode==39)) 
if(!((event.keyCode>=48&&event.keyCode<=57)||(event.keyCode>=96&&event.keyCode<=105))) 
event.returnValue=false; 
}
/**
 * 操作单笔订单信息
 * @param url
 * @param orderSn
 * @param payStatus
 * @return
 */
function selectDec(url,orderSn,payStatus,cust_type,userid){ 
	var params = {
		orderSn:orderSn,
		payStatus:payStatus
	};
	if(cust_type==1){
		$.extend(params,{sellerUserid:userid});
	}else if(cust_type==2){
		$.extend(params,{buyerUserids:userid});
	}else{
		$.extend(params,{sellerUserid:userid,buyerUserids:userid});
	}
	$.extend(params,{custType:cust_type});
	window.location.href=url+'?'+$.param(params);
}

function Calc(options) {
	//设置保留小数位或其它设置
	this.settings = {
			"fraction": 2
	};
	$.extend(this.settings, options);
	this.result = 0;

	//隐式多参相加
	this.add = function() {
		for (var i = 0; i < arguments.length; i++) {
			this.result += parseFloat(arguments[i]);
		}
		return (new Number(this.result)).toFixed(this.settings.fraction);
	};

	//result减去隐式多参arg1,arg2...argn
	this.sub = function() {
		for (var i = 0; i < arguments.length; i++) {
			this.result -= parseFloat(arguments[i]);
		}
	};

	//级联相乘
	this.mul = function() {
		for (var i = 0; i < arguments.length; i++) {
			this.result *= parseFloat(arguments[i]);
		}
	};

	//级联相除
	this.div = function() {
		var divisor = 0;
		for (var i = 0; i < arguments.length; i++) {
			divisor = parseFloat(arguments[i]);
			if (0 == divisor) {alert("除数不能为零"); break;}
			this.result /= divisor;
		}
	};

	//返回经过一系列运算后的结果
	this.val = function() {
		return (new Number(this.result)).toFixed(this.settings.fraction);
	};

	return this;
}


/*侧边栏自适应*/
(function($){
    $.fn.returnTop = function(options){
        var defaults = {
            left: $('.container').offset().left+$('.container').innerWidth()
        };
        var opts = $.extend({}, defaults, options);
        var This = $(this);
        This.css({right:0, left: opts.left});
        This.find('.return-top').click(function(){
            $('body,html').animate({scrollTop: 0},200)
        });
        $(window).resize(function(){
            opts.left = $('.container').offset().left+$('.container').innerWidth();
            This.css({right:0, left: opts.left});
        });
    };
    
    $.extend({
		login:function(){
			var curUrl = window.location.href;
			var interceptUrl = '/wtoipreleasegoods/intercept';
			var retUrl = '';
			var url_preffix = '';
			var hostname = window.location.hostname;
			if(hostname.indexOf('www')>=0){
				url_preffix = ctxSEO;
			}else{
				url_preffix = ctjy;
			}
			if(curUrl.indexOf(ctx)>=0){
				url_preffix += ctx;
				retUrl = curUrl.substring(curUrl.indexOf(ctx)+ctx.length, curUrl.length);
			}else{
				retUrl = curUrl.substring(curUrl.indexOf('.com')+4, curUrl.length);
			}
			window.location.href=cthylogin+"?service="+curUrl;//url_preffix+interceptUrl+retUrl
		},
		isLogin: function(){//jQuery插件判断是否登录，只适用于搜索和详情页
			var userid = $('#J_header_userid').val();
			if(userid==null || userid =='null' || userid==''){ $.login(); return false;}
			return true;
		},
		getUrlVars: function () {
			var keys=[],vals=[],hash;
			if(cur_url.indexOf('.html?')>0){
				var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
				for (var i = 0; i < hashes.length; i++) {
					hash = hashes[i].split('=');
					keys.push(hash[0]);
					vals.push(hash[1]);
				}
				return _.object(keys, vals);
			}
			return {};
		}
	});
    
  //页尾提示文字
    $(".footer_top dl").click(function(){
        $(".footer_top dl").removeClass("show-popup");
        $(this).addClass("show-popup");
        return false;
    });
    document.onclick=function(){
     if($(".show-popup").length>0){
        $(".footer_top dl").removeClass("show-popup");
     }
    }


})(jQuery);
//修改金额验证
function clearNoNum(obj){
	obj.value = obj.value.replace(/[^\d.]/g,""); //清除"数字"和"."以外的字符
	obj.value = obj.value.replace(/^\./g,""); //验证第一个字符是数字而不是
	obj.value = obj.value.replace(/\.{2,}/g,"."); //只保留第一个. 清除多余的
	obj.value = obj.value.replace(".","$#$").replace(/\./g,"").replace("$#$",".");
	obj.value = obj.value.replace(/^(\-)*(\d+)\.(\d\d).*$/,'$1$2.$3'); //只能输入两个小数
	var temp =obj.value.substring(0,obj.value.indexOf("."));
	if(temp.length > 12){
		obj.value = temp.substring(0,12) +obj.value.substring(obj.value.indexOf("."));
	}
}

function formatDate(now) { 
	var year=now.getYear(); 
	var month=now.getMonth()+1; 
	var date=now.getDate(); 
	var hour=now.getHours(); 
	var minute=now.getMinutes(); 
	var second=now.getSeconds(); 
	return year+"-"+month+"-"+date+" "+hour+":"+minute+":"+second; 
	} 

//搜索类型切换
$(".top_search_tabs a").click(function(){
	$(".top_search_tabs a").removeClass("on");
	$(this).addClass("on");
	$("#type").val($(this).attr("value"));
});