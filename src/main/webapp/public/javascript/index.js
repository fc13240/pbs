$(function(){
    // 左侧菜单 
    $('.all-category-mod').menuSlide({ titMod: '.all-category-list', maniMod: '.cat-cont' });
	
	/*楼层切换*/
    //$(".floor").slide({titCell:".floor_tabs li",mainCell:".floor_main",prevCell:"",nextCell:"",effect:"fade",delayTime:400,pnLoop:false,easing:"swing" });

    /*focusBox*/
    $(".focusBox").hover(function(){ $(this).find(".prev,.next").stop(true,true).fadeTo("show",1) },function(){ $(this).find(".prev,.next").fadeOut() });
    $(".focusBox").slide({ mainCell:".pic",effect:"fold",autoPlay:true, delayTime:600,trigger:"click"});
	
	/*mod-main-c轮播*/
	$("#switchimg1").unbind('mouseenter').unbind('mouseleave');
	$("#switchimg1").slide({effect:"leftLoop",vis:4,autoPlay:true, delayTime:800, trigger:"click",easing:"easeInOutExpo"});
	
    /* side-r-tab */
    $(".side-r-tab").slide({effect:"left"});

	//交易帮手
	$(".trading_helper").slide({titCell:".trading_helper_hd li",mainCell:".trading_helper_bd", effect:"left", autoPlay:true,delayTime:400});	

	/*热点资讯*/
	$('.news_lists').each(function(){
		var $li=$(this).children("li");
        $li.hover(function(){$li.removeClass('hover');$(this).addClass('hover')});
    });
	
	/*资讯 幻灯片*/
    $("#slideNews").slide({ mainCell:".bd ul",autoPlay:true,effect:"fold"});
	
	//搜索类型切换
	$(".top_search_tabs a").click(function(){
		$(".top_search_tabs a").removeClass("on");
		$(this).addClass("on");
	})
	
	/*底部合作伙伴*/
    $(".scrolltxt").slide({ mainCell:"ul", effect:"top", autoPlay:true, interTime:5000, delayTime:1000,easing:"easeOutCubic" });	
	
   //知商会员介绍层
   $("#zsItro .clk1,#zsItro .clk3").click(function(){
       $(this).parents("#zsItro").fadeOut();
   });
   $("#zsItro .clk4").click(function(){
        $(this).toggleClass("clk-on");
    });
	
	
	//楼层导航
	$(window).scroll(function(){
		var ling = $(document).scrollTop();
		$('#floorNav li,.floor_num').removeClass("active");
		if(ling>300){
			$("#floorNav").fadeIn();
		}else{
			$("#floorNav").fadeOut();
		}
		if(300<ling && ling< $('.floor_box:eq(0)').offset().top+$('.floor_box:eq(0)').height()-112 ){
			$('#floorNav li:eq(0),.floor_num:eq(0)').addClass("active");
		}else if(ling< $('.floor_box:eq(1)').offset().top+$('.floor_box:eq(1)').height()-112 ){
			$('#floorNav li:eq(1),.floor_num:eq(1)').addClass("active");
		}else if(ling< $('.floor_box:eq(2)').offset().top+$('.floor_box:eq(2)').height()-112 ){
			$('#floorNav li:eq(2),.floor_num:eq(2)').addClass("active");
		}else if(ling< $('.floor_box:eq(3)').offset().top+$('.floor_box:eq(3)').height()-112 ){
			$('#floorNav li:eq(3),.floor_num:eq(3)').addClass("active");
		}else if(ling< $('.floor_box:eq(4)').offset().top+$('.floor_box:eq(4)').height()-112 ){
			$('#floorNav li:eq(4),.floor_num:eq(4)').addClass("active");
		}else if(ling> $('.floor_box:eq(4)').offset().top+$('.floor_box:eq(4)').height()-112 ){
			$('#floorNav li:eq(5),.floor_num:eq(5)').addClass("active");
		}
		
	});
	$('#floorNav li').click(function(){
		var el = $('.floor_box').eq($(this).index());
        $('body,html').animate({scrollTop: el.offset().top+18},800);
        return false;
	});
	
	//ie8以下
	var isIE = document.all ? 1 : 0;
	   if (isIE == 1){
			var isIE=!!window.ActiveXObject;
			var isIE8=isIE&&!!document.documentMode;
			var isIE7=isIE&&!isIE8;
			if (isIE8 || isIE7){
				if ($(window).width() < 1280) {
						$(".floor-nav").addClass("v8");
					} else {
					   $(".floor-nav").removeClass("v8");
					}					
	  
		   }
	   }
	   
		//侧边栏
		$('#sidebar li').bind({
			mouseover : function(){ $(this).find(".info").stop().show().animate({ right:40, opacity:1 }); },
			mouseout : function(){ $(this).find(".info").stop().hide().animate({ right:-15, opacity:0 }); }
		});
		
		
		//回顶
		$(window).scroll(function(){
			var ling = $(document).scrollTop();
			if(ling>300){
				$(".s_toTop").fadeIn();
			}else{
				$(".s_toTop").fadeOut();
			}
		});	
		$('.s_toTop').click(function(e) {
	        $('html,body').stop().animate({'scrollTop':'0'},300);
	    });
	 //双12侧边栏--END
	
});


/*左菜单二级菜单*/
(function($){
    $.fn.menuSlide = function(optoins){
        var defaults = {
            titMod: '.all-category-list',
            maniMod: '.cat-cont'
        };

        var opts = $.extend({},defaults,optoins);
        var This = $(this);
        var timer = null;
        This.find(opts.titMod).find('li').hover(function(){
            clearTimeout(timer);
            This.find(opts.titMod).find('li').removeClass('active');
			This.find(opts.titMod).find('li').css({borderBottomColor:'#ddd'});
            $(this).addClass('active').css({borderBottomColor:'#F64914'});
			$(this).prev("li").css({borderBottomColor:'#F5F5F5'});
            This.find(opts.maniMod).css({ display: 'block'});
            This.find(opts.maniMod).find('.cat-cont-bd').children('li').css({display: 'none'});
            This.find(opts.maniMod).find('.cat-cont-bd').children('li').eq($(this).index()).css({display: 'block'});
            if($(this).offset().top+This.find(opts.maniMod).height()>$(window).height()+$(window).scrollTop())
            {
                This.find(opts.maniMod).stop(true,true) .animate({top: $(window).height()-(This.find(opts.maniMod).height()+$(this).offset().top-$(this).position().top)+50},150)
            }else{
                This.find(opts.maniMod).stop(true,true).animate({top: $(this).offset().top-$('.all-category-mod').offset().top},150);
            }

			},function(){
				var _this = $(this);
				timer = setTimeout(function(){
					This.find(opts.titMod).find('li').removeClass('active').css({borderBottomColor:'#ddd'});
					This.find(opts.maniMod).css({ display: 'none'});
			},30);
        });

        This.find(opts.maniMod).hover(function(){
            clearTimeout(timer);
	
			},function(){
				timer = setTimeout(function(){
					This.find(opts.titMod).find('li').removeClass('active').css({borderBottomColor:'#ddd'});
					This.find(opts.maniMod).css({ display:'none'});
			},30);
        });
    };
})(jQuery);

 
     
