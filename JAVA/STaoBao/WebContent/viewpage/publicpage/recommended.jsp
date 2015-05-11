<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html><!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>推荐有奖</title>
<link rel="icon" href="resource/img/favicon.ico"  type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="resource/css/comm-1.css" >
<link rel="stylesheet" type="text/css" href="resource/css/recomm.css" /> 
<link rel="stylesheet" type="text/css" href="resource/css/ind.css" >
<link rel="stylesheet" type="text/css" href="resource/css/zzlayout.css" >
<script type="text/javascript" src="resource/js/tryjs/jquery-1.7.2.min.js" ></script>
<script type="text/javascript" src="resource/js/tryjs/recomm.js" ></script>
<base target="_blank">
</head>
<body>

<!--顶部 开始-->  
<%@ include file="../publicpage/top.jspf" %>
<!--顶部 结束-->

<div class="recommend_decs"><img src="resource/img/rec_img.jpg" /></div>
<div class="recommend_link">
    <p class="description">
折点看0元购试用平台每天提供上千种免费试用商品，百万“试用达人“在这里免费申请试用，分享和交流人气产品试用心得和体会。活动详情：<a href="javascript:if(confirm('http://try.zhe.com/free  \n\nτݾҢδӀ Teleport Pro ȡܘìӲΪ ؾϱǷѨ٦δ֒սՋτݾc  \n\nţҪՓؾϱǷʏղߪ̼ðÿ'))window.location='http://try.zhe.com/free'" tppabs="http://try.zhe.com/free" target="_blank" style="font-size: 17px;">http://try.zhe.com</a>
    </p>
    <textarea id="recommend_url" style="resize:none;width:910px;height:50px;padding:15px 20px;color:#585858;font-size:14px;margin:20px 0 border:1px solid #ccc;">亲，发现个好地方，海量商品，免费试用，注册还有现金拿，折点看0元购每天提供上千种免费试用商品，等你抱回家！马上参与请戳：http://try.zhe.com/?</textarea>
    <button onClick='copyUrl(document.all.recommend_url)'>复制链接</button>
</div>
<div class="fenxiang">
    <div class="fenxiang_img">
        <img src="resource/img/share-img.png" tppabs="http://try.zhe.com/img/share-img.png">
    </div>
    <div class="fenxiang_Share">
      <div class="bdsharebuttonbox">
      <a href="#" class="bds_more" data-cmd="more"></a>
      <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
      <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
      <a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
      <a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
      <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
      <a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>
      <a href="#" class="bds_tqf" data-cmd="tqf" title="分享到腾讯朋友"></a>
      <a href="#" class="bds_baidu" data-cmd="baidu" title="分享到百度搜藏"></a>
      <a href="#" class="bds_mshare" data-cmd="mshare" title="分享到一键分享"></a>
      </div>
	  <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"24"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
      </script>

    </div>
</div>
<div class="clearfix"></div>
<div class="rule">
    <div class="title">邀请好友规则</div>
<div class="clearfix"></div>
    <div>
        <ul>
   <li>1、单次奖励：每成功邀请一位用户注册完成一次试用或赚佣金活动（同时绑定手机），邀请者可获得5元奖励，可无限邀请用户；</li>
   <li>2、月累计奖励：
       <p>当月邀请并获得奖励人数达到5人，额外奖励10元；</p>
       <p>当月邀请并获得奖励人数达到10人，额外奖励25元；</p>
       <p>当月邀请并获得奖励人数达到20人，额外奖励60元；</p>
       <p>当月邀请并获得奖励人数达到50人，额外奖励200元；</p>
       <p>当月邀请并获得奖励人数达到100人，额外奖励500元；</p></li>
   <li>3、邀请的小伙伴必须是新用户，即邀请之前从未在折点看登录过；</li>
   <li>4、邀请方式可以通过QQ、QQ空间、旺旺、微博、论坛发帖等其他方式发给好友。</li>
   <li>5、活动中如果发现通过作弊手段获得奖励的，将取消该用户获得的一切邀请奖励。</li>
   	</ul>        
    </div>
