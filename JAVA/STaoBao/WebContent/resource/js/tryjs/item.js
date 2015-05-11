$(document).ready(function(){	
	//自定义关闭按钮
	$("#goods_item").click(function(){
		var box_igoo = $(this);
		item_id_i = box_igoo.attr("item_id");
		url = box_igoo.attr("url");		
		$.ajax({
            url: url,
            type: 'POST',
            data:{item_id:item_id_i},
			dataType: 'html',
            success: function(html){
			if(html=='0'){
		    window.location.href="/item/item_course/"+item_id_i;
			}else if(html=='2'){
			alert("亲！~您还没有登录哦！");//还没有登录
			}else if(html=='5'){
				if(window.confirm('亲~！您还没有绑定淘宝帐号哦,现在去绑定吗？')){
				window.location.href="/user/head/4";
				}
			}else if(html=='4'){
				alert("亲！~不要激动哦,开抢时间还没到！");//商品开抢时间还未开始
			}else{
			box_igoo.removeClass("purchase");
		    box_igoo.addClass("stockempty");
			alert("亲！~您已经抢过了哦！");//没有了
			}	
			}
            });  
		
	});	
$('#levelbox').mouseover(function(){//移入
           $(this).addClass("on");
     });
	$('#levelbox').mouseout(function(){//移出
           $(this).removeClass("on");
     });

});

function goods_item_box(item_id_i){ 	
        var box_igoo = $('#goods_item_shi');
		url = '/index.php?m=item&a=post_td';	
		$.ajax({
            url: url,
            type: 'POST',
            data:{item_id:item_id_i},
			dataType: 'html',
            success: function(html){
			if(html=='0'||html=='1'||html=='3'||html=='4'){
			window.location.href="/item/item_course/"+item_id_i;
			}else if(html=='2'){
			alert("亲！~您还没有登录哦！");//还没有登录
			}else if(html=='5'){
				if(window.confirm('亲~！您还没有绑定淘宝帐号哦,现在去绑定吗？')){
				window.location.href="/user/head/4";
				}
			
			}
			}
            });  
}
function tb_user_box(){ 	
	if(window.confirm('亲~！您还没有绑定淘宝帐号哦,现在去绑定吗？')){
	window.location.href="/user/head/4";
	}
}
function exitcid_mobile_box(exitcid){
		var mobile_num= $('.content #mobile_num').val();
		var verify_mobile_cood = $('.content #verify_mobile_cood').val();		
		$.ajax({
            url: '/index.php?m=user&a=form_mobile_cood',
            type: 'POST',
            data:{verify_mobile_cood:verify_mobile_cood},
			dataType: 'json',
            success: function(data){
			   if(data.out_mobile_cood=='0'){			   
			   $('#error_mas_out').attr('class','error_mas_out_on');
		       $('#error_mas_out').html('请输入6位数字的验证码');
			   }else if(data.out_mobile_cood=='2'){
			   $('#error_mas_out').attr('class','error_mas_out_on');
		       $('#error_mas_out').html('验证码错误或已超时');
			   }else if(data.out_mobile_cood=='1'){
			   $('#input_mobile_box').attr("href","javascript:to_mobile_box('"+mobile_num+"');");
			   alert('恭喜您,已成功验证！');			   				
  			   $("#"+exitcid).fbmodal({cancelexit:true});
			   setTimeout("to_mobile_box("+mobile_num+")",500 );
			   }
			}
            });
		
}
function for_input_mobile_box(){
        $("#input_mobile").fbmodal({
            title: "手机验证设置",  //标题
           cancel: "取消",//取消按钮
             okay: "提交",//确定按钮
       okaybutton: true,//确定按钮：true 显示 false 隐藏
     cancelbutton: true,//取消按钮：true 显示 false 隐藏
          buttons: true,//全部按钮：true 显示 false 隐藏
          opacity: 0.55,//透明度
	      fadeout: false,//淡化退出或载入 ：true 开启 false 关闭
		    fixed: true,//是否固定：true 漂浮 false 固定
     overlayclose: false,//点击框外退出 ：true 开启 false 关闭
	   overbutton: true,//底部按钮 ：true 开启 false 关闭
          exitcid: "input_mobile",//外部关闭标签 false 关闭 此标签为ID标签
		 exitpost: "exitcid_mobile_box",
		 modaltop: "35%",//距离顶部位置
       modalwidth: "270", //框宽度
	    modalheight: "120" //框高度
        });  
}
function top_mobile_box(exitcid){
		var mo_item_id = $('#mo_item_id').val();
		var mobile_url = $('#mobile_url').val();		
		$.ajax({
            url: mobile_url,
            type: 'POST',
            data:{mo_item_id:mo_item_id},
			dataType: 'json',
            success: function(data){
			   if(data.success=='0'){			   
			   alert('此商品已设置过手机短信提醒了');
			   }else if(data.success=='9'){
			   alert('亲！~您还没有登录哦！');
			   }else if(data.success=='6'){
			   alert('亲！~您此时段已有其它商品短信提醒了！');
			   }else if(data.success=='4'){
			   alert('此商品活动已开始.');
			   }else if(data.success=='5'){
			   alert('查询不到此商品活动');
			   }else if(data.success=='3'){
			   alert('异常错误（3）,请联系客服');
			   }else if(data.success=='1'){
			   alert('恭喜您,成功设置手机短信提醒！');
			   $('#error_mas_out').attr('class','error_mas_out_off');
  			   $("#"+exitcid).fbmodal({cancelexit:true});
			   }
			}
            });
}

