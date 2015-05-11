<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html><!DOCTYPE HTML>
<html lang="zh-cn">
<head>
<base href="<%=basePath%>" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Language" content="zh-cn">
<meta name="author" content="">
<meta name="Copyright" content="">
<title>商家申请注册</title>
<link rel="icon" href="resource/img/favicon.ico" type="image/x-icon">
<script type="text/javascript" src="resource/js/tryjs/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="resource/css/comm.css">
<link rel="stylesheet" type="text/css" href="resource/css/zzlayout.css">
<link rel="stylesheet" type="text/css" href="resource/css/hz_login.css">
<script type="text/javascript" src="resource/js/tryjs/thickbox.js"></script>
<link rel="stylesheet" type="text/css" href="resource/css/thickbox.css">

<script type="text/javascript">
$(function(){
    $("#Agreement").click( function(){
        $("#myOnPage").fbmodal({
            title: "用户使用协议",  //标题
           cancel: "不同意",//取消按钮
             okay: "同意",//确定按钮
       okaybutton: true,//确定按钮：true 显示 false 隐藏
     cancelbutton: true,//取消按钮：true 显示 false 隐藏
          buttons: true,//全部按钮：true 显示 false 隐藏
          opacity: 0.55,//透明度
	      fadeout: true,//淡化退出或载入 ：true 开启 false 关闭
		    fixed: true,//是否固定：true 漂浮 false 固定
     overlayclose: false,//点击框外退出 ：true 开启 false 关闭
		 modaltop: "20%",//距离顶部位置
       modalwidth: "800", //框宽度
	    modalheight: "380" //框高度
        },function(callback){
             if(callback == 1){
				$("#J_reg_agreement").prop("checked", true);//点击确定结果
            }
			if(callback == 2){
				$("#J_reg_agreement").removeAttr("checked");//点击取消结果
            }
        });  
    });	
});	


//$.get("/public/default/css/protocol.txt",{name:"John",time:"2pm"},function(data){
	//document.getElementById("myOnPage").innerHTML=data;});//加载协议
</script>
<style>
.content h3{ font-weight:bold; line-height:30px;}
</style>
</head>
<body>
<!--[if !IE]> START TOP <![endif]-->  
<div class="wrap">
<!--顶部 开始-->	
<div class="headWarp">
<div id="topTool">
	<div class="areaz">
		<div class="col_l"><a href="index.jsp">试用中心</a><a href="">商家中心</a></div>
    	<div class="col_r">您好，欢迎来到折点看0元购！<a href="sellerLogin.jsp">商家登录</a> 
    	</div>
    </div>
</div>
<div class="log-head">
	<div class="areaz"><a href="index.jsp">
	<img src="resource/img/log-logo.png" style="border:none">
	</a></div>
