// JavaScript Document
function selecttag(showContent,selfObj){
	// 操作标签
	var tag=document.getElementById("noticeNav").getElementsByTagName("li");
	var taglength=tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className="";
	}
	selfObj.className="selecttag";
	// 操作内容
	for(i=0; j=document.getElementById("tabbox"+i); i++){
		j.style.display="none";
	}
	document.getElementById(showContent).style.display="block";
	if(showContent=='tabbox0'){
		var taobao_user_ex_html=$('.notice-user').html();
	}
	if(showContent=='tabbox1'){
		var taobao_user_ex_html=$('.notice-sell').html();
	}
	if(showContent=='tabbox2'){
		var taobao_user_ex_html=$('.notice-lis').html();
	}
}
