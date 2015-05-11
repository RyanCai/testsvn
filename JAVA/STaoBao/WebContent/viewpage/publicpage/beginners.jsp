<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<base href="<%=basePath%>" />
    <meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新手入门</title>
<meta name="keywords" content="折点看0元购-专注独家试用,汇聚全网最优质试用商品,每日千款超值商品免费试用,10:00点开始,限量抢购。一个值得体验的试用平台。">
<meta name="description" content="折点看0元购-专注独家试用,汇聚全网最优质试用商品,每日千款超值商品免费试用,10:00点开始,限量抢购。一个值得体验的试用平台。">

    <link rel="icon" href="resource/img/favicon.ico"  type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="resource/css/commxsrm.css" >
    <link rel="stylesheet" type="text/css" href="resource/css/comm-1.css" >
      <link rel="stylesheet" type="text/css" href="resource/css/zzlayout.css" >
     <script type="text/javascript" src="resource/js/tryjs/jquery-1.7.2.min.js" ></script>

<!-- 搜索功能  -->

<script type="text/javascript">
  function search_Go(){
      var serch_text = document.getElementById('search_text').value;
      if( serch_text == '请输入您要搜索的商品名称' || serch_text== null || serch_text == undefined || serch_text == ''){
		return;
	  }

  	  var url = "index.jsp";
      $.ajax({
  		  url: url,
          type: 'POST',
          data:{serch_text:serch_text},
          dataType: 'json',
          success:function(data){
  			  if(data.status == 'y'){
  				window.location.href = data.info;
  			  }else{
  				alert(data.info);
  			 }
  		  }
  	});
}
</script>
</head>

<body>
<div class="warp">
	<!--' header '-->
    <div class="try_topbar clearfix">
    	<div class="grid_c1">
            <div class="top_menu">
                        <a href="http://try.zhe.com/process/jump_bing" class="emps">老商家登录</a> 
			 &nbsp;&nbsp;&nbsp;&nbsp;
			 <a href="http://try.zhe.com/process" class="emps">登录</a><a href="http://try.zhe.com/process/register" class="emps">注册</a> | 
                        <a href="http://try.zhe.com/help/index" target="_blank">帮助中心</a>
            </div>
        </div>
    </div>
    <div class="try_header clearfix">
        <div class="grid_c1">
            	<div class="head_logo">
            	<a class="logo" href="http://try.zhe.com/" title=""></a>
                </div>
                <div class="serch-warp">
                    <div class="mod_search">
                      <div class="" id="search_input">
                      <input type="text" class="ipt_search" x-webkit-speech="" x-webkit-grammar="builtin:translate" id="search_text" onfocus="if(this.value==&#39;请输入您要搜索的商品名称&#39;) {this.value=&#39;&#39;;};" onblur="if(this.value==&#39;&#39;) {this.value=&#39;请输入您要搜索的商品名称&#39;;}" value="请输入您要搜索的商品名称"><input type="hidden" id="search_type" value="0"><button class="ico_search" onclick="search_Go();" type="button" title="搜索"></button>
                      </div>
                    </div>
                </div>

        </div>
    </div>
    <div class="try_menu">
    	<div class="grid_c1">
        <ul class="sec_menu"><li><a href="index.jsp" class="cur">首页</a></li><li><a href="http://try.zhe.com/help/index" target="_blank">引导帮助</a></li></ul>
        </div>
    </div>
	<!--' header '-->    
    <div class="try_main clearfix">
		<style>
        .new{width:976px;margin:20px auto 0;background:#fff}
        .new p{margin-bottom:50px}
        .new-contact p{color:#3b3b3b;margin-top:60px;font:18px/80px 'Microsoft YaHei';margin-bottom:0;color:#3b3b3b}
        .new-contact{border-top:1px solid #e0e0e0;width:90%;margin:60px auto 150px auto;text-align:center;height:auto;overflow:hidden}
        .new-contact p a{color:#3b3b3b}
        .new-contact .new-btn{width:230px;height:50px;background:#ff4869;font:24px/50px 'Microsoft YaHei';display:block;margin:0 auto;color:#fff;border-radius:5px;margin-bottom:30px}
        .new-contact .new-btn:hover{color:#fff}
        </style>
        <div class="new-blocks">
        <div class="new">
            <p><img src="resource/img/new1.jpg"></p>
            <p><img src="resource/img/new2.gif"></p>
            <p><img src="resource/img/new3.gif"></p>
            <p><img src="resource/img/new4.gif"></p>
            <div class="new-contact">
            <p>如需任何帮助请与我们QQ沟通：<a href="http://wpa.qq.com/msgrd?v=3&uin=2851676758&site=qq&menu=yes">2851676758<img src="resource/img/qq_icon.gif" style=" vertical-align:middle;margin-left:10px;"></a></p>
            <a class="new-btn" href="index.jsp">立即参与试用</a>
            </div>
        </div>
        </div>
    </div>
    
	<!--' try_footer '-->
  <div class="zfooter">
<%@ include file="bottom.jspf" %>
</div>
	<!--' try_footer '-->
 
 
</div>






</body></html>