</div>
</div><!--顶部 结束-->	
<!--[if !IE]> END MENU <![endif]-->  
<div class="sec_main sec_main_log">
    <div class="wrap-cont">
        <!-- 用户登录 [[-->
        <div class="rule-box rule-box-reg">
            <div class="rule-list">
              <div class="reg-switch clearfix">
              <a class="cur reg-icon"><i></i>商家注册</a>
              </div>
              <div class="reg-switch-box">
				<form class="registerform" action="sysUserAdd" method="post">
				<input type="hidden" value="2" name="usertype" />
                  <div class="J_login">
                      <ul class="reg-ul">
                        <li class="input_box">
                            <label><span class="in_name"><em>手  机：<i></i></em></span></label>
                            <input type="text" value="" name="username" class="inputxt big_input" datatype="m" errormsg="手机格式不对" placeholder="填写5-25位字符的帐号" ajaxurl="">
                        </li>
                        <li class="input_box">
                            <label><span class="in_name"><em>密  码：<i></i></em></span></label>
                            <input type="password" value="" name="loginpassword" class="inputxt big_input" datatype="*6-16" nullmsg="填写正确的密码" errormsg="密码范围在6~16位之间！" placeholder="填写正确的密码">
                        </li>
                        
                        <li class="input_box">
                            <label><span class="in_name"><em>确认密码：<i></i></em></span></label>
                            <input type="password" value="" name="rloginpassword" class="inputxt big_input" datatype="*" recheck="password" nullmsg="请再输入一次密码！" errormsg="您两次输入的账号密码不一致！" placeholder="验证密码">
                        </li>
                        
                        <li class="input_box">
                            <label><span class="in_name"><em>验 证 码：<i></i></em></span></label>
                           <input type="text" value="" name="vcode" class="inputxt " datatype="*" errormsg="密码范围在6~16位之间！" placeholder="填写右侧验证码" ><a class="codeimg"><img src="" data-url="" onclick="" width="131" height="45"></a>
                        </li>
                        <li class="affirm"><label for="readme"><input type="checkbox" name="reg_agreement" id="J_reg_agreement" datatype="*" value="1" checked="checked">我已经认真阅读并同意折点看的<a href="javascript:void();" id="Agreement" target="_blank">《商家使用协议》</a></label>
                        
                        
                        
                        </li><li id="msgdemo2" class="promsg">请正确填写信息</li>
            			<li><input type="submit" value="商家注册" class="reg-botton"></li>
                        
                        </ul>
                          
                          
                  </div>  
                  </form>                          
              </div>
              <div class="aside-right-new">
                 <div class="col_l"><a class="" href="viewpage/publicpage/findpass.jsp"><span>忘记密码？</span></a>
                  <span>已有账号</span>
                  <a class="" href="viewpage/seller/sellerLogin.jsp"><span>登录</span></a></div>
                  
                  <!--div class="other-way">
                  	<span>快捷方式登录：</span>
                  	<a href="" class="qq">qq登录</a>
                    <a href="" class="tb">淘宝登录</a>
                  </div-->
              </div>
            </div> 
        </div>
        <!-- 用户登录 ]]-->
    </div>
