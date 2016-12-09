
$(function() {
	//搜索类型切换
	$(".top_search_tabs a").click(function(){
		$(".top_search_tabs a").removeClass("on");
		$(this).addClass("on");
		$("#type").val($(this).attr("value"));
	});
});

function getSearchUrl(url) {
	var type = $("#type").val();
	var title = $("#title").val();
	var catid = "";
	if (type == "sp") {
		url = "http://mall.wtoip.com/mall";
		if (title == null || title == "") {
			title = "";
		}
		return url+"/list" + compressEncode(title) + ".html";
	} else {
		if (type == 'undefined' || type == null || type == "00" || type == "0") {
			type = "";
		}
		if(title == null || title == "") {
			title = "";
		} else {
			title = compressEncode(title);
			catid = "000";
			if (type.length <= 1) {
				type = "00";
			}
		}
		return url + "/list" + type + catid + title + ".html";
	}
}


/** 首页主搜索 */
function searchAll(url){
	var type = $("#type").val();
	var title = $("#title").val();
	var catid = "";
	if (type == "sp") {
		url = "http://mall.wtoip.com/mall";
		if (title == null || title == "") {
			title = "";
		}
		window.location.replace(url + "/list" + compressEncode(title) + ".html");
	} else {
		if (type == 'undefined' || type == null || type == "00" || type == "0") {
			type = "";
		}
		if(title == null || title == "") {
			title = "";
		} else {
			title = compressEncode(title);
			catid = "000";
			if (type.length <= 1) {
				type = "00";
			}
		}
		//window.location = url + "/list" + type + catid + title + ".html";
		window.location.replace(url + "/list" + type + catid + title + ".html");
	}
}


function compressEncode(zhStr) {
	var resultWithUnicode = "";
	for (var i = 0; i < zhStr.length; i++) {
		var ch = zhStr.charAt(i);
		if (ch.search(/[0-9a-zA-Z]/) != -1) {
			resultWithUnicode += "S" + ch;
		} else {
			var unicodeStr = zhStr.charCodeAt(i).toString(16).toUpperCase();
			if (unicodeStr.length <= 2) {
				unicodeStr = "U" + unicodeStr;
			}
			resultWithUnicode += unicodeStr;
		}
	}
	return resultWithUnicode;
}



function searchTitle(url,type,title){
	window.location = url+"/list-"+type+"-0-0a0-0-0-0-0-0-00-"+encodeURIComponent(encodeURIComponent(title))+"-0.html";
}


$(".J_listsearch").click(function(e){
	e.preventDefault();
	var url = $(this).attr("href");
	var urlarr = url.split("-");
	var title = urlarr[10];
	urlarr[10] = encodeURIComponent(encodeURIComponent(title));
	url = urlarr.join("-");
	console.log(url);
	window.location.href=url;
});


//异步提交移入收藏夹
function getCollection(url,tradid,buyerUserids,collectionType,loginurl){
	if(null == buyerUserids || buyerUserids.trim()=='') {
		var curUrl = window.location.href;
		loginurl =loginurl+"?service="+curUrl;
		window.location.href=loginurl;
	}else{
		$.getJSON(url+"?tradid="+tradid+"&collectionType="+collectionType+"&jsoncallback=?",function(json){
			param={
		            msg1:'收藏成功',
		            msg2:'',
					title:'操作结果：',
					ok:function(){
		                //window.location.reload();
		            },
					close:function(){}, //点击关闭回调函数
					cancel:function(){} //取消回调事件
				};		
				wtoip.alert.ok(param);
		});
	}	
}
