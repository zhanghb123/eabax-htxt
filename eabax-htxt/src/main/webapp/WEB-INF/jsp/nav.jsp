<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="css/zTreeStyle/zTreeStyle.css" type="text/css">
<link rel="stylesheet" type="text/css" href="css/skin_/nav.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<title>主页面</title>
</head>

<body>
<div id="container">
	<div id="bd">
    	<div class="sidebar">
        	<div class="sidebar-bg"></div>
            <i class="sidebar-hide"></i>
            <h2><a href="javascript:;"><i class="h2-icon"></i><span id="module_title">安全管理</span></a></h2>
            <ul class="nav">
            
                <li class="nav-li current">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">用户信息设置</span></a>
                	<ul class="subnav">
                    	<li class="subnav-li current" href="form.html" data-id="2">
                    		<a href="javascript:;" class="ue-clear">
                    			<i class="subnav-icon"></i>
                    			<span class="subnav-text">表单</span>
                    		</a>
                    	</li>
                    	<li class="subnav-li" href="index.html" data-id="3"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">首页</span></a></li>
             
                        <li class="subnav-li" href="table.html" data-id="3"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">表格</span></a></li>
                        <li class="subnav-li" data-id="4"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">自定义设置2</span></a></li>
                    </ul>
                </li>
                <li class="nav-li">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">工作安排</span></a>
                    <!-- <ul class="subnav">
                    	<li class="subnav-li" data-id="5"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">工作安排查询1</span></a></li>
                        <li class="subnav-li" data-id="6"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">安排管理1</span></a></li>
                        <li class="subnav-li" data-id="7"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">类型选择1</span></a></li>
                    </ul> -->
                </li>
                <li class="nav-li last-nav-li">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">数据管理</span></a>
                    <ul class="subnav">
                    	<li class="subnav-li" data-id="12"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">工作安排查询2</span></a></li>
                        <li class="subnav-li" data-id="13"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">安排管理2</span></a></li>
                        <li class="subnav-li" data-id="14"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">类型选择2</span></a></li>
                    </ul>
                </li>
            </ul>
            <div class="tree-list outwindow">
            	<div class="tree ztree"></div>
            </div>
        </div>
        <div class="main">
        	<div class="title">
                <i class="sidebar-show"></i>
                <ul class="tab ue-clear">
                   
                </ul>
                <i class="tab-more"></i>
                <i class="tab-close"></i>
            </div>
            <div class="content">
            </div>
        </div>
    </div>
</div>

<div class="more-bab-list">
	<ul></ul>
    <div class="opt-panel-ml"></div>
    <div class="opt-panel-mr"></div>
    <div class="opt-panel-bc"></div>
    <div class="opt-panel-br"></div>
    <div class="opt-panel-bl"></div>
</div>
</body>
<script type="text/javascript">
//页面初始化时先显示第一个模块的菜单
refreshModule(window.parent.initModuleId, window.parent.initModuleName);
var firstFresh = true;

/* 通过父页面点击主模块菜单，刷新左侧二级和三级菜单 */
function refreshModule(moduleId,moduleName){
	$("#module_title").html(moduleName);
	//获取菜单
	$("ul.nav li").remove();
	$.ajax({
		url:"/menu/"+moduleId,
		dataType:"json",
		type:"GET",
		sync:"false",
		success:function(data){
			if(data.status==200){
				var menus = data.data;
				for(var i=0;i<menus.length;i++){
					var menu = menus[i];
					var menuStr = "<li ";
					if(i==0){
						menuStr+="class=\"nav-li current\">";
					}else{
						menuStr+="class=\"nav-li\">";
					}
					menuStr+="<a href=\"javascript:;\" class=\"ue-clear\">"
					+"<i class=\"nav-ivon\"></i>"
					+"<span class=\"nav-text\">"+menu.menuName+"</span>"
					+"</a><ul class=\"subnav\">";
					var innerLen = menu.childs.length;
					for(var j=0;j<innerLen;j++){
						var innerMenu = menu.childs[j];
						menuStr+="<li ";
						if(i==0&&j==0){
							menuStr+="class=\"subnav-li current\"";
						}else{
							menuStr+="class=\"subnav-li\"";
						}

						menuStr+=" href=\""+innerMenu.menuUrl+"\" data-id=\""+innerMenu.menuId+"\">"
						+"<a href=\"javascript:;\" class=\"ue-clear\">"
						+"<i class=\"subnav-icon\"></i>"
						+"<span class=\"subnav-text\">"+innerMenu.menuName+"</span>"
						+"</a></li>";
					}
					menuStr+="</ul></li>";
					if(innerLen>0){
						$("ul.nav").append(menuStr);
					}
					
				}
				if(firstFresh){
					firstFresh = false;
					var menu = new Menu({
						defaultSelect: $('.nav').find('li[data-id="111"]')	
					});
				}
				
			}
		}
	})
}

	
</script>
<script type="text/javascript" src="js/nav.js"></script>
<script type="text/javascript" src="js/Menu.js"></script>

</html>