</div>
<div style="clear:both"></div>
<div class="record" style="margin-bottom:30px; overflow:hidden;">
    <div class="clear" style=" height:150px; clear:both; overflow:hidden;">
        <div class="title">接受邀请的好友记录</div>
        <div class="reward">已获得的奖励<span>￥0</span></div>
    </div>
    <div class="record_reward">
        <ul>
            <li>好友昵称</li>
            <li>注册时间</li>
            <li>完成试用 </li>
            <li>获得的奖励</li>
            <li>额外的奖励</li>
            <li> 排名</li>
            <li>用户名称</li>
            <li>获得奖励金额</li>
            <div class="clear"></div>
        </ul>
    </div>
    <div>
        <div class="friend_name">
        <!----'有推介时  列表'
        	<ul>
            <li><span class="names">tiantianhg</span><span class="time1">2014/11/30</span><span class="time2">2014/12/30</span><span class="money">￥200.00</span><span class="money-other">￥200.00</span></li>
            <li><span class="names">tiantianhg</span><span class="time1">2014/11/30</span><span class="time2">2014/12/30</span><span class="money">￥200.00</span><span class="money-other">￥200.00</span></li>
            <li><span class="names">tiantianhg</span><span class="time1">2014/11/30</span><span class="time2">2014/12/30</span><span class="money">￥200.00</span><span class="money-other">￥200.00</span></li>
            <li><span class="names">tiantianhg</span><span class="time1">2014/11/30</span><span class="time2">2014/12/30</span><span class="money">￥200.00</span><span class="money-other">￥200.00</span></li>
            <li><span class="names">tiantianhg</span><span class="time1">2014/11/30</span><span class="time2">2014/12/30</span><span class="money">￥200.00</span><span class="money-other">￥200.00</span></li>
            <li><span class="names">tiantianhg</span><span class="time1">2014/11/30</span><span class="time2">2014/12/30</span><span class="money">￥200.00</span><span class="money-other">￥200.00</span></li>
            </ul>
            -->
                    <div class="gogogo">

                    </div>
                    <div class="tishi">
                        80%用户可邀请到10个朋友，累积可获得75元奖励你还不行动？！
                    </div>
        </div>
        <div class="friend_name2">
            <ul>
            <li><span class="paiming">1</span><span class="name">yangxing88***</span><span class="money">￥200.00</span></li>
            <li><span class="paiming">2</span><span class="name">huian5*** </span><span class="money">￥50.00</span></li>
            <li><span class="paiming">3</span><span class="name">suge1125***</span> <span class="money">￥40.00</span></li>
                                <li>
                    <span class="paiming">4</span>
                    <span class="name">
                        a3620837***                    </span>
                    <span class="money">￥35.00</span>
                </li>
                                <li>
                    <span class="paiming">5</span>
                    <span class="name">
                        qq45547409***                    </span>
                    <span class="money">￥20.00</span>
                </li>
                                <li>
                    <span class="paiming">6</span>
                    <span class="name">
                        zouxide***                    </span>
                    <span class="money">￥20.00</span>
                </li>
                                <li>
                    <span class="paiming">7</span>
                    <span class="name">
                        long888168***                    </span>
                    <span class="money">￥20.00</span>
                </li>
                                <li>
                    <span class="paiming">8</span>
                    <span class="name">
                        zhoucheng1***                    </span>
                    <span class="money">￥20.00</span>
                </li>
                                <li>
                    <span class="paiming">9</span>
                    <span class="name">
                        shuiqingni***                    </span>
                    <span class="money">￥20.00</span>
                </li>
                                <li>
                    <span class="paiming">10</span>
                    <span class="name">
                        wanghankun***                    </span>
                    <span class="money">￥15.00</span>
                </li>
                            </ul>
        </div>
    </div>
</div>
   <div class="clearfix"></div>

<!--S-底部-->
<div class="zfooter">
<%@ include file="bottom.jspf" %>
</div>
<!--E-底部-->

<div style="display: none">
	<script language="javascript" type="text/javascript" src="17688486.js" tppabs="http://js.users.51.la/17688486.js"></script>
</div>    
<script type="text/javascript">
function copyUrl(obj){
	try{
		var rng = document.body.createTextRange();
		rng.moveToElementText(obj);
		rng.scrollIntoView();
		rng.select();
		rng.execCommand("Copy");
		rng.collapse(false);
		alert("已经复制到粘贴板!你可以使用Ctrl+V 贴到需要的地方去了哦!");
	}catch(e){
                messageAlert('提示您',"复制上面文本框网址，就可以发送给好友了!",function(){
                    hideAllbox();
                    recommend_url.select();
                });
	}
}
</script>
    
    
</body>
</html>