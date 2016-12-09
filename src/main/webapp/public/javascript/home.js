
/* 顶部拉幕广告 */
$(document).ready(function(){
   var $slideBannerTop = $('#ads-banner-slide'),
       $bannerTop = $('#ads-banner-top');

   $slideBannerTop.fadeIn(2000);
   setTimeout(function(){
      $slideBannerTop.slideUp(2000,function(){
          $bannerTop.slideDown(1000);
      });
   },5000);

     $('.ads-close').click(function(){
         $('#ads-banner-top').slideUp("slow");
     });
});
    
$(function(){
    var params={
        key:'b28551',
        autoRollingTime:6000,
        bgSpeed:500,
        motion:{
            DB_1_1:{left:-740,opacity:0,speed:300,delay:500},
            DB_1_2:{left:-740,opacity:0,speed:400,delay:800},
            DB_1_3:{left:-30,opacity:0,speed:600,delay:1200},
            DB_2_1:{top:300,opacity:0,speed:300,delay:500},
            DB_2_2:{top:300,opacity:0,speed:400,delay:800},
            DB_2_3:{top:270,opacity:0,speed:600,delay:1200},
            DB_3_1:{left:740,opacity:0,speed:300,delay:500},
            DB_3_2:{left:740,opacity:0,speed:400,delay:800},
            DB_3_3:{left:30,opacity:0,speed:600,delay:1200},
            DB_4_1:{top:-300,opacity:0,speed:300,delay:500},
            DB_4_2:{top:-300,opacity:0,speed:400,delay:800},
            DB_4_3:{top:-30,opacity:0,speed:600,delay:1200},
            DB_5_1:{left:-740,opacity:0,speed:200,delay:500},
            DB_5_2:{left:-30,opacity:0,speed:700,delay:800},
            DB_6_1:{top:300,opacity:0,speed:200,delay:500},
            DB_6_2:{top:270,opacity:0,speed:700,delay:800},
            DB_7_1:{left:740,opacity:0,speed:200,delay:500},
            DB_7_2:{left:30,opacity:0,speed:700,delay:800},
            DB_8_1:{top:-300,opacity:0,speed:200,delay:500},
            DB_8_2:{top:-30,opacity:0,speed:700,delay:800},
            end:null
        }
    };
    
    $(".DB_imgSet li").each(function() {
        var $d=$(this).children("input").val();
    	var $img=$(this).find("img").length;
    	switch ($d)
    		{
    		case "0":  // shang
    		  if($img==3){
    			  $(this).find("a img:eq(0)").addClass("DB_4_1");
    			  $(this).find("a img:eq(1)").addClass("DB_4_2");
    			  $(this).find("a img:eq(2)").addClass("DB_4_3");
    		  }
    		  if($img==2){
    			  $(this).find("a img:eq(0)").addClass("DB_8_1");
    			  $(this).find("a img:eq(1)").addClass("DB_8_2"); 
    			}
    		  break;
    		case "1":  // xia
    		 if($img==3){
    			  $(this).find("a img:eq(0)").addClass("DB_2_1");
    			  $(this).find("a img:eq(1)").addClass("DB_2_2");
    			  $(this).find("a img:eq(2)").addClass("DB_2_3");
    		 }
    		  if($img==2){
    			  $(this).find("a img:eq(0)").addClass("DB_6_1");
    			  $(this).find("a img:eq(1)").addClass("DB_6_2"); 
    			}
    		  break;
    		case "2":   // zuo
    		 if($img==3){
    			  $(this).find("a img:eq(0)").addClass("DB_1_1");
    			  $(this).find("a img:eq(1)").addClass("DB_1_2");
    			  $(this).find("a img:eq(2)").addClass("DB_1_3");
    		 }
    		  if($img==2){
    			  $(this).find("a img:eq(0)").addClass("DB_5_1");
    			  $(this).find("a img:eq(1)").addClass("DB_5_2");
    			}
    		  break;
    		case "3":  // you
    		  if($img==3){
    			  $(this).find("a img:eq(0)").addClass("DB_3_1");
    			  $(this).find("a img:eq(1)").addClass("DB_3_2");
    			  $(this).find("a img:eq(2)").addClass("DB_3_3");
    		 }
    		  if($img==2){
    			  $(this).find("a img:eq(0)").addClass("DB_7_1");
    			  $(this).find("a img:eq(1)").addClass("DB_7_2"); 
    			}
    		  break;
    		}
   		});
	$('.DB_tab25').DB_tabMotionBanner(params);
});