function exitcid_taobao_select(exitcid){	
		var buy_taobao_user = $('.content #buy_taobao_user').val();
		url = '/index.php?m=item&a=post_try_item';	
		$.ajax({
            url: url,
            type: 'POST',
            data:{item_id:exitcid,buy_taobao_user:buy_taobao_user},
			dataType: 'json',
            success: function(data){
				if(data.success=='1'){
				alert("亲~！您已经申请过此商品了,请换个商品！");
				window.location.reload();
				}else if(data.success=='2'){
				alert("亲~！您所选择的淘宝帐号未找到,请检查！");
				window.location.reload();
				}else if(data.success=='0'){
				alert("恭喜您,成功申请该试用商品,请耐心等待商家审核！");
				window.location.reload();
				}
			}
            });  
		
}
function prompt_taobao_jifen(item_id,num_jifen){//积分抢购提示
	if(window.confirm('亲~！积分通道试用此商品您将消耗 '+num_jifen+' 积分,继续操作吗？')){
		for_taobao_jifen_box(item_id);
	}
}
function exitcid_taobao_jifen(exitcid){//积分抢购
	   var bol=false;
	   var buy_taobao_user = $('.content #buy_taobao_user').val();
	   url = '/index.php?m=item&a=post_td';	
		$.ajax({
            async:false,
			url: url,
            type: 'POST',
            data:{item_id:exitcid,buy_taobao_user:buy_taobao_user},
			dataType: 'json',
            success: function(data){
				if(data.success=='1'){					
				bol=true;
				alert('您通过积分通道抢购成功,赶紧去下单哦！');
				window.location.reload();　
				}else if(data.success=='0'){	
				bol=false;
				alert('抱歉,出现异常请联系客服！');
				window.location.reload();
				}else if(data.success=='105'){	
				bol=false;
				alert('抱歉,系统忙请稍候重试！');
				window.location.reload();				
				}else if(data.success=='2'){	
				bol=false;
				alert('操作失败,商品未在活动时间内！');
				window.location.reload();
				}else if(data.success=='3'){	
				bol=false;
				alert('操作失败,积分免审限额已满啦！');
				window.location.reload();
				}else if(data.success=='0'){	
				bol=false;
				alert('操作失败,该商品您已经试用过了！');
				window.location.reload();
				}else if(data.success=='5'){	
				bol=false;
				alert('操作失败,您还未选择淘宝帐号！');
				window.location.reload();
				}else if(data.success=='6'){	
				bol=false;
				alert('操作失败,您的积分不够试用该商品！');
				window.location.reload();
				}
			}
            });  
		return bol;
}

function for_taobao_jifen_box(item_id){
        $("#taobao_jifen").fbmodal({
            title: "积分试用",  //标题
           cancel: "取消",//取消按钮
             okay: "提交",//确定按钮
       okaybutton: true,//确定按钮：true 显示 false 隐藏
     cancelbutton: true,//取消按钮：true 显示 false 隐藏
          buttons: true,//全部按钮：true 显示 false 隐藏
          opacity: 0.55,//透明度
	      fadeout: false,//淡化退出或载入 ：true 开启 false 关闭
		    fixed: true,//是否固定：true 漂浮 false 固定
     overlayclose: false,//点击框外退出 ：true 开启 false 关闭
	   overbutton: true,//底部按钮 ：true 开启 false 关闭
          exitcid: item_id,//外部关闭标签 false 关闭 此标签为ID标签
		 exitpost: "exitcid_taobao_jifen",
		 modaltop: "30%",//距离顶部位置
       modalwidth: "220", //框宽度
	    modalheight: "auto" //框高度
        });  
}

