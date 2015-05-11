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


<title>试客注册</title>
<link rel="icon" href="<c:url value='resource/img/favicon.ico'/>"  type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="<c:url value='resource/css/comm.css'/>" >
<link rel="stylesheet" type="text/css" href="resource/css/zzlayout.css" >
<link rel="stylesheet" type="text/css" href="resource/css/hz_login.css" >
<link rel="stylesheet" type="text/css" href="resource/css/thickbox.css" >
<style>
.content h3{ font-weight:bold; line-height:30px;}
</style>
</head>
<body>
<!--[if !IE]> START TOP <![endif]-->  
<div class="wrap">
<!--顶部 开始-->	
<div class="headWarp">
<%@ include file="/viewpage/publicpage/top2.jspf" %>
</div>
<!--顶部 结束-->	
<!--[if !IE]> END MENU <![endif]-->  
<div class="sec_main">
    <div class="wrap-cont">
        <!-- 用户登录 [[-->
        <div class="rule-box rule-box-reg">
            <div class="rule-list">
              <div class="reg-switch clearfix">
              <a class="cur">用户注册</a>
              </div>
              <div class="reg-switch-box">
				          <form class="registerform" action="sysUserAdd" method="post">
				           <input type="hidden" value="1" name="usertype" />
				          <input >
                  <div class="J_login">
                      <ul class="reg-ul">
                        <li class="input_box">
                            <label><span class="in_name"><em>账　号：<i></i></em></span></label>
                            <input type="text" value="" name="username" class="inputxt big_input" datatype="s4-25" errormsg="账号格式不对" placeholder="填写4-25位字符的帐号"/>
                        </li>
                        <li class="input_box">
                            <label><span class="in_name"><em>密  码：<i></i></em></span></label>
                            <input type="text" value="" name="loginpassword" class="inputxt big_input" datatype="*6-16" nullmsg="填写正确的密码" errormsg="密码范围在6~16位之间！" placeholder="填写正确的密码" />
                        </li>
                        
                        <li class="input_box">
                            <label><span class="in_name"><em>确认密码：<i></i></em></span></label>
                            <input type="password" value="" name="password2" class="inputxt big_input" datatype="*" recheck="password" nullmsg="请再输入一次密码！" errormsg="您两次输入的账号密码不一致！" placeholder="验证密码" />
                        </li>
                        
                        <li class="input_box">
                            <label><span class="in_name"><em>验 证 码：<i></i></em></span></label>
                            <input type="text" value="" name="vcode" class="inputxt code_input" datatype="*" errormsg="密码范围在6~16位之间！" placeholder="填写右侧验证码"/>
                            
                            <img style="cursor: pointer;" id="mcImgVC" src="vcode" onclick='this.src="http://try.zhe.com/vcode?"+Math.random()' width="128" height="42" title="单击，换一张">
                        </li>
                        <li class="affirm" ><input name="readme" type="checkbox" id="check" datatype="*" checked="checked" style="margin-left:10px;"/><label for="readme">我已经认真阅读并同意折点看的<a  id="Agreement"  target="_blank">《用户使用协议》</a></label>
                        </li>
                        
                        
                        <li id="msgdemo2" class="promsg">请正确填写信息</li>
            			      <li><input type="submit" value="提 交"  class="reg-botton"/></li>
                        
                        </ul>
                  </div>  
                  </form>                          
              </div>
              <div class="aside-right-new">
                 <div class="col_l"><a class="" href="viewpage/publicpage/findpass.jsp?usertype=1" ><span>忘记密码？</span></a>
                  <span>已有账号</span>
                  <a class="" href="viewpage/customer/login.jsp" ><span>登录</span></a></div>
                  <div class="other-way">
                  	<span>快捷方式登录：</span>
                  	<a href="" class="qq">qq登录</a>
                    <a href="" class="tb">淘宝登录</a>
                  </div>
              </div>
            </div> 
        </div>
        <!-- 用户登录 ]]-->
    </div>
<div class="log-bot-top"></div>
<div class="log-bot"></div>
<!-- 服务条款 [[-->
<div id="myOnPage" style="display:none; line-height:24px;">
</div>
<!-- 服务条款 ]]-->
<!--S-底部-->
<div class="zfooter">
<%@ include file="../publicpage/bottom.jspf" %>
</div>
<!--E-底部-->

<div style="display: none">
	<script language="javascript" type="text/javascript" src="17688486.js" tppabs="http://js.users.51.la/17688486.js"></script>
</div>
</div>
<!--/act_wrapper-->
</div>
<script type="text/javascript" src="jquery-1.9.1.min.js" tppabs="http://try.zhe.com/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="Validform_v5.3.2_min.js" tppabs="http://try.zhe.com/js/vaild/Validform_v5.3.2_min.js"></script>
<script type="text/javascript">
$(function(){
	$(".registerform").Validform({
		tiptype:function(msg,o,cssctl){
			var objtip=$("#msgdemo2");
			cssctl(objtip,o.type);
			objtip.text(msg);
		},
    ajaxPost:false,
    callback: function( data ) {
      if ( data.status == 1 ) {
        // window.location.reload();
        window.location.href = 'login.htm'/*tpa=http://try.zhe.com/user/profile*/;
      } else {
        console.log(data);
      }
    }
	});
})
</script>
<script type="text/javascript" src="thickbox.js" tppabs="http://try.zhe.com/js/thickbox.js"></script>
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
				$("#check").prop("checked", true);//点击确定结果
            }
			if(callback == 2){
				$("#check").removeAttr("checked");//点击取消结果
            }
        });  
    });	
});	


$.get("protocol.txt.htm"/*tpa=http://try.zhe.com/css/protocol.txt*/,{name:"John",time:"2pm"},function(data){document.getElementById("myOnPage").innerHTML=data;});//加载协议
</script>

</body>
</body>
</html>