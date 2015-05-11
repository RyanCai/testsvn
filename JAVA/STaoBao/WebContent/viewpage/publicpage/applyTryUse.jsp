<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>免费申请试用</title>
    <link rel="icon" href="resource/img/favicon.ico"  type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="resource/css/comm-1.css" >
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
<link rel="stylesheet" type="text/css" href="resource/css/hz_item.css" />
<link rel="stylesheet" type="text/css" href="resource/css/thickbox.css"  />
<link rel="stylesheet" type="text/css" href="resource/css/login-q.min.css" >
<!--S-用户登录弹窗-->
<link rel="stylesheet" type="text/css" href="resource/css/login-q.min.css" />
<script type="text/javascript" src="resource/js/tryjslogin_popup.js" ></script>


<script type="text/javascript">

//申请试用处理方法
function applyUse(pid){
	alert(pid);
	
	$.post('applyUseProducts',{id:pid},function(result){
		alert(result);
	if (result.flag=='success'){
			$('#dg').datagrid('reload');	// reload the user data
		} else {
			$.messager.show({	// show error message
				title: '异常',
				msg: result.msg
			});
		} 
	},'json');
	
/* 	$('#fm').form('submit',{
		url: 'applyUseProducts',
		success: function(result){
			//alert(result);
			 var result = eval('('+result+')');
			//alert(result.msg);
			if (result.flag!='success'){
				$.messager.show({
					title: 'Error',
					msg: result.errorMsg
				});
			} else {
				//$('#dlg').dialog('close');		// close the dialog
				//$('#dg').datagrid('reload');	// reload the user data
			}  
		}
	}); */
}
function exitcid_taobao_select(exitcid){ 
        var el = $('.content #buy_taobao_user');   
        var tb_aid = el.val();
        var tb_acc = el.data('acc');
        // alert(tb_acc);
        // url = '/index.php?m=item&a=post_try_item';
        url = 'http://try.zhe.com/item/try';
        $.ajax({
            url: url,
            type: 'POST',
            data:{
                item_id: 1098,
                tb_aid: tb_aid,
                tb_acc: tb_acc
            },
            dataType: 'json',
            success: function(data) {
                if (data.success=='1') {
                    alert("亲~！您已经申请过此商品了,请换个商品！");
                    window.location.reload();
                }else if(data.success=='2'){
                    alert("亲~！您所选择的淘宝帐号未找到,请检查！");
                    window.location.reload();
				}else if(data.success== '3'){
					alert("亲~！您的账号已经被封!");
					window.location.reload();
                }else if(data.success=='0'){
                    alert("恭喜您,成功申请该试用商品,请耐心等待商家审核！");
                    window.location.reload();
                }
            }
        });
}
</script>


</head>
<body class="xsqg_act">
<form  method="post" id="fm">

</form>
<div class="wrap">

<!--顶部 开始-->   
<%@ include file="/viewpage/publicpage/top.jspf" %>
<!--顶部 结束-->


