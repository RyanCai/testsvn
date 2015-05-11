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
<title>找回密码 - 邮箱方式 -折点看</title>
<link rel="icon" href="resource/img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="resource/css/comm.css">
<link rel="stylesheet" type="text/css" href="resource/css/zzlayout.css">
<link rel="stylesheet" type="text/css" href="resource/css/hz_login.css">
<link rel="stylesheet" type="text/css" href="resource/css/findpass.css">
<script src="resource/js/tryjs/jquery-1.9.1.min.js"></script>

</head>
<body>
<!--[if !IE]> START TOP <![endif]-->  
<div class="wrap">
<!--顶部 开始-->	
<div class="headWarp">
<div id="topTool">
	<div class="areaz">
		<div class="col_l"><a href="index.jsp">首页</a></div>
    	<div class="col_r">您好，欢迎来到折点看0元购！<a href="viewpage/seller/sellerLogin.jsp">商家登录</a>  |  
    	 <a href="viewpage/customer/login.jsp">用户登录 </a> 
    	</div>
    </div>
</div>
<div class="log-head">
	<div class="areaz"><a href="http://sell.zhe.com/"><img src="resource/img/log-logo.png" style="border:none"></a></div>
</div>
</div><!--顶部 结束-->	
<!--[if !IE]> END MENU <![endif]-->  

<script type="text/javascript" src="resource/js/tryjs/float_msg.js"></script>
<script type="text/javascript">
function b_rp_email(){
	var rp_user_name = $("#rp_user_name").val();
	var rp_email = $("#rp_email").val();
	var verify = $("#verify").val();
	$('#email_btn').attr("onClick","alert('正在发送中...');");
	$('#seng_email').html("发送中...");
	$.ajax({
            url: '/index/setmail',
            type: 'POST',
            data:{to_user:rp_user_name,to_email:rp_email,verify_cood:verify},
			dataType: 'json',
            success: function(data){			
			  if(data.success=='0'){
				  if(data.user_verify=='1'){
					  $('#m_rp_user_name').removeClass('Hide');
					  $('#m_rp_user_name').removeClass('mb-error');
					  $('#m_rp_user_name').addClass('mb-success'); 
					  $('#m_rp_user_name').html('√验证正确');
				  }else{
					  $('#m_rp_user_name').removeClass('Hide');
					  $('#m_rp_user_name').removeClass('mb-success');
					  $('#m_rp_user_name').addClass('mb-error');
					  $('#m_rp_user_name').html('帐号不能为空,请检查！');
					  $('#email_btn').attr("onClick","b_rp_email();");
					  $('#seng_email').html("发　送");
				  }
				  if(data.cood_verify=='1'){
					  $('#m_rp_cood').removeClass('Hide');
					  $('#m_rp_cood').removeClass('mb-error');
					  $('#m_rp_cood').addClass('mb-success');
					  $('#m_rp_cood').html('√验证正确');
				  }else{
					  $('#m_rp_cood').removeClass('Hide');
					  $('#m_rp_cood').removeClass('mb-success');
					  $('#m_rp_cood').addClass('mb-error');
					  $('#m_rp_cood').html('验证码错误,请检查！');
					  $('#email_btn').attr("onClick","b_rp_email();");
					  $('#seng_email').html("发　送");
				  }
				  if(data.email_verify=='0'){
					  $('#m_rp_email').removeClass('Hide');
					  $('#m_rp_email').removeClass('mb-success');
					  $('#m_rp_email').addClass('mb-error');
					  $('#m_rp_email').html('帐号不匹配,请检查！');
					  $('#email_btn').attr("onClick","b_rp_email();");
					  $('#seng_email').html("发　送");
				  }else if(data.ss_email_verify=='0'){
					  $('#m_rp_user_name').removeClass('Hide');
					  $('#m_rp_user_name').removeClass('mb-success');
					  $('#m_rp_user_name').addClass('mb-error');
					  $('#m_rp_user_name').html('帐号不匹配,请检查！');
					  $('#m_rp_email').removeClass('Hide');
					  $('#m_rp_email').removeClass('mb-success');
					  $('#m_rp_email').addClass('mb-error');
					  $('#m_rp_email').html('帐号不匹配,请检查！');
					  $('#email_btn').attr("onClick","b_rp_email();");
					  $('#seng_email').html("发　送");
				  }else{
					  $('#m_rp_email').removeClass('Hide');
					  $('#m_rp_email').removeClass('mb-error');
					  $('#m_rp_email').addClass('mb-success');
					  $('#m_rp_email').html('√验证正确');
				  }
			  }else if(data.success=='1'){
				$('#m_rp_email').addClass('Hide');
				window.location.href="/index/recode/email/"+data.vierfy_md5;
			  }else{
				alert('邮箱验证码发送系统出现异常,请联系客服！');
			  }
			}
            });
}
</script>

<!--act_wrapper-->
<div class="sec_main">
<div class="wrap-cont">
<!-- 用户登录 [[-->
    <div class="rule-box-tit">
    <div class="line-tit"><span class="lump"><!-- 橙色块 --></span><span class="tit-txt">找回密码</span></div>
    </div>
    <div class="rule-list">
        <div class="reg-switch1">
        <!-- 
            <a href="http://sell.zhe.com/index/find/mobile"><span class="switch-bg2 J_switch_tab">手机找回</span></a>
         -->
            
            <span class="switch-bg1 J_switch_tab reg-switch-sel">邮箱找回</span>
        </div>
        <div class="login-cont J_cont" data-mode="normal">
            <div class="reg-switch-box J_switch_box">
                <div class="J_login Fix">
                <!-- 主题内容 -->
                    <div class="main page-sa Fix">
                        <p id="dp_notice"></p>
                        <div id="reset_password" class="section">
                              <br>
                              <div id="cont-log" class="block login-form msg-form">
                                  <div class="form-block">
                                      <span class="label-icon i-mail">电子邮箱</span>
                                      <div class="content">
                                      
                                        <div class="msg-txt">通过<span style="color:#ff8400">邮箱</span>找回密码</div>
                                        
                                        <div class="block form-btn-block_box form-block form-content-block">
                                        <span >账号</span>
                                            <input type="text" placeholder="请输入您的帐号" id="rp_user_name" tabindex="1" class="form-txt form-txt-l username" size="30">
                                            <span class="form-msg-box mb-error fv_username Hide" id="m_rp_user_name"></span>
                                        </div>
                                        
                                        <div class="block form-btn-block_box form-block form-content-block">
                                            绑定邮箱<input type="text" placeholder="请输入您帐号绑定的邮箱" id="rp_email" tabindex="1" class="form-txt form-txt-l username" size="30">
                                            <span class="form-msg-box mb-error fv_username Hide" id="m_rp_email"></span>
                                        </div>
                                        
                                        
                                        <div class="block form-btn-block_box form-block form-content-block">
                                            <div class="login-btn-new">
                                                <a class="m-btn" href="javascript:void(0);" id="email_btn" onclick="b_rp_email();"><span id="seng_email">发　送</span></a>
                                            </div>
                                        </div>
                                        
                                      </div>
                                  </div>
                              </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div> 
    </div>
<!-- 用户登录 ]]-->
</div>
</div>

<!--S-底部-->
<div class="zfooter">
<%@ include file="../publicpage/bottom.jspf" %>
</div>
<!--E-底部-->

</div>





</body></html>