function for_taobao_select_box(item_id){
        $("#taobao_select").fbmodal({
            title: "申请试用",  //标题
           cancel: "取消",//取消按钮
             okay: "提交",//确定按钮
       okaybutton: true,//确定按钮：true 显示 false 隐藏
     cancelbutton: true,//取消按钮：true 显示 false 隐藏
          buttons: true,//全部按钮：true 显示 false 隐藏
          opacity: 0.55,//透明度
	      fadeout: false,//淡化退出或载入 ：true 开启 false 关闭
		    fixed: true,//是否固定：true 漂浮 false 固定
     overlayclose: false,//点击框外退出 ：true 开启 false 关闭
	   overbutton: true,//底部按钮 ：true 开启 false 关闭
          exitcid: item_id,//外部关闭标签 false 关闭 此标签为ID标签
		 exitpost: "exitcid_taobao_select",
		 modaltop: "30%",//距离顶部位置
       modalwidth: "220", //框宽度
	    modalheight: "auto" //框高度
        }); 
 
}
function to_mobile_box(mobile_n){		
		$("#to_mobile").fbmodal({
            title: "设置手机短信提醒",  //标题
           cancel: "取消",//取消按钮
             okay: "确定",//确定按钮
       okaybutton: true,//确定按钮：true 显示 false 隐藏
     cancelbutton: true,//取消按钮：true 显示 false 隐藏
          buttons: true,//全部按钮：true 显示 false 隐藏
          opacity: 0.55,//透明度
	      fadeout: false,//淡化退出或载入 ：true 开启 false 关闭
		    fixed: true,//是否固定：true 漂浮 false 固定
     overlayclose: false,//点击框外退出 ：true 开启 false 关闭
	   overbutton: true,//底部按钮 ：true 开启 false 关闭
          exitcid: "to_mobile",//外部关闭标签 false 关闭 此标签为ID标签
		 exitpost: "top_mobile_box",
		 modaltop: "35%",//距离顶部位置
       modalwidth: "270", //框宽度
	    modalheight: "80" //框高度
        });
	if(mobile_n!='0'){	 
	$(".content #mobile_num_boo").val(mobile_n);
	}
}
function showTime(time_distance) { 
this.time_distance = time_distance * 1000; 
} 
showTime.prototype.setTimeShow = function () { 
var timer_cor = $("#time_hz");
var str_time; 
var int_day, int_hour, int_minute, int_second; 
time_distance = this.time_distance; 
this.time_distance = this.time_distance - 1000; 
if (time_distance > 0) { 
int_day = Math.floor(time_distance / 86400000); 
time_distance -= int_day * 86400000; 
int_hour = Math.floor(time_distance / 3600000); 
time_distance -= int_hour * 3600000; 
int_minute = Math.floor(time_distance / 60000); 
time_distance -= int_minute * 60000; 
int_second = Math.floor(time_distance / 1000);
if (int_day < 10) 
int_day = "0" + int_day; 
if (int_hour < 10) 
int_hour = "0" + int_hour; 
if (int_minute < 10) 
int_minute = "0" + int_minute; 
if (int_second < 10) 
int_second = "0" + int_second; 
if (int_day <= 0 && int_hour <= 0){
	timer_cor.text(int_minute+'分'+int_second+'秒');	
}else if (int_day <= 0){ 
	timer_cor.text(int_hour+'小时'+int_minute+'分'+int_second+'秒');
}else{ 
	timer_cor.text(int_day+'天'+int_hour+'小时'+int_minute+'分'+int_second+'秒');
	}
var self = this; 
setTimeout(function () { self.setTimeShow(); }, 1000); //D:正确 
} else {   
timer_cor.html('<span class="unit fl">此商品试用已经结束.</span>'); 
return; 
} 
}
$(document).ready(function () {
$("#thumb_pic_s span a").click(function () {
$("#thumb_pic_s a").removeAttr("class");
$(this).attr("class", "cur");
$("#thumb_pic_b a > img").load(function () { $("#thumb_pic_b a>img:hidden").show(); });
$("#thumb_pic_b a img").attr({ "src": $(this).attr("href")});
return false;
});
$("#thumb_pic_b a > img").load(function () { $("#thumb_pic_b a>img:hidden").show(); });
});
function list_grab_coo(){
    var mobile_num= $('.content #mobile_num').val();	 
	var mobile_url= $('.content #mobile_url').val();	
	$('.content #verify_mobile').removeAttr("onClick");
	$('.content #verify_mobile_btn').html("正在发送中..");
		$.ajax({
            url: '/index.php?m=user&a=form_buy_mobile',
            type: 'POST',
            data:{mobile_num:mobile_num},
			dataType: 'json',
            success: function(data){
			   if(data.out_mobile=='0'){
			   $('#error_mas_out').attr('class','error_mas_out_on');
		       $('#error_mas_out').html('正确格式为：1380000000');			   
			   }else if(data.out_mobile=='2'){
			   $('#error_mas_out').attr('class','error_mas_out_on');
		       $('#error_mas_out').html('您已经验证过了');
			   }else if(data.out_mobile=='3'){
			   $('#error_mas_out').attr('class','error_mas_out_on');
		       $('#error_mas_out').html('系统出错,请联系客服解决');
			   }else if(data.out_mobile=='4'){
			   $('#error_mas_out').attr('class','error_mas_out_on');
		       $('#error_mas_out').html('手机号已经被别人验证过了');
			   }else if(data.out_mobile=='1'){
			   $('#error_mas_out').attr('class','error_mas_out_on');
		       $('#error_mas_out').html('已发送成功,请查收！');
			   test_mobile.init(verify_mobile);
			   }
			   if(data.out_mobile!='1'){
			   $('.content #verify_mobile').attr("onClick","list_grab_coo();");
	           $('.content #verify_mobile_btn').html("获取验证码");	   
			   }
			}
            }); 
}
var test_mobile = {
       node:null,
       count:60,
       start:function(){
          if(this.count > 0){
			 $('.content #verify_mobile_btn').html(this.count--+" 秒重发");
             var _this = this;
             setTimeout(function(){
                 _this.start();
             },1000);
          }else{
             $('.content #verify_mobile_btn').html("重发验证码");
			 $('.content #verify_mobile').attr("onClick","list_grab_coo();");
			 this.count = 60;
          }
       },
       //初始化
       init:function(node){
          this.node = node;
		  $('.content #verify_mobile').removeAttr("onClick");
		  this.start();
       }
    };
