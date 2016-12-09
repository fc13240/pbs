var wtoip={};	
wtoip.alert={
	
	ok:function(param){
		var newParam = $.extend({msgType:'ok'}, param);
		wtoip.alert.msg(newParam);	
	},
	
	confirm:function(param){
		var newParam = $.extend({msgType:'confirm',title:'操作确认：'}, param);
		wtoip.alert.msg(newParam);;
	},
	
	error:function(param){
		var newParam = $.extend({msgType:'error'}, param);
		wtoip.alert.msg(newParam);;
	
	},
	
	msg:function(param){
		 var title=param.title;
		 if(title==null){
			title = '提示：';
		 }
		 //var model=param.model;
		 
		 var btnText=param.btnText?param.btnText:'确定';
		 var cancelText=param.cancelText?param.cancelText:'取消';
		 
		 var custom=param.custom?param.custom:'';//是否可自定义弹窗内容
		 var custom_content=param.custom_content;
		 
		 var msg1=param.msg1;
		 var msg2=param.msg2?param.msg2:'';;
		 
		 var msgType=param.msgType;
		 
		 var close=param.close;
		 var ok=param.ok;
		 var cancel=param.cancel;
		 
		 var classType='right-icon';
		 var confirmFlag=false;
		 
		 if(msgType=='error'){
			 classType='error-icon';
		 }else if(msgType=='ok'){
			 classType='right-icon';
		 }else if(msgType=='confirm'){
			 var classType='warn-icon';
			 confirmFlag=true;
	 	 }
	 	 
		 if( custom!=''){
			 var html='<div id="wtoip_common_alert_id" class="windows-mask custom"><div class="windows-win"></div><div class="windows-show">'+
			 '<div class="win-header"><h2>'+title
			 +'</h2><div class="win-closebtn"></div></div>';
			
			 if(custom==1){
				html+='<div class="win-content"><dl><dt><span class="'+classType+'"></span><strong>'+msg1+'</strong></dt><dd>'+msg2+'</dd></dl></div>';
			 } 
			 if(custom==2){
				 html+=custom_content;
			 }
			
			 
		 }else{
			 
			 var html='<div id="wtoip_common_alert_id" class="windows-mask"><div class="windows-win"></div><div class="windows-show">'+
			 '<div class="win-header"><h2>'+title
			 +'</h2><div class="win-closebtn"></div></div>'
			 +'<div class="win-content"><dl><dt><span class="'+classType+'"></span><strong>'+msg1+'</strong></dt><dd>'+msg2+'</dd></dl></div>';;
			 
		 }
		
		html+='<div class="win-btn-wrap">'
				 +'<input class="win-btn win-submitbtn" id="wtoip_common_ok_btn" value="'
				 +btnText+'" type="button">'
				 +(confirmFlag?'&nbsp;&nbsp;&nbsp;&nbsp;<input class="win-btn win-cancelbtn"  id="wtoip_common_cancel_btn" value="'
				 +cancelText+'" type="button">':'')
				 +'</div>'
				 +'</div></div>';
		 
		var dialog= $('.windows-mask')
		if(dialog&&dialog.length>0){
			reinit(true);  
			$('.windows-mask').fadeIn("normal","linear")
		}else{
			reinit(false);   	
			$('.windows-mask').fadeIn("normal","linear")
		}
	
		function reinit(flag){
			if(flag==true){
				$('.windows-mask').remove();
			}
			$('body').append(html);//附加在文档最后面
			
			
			$('.win-closebtn').click(function(){
			$('.windows-mask').fadeOut("fast");
				if(close){
					close();
				}
			});
			
			var okBtn=$('#wtoip_common_ok_btn');
			if(okBtn){
				okBtn.click(function(){
					if(ok){
						ok();
					}
					$('.windows-mask').fadeOut("fast");
				})
				
			}
			
			var cancelBtn=$('#wtoip_common_cancel_btn');
			if(cancelBtn){
				cancelBtn.click(function(){
					if(cancel){
						cancel();
					}
					$('.windows-mask').fadeOut("fast");
	
				});
			};
						
		}

	}

}