var ctxAll = "http://www.wtoip.com";
var ctxAllPublish = (location.pathname.indexOf("publish") != -1) ? "http://localhost:8080/publish" : ctxAll;
$(function(){
	var displayText = "1秒内百万资源精确查找";
	function prepareAndPostSearch() {
		if ($("#title").val() == displayText) {
			$("#title").val("");
		}
		searchAll(ctxAll);
		return false;
	}
	
	//搜索弹窗
	$(".form-submit, .index-top-search-tab a").each(function(i){
		$(this).click(function(){
			if ($(this).is(".index-top-search-tab a")) {
				// Nothing to do 
			} else {
				prepareAndPostSearch();
				return false;
			}
		});
	  /*
		$(this).click(function(){
			var memberId = $("#J_header_userid").val();
			var memberName = $("#J_header_username").val();
			// login or not ?
			if (!memberId || !memberName) {
				$("body").remove("div.login-mask");
				//if($(".login-mask").length<=0){
					if ($(this).is(".index-top-search-tab a")) {
						$("body").append('<div class="login-mask f-dn"><input type="hidden" id="topicSearch" value="" /><div class="login-win"><div class="login-show" style="width:480px;"><div class="login-header"><h2>搜索结果</h2><i class="login-closebtn login-closebtn-a-tag"></i></div><p style="padding:20px 53px 0;font-family:SimSun;color:#6a6a6a">一秒内，可以查寻<span style="color:#de0000">百万的知识产权数据库</span>，无论是商标还是专利，您需要的就在这里，还等什么，赶快注册吧！</p><div class="login-content" style="padding: 10px 100px 20px;"><form id="registerForm"><ul class="options"><li class="info clear"><label><input name="type" value="0" type="radio" checked="checked"/>个人用户</label>&nbsp;&nbsp;&nbsp;&nbsp;<label><input name="type" value="1" type="radio"/>企业用户</label></li><li class="ipt-text no-pd clear"><label class="f-ib"><i class="i-login-account" style="background-position:0 -100px"></i><input id="mobile" class="ipt" type="text" autocomplete="off" name="mobile" tabindex="1" maxlength="11" value="手机号码" onfocus="if(this.value==\'手机号码\') this.value=\'\';" onblur="if(this.value==\'\') this.value=\'手机号码\';"/></label></li><li class="ipt-text clear" style="width:160px"><label class="f-ib"><i class="i-login-password"></i><input id="code" class="ipt" type="text" autocomplete="off" name="code" tabindex="2" style="width:96px;" value="短信验证码" onfocus="if(this.value==\'短信验证码\') this.value=\'\';" onblur="if(this.value==\'\') this.value=\'短信验证码\';"/></label><input id="getCode" type="button" value="获取短信验证码" style="position: relative;right: -169px;top: -45px;width:110px;height:40px;color:#fff;background:#cc3011;border:none;border-radius:2px;cursor:pointer"/></li><li class="login-btn"><input type="button" value="立即注册" class="sbt-btn"/></li><li class="info f-tar clear">会员用户，请直接<a href="http://account.wtoip.com/login/?service=http://www.wtoip.com/" style="color:#f70">登录</a></li></ul></form></div></div></div></div>');
						$("#topicSearch").val($(this).attr("href"));
					} else {
						$("body").append('<div class="login-mask f-dn"><div class="login-win"><div class="login-show" style="width:480px;"><div class="login-header"><h2>搜索结果</h2><i class="login-closebtn"></i></div><p style="padding:20px 53px 0;font-family:SimSun;color:#6a6a6a">一秒内，可以查寻<span style="color:#de0000">百万的知识产权数据库</span>，无论是商标还是专利，您需要的就在这里，还等什么，赶快注册吧！</p><div class="login-content" style="padding: 10px 100px 20px;"><form id="registerForm"><ul class="options"><li class="info clear"><label><input name="type" value="0" type="radio" checked="checked"/>个人用户</label>&nbsp;&nbsp;&nbsp;&nbsp;<label><input name="type" value="1" type="radio"/>企业用户</label></li><li class="ipt-text no-pd clear"><label class="f-ib"><i class="i-login-account" style="background-position:0 -100px"></i><input id="mobile" class="ipt" type="text" autocomplete="off" name="mobile" tabindex="1" maxlength="11" value="手机号码" onfocus="if(this.value==\'手机号码\') this.value=\'\';" onblur="if(this.value==\'\') this.value=\'手机号码\';"/></label></li><li class="ipt-text clear" style="width:160px"><label class="f-ib"><i class="i-login-password"></i><input id="code" class="ipt" type="text" autocomplete="off" name="code" tabindex="2" style="width:96px;" value="短信验证码" onfocus="if(this.value==\'短信验证码\') this.value=\'\';" onblur="if(this.value==\'\') this.value=\'短信验证码\';"/></label><input id="getCode" type="button" value="获取短信验证码" style="position: relative;right: -169px;top: -45px;width:110px;height:40px;color:#fff;background:#cc3011;border:none;border-radius:2px;cursor:pointer"/></li><li class="login-btn"><input type="button" value="立即注册" class="sbt-btn"/></li><li class="info f-tar clear">会员用户，请直接<a href="http://account.wtoip.com/login/?service=http://www.wtoip.com/" style="color:#f70">登录</a></li></ul></form></div></div></div></div>');
					}
					$("#loginThenSearch").click(function() {
						window.location.replace($(this).attr("href") + "?service=" + getSearchUrl(ctxAllPublish));
						return false;
					});
				//}
				$(".login-mask").fadeIn(800);
				return false;
			} else {
				if ($(this).is(".index-top-search-tab a")) {
					// Nothing to do 
				} else {
					prepareAndPostSearch();
					return false;
				}
			}
		});
	 */
	});
	
	$(".login-closebtn").live("click",function(){
		$(".login-mask").fadeOut("fast");
		if ($(this).is(".login-closebtn-a-tag")) {
			window.location.replace($("#topicSearch").val());
		} else {
			prepareAndPostSearch();
		}
	}); 
	// 获取短信验证码
	$("#getCode").live("click",f_timeout);
	
	
	$("#mobile").live("keyup", function() {
		var $phone = $("input[name=mobile]");
		if (!(/^13[0-9]{9}$|14[0-9]{9}|15[0-9]{9}$|18[0-9]{9}$/.test($phone.val())) ) {
			showErrorMessage("请输入正确的手机号码！");
		}else {
			$(this).blur();
			checkMobile();
		}
	});
	
	// 显示错误信息
	function showErrorMessage(message, inputTextType) {
		$("#errorMessage").remove();
		$('<li id="errorMessage" class="" style="color:#f00;font-size:14px; text-align=left;">' + message + '</li>').insertBefore($("#registerForm").find("ul li:first"));
		if (inputTextType == 1) {
			$("#mobile").parents("label").addClass("err"); 
		} else if (inputTextType == 2) {
			$("#code").parents("label").addClass("err"); 
		}
	}
	
	function restoreStyle() {
		$("#errorMessage").remove();
		$("#mobile").parents("label").removeClass("err"); 
		$("#code").parents("label").removeClass("err"); 
	}
	
	// 获取验证码时的手机号码验证
	function phoneFun(){
		var $phone=$("input[name=mobile]");
		if($phone.val()==''){
			showErrorMessage("手机号码不为空！", 1);
			return false;
		}else{
			if(!(/^13[0-9]{9}$|14[0-9]{9}|15[0-9]{9}$|18[0-9]{9}$/.test($phone.val()))){
				showErrorMessage("请输入正确的手机号码！", 1);
				return false;
			}else{
				$phone.removeAttr("style").parent("li").css("borderColor","#E1E1E1");
			}
		}
		return true;
	}  
	
	
	//发送验证码  
	function f_timeout(){
		if(phoneFun()){
			getMessage();
			var t = 120 ; 
			timer = self.setInterval(function(){
				 if(t > 0){
					t=t-1;
					$('#getCode').val(t+"秒后再次发送").attr({"disabled":"disabled"}).css({"background":"#8d8d8d","cursor":"not-allowed"});   
				 }else{  
					window.clearInterval(timer);  
					$("#getCode").val("获取短信验证码").removeAttr("disabled").css({"background":"#cc3011","cursor":"pointer"});  
					$("#message").html("");
				}
			},1000);
		}
	 }
	
	// 注册成功自动跳转
	var timeout = 1;
	function refreshUrlInSeconds() {
		timerInSeconds = window.setInterval(function() {
			if (timeout > 0) {
				$("#seconds").text(timeout--);
			} else {
				window.clearInterval(timerInSeconds);
				if ($(".login-mask").is(".login-closebtn-a-tag")) {
					window.location.replace($("#topicSearch").val());
				} else {
					prepareAndPostSearch();
				}
			}
		},1000);
	}
	
	function getMessage() {
		//$("#getCodeText").attr("disabled", false);
		$.ajax({
			url:'http://member.wtoip.com/register/json/sendSms',
			data: "mobile=" + $("input[name=mobile]").val(),
			dataType:'jsonp',
			crossDomain:true,
			async:false,  
			jsonpCallback:'sendSms',
			success:function(data){	
				if (data.code == "200" && data.msg == "ok") {	
					showErrorMessage("短信已发送！", 0);
				} else {
					showErrorMessage(data.msg, 0); 
				}
			},
			error: function(xhr,str){
				showErrorMessage("系统繁忙，请稍候重试", 0); 
			}
		});
	}
	
	//注册验证
	$(".sbt-btn").live("click",function(){
		if(phoneFun()){
			if ($("input[name=code]").val()==''){
				showErrorMessage("验证码不为空！", 2);
			} else if(!(/^[0-9]{6}$/.test($("input[name=code]").val()))){
				showErrorMessage("请输入正确的验证码！", 2);
			} else {
				$("input[name=code]").css("color","#666").parent("li").css("borderColor","#E1E1E1");
				restoreStyle();
				submit();
			}
		}
	});
	
	
	function checkMobile() {
			$("#getCode").attr("disabled", "disabled");
			$("#errorMessage").remove();
			$("#mobile").parents("label").removeClass("err");
			$.ajax({
				type : "POST",
				url : ctxAllPublish + "/register/checkMobile",
				data: "mobile=" + $("input[name=mobile]").val(),
				dataType:'json',
				success: function(data) {	
					if (!data.success) {
						showErrorMessage(data.msg, 1);
					} else {
						if (data.code == "200") {
							$("#getCode").attr("disabled", false);
							$('<li id="errorMessage" class="" style="color:green;font-size:14px; text-align=left;">该手机号码可用</li>').insertBefore($("#registerForm").find("ul li:first"));
						} else {
							showErrorMessage(data.msg, 1);
						}
					}
				},
				error : function() {
					showErrorMessage("系统繁忙，请联系客服，谢谢！", 0);
				}
		});
	}
	
	function submit() {
		$(".sbt-btn").val("处理中...").attr("disabled", true);
		// 注册请求
		$.ajax({
			type : "POST",
			url : ctxAllPublish + "/register/member",
			data : $("#registerForm").serialize(),
			success : function(data) {
				$(".sbt-btn").val("立即注册").attr("disabled", false);
				if (!data.success) {
					showErrorMessage(data.msg, 0);
				} else {
					if (data.code == "200") {
						showErrorMessage(data.msg, 0);
						$("#registerForm")[0].reset();
						$("#errorMessage").append("<span style='margin-left:10px;'><em id='seconds' style='font-size:16px;'>" + timeout + "</em>秒后将为您自动跳转到搜索结果</span>");
						refreshUrlInSeconds();
					}
					else if (data.code == "500") {
						showErrorMessage("验证码错误!", 2);
					} else {
						showErrorMessage(data.msg, 0);
					} 
				}
			},
			error : function() {
				$(".sbt-btn").val("立即注册").attr("disabled", false);
				showErrorMessage("系统繁忙，请联系客服，谢谢！", 0);
			}
		});
	}
});

/* ---------------------------------------- 会员等级信息 ----------------------------------------------- */
// 是否登陆
function isLoginSSO() {
	var memberId = $("#J_header_userid").val();
	var memberName = $("#J_header_username").val();
	return (memberId || memberName);
}

/* 首页右侧登陆状态 */
function displayLoginStatus() {
	if (isLoginSSO()) {
		$.ajax({
			type : "POST",
			url : ctxAllPublish + "/get/level",
			data : "memberId=" + $("#J_header_userid").val(),
			success : function(data) {
				if (data.success) {
					$("#levelName").text(data.levelName);
				}
			},
			error : function() {
				// TODO
			}
		});
		$("#noLogin").hide();$("#hasLogin").show();
		$("#showUserName").text("Hi," + $("#J_header_username").val());
	} else {
		$("#noLogin").show();$("#hasLogin").hide();
		$("#showUserName").text("Hi,您好");
	}
	
}