<div class="sec_main">
<div class="wrap-cont">					
<!-- 商品开始 [[-->
<div class="try-box">
<div class="block">
<div class="position">
<div class="p-l">
<a href="index.jsp" >首页</a>
</div>
</div>
<div class="thumb-box">
<div class="thumb">
<a href="javascript:void(0);">
<img src="resource/img/applyuse300x300.jpg"  width="300" height="300"></a>
</div>
<div class="fav-box">
<ul class="share">
<!--百度分享-->
<div style="margin-left:20px;" class="bdsharebuttonbox">
<a href="#" class="bds_more" data-cmd="more"></a>
<a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
<a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
<a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
<a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
<a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
<a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>
</div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"24"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
</script>
<div class="clear"></div>
<li class="bdshare">
</li>
<div class="clear"></div>	
</ul>
</div>
</div>
<div class="text-box">
<h1 style="max-width: 640px;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">棉绒坐垫</h1>
<div class="text">
<div class="text-left">
<ul class="goods">
<li class="nums">
    <cite>数量：</cite><span><b>10</b>份</span>
    	  <span class="free_cost_a_b m_l_20">拍A送B</span>
    </li> 
<li class="price"><cite>下单：</cite><span><b>28.88</b>元</span></li>
<li class="price"><cite>返还：</cite><span class="ger_floe">
<b class="ger_item">28.88</b>元 
<!--( <font color="#FC3C75"><strong>含红包：0.00 元</strong></font> )
-->
</span>

<!--         <div class="levelbox" id="levelbox">        
            <span class="level red1 level0"><i></i>返&nbsp;<b class="level_b">10</b>&nbsp;积分        
            <em></em></span>
            <ul>
              <li class="level_li level0"><i></i>返&nbsp;<b>10</b>&nbsp;积分</li>
              <li class="level_li level1"><i></i>返&nbsp;<b>20</b>&nbsp;积分</li>
              <li class="level_li level2"><i></i>返&nbsp;<b>30</b>&nbsp;积分</li>
              <li class="level_li level3"><i></i>返&nbsp;<b>40</b>&nbsp;积分</li>
              <li class="level_li level4"><i></i>返&nbsp;<b>50</b>&nbsp;积分</li>
              <li class="level_li level5"><i></i>返&nbsp;<b>60</b>&nbsp;积分</li>
            </ul>
        </div> -->
</li>

<li class="time"><cite>剩余：</cite><span class="endtime" id="time_hz">加载中...</span><i>结束</i></li>
<script type="text/javascript"> 
var st = new showTime(665921); 
st.setTimeShow();
</script>
<li class="allprice"><cite>保障：</cite>商家已存入总试用担保金<b>288.8</b>元，请放心申请。</li>
<li class="usernum" style="margin-bottom:5px;"><cite>统计：</cite>
<b id="appnum-1813">120</b>人申请，
<!--b id="checknum">1</b>人获得试用，-->
<b id="checknum">7</b>人获得试用，
<b id="ordernum">0</b>人已领取。
</li>


<div class="send_goods">
    试用完成可以得到：左图商品</div>



    <cite class="s-icon"></cite>

</ul>

<!-- 是否已绑定淘宝账号 -->
			<a class="apptry" href="javascript:applyUse(1)" ><span>申请试用</span></a>
	
<!--'可能出现的状态'
1、如上位登录注册
2、选择淘宝号交易
<a href="javascript:void(0);" onClick="for_taobao_select_box('4667')" class="apptry"><span>申请试用</span></a>
3、已申请过此商品
<a href="javascript:void(0);" onclick="alert('亲~！您已经申请过此商品了,请换个商品！');" class="appdisable"><span>申请试用</span></a>
4、从会员中心点进来，商品已结束
<div class="itemend">该试用商品已经结束了,看看<a href="">其他试用&gt;</a></div>
5、已申请
<div class="apped">该试用商品您已经抢过了,看看<a href="/shi">其他试用</a>或<a href="" target="_blank">查看订单</a></div>
-->
</div>
<div class="text-right">
<div class="nickname">


<i class="vip-3"></i>
<font color="#ea0653">年费VIP：</font>
一品***店
</div>
<div class="app-tips">
<div class="f14">试用流程：</div>
<ul class="tip">

<li>获得试用资格<div class="inner">
<p><a href="31.htm" tppabs="http://try.zhe.com/post/31" target="_blank">怎样获得免费试用资格？</a></p>
<p><a href="javascript:if(confirm('http://try.zhe.com/post/60  \n\nτݾҢδӀ Teleport Pro ȡܘìӲΪ ̼Ϟרȡփìܲ׸̼ȡܘ۳؅ǺìܲˇЮĿֹͣք̫ࠬc  \n\nţҪՓؾϱǷʏղߪ̼ðÿ'))window.location='http://try.zhe.com/post/60'" tppabs="http://try.zhe.com/post/60" target="_blank">如何知道我获得了试用资格？</a></p>
<p><a href="javascript:if(confirm('http://try.zhe.com/post/58  \n\nτݾҢδӀ Teleport Pro ȡܘìӲΪ ̼Ϟרȡփìܲ׸̼ȡܘ۳؅ǺìܲˇЮĿֹͣք̫ࠬc  \n\nţҪՓؾϱǷʏղߪ̼ðÿ'))window.location='http://try.zhe.com/post/58'" tppabs="http://try.zhe.com/post/58" target="_blank">获得了试用资格后该做什么？</a></p>
</div>
</li>

<li>以<span> 28.88 </span>元到指定平台领取试用品</li>
<li>提交订单编号<div class="inner">
<p><a href="javascript:if(confirm('nţҪՓؾϱǷʏղߪ̼ðÿ'))window.location='http://try.zhe.com/post/48'" tppabs="http://try.zhe.com/post/48" target="_blank">如何提交订单编号？</a></p>
<p><a href="javascript:if(confirm('http://try.zhe.com/post/69  \n\nτݾҢδӀ Teleport Pro ȡܘìӲΪ ̼Ϟרȡփìܲ׸̼ȡܘ۳؅ǺìܲˇЮĿֹͣք̫ࠬc  \n\nţҪՓؾϱǷʏղߪ̼ðÿ'))window.location='http://try.zhe.com/post/69'" tppabs="http://try.zhe.com/post/69" target="_blank">什么时候提交订单编号？</a></p>
<p><a href="javascript:if(confirm('http://try.zhe.com/post/63  \n\nτݾҢδӀ Teleport Pro ȡܘìӲΪ ̼Ϟרȡփìܲ׸̼ȡܘ۳؅ǺìܲˇЮĿֹͣք̫ࠬc  \n\nţҪՓؾϱǷʏղߪ̼ðÿ'))window.location='http://try.zhe.com/post/63'" tppabs="http://try.zhe.com/post/63" target="_blank">订单编号未审核怎么办？</a></p>
</div>
</li>

<li>订单结算完成<div class="inner">
<p><a href="javascript:if(confirm('http://try.zhe.com/post/66  \n\nτݾҢδӀ Teleport Pro ȡܘìӲΪ ̼Ϟרȡփìܲ׸̼ȡܘ۳؅ǺìܲˇЮĿֹͣք̫ࠬc  \n\nţҪՓؾϱǷʏղߪ̼ðÿ'))window.location='http://try.zhe.com/post/66'" tppabs="http://try.zhe.com/post/66" target="_blank">资金会多久结算解冻？</a></p>
</div>
</li>

<li>返还<span> 28.88 </span>元到您的账号<div class="inner">
<p><a href="javascript:if(confirm('http://try.zhe.com/post/61  \n\nτݾҢδӀ Teleport Pro ȡܘìӲΪ ̼Ϟרȡփìܲ׸̼ȡܘ۳؅ǺìܲˇЮĿֹͣք̫ࠬc  \n\nţҪՓؾϱǷʏղߪ̼ðÿ'))window.location='http://try.zhe.com/post/61'" tppabs="http://try.zhe.com/post/61" target="_blank">申请提现收取手续费么？</a></p>
<p><a href="javascript:if(confirm('http://try.zhe.com/post/62  \n\nτݾҢδӀ Teleport Pro ȡܘìӲΪ ̼Ϟרȡփìܲ׸̼ȡܘ۳؅ǺìܲˇЮĿֹͣք̫ࠬc  \n\nţҪՓؾϱǷʏղߪ̼ðÿ'))window.location='http://try.zhe.com/post/62'" tppabs="http://try.zhe.com/post/62" target="_blank">申请提现以后多久到账？</a></p>
</div>
</li>

</ul>
</div>
</div>
</div>
</div>
</div>
</div>


<div class="share-txt clearfix block">
	<span class="ems">试客分享：</span>请获得试用资格的试客将本活动分享到QQ空间、腾讯微博、新浪微博。
</div>
<div class="try-hot">
<div class="title">试用推荐
</div>
<ul class="item">

<li>
    <div class="thumb">
    <a href="javascript:if(confirm('http://try.zhe.com/item/729  \n\nτݾҢδӀ Teleport Pro ȡܘìӲΪ ̼Ϟרȡփìܲ׸̼ȡܘ۳؅ǺìܲˇЮĿֹͣք̫ࠬc  \n\nţҪՓؾϱǷʏղߪ̼ðÿ'))window.location='http://try.zhe.com/item/729'" tppabs="http://try.zhe.com/item/729" title="" target="_blank">
    <img src="resource/img/180x180.jpg"  width="180" height="180" align="">
    </a>
    </div>
    <div class="names">
        <span class="name"><a href="javascript:if(confirm('http://try.zhe.com/item/729  \n\nτݾҢδӀ Teleport Pro ȡܘìӲΪ ̼Ϟרȡփìܲ׸̼ȡܘ۳؅ǺìܲˇЮĿֹͣք̫ࠬc  \n\nţҪՓؾϱǷʏղߪ̼ðÿ'))window.location='http://try.zhe.com/item/729'" tppabs="http://try.zhe.com/item/729" target="_blank">防晒袖套</a></span>
        <strong class="appbtn">拍A送B</strong>
    </div>
</li>
<li>
    <div class="thumb">
    <a href="938.htm" tppabs="http://try.zhe.com/item/938" title="" target="_blank">
    <img src="resource/img/180x180.jpg"  width="180" height="180" align="">
    </a>
    </div>
    <div class="names">
        <span class="name"><a href="938.htm" tppabs="http://try.zhe.com/item/938" target="_blank">20元红包</a></span>
        <strong class="appbtn">纯红包</strong>
    </div>
</li>
<li>
    <div class="thumb">
    <a href="1006.htm" tppabs="http://try.zhe.com/item/1006" title="" target="_blank">
    <img src="resource/img/180x180.jpg"  width="180" height="180" align="">
    </a>
    </div>
    <div class="names">
        <span class="name"><a href="1006.htm"  target="_blank">4元红包</a></span>
        <strong class="appbtn">纯红包</strong>
    </div>
</li>
<li>
    <div class="thumb">
    <a href="1022.htm" tppabs="http://try.zhe.com/item/1022" title="" target="_blank">
    <img src="resource/img/180x180.jpg"  width="180" height="180" align="">
    </a>
    </div>
    <div class="names">
        <span class="name"><a href="1022.htm" tppabs="http://try.zhe.com/item/1022" target="_blank">去脚气喷剂</a></span>
        <strong class="appbtn">拍A送A</strong>
    </div>
</li>
<li>
    <div class="thumb">
    <a href="1075.htm" tppabs="http://try.zhe.com/item/1075" title="" target="_blank">
    <img src="resource/img/180x180.jpg"  width="180" height="180" align="">
    </a>
    </div>
    <div class="names">
        <span class="name"><a href="1075.htm" tppabs="http://try.zhe.com/item/1075" target="_blank">纯棉婴儿口水巾</a></span>
        <strong class="appbtn">拍A送B</strong>
    </div>
</li>

</ul>
</div>


    
	<div class="try-infos" id="target">
		
		

		<div class="title">试用详情</div>
		<div class="info-user">
			
			<div id="itemInfo"></div>

			<div class="conts">
				<h3 style="line-height:40px; color:#f46060; font: bold 14px/40px 'Microsoft YaHei';">试用流程</h3>
				<p>1、申请试用，获得试用资格。</p>
				<p>2、申请通过后，按照搜索流程提示，以 ￥￥ 元去指定平台下单。</p>
				<p>3、下单完成后，回折点看填写购买付款的订单号。</p>
				<p>4、等待收货 → 确认收货 → 给予宝贝评价，并填写试用报告。</p>
				<p>5、报告通过 → 返还 ￥￥ 元到您的折点看账户中 → 试用完成。</p>
							<h3 style="line-height:40px; color:#f46060; font: bold 14px/40px 'Microsoft YaHei';">注意事项</h3>
				<p>1、与商家旺旺聊天时不要提及“折点看、试客、试用”等信息，否则试用无效。</p>
				<p>2、禁止使用信用卡、淘金币、优惠券、红包、天猫积分等。</p>
				<p>3、禁止通过淘宝客、返利网、一淘等返现返利网链接下单。</p>
				<p>4、非手机端活动，禁止使用手机端下单。</p>
				<p>以上由于买家违规下单所产生的费用，由买家承担。折点看有权冻结其帐号，限制提现操作，IP列入黑名单。</p> 
			</div>
			<a href="viewpage/publicpage/beginners.jsp" class="new-userIn" target="_blank">新手入门</a>
		</div>
		<div class="info-right">
			<div class="info-notice">
				<h5>免责声明</h5>
				<div class="conts">
					<p>1、折点看所有试用产品均由合作商家直接提供，杜绝一切非正规渠道来源的试用产品。</p>
					<p>2、折点看仅为用户提供商品试用渠道及信息交流平台，产品的使用效果因产品本身及用户的个体差异而有所不同。</p>
					<p>3、若会员在产品试用过程中有任何不适，请即时停用并直接与试用品提供商联系。因试用品提供商的产品和服务导致的任何瑕疵、过错 、责任和纠纷，折点看不承担任何法律责任。</p>            
				</div>
			</div>
			<div class="info-tishi">
			
				<h5>温馨提示</h5>
				<div class="conts">
					<p>1、用户获得试用资格后，请根据时间提示按时提交订单号和试用报告。</p>
					<p>2、若因未按时提交以上信息而被系统取消试用资格，用户可在“未通过试用”中选择恢复资格。</p>
					<p>3、若活动已无剩余资格，将无法恢复资格，由此造成的损失需由买家承担。 </p>
				</div>
			</div>
		</div>
		
	</div>



<div class="try-content">
    

    <div class="clear"></div>
    <ul id="tabnav">
    <li class="selecttag"><a onClick="selecttag('tabbox0',this)" href="javascript:void(0)">申请会员(120)</a></li>
    <li><a onClick="selecttag('tabbox1',this);load_past('1098');" href="javascript:void(0)">已审批会员(7)</a></li>
    <!--li><a onClick="selecttag('tabbox1',this)" href="javascript:void(0)">已审批会员(1)</a></li-->
	<li><a onClick="selecttag('tabbox2',this);load_report('1098');" href="javascript:void(0);">试用报告</a></li>
    </ul>
<div id="tabbox">
<div class="tabbox selecttag" id="tabbox0">
    <ul class="try-user-list" id="applyContent">
    
    </ul>
    <div class="clear"></div>
<!--     <div class="pagination">
        <ul>
          <li><span> 121 条记录 1/5 页</span></li>
          <li><span class="current">1</span></li>
          <li><a href="2.html">2</a></li>
          <li><a href="3.html">3</a></li>
          <li><a href="4.html">4</a></li>
          <li><a href="5.html">5</a></li>
          <li><a href="2.html">下一页</a></li> 
        </ul>
    </div> -->
</div>


<div style="display:none" class="tabbox selecttag" id="tabbox1">
<ul class="try-user-list" id="pastContent">
    
</ul>
<div class="clear"></div>
<!-- <div class="pagination">
<ul>
  <li><span> 121 条记录 1/5 页</span></li>
  <li><span class="current">1</span></li>
  <li><a href="2.html">2</a></li>
  <li><a href="3.html">3</a></li>
  <li><a href="4.html">4</a></li>
  <li><a href="5.html">5</a></li>
  <li><a href="2.html">下一页</a></li> 
</ul>
</div> -->
</div>


<div style="display:none" class="tabbox selecttag" id="tabbox2">
<div class="appraise">
    <div class="appra-lis" id="shicontent">
	</div>
	<div class="clear"></div>
</div>
</div>
</div>

<div class="clear"></div>
</div>
<!-- 商品结束 ]]-->


