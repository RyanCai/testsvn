<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商户系统管理后台首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="resource/js/ui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="resource/js/ui/themes/icon.css">
	<script type="text/javascript" src="resource/js/ui/jquery.min.js"></script>
	<script type="text/javascript" src="resource/js/ui/jquery.easyui.min.js"></script>
  </head>
  <script type="text/javascript">
  function addTab(id,title, url){
		if ($('#centerTab').tabs('exists', title)){
			$('#centerTab').tabs('select', title);
		} else {
			var content = '<iframe scrolling="auto" overflow="scroll" frameborder="0"  id=""+id+""   src="'+url+'" style="width:100%;height:100%;"></iframe>';
			$('#centerTab').tabs('add',{
				title:title,
				content:content,
				closable:true
			});
		}
	}
  
  
  </script>
  <body style="text-align: center;">
   <div class="easyui-layout" style="width:90%;height:100%;text-align: center;">
   <div id="north" data-options="region:'north',split:true"   style="padding:1px;width:100%;height:15%;"  >
   <p align="center" style="font-size: 20px">系统管理后台</p>  
   <table>
   <tr>
   <td>
   <a href="sysUserLoginOut?usertype=1">退出系统</a>
   </td>
   </tr>
   
   </table>
   
	</div>
	<div   data-options="region:'west',split:true"   title="导航栏" style="width:15%;height:75%;">
		<ul class="easyui-tree">
        <li>
            <span>系统面板</span>
            <ul>
                <li>
                    <span>我的用户中心</span>
                    <ul>
                        <li><span><a href="javascript:addTab('tabId_loginInfo','用户管理','viewpage/seller/sellerInfo.jsp');">个人资料</a></span></li>
                        <li><span><a href="javascript:addTab('tabId_loginInfo','密码修改','viewpage/seller/updateSellerPwd.jsp');">密码修改</a></span></li>
                        <li><span><a href="javascript:addTab('tabId_loginInfo','认证绑定管理','viewpage/seller/sellerInfo.jsp');">认证绑定管理</a></span></li>
                    </ul>
                </li>
                <li><span><a href="javascript:addTab('tabId_loginInfo','商家财务中心','viewpage/seller/freeApplyProductMgt.jsp');">商家财务中心</a></span></li>
                <li><span><a href="javascript:addTab('tabId_loginInfo','免费试用商品','viewpage/seller/freeApplyProductMgt.jsp');">免费试用商品</a></span></li>
                <li><span><a href="javascript:addTab('tabId_loginInfo','商家订单管理','viewpage/seller/freeApplyProductMgt.jsp');">商家订单管理</a></span></li>
                <li><span><a href="javascript:addTab('tabId_loginInfo','设置商家资料','viewpage/seller/freeApplyProductMgt.jsp');">设置商家资料</a></span></li>
                <li><span><a href="javascript:addTab('tabId_loginInfo','我的站内消息','viewpage/seller/freeApplyProductMgt.jsp');">我的站内消息</a></span></li>
                <li><span><a href="javascript:addTab('tabId_loginInfo','邀请好友赚钱','viewpage/seller/freeApplyProductMgt.jsp');">邀请好友赚钱</a></span></li>
            </ul>
        </li>
    </ul>
	</div>
	<!-- 
	<div id="content" region="center" title="内容" style="padding:5px;width:80%;height:70%;">
	 -->
	<div class="easyui-tabs" id="centerTab"   data-options="region:'center',split:true"   style="width:75%;height:75%;">  
            <div title="欢迎页" style="padding:1px;plain:true" >   
                <div style="margin-top:20px;">  
                    <h3>你好，欢迎来到权限管理系统</h3>  
                </div>  
            </div>  
        </div>  
	<!-- 
	
	</div>
	 -->
	
	<div id="south" data-options="region:'south',split:true"   style="padding:1px;width:90%;height:10%;">
	</div>
</div>
  </body>
</html>