<div class="log-bot-top"></div>
<div class="log-bot"></div>
<!-- 服务条款 [[-->
<div id="myOnPage" style="display:none; line-height:24px;">



<title>商家使用协议</title>



<div id="myOnPage" style="line-height:24px;">
<h3>1.服务协议的确认和接纳

</h3><p>1.1、本服务协议为折点看网与服务使用人（以下简称"用户"）之间的协议。
</p><p>1.2、折点看网（网址：try.zhe.com）的所有者及经营者，同意按照本协议的规定及其不时发布的操作规则提供基于互联网的相关服务（"网络服务"）。用户若需使用网络服务，应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。用户在进行注册程序过程中点击"同意"或"接受"按钮即表示用户完全接受本协议项下的全部条款。
</p><p>1.3、用户注册成功后，折点看将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管；用户应当对以其用户帐号进行的所有活动和事件负法律责任。

</p><h3>2.服务协议的修改

</h3><p>2.1、折点看有权随时修改本协议的任何条款，并在折点看网站公示，而无需另行单独通知用户，用户可随时通过折点看网站浏览最新服务协议条款。
</p><p>2.2、如果不同意折点看对本协议相关条款所做的修改，用户有权停止使用网络服务。如果用户继续使用网络服务，则视为用户接受折点看对本协议相关条款所做的修改。

</p><h3>3.用户使用规则

</h3><p>3.1、用户在申请使用折点看网络服务时，需向折点看提供真实准确的个人资料，如个人资料有任何变动，必须及时更新。因个人填写的资料不真实或者个人资料有变动没有及时更新，导致在试用活动中收不到试用品或者帐号遗失找不回密码而引起的一切损失由用户个人承担。
</p><p>3.2、用户不应将其帐号、密码转让或出借予他人使用。如用户发现其帐号遭他人非法使用，应立即通知折点看。因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用，折点看不承担任何责任。
</p><p>3.3、用户必须同意接受折点看通过电子邮件或其他方式向用户发送网站公告或相关信息。
</p><p>3.4、用户对于其创作并获通过折点看网络服务上传到折点看网站上的内容依法享有版权及其他相关合法权利。对于用户通过折点看网络服务上传到折点看网站上可公开获取区域的任何内容，用户同意折点看在全世界范围内具有免费的、永久性的、不可撤销的权利和许可，以使用、复制、修改、翻译、据以创作衍生作品、传播、表演和展示此等内容（整体或部分）。
</p><p>3.5、用户保证和声明对其通过折点看网络服务上传到折点看网站上的内容拥有完整的合法的版权，保证折点看使用该作品不违反国家的法律法规，也不侵犯第三方的合法权益或承担任何义务。用户承诺上传内容不涉及侵犯他人著作权、商标、名誉、隐私及其他一切违法内容。用户应对其所提供内容因形式、内容及授权的不完善、不合法所造成的一切后果承担完全责任。
</p><p>3.6、用户在使用折点看网络服务过程中，必须遵循以下原则：
</p><p>3.6.1、遵守中国有关的法律和法规；
</p><p>3.6.2、遵守所有与网络服务有关的网络协议、规定和程序；
</p><p>3.6.3、不得为任何非法目的而使用网络服务系统；
</p><p>3.6.4、不得利用折点看网络服务系统进行任何可能对互联网或移动网正常运转造成不利影响的行为；
</p><p>3.6.5、不得利用折点看提供的网络服务上传、展示或传播任何虚假的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、庸俗淫秽的或其他任何非法的信息资料；
</p><p>3.6.6、不得侵犯其他任何第三方的专利权、著作权、商标权、名誉权或其他任何合法权益；
</p><p>3.6.7、不得利用折点看网络服务系统进行任何不利于折点看的行为；
</p><p>3.6.8、如发现任何非法使用用户帐号或帐号出现安全漏洞的情况，应立即通告折点看。
</p><p>3.7、如用户在使用网络服务时违反任何上述规定，折点看或其授权的人有权要求用户改正或直接采取一切必要的措施（包括但不限于更改或删除用户上传的内容等、暂停或终止用户使用网络服务的权利）以减轻用户不当行为造成的影响。
</p><p>3.8、折点看针对某些特定的网络服务的使用通过各种方式（包括但不限于网页公告、电子邮件、短信提醒等）作出的任何声明、通知、警示、规则、章程等内容视为本协议的一部分，用户如使用该等折点看网络服务，视为用户同意该等声明、通知、警示、规则、章程等的内容。
</p><p>3.9、对于折点看提供的某些网络服务，会制定适用于此类服务的特殊服务协议，用户若需申请此类网络服务，则在接受本协议条款同时尚需同时接受此类特殊服务协议，此类特殊服务协议作为本协议的补充协议与本协议具有同等法律效力，若此类特殊服务协议与本协议条款有不一致的地方，用户在使用此类特殊网络服务时，以特殊服务协议约定的条款为准。
</p><p>3.10、除非另有明确规定，折点看不时推出的新产品，或增强或强化目前服务的任何新功能，均无条件地适用本服务协议，用户如使用该等折点看新产品或新功能，视为用户同意本协议条款。
</p><p>3.11、企业用户必须保证每次发布的试用活动结束时，试用活动审批通过人数、实际发放试用产品份数与推广活动发布产品份数必须相等，且审批试客时不能审批内部员工、亲朋好友等虚假试客；必须确保发给试客的试用品与试用活动页面的描述一致；必须确保试客到指定平台模拟购买时，试用品单价与试用活动页面的试用担保金一致；在活动期间在未告知试客其正在做淘宝客推广的情况下，不可诱导试客通过淘宝客链接拍付试用品；不得向申请试用的试客提出无理要求，如强行要求试客进行推广、分享、或者打全5分等行为。若用户违反上述内容，折点看将有权调用、曝光和处理用户在折点看的所有信息，并不予退还所有款项。
</p><p>3.12、个人用户必须保证不主动联系以及骚扰商家、向商家索取产品等；不得以任何形式出售免费获得商家提供的试用产品；不得用多个帐号申请同一款活动；每次获得试用产品后必须按时回馈给商家相应的试用报告；不得抄袭试用报告；不得做出恶意评价、恶意评论、恶意评分等损害商家利益的行为。若用户违反上述内容，折点看将有权调用、曝光和处理用户在折点看的所有信息。
</p><p>3.13、个人用户因个人信息不够完善，导致试用品发出后未收到货，责任由用户承担；若是收邮活动，则邮费不予退还。
</p><p>3.14、试用活动期间审核通过的试客，禁止通过该产品的淘宝客推广链接购买产品（或通过其他形式的优惠政策，违背试用交易流程的一切行为），违者折点看将严惩不贷。折点看将对违反规定的试客进行封号处理，同时商家在审核试客订单号时发现有与淘宝客订单号一致的试客视为违规，商家有权不退还该试客试用担保金，并将相关证据提交折点看客服，经查实后这笔试用担保金将退还给商家。（注意：如有商家故意提供淘宝客推广链接给试客拍下商品，试客可将相关证据提交折点看客服,经查实试客不记违规,将按照试用活动正常流程返还试客试用担保金。）

</p><h3>4.服务内容介绍

</h3><p>4.1、折点看网络服务的具体内容由折点看根据实际情况提供，目前主要提供试用服务。
</p><p>4.2、折点看提供的部分网络服务针对用户类别进行网络服务收费（用户类别分：商家用户和个人用户），商家用户使用收费网络服务需要向折点看支付一定的费用。对于收费的网络服务，折点看会在用户使用之前给予用户明确的提示，只有用户根据提示确认其愿意支付相关费用，用户才能使用该等收费网络服务。如用户拒绝支付相关费用，则折点看有权不向用户提供该等收费网络服务。
</p><p>4.3、用户理解，折点看仅提供相关的网络服务，除此之外与相关网络服务有关的设备（如个人电脑、手机、及其他与接入互联网或移动网有关的装置）及所需的费用（如为接入互联网而支付的电话费及上网费、为使用移动网而支付的手机费）均应由用户自行负担。

</p><h3>5.服务变更、中断或终止

</h3><p>5.1、鉴于网络服务的特殊性，用户同意折点看有权随时变更、中断或终止部分或全部的网络服务（包括收费网络服务）。如变更、中断或终止的网络服务属于免费网络服务，折点看无需通知用户，也无需对任何用户或任何第三方承担任何责任；如变更、中断或终止的网络服务属于收费网络服务，折点看应当在变更、中断或终止之前事先通知用户，或同时向受影响的用户提供等值的替代性的收费网络服务，如用户不愿意接受替代性的收费网络服务，就该用户已经向折点看支付的服务费，折点看应当按照该用户实际使用相应收费网络服务的情况扣除相应服务费之后将剩余的服务费退还给该用户。
</p><p>5.2、用户理解，折点看需要定期或不定期地对提供网络服务的平台（如互联网网站、移动网络等）或相关的设备进行检修或者维护，如因此类情况而造成收费网络服务在合理时间内的中断，折点看无需为此承担任何责任，但折点看应尽可能事先进行通告。
</p><p>5.3、如发生下列任何一种情形，折点看有权随时中断或终止向用户提供本协议项下的网络服务（包括收费网络服务）而无需对用户或任何第三方承担任何责任：
</p><p>5.3.1、用户违反本协议中规定的使用规则；
</p><p>5.3.2、用户在使用收费网络服务时未按规定向折点看支付相应的服务费。
</p><p>5.3.3、如用户注册的免费网络服务的帐号在任何连续90日内未实际使用，或者用户注册的收费网络服务的帐号在其订购的收费网络服务的服务期满之后连续90日内未实际使用，则折点看有权删除该帐号并停止为该用户提供相关的网络服务。

</p><h3>6.知识产权

</h3><p>6.1、折点看提供的网络服务中包含的任何文本、图片、图形、音频或视频资料均受版权、商标和其它财产所有权法律的保护，未经相关权利人同意，上述资料均不得在任何媒体直接或间接发布、播放、出于播放或发布目的而改写或再发行，或者被用于其他任何商业目的。折点看不就由上述资料产生或在传送或递交全部或部分上述资料过程中产生的延误、不准确、错误和遗漏或从中产生或由此产生的任何损害赔偿，以任何形式，向用户或任何第三方负责。
</p><p>6.2、折点看为提供网络服务而使用的任何软件（包括但不限于软件中所含的任何图象、照片、动画、录像、录音、音乐、文字和附加程序、随附的帮助材料）的一切权利均属于该软件的著作权人，未经该软件的著作权人许可，用户不得对该软件进行反向工程、反向编译或反汇编。

</p><h3>7.隐私保护

</h3><p>7.1、保护用户隐私是折点看的一项基本政策，折点看保证不对外公开或向第三方提供单个用户的注册资料及用户在使用网络服务时存储在折点看的非公开内容，但下列情况除外：
</p><p>7.1.1、事先获得用户的明确授权；
</p><p>7.1.2、根据有关的法律法规要求；
</p><p>7.1.3、按照相关政府主管部门的要求；
</p><p>7.1.4、为维护社会公众的利益；
</p><p>7.1.5、为维护折点看的合法权益；
</p><p>7.1.6、用户为获得商家提供的试用服务。
</p><p>7.2、折点看可能会与第三方合作向用户提供相关的网络服务，在此情况下，如该第三方同意承担与折点看同等的保护用户隐私的责任，则折点看有权将用户的注册资料等提供给该第三方。
</p><p>7.3、在不透露单个用户隐私资料的前提下，折点看有权对整个用户数据库进行分析并对用户数据库进行商业上的利用。

</p><h3>8.免责声明

</h3><p>8.1、用户明确同意其使用折点看网络服务所存在的风险将完全由其自己承担；因其使用折点看网络服务而产生的一切后果也由其自己承担，折点看对用户不承担任何责任。
</p><p>8.2、折点看不担保网络服务一定能满足用户的要求，也不担保网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作担保。
</p><p>8.3、折点看不保证为向用户提供便利而设置的外部链接的准确性和完整性，同时，对于该等外部链接指向的不由折点看实际控制的任何网页上的内容，折点看不承担任何责任。
</p><p>8.4、对于因不可抗力因素或折点看不能控制的原因造成的网络服务中断或其它缺陷，折点看不承担任何责任，但将尽力减少因此而给用户造成的损失和影响。
</p><p>8.5、用户同意，对于折点看向用户提供的下列产品或者服务的质量缺陷本身及其引发的任何损失，折点看无需承担任何责任：
</p><p>8.5.1、折点看向用户免费提供的各项网络服务；
</p><p>8.5.2、折点看向用户赠送的任何产品或者服务；
</p><p>8.5.3、折点看向收费网络服务用户附赠的各种产品或者服务。
</p><p>8.5.4、折点看提供的试用产品或者服务。
</p>
<h3>9.通知送达
</h3>
<p>9.1、本协议项下折点看对于用户所有的通知均可通过网页公告、电子邮件、手机短信或常规的信件传送等方式进行；该等通知于发送之日视为已送达收件人。
</p><p>9.2、用户对于折点看的通知应当通过折点看对外正式公布的通信地址、传真号码、电子邮件地址等联系信息进行送达。
</p>
<h3>10.适用法律</h3>

<p>10.1、本协议的订立、执行和解释及争议的解决均应适用中国法律并受中国法院管辖。
</p>
<h3>11.法院管辖</h3>

<p>11.1、如双方就本协议内容或其执行发生任何争议，双方应尽量友好协商解决；协商不成时，任何一方均可向折点看所在地的人民法院提起诉讼。</p>

<h3>12.其他规定</h3>

<p>12.1、本协议构成双方对本协议之约定事项及其他有关事宜的完整协议，除本协议规定的之外，未赋予本协议各方其他权利。</p>
<p>12.2、如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，本协议的其余条款仍应有效并且有约束力。</p>
<p>12.3、本协议中的标题仅为方便而设，在解释本协议时应被忽略。</p>
<p>12.4、如果本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，或违反任何适用的法律，则该条款被视为删除。但本协议的其余条款在不影响协议目的的情况下仍应有效并且有约束力。</p>
</div>


</div>
<!-- 服务条款 ]]-->
</div>

<!--S-底部-->
<div class="zfooter">
<%@ include file="../publicpage/bottom.jspf" %>
</div>
<!--E-底部-->

<!--/act_wrapper-->
</div>


<!-- 表单验证 -->
<script type="text/javascript" src="resource/js/tryjs/Validform_v5.3.2_min.js"></script>
<script type="text/javascript">
/* $(function(){
	$(".registerform").Validform({
		tiptype:function(msg,o,cssctl){
			var objtip=$("#msgdemo2");
			cssctl(objtip,o.type);
			objtip.text(msg);
		},
		ajaxPost:false
	});
}) */
</script>



</body></html>