</div>
<!-- 弹出输订单 [[-->
<div id="input_order" style="display:none;">
<div class="aui_content" style="padding:10px; ">
<label>订单编号：<input type="text" id="order_num" style="border: 1px solid #DEDEDE;padding: 3px 3px;width: 150px;" value=""></label>
<p class="ter_box">请填写已成功付款的订单编号</p>
<input type="hidden" id="item_id" value="4806">
<input type="hidden" id="order_url" value="/item/post_inorder">
</div></div>
<!-- 弹出输订单 ]]-->
<!-- 手机短信提醒设置 [[-->
<div id="input_mobile" style="display:none;">
<div class="aui_content" style="padding:10px; ">
<p style="margin-bottom:10px; margin-top:5px; color:#FF4E00;">使用短信提醒,请务必正确填写验证手机号码.</p>
<p style="margin-top:10px;"><label>手机号：<input type="text" id="mobile_num" style="border: 1px solid #DEDEDE;padding: 3px 3px;width: 185px;" value=""></label></p>
<p style="margin-top:10px;width: 240px;">
<label>验证码：<input type="text" id="verify_mobile_cood" style="border: 1px solid #DEDEDE;padding: 3px 3px;width:80px;" value=""></label>
<span id="verify_mobile" onClick="list_grab_coo();"><em id="verify_mobile_btn" style="border: solid #9B9B9B 1px;cursor: pointer;float:right;background: #F0F0F0;padding:3px 15px;text-align: center;font-size: 12px;color: #333;">获取验证码</em></span>
</p>
</div></div>
<!-- 手机短信提醒设置 ]]-->
<!-- 手机短信提醒 [[-->
<div id="to_mobile" style="display:none;">
<div class="aui_content" style="padding:10px; ">
<p style="margin-bottom:10px; margin-top:5px; color:#FF4E00;">短信提醒将发送至以下手机号,更改请联系客服.</p>
<p style="margin-top:10px;"><label>手机号：<input type="text" id="mobile_num_boo" disabled="disabled" style="border: 1px solid #DEDEDE;padding: 3px 3px;width: 185px;" value=""></label></p>
<input type="hidden" id="mo_item_id" value="4806">
<input type="hidden" id="mobile_url" value="/item/post_mobile">
</div></div>
<!-- 手机短信提醒 ]]-->

