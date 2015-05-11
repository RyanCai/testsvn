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

<title>免费试用商品</title>

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
 
  <script type="text/javascript">
  
/*   $('#dg').datagrid({
	  onLoadSuccess:function(data){
			alert(data);
			alert(data.total);
		}
}); */

var myview = $.extend({},$.fn.datagrid.defaults.view,{
	      onAfterRender:function(target){
	          $.fn.datagrid.defaults.view.onAfterRender.call(this,target);
	          var opts = $(target).datagrid('options');
	          var vc = $(target).datagrid('getPanel').children('div.datagrid-view');
	          vc.children('div.datagrid-empty').remove();
	         if (!$(target).datagrid('getRows').length){
	              var d = $('<div class="datagrid-empty"></div>').html(opts.emptyMsg || 'no records').appendTo(vc);
	              d.css({
	                 position:'absolute',
	                left:0,
	                 top:50,
                 width:'100%',
	                 textAlign:'center'
	            });
	         }
	     }
 });
 
$(function(){
    //var list=[];//数据列表为空
 
    $('#dg').datagrid({
          //data: list,
        view: myview,
          emptyMsg: 'no records found'

    });
});


  
  //新增用户
  var url ='';
  function newProduct(){
		$('#dlg').dialog('open').dialog('setTitle','添加商品');
		$('#fm').form('clear');
		url = 'addProducts';
	}
  
  //修改用户
  function editProduct(){
	 // alert('sssssssssssssssssseditUsers');
	  var row = $('#dg').datagrid('getSelected');
	 // alert(row.id);
	  if (row){
	  	$('#dlg').dialog('open').dialog('setTitle','修改商品');
	  	$('#fm').form('load',row);
	  	url = 'updateProducts';
	  }
  }
  
  //删除用户
  function destroyProduct(){
	var row = $('#dg').datagrid('getSelected');
	//alert(row.id+'/'+row);
	if (row!=null){
		$.messager.confirm('确认','您确认删除此信息吗?',function(r){
			//alert(r);
			if (r){
				$.post('deleteProducts',{id:row.id},function(result){
					//alert(result);
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
  function saveForm(){
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
			productname: $('#productname').val()
		});
	}
  
  //时间格式化函数
  function formatterdate(value,row) {
      var date = new Date(value);
      return date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate();
}
  
  
function onloadSuccess(data){
	alert(data);
	alert(data.total);
}
  
  
  
  </script>
   </head>
  <body>
  <div  id="datagriddiv"  >
</div>
   <table id="dg" title="免费试用商品列表" class="easyui-datagrid" style="width:100%;height:100%"   url="selectProducts"   toolbar="#toolbar"  rownumbers="true" 
   fitColumns="true" singleSelect="true" pagination="true"   >
	<thead>
		<tr>
			<th field="id" width="8%"   >编号</th>
			<th field="productname" width="10%">商品名称</th>
			<th field="count" width="10%">数量</th>
			<th field="oldprice" width="10%">商品原价</th>
			<th field="testtype" width="10%">试用类型</th>
			<th field="xiadanprice" width="10%">试用价格</th>
			<th field="starttime" width="10%"  formatter="formatterdate"  >开始时间</th>
			<th field="endtime" width="10%">结束时间</th>
			<th field="productdes" width="10%">商品描述</th>
			<th field="remark" width="10%">备注</th>
		</tr>
	</thead>
</table>
<div id="toolbar">
<table>
<tr>
<td>
<span>编号:</span><input   id="id" style="line-height:26px;border:1px solid #ccc">
<span>商品名:</span><input   id="productname" style="line-height:26px;border:1px solid #ccc">
<a href="javascript:void(0)" class="easyui-linkbutton" plain="true" onclick="doSearch()">查询</a>
</td>
</tr>
<tr>
<td>
<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newProduct()">添加商品</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editProduct()">编辑商品</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyProduct()">删除商品</a>
</td>
</tr>
</table>
	
</div>
<!-- ----------------------------------------------------添加、修改对话框--------------------------------------------------------------------- -->
<div id="dlg" class="easyui-dialog" style="width:500px;height:400px;padding:10px 20px"  closed="true" buttons="#dlg-buttons">
	<div class="ftitle"  align="center">商品信息</div>
	<form id="fm" method="post">
	   <input name="id" class="easyui-validatebox"  type="hidden">
		<div class="fitem">
			<label style="width: 100px">商品名称:</label >
			<input name="productname" class="easyui-validatebox" required="true">
		</div>
		<div class="fitem">
			<label>店铺名称:</label>
			<input name="shopname" class="easyui-validatebox" required="true"  validType="length[3,10]">
		</div>
		<div class="fitem">
			<label>商品描述:</label>
			<input name="productdes" class="easyui-validatebox" required="true"  >
		</div>
		<div class="fitem">
			<label>商品位置:</label>
			<input name="productposition" class="easyui-validatebox" required="true"  >
		</div>
		<div class="fitem">
			<label>原&nbsp;&nbsp;&nbsp;&nbsp;价:</label>
			<input name="oldprice" class="easyui-validatebox"   required="true"  >
		</div>
		<div class="fitem">
			<label>商品图片:</label>
			<input name="productimg" class="easyui-validatebox"   required="true"  >
		</div>
		<div class="fitem">
			<label>关键&nbsp;&nbsp;词:</label>
			<input name="productkeyword" class="easyui-validatebox"   required="true"  >
		</div>		<div class="fitem">
			<label>商品库存:</label>
			<input name="count" class="easyui-validatebox"   required="true"  validType="number">
		</div>
				<div class="fitem">
			<label>试用类型:</label>
			<input name="testtype" class="easyui-validatebox"   required="true"  >
		</div>
				<div class="fitem">
			<label>试用平台:</label>
			<input name="tryplatform" class="easyui-validatebox"   required="true"  >
		</div>
				<div class="fitem">
			<label>商品地址:</label>
			<input name="producturl" class="easyui-validatebox"   required="true"  >
		</div>
				<div class="fitem">
			<label>是否发货:</label>
			<input name="isdeliver" class="easyui-validatebox"   required="true"  >
		</div>
				<div class="fitem">
			<label>红包金额:</label>
			<input name="bonusamount" class="easyui-validatebox"   required="true"  >
		</div>
				<div class="fitem">
			<label>下单价格:</label>
			<input name="xiadanprice" class="easyui-validatebox"   required="true"  >
		</div>
		
				<div class="fitem">
			<label>购买暗号:</label>
			<input name="secretsignal" class="easyui-validatebox"   required="true"  >
		</div>
				<div class="fitem">
			<label>手机&nbsp;\PC:</label>
			<input name="phoneorpc" class="easyui-validatebox"   required="true"  >
		</div>
				<div class="fitem">
			<label>返回金额:</label>
			<input name="fanliprice" class="easyui-validatebox"   required="true"  >
		</div>
		
				<div class="fitem">
			<label>开始时间:</label>
			<input name="starttime" class="easyui-datetimebox"   required="true"  >
		</div>
				<div class="fitem">
			<label>结束时间:</label>
			<input name="endtime" class="easyui-datetimebox"   required="true"  >
		</div>
				<div class="fitem">
			<label>下单类型:</label>
			<input name="xiaordertype" class="easyui-validatebox"   required="true"  >
		</div>
		
				<div class="fitem">
			<label>下单要求:</label>
			<input name="xiaorderrequirement" class="easyui-validatebox"   required="true"  >
		</div>
				
				
		<div class="fitem">
			<label>备&nbsp;&nbsp;&nbsp;   注:</label>
			<input name="remark" class="easyui-validatebox"   >
		</div>
	</form>
</div>
<div id="dlg-buttons">
	<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveForm()">保存</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
</div>
<!-- ----------------------------------------------------对话框--------------------------------------------------------------------- -->
  </body>
</html>