function list_grab(){
 $("#grab_li").removeClass('c');
 $("#details_li").addClass('c');
 $("#details_to").removeClass('other_display_on');
 $("#details_to").addClass('other_display_off');
 $("#grab_to").removeClass('other_display_off');
 $("#grab_to").addClass('other_display_on');
}
function list_details(){
 $("#details_li").removeClass('c');
 $("#grab_li").addClass('c');
 $("#details_to").removeClass('other_display_off');
 $("#details_to").addClass('other_display_on');
 $("#grab_to").removeClass('other_display_on');
 $("#grab_to").addClass('other_display_off');
}
function selecttag(showContent,selfObj,item_id){
	// 操作标签
	var tag = document.getElementById("tabnav").getElementsByTagName("li");
	var taglength = tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className = "";
	}
	selfObj.parentNode.className = "selecttag";
	// 操作内容
	for(i=0; j=document.getElementById("tabbox"+i); i++){
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";
	if(showContent=='tabbox1'){
		var taobao_user_ex_html = $('#taobao_user_ex').html();
	}
	if(showContent=='tabbox2'){
		var taobao_user_ex_html = $('#taobao_user_get').html();
	}
	if(showContent=='tabbox3'){
		var taobao_user_ex_html = $('#taobao_user_integral').html();
	}
	
	
	
	
	
}
$(function(){
	//鼠标移动显示/隐藏
	$(".manage").hover(function(){if(!$(this).children(".manage dl").is(":animated")){$(this).children(".manage dl").show();}},function(){$(this).children(".manage dl").hide();});//willin
	$(".app-tips li").hover(function(){if(!$(this).children(".app-tips li .inner").is(":animated")){$(this).children(".app-tips li .inner").show();}},function(){$(this).children(".app-tips li .inner").hide();});
	$("#action .code").hover(function(){if(!$(this).children("#action .code .wx-code").is(":animated")){$(this).children("#action .code .wx-code").show();}},function(){$(this).children("#action .code .wx-code").hide();});
	$(".qq").hover(function(){if(!$(this).children(".qq dl").is(":animated")){$(this).children(".qq dl").show();}},function(){$(this).children(".qq dl").hide();});
	$(".comment-user").hover(function(){if(!$(this).children(".comment-user div.jubao").is(":animated")){$(this).children(".comment-user div.jubao").show();}},function(){$(this).children(".comment-user div.jubao").hide();});//willin
	$(".item_score").hover(function(){if(!$(this).children(".item_score .service").is(":animated")){$(this).children(".item_score .service").show();}},function(){$(this).children(".item_score .service").hide();});//willin	
	
});


function to_taobao_radio(num){//绑定旺旺帐号选择
	var taobao_radio = $(".content input[name='taobao_radio']").length;
	for (var i=1;i<=taobao_radio;i++){
	$(".content #radio_id_"+i).addClass("unselected").removeClass("selected");
	$(".content #radio_id_"+i).children("input").removeAttr("id");
	}
	$(".content #radio_id_"+num).addClass("selected").removeClass("unselected");
	$(".content #radio_id_"+num).children("input").attr("id", "buy_taobao_user");
}