<!-- 申请试用 [[-->
<div id="taobao_select" style="display:none;">
<div class="aui_content" style="padding:10px; ">
    <p style="margin-bottom:10px; margin-top:5px; color:#FF4E00;">1、请加折点看官方试用群：</p>
    <div class="formt_qun">
<a target="_blank" href="javascript:if(confirm('http://shang.qq.com/wpa/qunwpa?idkey=3576c6c89eb4e9f9e73d27b5ebb2b56e5a90da55244f915de65baa80450b7f35  \n\nτݾҢδӀ Teleport Pro ȡܘìӲΪ ̼քԲܲ·޶Ӭڽߪʼθַאʨ׃ք׶Χc  \n\nţҪՓؾϱǷʏղߪ̼ðÿ'))window.location='http://shang.qq.com/wpa/qunwpa?idkey=3576c6c89eb4e9f9e73d27b5ebb2b56e5a90da55244f915de65baa80450b7f35'" tppabs="http://shang.qq.com/wpa/qunwpa?idkey=3576c6c89eb4e9f9e73d27b5ebb2b56e5a90da55244f915de65baa80450b7f35"><img border="0" src="group.png" tppabs="http://pub.idqqimg.com/wpa/images/group.png" alt="折点看免费试用QQ群5" title="折点看免费试用QQ群2" style="vertical-align:middle;"></a><span style="height:24px;line-height:24px;margin-left:5px;vertical-align:middle;">29805163</span>
    </div>
    <p style="margin-bottom:10px; margin-top:5px; color:#FF4E00;">2、选择试用下单使用的淘宝帐号：</p>
    <div class="formt" id="radio_type">
        </div>
</div>
</div>
<!-- 申请试用 ]]-->

