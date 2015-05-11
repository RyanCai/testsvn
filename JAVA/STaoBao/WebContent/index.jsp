<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>试客首选试用平台</title>
	<meta name="keywords" content="0元购,0元购,零元购,免费试用,试客,联盟"/>
<meta content="一个值得体验的试用平台。" name="description" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta property="qc:admins" content="2523240767620541163166375" />
    <meta http-equiv="Content-Language" content="zh-cn">
    <link rel="icon" href="resource/img/favicon.ico"  type="image/x-icon" />
    <!-- 
    <link rel="stylesheet" type="text/css" href="resource/css/comm-1.css" >
     -->
    <link rel="stylesheet" type="text/css" href="<c:url value='resource/css/comm-1.css'/>" >
    <link rel="stylesheet" type="text/css" href="resource/css/hz_cate.css" >
    <link rel="stylesheet" type="text/css" href="resource/css/hz_page.css" >
    <link rel="stylesheet" type="text/css" href="resource/css/hz_shi_berserk.css" >
    <link rel="stylesheet" type="text/css" href="resource/css/zzlayout.css" >
    <link rel="stylesheet" type="text/css" href="resource/css/ind.css" >
    <script type="text/javascript" src="resource/js/tryjs/jquery-1.7.2.min.js" ></script>
    <script type="text/javascript" src="resource/js/tryjs/header.js" ></script>
    <script type="text/javascript" src="resource/js/tryjs/shi_berserk.js" ></script>
    <script type="text/javascript" src="resource/js/tryjs/imglazyload.min.js" ></script>
    <script type="text/javascript" src="resource/js/tryjs/float_msg.js" ></script>
	<link rel="stylesheet" type="text/css" href="resource/css/thickbox-ind.css"  />
	<script type="text/javascript" src="resource/js/tryjs/thickbox.js" ></script>
</head>
<body class="xsqg_act">
<div class="wrap">

<!--顶部 开始-->  
<%@ include file="/viewpage/publicpage/top.jspf" %>
<!--顶部 结束-->


<!--act_wrapper  广告幻灯片-->
<div class="sec_main_shi">
<div class="wrap-cont">	
<div class="try-head">
<div class="try-head-left">
<div class="slide" id="slide_shi">
<ul class="Slides">
<!--<li><a target="_blank" href="http://try.zhe.com/item/1008"><img src="http://try.zhe.com/img/banner1.jpg"></a></li>-->
<li><a target="_blank" href="979.htm" ><img src="resource/img/banner2.jpg" ></a></li>
<li><a target="_blank" href="983.htm" ><img src="resource/img/banner3.jpg" ></a></li>
<li><a target="_blank" href="1108.htm"><img src="resource/img/banner4.jpg" ></a></li>
<li><a target="_blank" href="635.htm" ><img src="resource/img/banner11.jpg" ></a></li>
<li><a target="_blank" href="1142.htm"><img src="resource/img/banner6.jpg" ></a></li>
</ul>
<div class="SlideTip"></div>
<ul class="SlideTriggers">
<ol>
<li class="Current">1</li><li>2</li><li>3</li><li>4</li><li>5</li>
</ol>
</ul>
</div>
<!-- 幻灯片-->
<script>
$(function(){
    $("#slide_shi").luara({width:"700",height:"280",interval:3000,selected:"Current"});
});
</script>
<script type="text/javascript" src="resource/js/tryjs/jquery.luara.0.0.1.min.js"  ></script>
</div>
<!-- 幻灯片end-->


<!--试客规则公告栏开始  -->
<div class="try-right">
<div class="notice">
	<div class="notice-nav" id="noticeNav">
    	<ul>
        	<li onClick="selecttag('tabbox0',this)" class="selecttag">试客规则</li>
        	<li onClick="selecttag('tabbox1',this)" >商家规则</li>
        	<li onClick="selecttag('tabbox2',this)" >官方公告</li>
        </ul>
    </div>
    <div class="noticec notice-user" id="tabbox0" style="display:block;">
    	<ul>
        <li><a href="3.htm"  target="_blank">1、申请试用的规则</a></li>
        <li><a href="33.htm"  target="_blank">2、我是新手，免费试用的流程是怎样的？</a></li>
        <li><a href="31.htm"  target="_blank">3、怎样获得免费试用资格？</a></li>
        <li><a href="4.htm"  target="_blank">4、试用报告未能通过审核怎么办？</a></li>
        </ul>
    </div>
    <div class="noticec notice-sell" id="tabbox1">
    	<ul>
        <li><a href="18.htm"  target="_blank">1、温馨提醒各位商家</a></li>
        <li><a href="34.htm"  target="_blank">2、为什么要选择0元购，我们能为您带来什么？</a></li>
        <li><a href="17.htm"  target="_blank">3、商家在什么情况下可以申诉?</a></li>
        <li><a href="8.htm"  target="_blank">4、试用营销的好处是什么?</a></li>
        </ul>
    </div>
        <div class="noticec notice-lis" id="tabbox2">
    	<ul>
                    <li><a href="78.htm"  target="_blank" >服务器升级通知</a></li>
                    <li><a href="76.htm"  target="_blank" style="color: #f00">折点看2015春节放假公告</a></li>
                    <li><a href="75.htm" target="_blank" >关于提现次数的说明</a></li>
                    <li><a href="74.htm"  target="_blank" style="color: #f00">关于更换域名的通知</a></li>
                    <li><a href="42.htm" target="_blank" >0元购网获得“可信站点”认证</a></li>
                 </ul>
    </div>
