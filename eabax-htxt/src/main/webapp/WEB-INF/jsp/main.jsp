<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="/css/style.css" />
<link rel="stylesheet" type="text/css" href="/css/skin_/main.css" />
<link rel="stylesheet" type="text/css" href="/css/jquery.dialog.css" />
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/global.js"></script>
<script type="text/javascript" src="/js/jquery.cookie.js"></script>
<title>后台管理系统</title>
</head>

<body>
<div id="container">
	<div id="hd">
    	<div class="hd-top">
            <h1 class="logo"><a href="javascript:;" class="logo-icon"></a></h1>
            <div class="user-info">
                <span class="user-name" id="username"></span>
                <!-- <a href="javascript:;" class="more-info"></a> -->
            </div>
            <div class="setting ue-clear">
            	<!-- <div class="setting-skin">
                	<div class="switch-bar">
                    	<i class="skin-icon"></i>
                        <span class="text">皮肤</span>
                        <i class="arrow-icon"></i>
                    </div>
                </div> -->
                <ul class="setting-main ue-clear">
                    <li><a href="javascript:;">设置</a></li>
                    <li><a href="javascript:;">帮助</a></li>
                    <li><a href="javascript:;" class="close-btn exit"></a></li>
                </ul>
            </div>
        </div>
        <div class="hd-bottom">
        	<i class="home"><a href="javascript:;"></a></i>
        	<div class="nav-wrap">
                <ul class="nav ue-clear" id="mainMeun">
                	<%-- <c:forEach var="menu" items="${menus }">
                		<li><a href="javascript:;" onclick="chooseModule('${menu.menuId}','${menu.menuName}')">${menu.menuName}</a></li>
                	</c:forEach> --%>
                	<li><a href="javascript:;">平台管理</a></li>
                    <li><a href="javascript:;">系统管理</a></li>
                    <li><a href="javascript:;">安全管理</a></li>
                    <li><a href="javascript:;">数据中心</a></li>
                    <li><a href="javascript:;">表单管理</a></li>
                    <li><a href="javascript:;">流程管理</a></li>
                    <li><a href="javascript:;">交流中心</a></li>
                    <li><a href="javascript:;">企业邮箱</a></li>
                    <li><a href="javascript:;">安全管理</a></li>
                    <li><a href="javascript:;">数据中心</a></li>
                    <li><a href="javascript:;">表单管理</a></li>
                    <li><a href="javascript:;">流程管理</a></li>
                    <li><a href="javascript:;">交流中心</a></li>
                    <li><a href="javascript:;">企业邮箱</a></li>
                    
                </ul>
            </div>
            <div class="nav-btn">
            	<a href="javascript:;" class="nav-prev-btn"></a>
                <a href="javascript:;" class="nav-next-btn"></a>
            </div>
        </div>
    </div>
    <div id="bd">
        <iframe width="100%" height="100%" id="mainIframe" src="/nav" frameborder="0" id="mainIframe"></iframe>
    </div>
    
    <div id="ft" class="ue-clear">
    	<div class="ft1 ue-clear">
        	<i class="ft-icon1"></i>
            <span>管理系统</span>
            <em>Digital Pertal</em>
        </div>
        <div class="ft2 ue-clear">
        	<span>Call Center</span>
            <em>V2.0 2014</em>
            <i class="ft-icon2"></i>
        </div>
    </div>
</div>

<div class="exitDialog">
	<div class="content">
    	<div class="ui-dialog-icon"></div>
        <div class="ui-dialog-text">
        	<p class="dialog-content">你确定要退出系统？</p>
            <p class="tips">如果是请点击“确定”，否则点“取消”</p>
            
            <div class="buttons">
                <input type="button" class="button long2 ok" value="确定" />
                <input type="button" class="button long2 normal" value="取消" />
            </div>
        </div>
        
    </div>
</div>

<div class="opt-panel user-opt" style="top:52px;left:330px;">
	<ul>
    	<li><a class="text">用户资料</a></li>
        <li><a class="text">短消息<span class="num">(2)</span></a></li>
        <li><a class="text">资料信息</a></li>
        <li><a class="text">注销</a></li>
        <li><a class="text">自定义</a></li>
    </ul>
    <div class="opt-panel-tl"></div>
    <div class="opt-panel-tc"></div>
    <div class="opt-panel-tr"></div>
    <div class="opt-panel-ml"></div>
    <div class="opt-panel-mr"></div>
    <div class="opt-panel-bl"></div>
    <div class="opt-panel-bc"></div>
    <div class="opt-panel-br"></div>
    <div class="opt-panel-arrow"></div>
</div>

