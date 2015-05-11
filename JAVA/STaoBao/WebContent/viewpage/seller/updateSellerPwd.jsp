<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>商户修改密码</title>

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
	
	//保存用户
	  function saveForm(){
		 // alert(url);
			$('#fm').form('submit',{
				url: url,
				onSubmit: function(){
					return $(this).form('validate');
				},
				success: function(result){
					alert(result);
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
	<!-- ----------------------------------------------------对话框--------------------------------------------------------------------- -->
	<div id="dlg" style="width: 500px; height: 400px; padding: 10px 20px"  >
		<form  method="post" id="fm">
		
			<input name="id" class="easyui-validatebox" type="hidden" value="${sysUser.id}">
			<input name="usertype" class="easyui-validatebox" type="hidden" value="${sysUser.usertype}">

			<div class="fitem">
				<label>原密&nbsp;&nbsp;码:</label> 
				<input name="qq" class="easyui-validatebox" required="true" type="password">
			</div>
			<div class="fitem">
				<label>新密&nbsp;&nbsp;码:</label> 
				<input name="mail" class="easyui-validatebox" required="true" type="password"> 
			</div>
			<div class="fitem">
				<label>确认密码:</label> 
				<input name="phone" class="easyui-validatebox" required="true" type="password">
			</div>


		</form>
	</div>
	<div id="dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-ok" onclick="saveForm()">保存</a> 
			<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel" onclick="formreset()">取消</a>
	</div>
	<!-- ----------------------------------------------------对话框--------------------------------------------------------------------- -->



</body>
</html>
