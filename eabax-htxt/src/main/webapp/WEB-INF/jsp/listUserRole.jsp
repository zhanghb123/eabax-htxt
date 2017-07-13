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
            	<div class="search-area">
                    <div class="kv-item ue-clear">
                        <label>选择时间：</label>
                        <div class="kv-item-content ue-clear">
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">全部</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近3天</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近一周</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近一月</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" data-define="define" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">自定义</span>
                            </span>
                            <span class="define-input">
                            	<input type="text" placeholder="开始时间" />
                                <span class="division"></span>
                                <input type="text" placeholder="结束时间" />
                            </span>
                        </div>
                    </div>
                    <div class="kv-item ue-clear">
                        <label>选择类型:</label>
                        <div class="kv-item-content">
                            <select>
                                <option>全部</option>
                                <option>全部</option>
                                <option>全部</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="search-button">
                	<input class="button" type="button" value="查询" onclick="test();"/>
                </div>
             </div>
             
             <div class="table">
            	<div class="opt ue-clear">
                	<span class="sortarea">
                    	<span class="sort">
                        	<label>排序：</label>
                            <span class="name">
                            	<i class="icon"></i>
                                <span class="text">名称</span>
                            </span>
                        </span>
                        
                        <i class="list"></i>
                        <i class="card"></i>
                    </span>
                	<span class="optarea">
                        <a href="javascript:;" class="add">
                            <i class="icon"></i>
                            <span class="text">添加</span>
                        </a>
                        <a href="javascript:;" class="delete">
                            <i class="icon"></i>
                            <span class="text">删除</span>
                        </a>
                        
                    </span>
                </div>
                
                <table id="listUserRole" class="easyui-datagrid" title="Basic DataGrid" style="width:100%;height:330px">
		<thead>
			<tr>
				<th data-options="field:'userRoleId',width:100,hidden:true">角色id</th>
				<th data-options="field:'userRoleName',width:250">角色名称</th>
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
		url:'/user/role',
		method:'get',
		striped:true,
		nowrap:true,
		loadMsg:"数据加载中...",
		singleSelect:false,
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
		 pagination:true,
		 rownumbers:true		 
       
		
	});
	
	$("#listUserRole").datagrid("getPager").pagination({
		showPageList:false,
		showRefresh:false,
		pageSize:10,
		//pageNumber:1,
		pageList:[10],
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
	
function test(){
	var rows = $("#listUserRole").datagrid("getSelections");
	for(var i=0;i<rows.length;i++){
	}
}
</script>
</html>
