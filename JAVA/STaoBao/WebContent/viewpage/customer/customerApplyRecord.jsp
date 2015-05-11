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

<title>个人资料修改</title>

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
	
	var url ='sysUserUpdate';
	
	//保存用户
	  function saveUser(){
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
	  
	
	
	</script>


 
  <script type="text/javascript">
  //新增用户
  var url ='';
  function newUser(){
	     //$('#datagriddiv').style('visibility','hidden');
	   //alert('sssssssssssssssssss');
		$('#dlg').dialog('open').dialog('setTitle','添加用户');
		$('#fm').form('clear');
		url = 'User_addUser';
	}
  
  //修改用户
  function editUser(){
	 // alert('sssssssssssssssssseditUsers');
	  var row = $('#dg').datagrid('getSelected');
	 // alert(row.id);
	  if (row){
	  	$('#dlg').dialog('open').dialog('setTitle','修改用户');
	  	$('#fm').form('load',row);
	  	url = 'User_update';
	  }
  }
  
  //删除用户
  function destroyUser(){
	var row = $('#dg').datagrid('getSelected');
	//alert(row.id+'/'+row);
	if (row!=null){
		$.messager.confirm('确认','您确认删除此信息吗?',function(r){
			//alert(r);
			if (r){
				$.post('User_delete',{id:row.id},function(result){
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
			}
		});
	}
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
				//alert(result);
				var result = eval('('+result+')');
				//alert(result.msg);
				if (result.flag!='success'){
					$.messager.show({
						title: 'Error',
						msg: result.errorMsg
					});
				} else {
					$('#dlg').dialog('close');		// close the dialog
					$('#dg').datagrid('reload');	// reload the user data
				} 
			}
		});
	}
  
  
  //查询方法
  function doSearch(){
		$('#dg').datagrid('load',{
			id: $('#id').val(),
			username: $('#username').val()
		});
	}
  
  
  </script>
   </head>
  <body>
  <div  id="datagriddiv"  >
</div>
   <table id="dg" title="试用申请记录列表" class="easyui-datagrid" style="width:100%;height:80%"   url="User_select"   toolbar="#toolbar"  rownumbers="true" fitColumns="true" singleSelect="true" pagination="true">
	<thead>
		<tr>
			<th field="id" width="10%">编号</th>
			<th field="username" width="20%">用户名</th>
			<th field="name" width="10%">姓名</th>
			<th field="age" width="10%">年龄</th>
			<th field="sex" width="10%">性别</th>
			<th field="remark" width="30%">备注</th>
		</tr>
	</thead>
</table>
<div id="toolbar">
<table>
<tr>
<td>
<span>编号:</span><input   id="id" style="line-height:26px;border:1px solid #ccc">
<span>用户名:</span><input   id="username" style="line-height:26px;border:1px solid #ccc">
<a href="javascript:void(0)" class="easyui-linkbutton" plain="true" onclick="doSearch()">查询</a>
</td>
</tr>
<tr>
<td>
<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">添加用户</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">编辑用户</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">删除用户</a>
</td>
</tr>
</table>
	
</div>
<!-- ----------------------------------------------------对话框--------------------------------------------------------------------- -->
<div id="dlg" class="easyui-dialog" style="width:500px;height:400px;padding:10px 20px"  closed="true" buttons="#dlg-buttons">
	<div class="ftitle">用户信息</div>
	<form id="fm" method="post">
	   <input name="id" class="easyui-validatebox"  type="hidden">
		<div class="fitem">
			<label style="width: 100px">用户名:</label >
			<input name="username" class="easyui-validatebox" required="true">
		</div>
		<div class="fitem">
			<label>密&nbsp;   码:</label>
			<input name="password" class="easyui-validatebox" required="true"  validType="length[3,10]">
		</div>
		<div class="fitem">
			<label>姓&nbsp;   名:</label>
			<input name="name" class="easyui-validatebox" required="true"  validType="CHS">
		</div>
		<div class="fitem">
			<label>年&nbsp;   龄:</label>
			<input name="age" class="easyui-validatebox" required="true"  validType="number">
		</div>
		<div class="fitem">
			<label>性&nbsp;   别:</label>
			<input name="sex" class="easyui-validatebox"   required="true"  >
		</div>
		<div class="fitem">
			<label>邮&nbsp;   编:</label>
			<input name="zip" class="easyui-validatebox"   required="true"  validType="ZIP">
		</div>
		<div class="fitem">
			<label>备&nbsp;   注:</label>
			<input name="remark" class="easyui-validatebox"   required="true">
		</div>
	</form>
</div>
<div id="dlg-buttons">
	<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">保存</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
</div>
<!-- ----------------------------------------------------对话框--------------------------------------------------------------------- -->
  </body>
</html>