</div>
<div class="quickLink">
	<a href="viewpage/seller/sellerLogin.jsp"  class="sell-enter"><i></i>商家入驻</a>
	<a href="viewpage/customer/register.jsp"  class="reg-enter"><i></i>用户注册</a>
</div>
</div>
<!--试客规则公告栏开始end  -->


</div>


<!-- 试用推荐开始 -->
<div class="try-hot">
<div class="title">试用推荐
</div>
<ul class="item">

<li class="item-0">
	<div class="thumb">
  <a href="938.htm"  title="" target="_blank">
  <img src="resource/img/180x180.jpg"  width="180" height="180" align="">
  </a>
  </div>
	<div class="names"><span class="name"><a href="viewpage/publicpage/applyTryUse.jsp"  target="_blank">20元红包</a></span>
  <span class="price">¥699.00</span></div>
	<div class="btns">
		<span class="num">限量：<strong>30 份</strong></span>
    <strong class="appbtn"> <a href="viewpage/publicpage/applyTryUse.jsp"  target="_blank">申请试用</a> </strong>
	</div>
  <span class="pass">试用<br/>推荐</span>
</li>
<li class="item-0">
	<div class="thumb">
  <a href="1006.htm"  title="" target="_blank">
  <img src="resource/img/180x180.jpg"  width="180" height="180" align="">
  </a>
  </div>
	<div class="names"><span class="name"><a href="viewpage/publicpage/applyTryUse.jsp"  target="_blank">4元红包</a></span>
  <span class="price">¥99.00</span></div>
	<div class="btns">
		<span class="num">限量：<strong>30 份</strong></span>
    <strong class="appbtn"> <a href="1006.htm"  target="_blank">申请试用</a> </strong>
	</div>
  <span class="pass">试用<br/>推荐</span>
</li>
<li class="item-0">
	<div class="thumb">
  <a href="1022.htm"  title="" target="_blank">
  <img src="resource/img/180x180.jpg" width="180" height="180" align="">
  </a>
  </div>
	<div class="names"><span class="name"><a href="1022.htm" target="_blank">去脚气喷剂</a></span>
  <span class="price">¥28.00</span></div>
	<div class="btns">
		<span class="num">限量：<strong>50 份</strong></span>
    <strong class="appbtn"> <a href="1022.htm" target="_blank">申请试用</a> </strong>
	</div>
  <span class="pass">试用<br/>推荐</span>
</li>
<li class="item-0">
	<div class="thumb">
  <a href="1075.htm"  title="" target="_blank">
  <img src="resource/img/180x180.jpg" width="180" height="180" align="">
  </a>
  </div>
	<div class="names"><span class="name"><a href="1075.htm"  target="_blank">纯棉婴儿口水巾</a></span>
  <span class="price">¥59.80</span></div>
	<div class="btns">
		<span class="num">限量：<strong>8 份</strong></span>
    <strong class="appbtn"> <a href="1075.htm"  target="_blank">申请试用</a> </strong>
	</div>
  <span class="pass">试用<br/>推荐</span>
</li>
<li class="item-0">
	<div class="thumb">
  <a href="1077.htm"  title="" target="_blank">
  <img src="resource/img/180x180.jpg"  width="180" height="180" align="">
  </a>
  </div>
	<div class="names"><span class="name"><a href="1077.htm"  target="_blank">多喜熊全棉围兜</a></span>
  <span class="price">¥76.00</span></div>
	<div class="btns">
		<span class="num">限量：<strong>8 份</strong></span>
    <strong class="appbtn"> <a href="1077.htm"  target="_blank">申请试用</a> </strong>
	</div>
  <span class="pass">试用<br/>推荐</span>
