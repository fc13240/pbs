$(function(){
   var whichUrl = document.referrer;
    if (whichUrl != 'undefinded' && whichUrl != null && whichUrl != "" && (whichUrl.indexOf("account.wtoip.com") != -1)) {
	        //知商会员介绍层
	        $("#zsItro .clk1,#zsItro .clk3").click(function(){
	            $(this).parents("#zsItro").fadeOut();
	        });
	        $("#zsItro .clk4").click(function(){
	            $(this).toggleClass("clk-on");
	    		if($(this).attr("class").indexOf("clk-on")!=-1){
						$.ajax({
							url:'http://member.wtoip.com/member/noremind',
							dataType:'jsonp',
							jsonpCallback:'call1314',
							//crossDomain:true,
							success:function(data){
							}
					});
	    		}
	        });
	        
			$.ajax({
				url:'http://member.wtoip.com/member/showRemind',
				dataType:'jsonp',
				jsonpCallback:'call1314',
				//crossDomain:true,
				success:function(data){
					if(data.flag=='true'){
						$('#zsItro').fadeIn();
					}
				}
			});
    	}
});