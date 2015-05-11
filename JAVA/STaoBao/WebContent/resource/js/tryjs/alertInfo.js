// JavaScript Document
/*弹出弹出说明框*/
	function for_info_box(){
			$("#info_up").fbmodal({
				title: "登录/注册",  //标题
			   cancel: "取消",//取消按钮
				 okay: "确定",//确定按钮
		   okaybutton: true,//确定按钮：true 显示 false 隐藏
		 cancelbutton: true,//取消按钮：true 显示 false 隐藏
			  buttons: true,//全部按钮：true 显示 false 隐藏
			  opacity: 0.55,//透明度
			  fadeout: false,//淡化退出或载入 ：true 开启 false 关闭
				fixed: true,//是否固定：true 漂浮 false 固定
		 overlayclose: false,//点击框外退出 ：true 开启 false 关闭
		   overbutton:  false,//底部按钮 ：true 开启 false 关闭
			  exitcid: "Login_register",//外部关闭标签 false 关闭 此标签为ID标签
			 exitpost: "Login_register_box",
			 modaltop: "5%",//距离顶部位置
		   modalwidth: "727", //框宽度
			modalheight: "auto" //框高度
			});  
	}
	var once_per_session=1
	
	function get_cookie(Name) {
	  var search = Name + "="
	  var returnvalue = "";
	  
	  if (document.cookie.length > 0) {
		offset = document.cookie.indexOf(search)
		if (offset != -1) { // if cookie exists
		  offset += search.length
		  end = document.cookie.indexOf(";", offset);
		  if (end == -1)
			 end = document.cookie.length;
		  returnvalue=unescape(document.cookie.substring(offset, end))
		  }
	   }
	  return returnvalue;
	}
	
	function alertornot(){
		if (get_cookie('alerted')==''){
			for_info_box()
			setCookie('alerted','yes','d30');
			}
		}
	if (once_per_session==0){
		for_info_box()
		}
	else{
		alertornot()
		}
	
/*设置cookie*/	
function setCookie(name,value,time){
  var strsec = getsec(time);
  var exp = new Date();
	exp.setTime(exp.getTime() + strsec*1);
	document.cookie = name + '='+ escape (value) + ';expires=' + exp.toGMTString();
  }
  function getsec(str){
	var str1=str.substring(1,str.length)*1; 
	var str2=str.substring(0,1); 
	if (str2=='s'){
		return str1*1000;
	}else if (str2=='h'){
		return str1*60*60*1000;
	}else if (str2=='d'){
		return str1*24*60*60*1000;
	}
}	