</li>
</ul>
</div>
<!-- 试用推荐end -->



<!-- 商品开始 [[-->
<!-- 免费试用 [[-->
<div class="more-goods">
<div class="try-list">
<div class="titles clearfix">
	<h3>精选试用</h3>
    <span class="times"><i></i>每日10点更新</span>
    <ul class="lis_cate">
		<li><a href="index.jsp"  class="cur">全部活动</a></li>
    	<li><a href="-discount=3.htm" >拍A送A</a></li>
    	<li><a href="-discount=1.htm"  >拍A送B</a></li>
    	<li><a href="-discount=2.htm" >纯红包</a></li>
    </ul>
    </div>
    
    
<ul class="try">
<!-- 第一行商户显示开始 -->
<li>
  <a class="trymod" href="1173.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="儿童背心">
          <cite></cite>
          <span class="endtime" id="time_hz_1173">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">儿童背心</span><u class="col_r">¥29.00</u>
          </div>
          <div class="thbot">
                          <span class="free_cost_a_b m_l_20">拍A送B</span>
			             <span class="left">限量：30份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('845451','1173');
  st.setTimeShow();
</script>

<li>
  <a class="trymod" href="1170.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="5元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1170">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">5元红包</span><u class="col_r">¥109.00</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：10份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('842863','1170');
  st.setTimeShow();
</script>

<li>
  <a class="trymod" href="1167.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="蚕丝面膜+2元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1167">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">蚕丝面膜+2元红包</span><u class="col_r">¥158.00</u>
          </div>
          <div class="thbot">
                          <span class="free_cost_a_b m_l_20">拍A送B</span>
			             <span class="left">限量：10份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('842280','1167');
  st.setTimeShow();
</script>

<li>
  <a class="trymod" href="1164.htm" target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="内六角扳手八件套">
          <cite></cite>
          <span class="endtime" id="time_hz_1164">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">内六角扳手八件套</span><u class="col_r">¥11.72</u>
          </div>
          <div class="thbot">
                          <span class="free_cost_a_b m_l_20">拍A送B</span>
			             <span class="left">限量：50份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('837087','1164');
  st.setTimeShow();
</script>

<!-- 第一行商户显示end -->

<li>
  <a class="trymod" href="1070.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg" src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="4元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1070">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">4元红包</span><u class="col_r">¥64.00</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：14份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('650303','1070');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1069.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg" src="resource/img/loading_220X220.gif" alt="" 
          width="230" height="230" title="5元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1069">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">5元红包</span><u class="col_r">¥115.00</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：10份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('645227','1069');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1068.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg" src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="驾驶证皮套">
          <cite></cite>
          <span class="endtime" id="time_hz_1068">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">驾驶证皮套</span><u class="col_r">¥7.80</u>
          </div>
          <div class="thbot">
                          <span class="free_cost_a_a m_l_20">拍A送A</span>
                        <span class="left">限量：5份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('645027','1068');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1065.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg" src="resource/img/loading_220X220.gif" alt="" 
          width="230" height="230" title="5元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1065">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">5元红包</span><u class="col_r">¥109.00</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：10份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('823232','1065');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1064.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif" alt="" 
          width="230" height="230" title="3元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1064">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">3元红包</span><u class="col_r">¥28.00</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：20份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('675877','1064');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1061.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"   src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="3元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1061">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">3元红包</span><u class="col_r">¥49.90</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：20份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('663345','1061');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1060.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg" src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="3元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1060">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">3元红包</span><u class="col_r">¥10.00</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：10份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('671073','1060');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1058.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg" src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="4元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1058">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">4元红包</span><u class="col_r">¥89.00</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：5份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('585241','1058');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1057.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg" src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="4元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1057">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">4元红包</span><u class="col_r">¥74.00</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：9份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('584706','1057');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1056.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="4元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1056">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">4元红包</span><u class="col_r">¥98.00</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：8份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('585716','1056');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1054.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="4元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1054">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">4元红包</span><u class="col_r">¥75.00</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：10份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('587699','1054');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1052.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="3元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1052">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">3元红包</span><u class="col_r">¥28.00</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：20份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('643980','1052');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1049.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg" src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="12元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1049">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">12元红包</span><u class="col_r">¥318.00</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：3份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('583567','1049');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1048.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif" alt="" 
          width="230" height="230" title="女生必备卡包">
          <cite></cite>
          <span class="endtime" id="time_hz_1048">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">女生必备卡包</span><u class="col_r">¥59.00</u>
          </div>
          <div class="thbot">
                          <span class="free_cost_a_b m_l_20">拍A送B</span>
			             <span class="left">限量：30份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('581596','1048');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1047.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif" alt="" 
          width="230" height="230" title="高档车用香水补充液">
          <cite></cite>
          <span class="endtime" id="time_hz_1047">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">高档车用香水补充液</span><u class="col_r">¥25.00</u>
          </div>
          <div class="thbot">
                          <span class="free_cost_a_a m_l_20">拍A送A</span>
                        <span class="left">限量：10份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('587960','1047');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1046.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="3元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1046">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">3元红包</span><u class="col_r">¥39.00</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：10份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('582140','1046');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1045.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="女式无缝内裤一条">
          <cite></cite>
          <span class="endtime" id="time_hz_1045">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">女式无缝内裤一条</span><u class="col_r">¥115.00</u>
          </div>
          <div class="thbot">
                          <span class="free_cost_a_b m_l_20">拍A送B</span>
			             <span class="left">限量：10份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('581306','1045');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1044.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="万能热熔胶枪">
          <cite></cite>
          <span class="endtime" id="time_hz_1044">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">万能热熔胶枪</span><u class="col_r">¥11.76</u>
          </div>
          <div class="thbot">
                          <span class="free_cost_a_a m_l_20">拍A送A</span>
                        <span class="left">限量：30份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('579567','1044');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1042.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif"  alt="" 
          width="230" height="230" title="便携精品打气筒">
          <cite></cite>
          <span class="endtime" id="time_hz_1042">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">便携精品打气筒</span><u class="col_r">¥25.90</u>
          </div>
          <div class="thbot">
                          <span class="free_cost_a_b m_l_20">拍A送B</span>
			             <span class="left">限量：30份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('579065','1042');
  st.setTimeShow();
</script>
<li>
  <a class="trymod" href="1041.htm"  target="_blank">
      <div class="thumb">
          <img lazy-src="resource/img/230x230.jpg"  src="resource/img/loading_220X220.gif" alt=""   width="230" height="230" title="6元红包">
          <cite></cite>
          <span class="endtime" id="time_hz_1041">剩余：0天0小时0分0秒</span>
      </div>
      <div class="th-cont">
          <div class="title">
              <span class="mai">6元红包</span><u class="col_r">¥125.00</u>
          </div>
          <div class="thbot">
            			 <span class="free_cost_h m_l_20">纯红包</span>
                        <span class="left">限量：10份</span>
			            <span class="col_r upbtn">申请试用</span>
			          </div>
      </div>
  </a>
</li>
<script type="text/javascript"> 
  var st = new showTime('588371','1041');
  st.setTimeShow();
</script>
</ul>

<script type="text/javascript">
$(function(){$('img').imglazyload();});
</script>
</div>

<div class="mod_pager" style="padding: 20px 0 30px 0;">
    <div class="pgs">
		 <div class="part1"> <b class='current'>1</b> <a href="2.htm" > 2 </a> <a href="3-1.htm" > 3 </a> <a href="4-1.htm" > 4 </a> <b class='noEndClass'>...</b><a class='downPage' href="2.htm" tppabs="http://try.zhe.com/list/2">></a></div>	</div>
</div>


</div>
<!-- 免费试用 ]]-->
<!-- 商品结束 ]]-->			
</div>
<!-- 左边浮动框 -->
<div class="" id="leflo">
	<a href=""  target="_blank"><img src="resource/img/leflo1.png"  onmouseover="this.src='resource/img/leflo2.png'" onmouseout="this.src='resource/img/leflo1.png'" width="190" height="159"/></a>
</div>

<!--S-底部-->
<div class="zfooter">
<%@ include file="viewpage/publicpage/bottom.jspf" %>
</div>
<!--E-底部-->

<div style="display: none">
	<script language="javascript" type="text/javascript" src="resource/js/tryjs/17688486.js" ></script>
</div>

</div>
<!--/act_wrapper-->
</div>
</div>

<!--'注册层弹出说明框'-->
<div id="info_up" style="display:none;"><img src="resource/img/infobg.png"  usemap="#Map">
  <map name="Map">
    <area shape="rect" coords="61,551,338,608" href="register.htm">
    <area shape="rect" coords="345,555,619,610" href="login.htm">
  </map>
</div>
<script type="text/javascript" src="resource/js/alertInfo.js" ></script>
<!--'注册层弹出说明框end'-->



<script type="text/javascript" src="resource/js/tryjs/selecttag.js" ></script>
<!--界面右侧 WPA Button Begin -->
<script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzgwMDA1NjM3M18yMzA2OTlfODAwMDU2MzczXw"></script>
<!-- 界面右侧WPA Button END -->
</body>
</html>