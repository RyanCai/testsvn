<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人资料</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="resource/js/ui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="resource/js/ui//themes/icon.css">
	<script type="text/javascript" src="resource/js/ui/jquery.min.js"></script>
	<script type="text/javascript" src="resource/js/ui/jquery.easyui.min.js"></script>
	
	
	<script type="text/javascript" >
	
	var url ='';
	
	
	//修改用户
	  function editUser(){
		alert('sssssssssssssssssseditUsers');
		  //var row = $('#dg').datagrid('getSelected');
		 // alert(row.id);
/* 		  if (row){
		  	$('#dlg').dialog('open').dialog('setTitle','修改用户');
		  	$('#fm').form('load',row);
		  	url = 'sysUserUpdate';
		  } */
		  $('#dlg').dialog('open').dialog('setTitle','修改用户');
		  url = 'sysUserUpdate';
	  }
	
	//保存用户
	  function saveUser(){
		 // alert(url);
			$('#fm').form('submit',{
				url: url,
				onSubmit: function(){
					return $(this).form('validate');
				},
				success: function(result){
					$.messager.alert({
						title: 'Info',
						msg: result
					});
					//alert(result);
					/* var result = eval('('+result+')');
					//alert(result.msg);
					if (result.flag!='success'){
						$.messager.show({
							title: 'Error',
							msg: result.errorMsg
						});
					} else {
						$('#dlg').dialog('close');		// close the dialog
						//$('#dg').datagrid('reload');	// reload the user data
					}  */
				}
			});
		}
	  
	//reset
	  function formreset(){
		  $('#fm').form('clear');
	  }
	
	</script>
  </head>
  
  <body>
    <div align="center" style="width: 100%;height: 100%">
    <form   method="post">
    <table>
    <tr>
    <td>用户名：</td><td>${sysUser.username}</td>
    </tr>
        <tr>
    <td>用户类型：</td><td>
    
  <c:if test="${sysUser.usertype==1}">
     试客
    </c:if>
       <c:if test="${sysUser.usertype==2}">
     商家
    </c:if>
       <c:if test="${sysUser.usertype==3}">
     运营
    </c:if>
    
    </td>
    </tr>
        <tr>
    <td>vip：</td><td>${sysUser.isvip}</td>
    </tr>
        <tr>
    <td>性别：</td><td>${sysUser.sex}</td>
    </tr>
        <tr>
    <td>邮箱：</td><td>${sysUser.mail}</td>
    </tr>
        <tr>
    <td>qq：</td><td>${sysUser.qq}</td>
    </tr>
        <tr>
    <td>手机：</td><td>${sysUser.phone}</td>
    </tr>
        <tr>
    <td>电话：</td><td>${sysUser.tell}</td>
    </tr>
        <tr>
    <td>姓名：</td><td>${sysUser.name}</td>
    </tr>
        <tr>
    <td>年龄：</td><td>${sysUser.age}</td>
    </tr>
        <tr>
    <td>状态：</td><td>${sysUser.state}</td>
    </tr>
    
    <tr>
    <td><input type="button" value="修改"  onclick="editUser()"></td>
    </tr>
    
    </table>
    </form>
    
    </div>
    
  <!-- ----------------------------------------------------对话框--------------------------------------------------------------------- -->
	<div id="dlg" class="easyui-dialog"
		style="width: 500px; height:400px; padding: 10px 20px" closed="true"
		buttons="#dlg-buttons" >
		<div class="ftitle" align="center">用户信息</div>
		<form  method="post" id="fm">
			<input name="id" class="easyui-validatebox" type="hidden" value="${sysUser.id}">
			<input name="usertype" class="easyui-validatebox" type="hidden" value="${sysUser.usertype}">
			<div class="fitem">
				<label style="width: 100px">用&nbsp;户&nbsp;&nbsp;名:</label> ${sysUser.username}
			</div>
			<div class="fitem">
				<label>用户类型 :</label>
				<c:if test="${sysUser.usertype=='1'}">
     试客
    </c:if>
				<c:if test="${sysUser.usertype==2}">
     商家
    </c:if>
				<c:if test="${sysUser.usertype==3}">
     运营
    </c:if>

			</div>
			<div class="fitem">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vip:</label> ${sysUser.isvip}
			</div>
			<div class="fitem">
				<label>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:</label> 
				男<input type="radio" name="sex" value="1" class="easyui-validatebox"> 
				女<input type="radio" name="sex" value="2" class="easyui-validatebox">
			</div>
			<div class="fitem">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QQ:</label> 
				<input name="qq" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱:</label> 
				<input name="mail" class="easyui-validatebox" required="true" validType="ZIP"> 
			</div>
			<div class="fitem">
				<label>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机:</label> 
				<input name="phone" class="easyui-validatebox" required="true">
			</div>

			<div class="fitem">
				<label>电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话:</label> 
				<input name="tell" class="easyui-validatebox" required="true">
			</div>

			<div class="fitem">
				<label>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:</label> 
				<input name="name" class="easyui-validatebox" required="true">
			</div>

			<div class="fitem">
				<label>年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄:</label> 
				<input name="age" class="easyui-validatebox" required="true">
			</div>
		</form>
	</div>
	<div id="dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-ok" onclick="saveUser()">保存</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
	</div>
	<!-- ----------------------------------------------------对话框--------------------------------------------------------------------- -->

    
    
    
    
    
    
    
    
    
    
    
    
    
    
  </body>
</html>
