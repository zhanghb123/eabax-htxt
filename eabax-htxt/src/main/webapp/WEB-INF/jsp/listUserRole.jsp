<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<title>角色列表</title>
</head>

<body>
<div id="container">
	<div id="hd"></div>
    <div id="bd">
    	<div id="main">
        	<div class="search-box ue-clear">

                <div class="search-button">
                	<a href="javascript:search();" class="easyui-linkbutton" iconCls="icon-search">查询</a>
                </div>
             </div>
             
             <div class="table">

                <table id="listUserRole" class="easyui-datagrid" title="Basic DataGrid" 
                style="width:100%;height:330px" remoteSort="true">
					<thead>
						<tr>
							<th data-options="field:'userRoleId',width:100,hidden:true">角色id</th>
							<th data-options="field:'userRoleName',width:250,sortable:true">角色名称</th>
							<th data-options="field:'userRoleDesc',width:250,align:'right'">角色描述</th>
							<th data-options="field:'isInit',width:150,align:'right'">是否系统初始化</th>
							<th data-options="field:'userRoleOrder',width:150,align:'right'">排列顺序</th>
						</tr>
					</thead>
				</table>
                
            </div>
        </div>
    </div>
</div>

</body>
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript">
$(function(){

	$("#listUserRole").datagrid({
		idField:"userRoleId",
		title:null,
		url:'/user/role/list',
		pageSize: 10,  
		pageList: [5, 10, 20],  
		pagination: true, //是否启用分页
		method:'get',
		striped:true,
		nowrap:true,
		loadMsg:"数据加载中...",
		singleSelect:false,
		//pageSize:5,
		/* columns:[[
		          {
		        	  field:"userRoleName",
		        	  title:"角色名称",
		        	  width:200,
		        	  align:"center"
		          },{
		        	  field:"userRoleName",
		        	  title:"角色名称",
		        	  width:200,
		        	  align:"center"
		          },{
		        	  field:"userRoleName",
		        	  title:"角色名称",
		        	  width:200,
		        	  align:"center"
		          },{
		        	  field:"userRoleName",
		        	  title:"角色名称",
		        	  width:200,
		        	  align:"center"
		          },{
		        	  field:"userRoleName",
		        	  title:"角色名称",
		        	  width:200,
		        	  align:"center"
		          },
		          {
		        	  field:"userRoleDesc",
		        	  title:"角色描述",
		        	  sortable:true,
		        	  width:200,
		        	  align:"center"
		          },
		          {
		        	  field:"isInit",
		        	  title:"是否系统预置",
		        	  width:150,
		        	  align:"center"
		          }
		          
		          ]], */
	
		frozenColumns:[[
		               {
		            	   field:"ck",
		            	   width:50,
		            	   
		            	   checkbox:true
		               }
		               
		               ]],
		 rownumbers:true		 
       
		
	});
	
	$("#listUserRole").datagrid("getPager").pagination({
		showPageList:true,
		showRefresh:false,
		//pageSize:5,
		//pageNumber:1,
		//pageList:[5,10],
		beforePageText:"第",
		afterPageText:"页  共{pages}页",
		displayMsg:"当前显示{from}-{to}条记录  共{total} 条记录"
		
	});

	
	
})


	var toolbar = [
	{
		text:'新增',
		iconCls:'icon-add',
		handler:function(){
			alert('新增');
		}
	},
	{
		text:'删除',
		iconCls:'icon-cut',
		handler:function(){
			alert('删除');
		}
	}
	]
	
function search(){
	$('#listUserRole').datagrid('reload');
}


function alertColumn(sort,order){ 
	alert("22");
	}
	
function test(){
	var rows = $("#listUserRole").datagrid("getSelections");
	for(var i=0;i<rows.length;i++){
	}
}
</script>
</html>