<!-- 积分试用 [[-->
<!-- <div id="taobao_jifen" style="display:none;">
<div class="aui_content" style="padding:10px; ">
    <p style="margin-bottom:10px; margin-top:5px; color:#FF4E00;">1、请加折点看官方试用群：</p>
    <div class="formt_qun">
    <a target="_blank" href=""><img border="0" src="http://pub.idqqimg.com/wpa/images/group.png" alt="折点看免费试用群" title="折点看免费试用群"></a>
    </div>
    <p style="margin-bottom:10px; margin-top:5px; color:#FF4E00;">2、选择试用下单使用的淘宝帐号：</p>
    <div class="formt" id="radio_type">
       <label class="f_radio selected" id="radio_id_1" onClick="to_taobao_radio('1')"><input type='radio' name="taobao_radio" id="buy_taobao_user" value="11236" />小冷寻</label>
       <label class="f_radio unselected" id="radio_id_2" onClick="to_taobao_radio('2')"><input type='radio' name="taobao_radio" value="13219" />a782125708</label>
       </div>
</div>
</div> -->
<!-- 积分试用 ]]-->




<!--S-用户登录弹窗-->
<!--弹出登录或注册-->
<div id="Login_register" class="Hide">
<div class="register-wrap">
<div class="register-box">
<div class="reg-tabs">
<ul id="tabs">
<li class="cur" id="login_popup" onclick="login_popup_click();"><a><i class="icon-mobile"></i>用户登录</a><i class="split">|</i></li>
<li id="register_popup" onclick="register_popup_click();"><a><i class="icon-email"></i>用户注册</a></li>
</ul>
</div>
<div id="msg-box" class="msg-box Hide">
<span class="err">请输入正确的验证码！</span>
</div>
<div class="form-box form-tit-box">
<form id="login" name="login">
<input type="hidden" id="type_id" value="login" />
<!--用户登录-->
<ul id="login_panel" class="J-tabs-panel">
<li>
<label for="">账　号：</label>
<input id="buy_name_l" class="input-plain" type="text" placeholder="请输入正确的用户帐号" />
</li>
<li>
<label for="">密　码：</label>
<input id="buy_pass_l" class="input-plain" type="password" placeholder="密码长度6-25字符" />
</li>
<li class="captcha">
<label for="">验证码：</label>
<input id="code_l" onKeyDown="javascript:if(event.keyCode==13)Login_register_box('Login_register');" class="input-plain ipt-s" type="text" placeholder="验证码" />
<span class="c-pic"><img id="login_img_l" src="codea.png" tppabs="http://try.zhe.com/item/img/codea.png"></span>
</li>
</ul>
<!--用户注册-->
<ul id="register_panel" class="J-tabs-panel Hide">
<li>
<label for="">账　号：</label>
<input id="buy_name_r" class="input-plain" type="text" placeholder="请填写5-25位字符的帐号" />
</li>
<li>
<label for="">密　码：</label>
<input id="buy_pass_r" class="input-plain" type="password" placeholder="密码长度6-25字符" />
</li>
<li>
<label for="">邮　箱：</label>
<input id="buy_email_l" class="input-plain" type="text" placeholder="请填写您常用的邮箱" />
</li>
<li class="captcha">
<label for="">验证码：</label>
<input id="code_r" class="input-plain ipt-s" onKeyDown="javascript:if(event.keyCode==13)Login_register_box('Login_register');" type="text" placeholder="验证码" />
<span class="c-pic"><img id="login_img_r" src="codea.png" tppabs="http://try.zhe.com/item/img/codea.png"></span>
</li>
</ul>
</form>
</div>
</div>
</div>
</div>
<!--弹出登录或注册-->
<!--E-用户登录弹窗-->

<!--S-底部-->
<div class="zfooter">
<%@ include file="bottom.jspf" %>
</div>

<!--E-底部-->

<div style="display: none">
	<script language="javascript" type="text/javascript" src="17688486.js" tppabs="http://js.users.51.la/17688486.js"></script>
</div></div>
</div>

<script>
function load_report(itemid)
{
	var requestUrl = '/request?ac=report&itemid='+itemid;
	$.get(requestUrl,function(html){
		$("#shicontent").html(html);
	});
}

function load_past(itemid)
{
	var requestUrl = '/request?ac=past&itemid='+itemid;
	$.get(requestUrl,function(html){
		$("#pastContent").html(html);
	});
}

var itemid = '1098';
var lock = 0;
$(document).scroll(function(){
	if( $(this).scrollTop() > 600 && lock == 0)
	{
		load_apply(itemid);
		lock = 1;
	}
});

function load_apply(itemid)
{
	var requestUrl = '/request?ac=apply&itemid='+itemid;
	$.get(requestUrl,function(html){
		$("#applyContent").html(html);
	});
}
</script>
</body>
</html>
