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
<title>运营登录</title>
<link rel="icon" href="resource/img/favicon.ico"  type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="<c:url value='resource/css/comm.css'/>" >
<link rel="stylesheet" type="text/css" href="<c:url value='resource/css/zzlayout.css'/>" >
<link rel="stylesheet" type="text/css" href="<c:url value='resource/css/hz_login.css'/>" >
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
        <div class="rule-box">
            <div class="rule-list">
              <div class="reg-switch">
              <a class="cur">运营登录</a>
              </div>
              <div class="reg-switch-box">
                  <form class="registerform" action="sysUserLogin" method="post">
                  <input type="hidden" value="3" name="usertype">
                  <div class="J_login">
                      <ul class="login-ul">
                          <li class="input_box">
                               <label><span class="logicon name-icon">账  号：</span></label>
                               <input type="text" value="" name="username" class="inputxt big_input" datatype="s4-25" nullmsg="请填写账号" errormsg="请填写正确的账号"  placeholder="请输入账号" autocomplete="off" />
                          </li>
                          <li class="input_box">
                              <label><span class="logicon pass-icon">密  码：</span></label>
                              <input type="password" value="" name="loginpassword" class="inputxt big_input" datatype="*6-16"nullmsg="请填写密码" errormsg="密码范围在6~16位之间！"  placeholder="请输入密码" autocomplete="off" />
                          </li>
                           
                          
						 <li id="msgdemo2" class="promsg">请填写正确信息!</li>
						  						  
                          <li>
                              <input type="submit" value="登 录"  class="log-btn"/>
                          </li>
                          
                          </ul>
                  </div>  
                  </form>                          
              </div>
              <div class="aside-right-new">
                 <div class="col_l"><a class="" href="viewpage/publicpage/findpass.jsp?usertype=3" ><span>忘记密码？</span></a>
                 
                 </div>

              </div>
            </div> 
        </div>
        <!-- 用户登录 ]]-->
    </div>
<div class="log-bot-top"></div>
<div class="log-bot"></div>

<!--S-底部-->
<div class="zfooter">
<%@ include file="/viewpage/publicpage/bottom.jspf" %>
</div>
<!--E-底部-->

<div style="display: none">
	<script language="javascript" type="text/javascript" src="17688486.js" tppabs="http://js.users.51.la/17688486.js"></script>
</div>
</div>

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
        window.location.reload();
      } else {
        //console.log(data);
      }
    }
	});
})
</script>
<!--处理placeholder兼容性-->
<script type="text/javascript">
var JPlaceHolder = {
    _check : function(){
        return 'placeholder' in document.createElement('input');
    },
    init : function(){
        if(!this._check()){
            this.fix();
        }
    },
    fix : function(){
        jQuery(':input[placeholder]').each(function(index, element) {
            var self = $(this), txt = self.attr('placeholder');
            self.wrap($('<div></div>').css({position:'relative', zoom:'1', border:'none', background:'none', padding:'none', margin:'none'}));
            var pos = self.position(), h = self.outerHeight(true), paddingleft = self.css('padding-left');
            var holder = $('<span></span>').text(txt).css({position:'absolute', left:pos.left, top:pos.top, height:h, lienHeight:h, paddingLeft:paddingleft, color:'#aaa'}).appendTo(self.parent());
            self.focusin(function(e) {
                holder.hide();
            }).focusout(function(e) {
                if(!self.val()){
                    holder.show();
                }
            });
            holder.click(function(e) {
                holder.hide();
                self.focus();
            });
        });
    }
};
jQuery(function(){
    JPlaceHolder.init();    
});
</script>

</body>
</html>