<div class="opt-panel skin-opt" style="top:36px;right:157px;">
	<ul class="ue-clear">
    	<li attr-color="#0f8dc7"></li>
        <li attr-color="#1ea4a9"></li>
        <li attr-color="#eb7f00"></li>
        <li attr-color="#ed0f04"></li>
        <li attr-color="#f24b39"></li>
        <li attr-color="#ed0f04"></li>
        <li attr-color="#eb7f00"></li>
        <li attr-color="#ed0f04"></li>
        <li attr-color="#1ea4a9"></li>
    </ul>
    <div class="opt-panel-ml"></div>
    <div class="opt-panel-mr"></div>
    <div class="opt-panel-bl"></div>
    <div class="opt-panel-bc"></div>
    <div class="opt-panel-br"></div>
</div>

<div class="system-switch">
	<ul>
    	<li>
            <span class="system-name"><i></i>数字管理系统</span>
        </li>
        <li>
            <span class="system-name"><i></i>资金集中支付系统</span>
        </li>
        <li>
            <span class="system-name"><i></i>票据管理系统</span>
        </li>
        <li>
            <span class="system-name"><i></i>公积金系统</span>
        </li>
        <li>
            <span class="system-name"><i></i>监控系统</span>
        </li>
    </ul>
    <div class="opt-panel-mr"></div>
    <div class="opt-panel-bc"></div>
    <div class="opt-panel-br"></div>
</div>

</body>

<script type="text/javascript" src="js/core.js"></script>
<script type="text/javascript" src="js/jquery.dialog.js"></script>
<script type="text/javascript">

function initPage(){
	$("#bd").height($(window).height()-$("#hd").outerHeight()-26);
	
	$(window).resize(function(e) {
	    $("#bd").height($(window).height()-$("#hd").outerHeight()-26);

	});
	$('.exitDialog').Dialog({
		title:'提示信息',
		autoOpen: false,
		width:400,
		height:200
	});
	
	$('.exit').click(function(){
		$('.exitDialog').Dialog('open');
	});
	
	$('.exitDialog input[type=button]').click(function(e) {
	    $('.exitDialog').Dialog('close');
		
		if($(this).hasClass('ok')){
			window.location.href = "login.html"	;
		}
	});
	var totalWidth = 30, current = 1;
	
	$.each($('.nav').find('li'), function(){
		totalWidth += $(this).outerWidth();
	});
	
	$('.nav').width(totalWidth);
	function currentLeft(){
		return -(current - 1) * 93;	
	}
	
	$('.nav-btn a').click(function(e) {
		var tempWidth = totalWidth - ( Math.abs($('.nav').css('left').split('p')[0]) + $('.nav-wrap').width() );
        if($(this).hasClass('nav-prev-btn')){
			if( parseInt($('.nav').css('left').split('p')[0])  < 0){
				current--;
				Math.abs($('.nav').css('left').split('p')[0]) > 93 ? $('.nav').animate({'left': currentLeft()}, 200) : $('.nav').animate({'left': 0}, 200);
			}
		}else{

			if(tempWidth  > 0)	{
				
			   	current++;
				tempWidth > 93 ? $('.nav').animate({'left': currentLeft()}, 200) : $('.nav').animate({'left': $('.nav').css('left').split('p')[0]-tempWidth}, 200);
			}
		}
    });
	
	$.each($('.skin-opt li'),function(index, element){
		if((index + 1) % 3 == 0){
			$(this).addClass('third');	
		}
		$(this).css('background',$(this).attr('attr-color'));
	});
	
	$('.setting-skin').click(function(e) {
        $('.skin-opt').show();
    });
	
	$('.skin-opt').click(function(e) {
        if($(e.target).is('li')){
			alert($(e.target).attr('attr-color'));	
		}
    });
	
	$('.hd-top .user-info .more-info').click(function(e) {
       $(this).toggleClass('active'); 
	   $('.user-opt').toggle();
    });
	
	$('.logo-icon').click(function(e) {
         $(this).toggleClass('active'); 
	     $('.system-switch').toggle();
    });
	
	hideElement($('.user-opt'), $('.more-info'), function(current, target){

		$('.more-info').removeClass('active'); 
	});
	
	hideElement($('.skin-opt'), $('.switch-bar'));
	
	hideElement($('.system-switch'), $('.logo-icon'), function(current, target){

		$('.logo-icon').removeClass('active'); 
	});
}

//获取菜单
var initModuleId;
var initModuleName;
$("#mainMeun li").remove();
$.ajax({
	url:"/menu/0",
	dataType:"json",
	type:"GET",
	sync:"false",
	success:function(data){
		if(data.status==200){
			var menus = data.data;
			for(var i=0;i<menus.length;i++){
				if(i==0){
					initModuleId = menus[i].menuId;
					initModuleName = menus[i].menuName;
				}
				$("#mainMeun").append("<li><a href=\"javascript:void(0);\" onclick=\"chooseModule('"+menus[i].menuId+"')\">"+menus[i].menuName+"</a></li>");
			}
		}
		initPage();	
	}
})

function chooseModule(menu_id,menu_name){
	$("#mainIframe")[0].contentWindow.refreshModule(menu_id,menu_name);
}

</script>
</html>
