$.fn.smartFloat = function() {
	var position = function(element) {
		var top = element.position().top, pos = element.css("position");
		$(window).scroll(function() {
			var scrolls = $(this).scrollTop();
			var _span = document.getElementById("fenlei");
              _span.style.cssText = "width:976px;margin-left:-1px;margin-top:0;border:#d2d2d2 solid 1px;";			
			if (scrolls > top) { //如果滚动到页面超出了当前元素element的相对页面顶部的高度
				if (window.XMLHttpRequest) { //如果不是ie6
					element.css({
						position: "fixed",
						top: 0
					});	
					
				} else { //如果是ie6
					element.css({
						top: scrolls
					});					
				}
			}else {
				element.css({
					position: pos,
					top: top
				});	
				_span.style.cssText = "margin-left:0;border:0;width:978px;";
				
			}
		});
	};
	return $(this).each(function() {
		position($(this));						 
	});
};
$(function(){
	$("#fenlei").smartFloat();
});

function showTime(time_distance,num,typ) {
this.num = num;
this.typ = typ;
this.time_distance = time_distance * 1000; 
} 
showTime.prototype.setTimeShow = function () { 
var timer_cor = $("#time_hz_"+this.num);
var str_time; 
var int_day, int_hour, int_minute, int_second; 
var typ=this.typ;
if(typ=='1'){
	titel_yy = '开抢剩余：';
}else{
	titel_yy = '剩余：';
}
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
	timer_cor.text(titel_yy+int_minute+'分'+int_second+'秒');	
}else if (int_day <= 0){ 
	timer_cor.text(titel_yy+int_hour+'小时'+int_minute+'分'+int_second+'秒');
}else{ 
	timer_cor.text(titel_yy+int_day+'天'+int_hour+'小时'+int_minute+'分'+int_second+'秒');
	}
var self = this; 
setTimeout(function () { self.setTimeShow(); }, 1000); //D:正确 
} else { 
timer_cor.html('<span class="unit fl">此商品折点看价已经结束.</span>'); 
return; 
} 
}