$(function(){
  // 图片延时加载
  $("img.lazy").scrollLoading();
  
  //关闭微信二维码
	  $("#closeWxCode").click(function(){
		  $(this).parents(".wx-code").fadeOut();
	});

	//侧边栏
	setTimeout(function(){$("#serviceDot").css({display:"block"});},5000);
	$('#sideService li').bind({
		mouseover : function(){ $(this).find(".info").stop().show().animate({ right:35, opacity:1 }); },
		mouseout : function(){ $(this).find(".info").stop().hide().animate({ right:-15, opacity:0 }); }
	});
	$('#sideService li:first a').bind({
		mouseover : function(){$("#serviceDot").css({display:"none"}); },
		mouseout : function(){setTimeout(function(){$("#serviceDot").css({display:"block"});},5000); }
	});
	
	//回顶部
	$(window).scroll(function(){
		if($(document).scrollTop()>300){
			$(".toTop").fadeIn();
		}else{
			$(".toTop").fadeOut();
		}
	});
	$('.toTop').click(function(){$('body,html').animate({scrollTop: 0},400)});
	
});



