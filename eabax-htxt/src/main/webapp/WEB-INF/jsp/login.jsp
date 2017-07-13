<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<link rel="stylesheet" type="text/css" href="/css/style.css" />
<link rel="stylesheet" type="text/css" href="/css/skin_/login.css" />
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/jquery.select.js"></script>
<title>系统登录</title>
</head>

<body>
<div id="container">
    <div id="bd">
    	<div id="main">
    	<form id="loginForm" name="loginForm" method="post" action="">
    	<div class="login-box">
                <div id="logo"></div>
                <h1></h1>
                <div class="input username" id="username">
                    <label for="userName">用户名</label>
                    <span></span>
                    <input type="text" id="userName" name="userName"/>
                </div>
                <div class="input psw" id="psw">
                    <label for="password">密码</label>
                    <span></span>
                    <input type="password" id="password" name="password"/>
                </div>
                <div class="input validate" id="validate">
                    <label for="valiDate">验证码</label>
                    <input type="text" id="valiDate" name="valiDate"/>
                    <img class="value" id="imgObj" alt="验证码" src="/VerificationCode" onclick="changeImg()"/>
                </div>
                <div id="btn" class="loginButton">
                    <input type="button" class="button" value="登录"  />
                </div>
            </div>
    	</form>
        </div>
        <div id="ft">CopyRight&nbsp;2014&nbsp;&nbsp;版权所有&nbsp;&nbsp;Uimaker.com 仅供学习参考 &nbsp;&nbsp;苏ICP备09003079号</div>
    </div>
   
</div>
</body>
<script type="text/javascript">
	var height = $(window).height() > 445 ? $(window).height() : 445;
	$("#container").height(height);
	var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
	$('#bd').css('padding-top', bdheight);
	$(window).resize(function(e) {
        var height = $(window).height() > 445 ? $(window).height() : 445;
		$("#container").height(height);
		var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
		$('#bd').css('padding-top', bdheight);
    });
	//$('select').select();
	
	$('.loginButton').click(function(e) {
		//if(checkLogin()){
			$.post("/login", $("#loginForm").serialize(),function(data){
				if (data.status == 200) {
					location.href = "/main";
				}else {
					alert("登录失败：" + data.msg);
				}
			});
		//}
		
    });
	
	//验证登录信息
	function checkLogin(){
		if($("#userName").val()==""){
			alert("username为空");
			return false;
		}
		if($("#password").val()==""){
			alert("password为空");
			return false;
		}
		if($("#valiDate").val()==""){
			alert("valiDate为空");
			return false;
		}
		return true;
	}
	
	// 刷新图片
    function changeImg() {
        var imgSrc = $("#imgObj");
        var src = imgSrc.attr("src");
        imgSrc.attr("src", changeUrl(src));
    }
    //为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳
    function changeUrl(url) {
        var timestamp = (new Date()).valueOf();
        var index = url.indexOf("?");
        if (index > 0) {
            url = url.substring(0, url.indexOf("?"));
        }
        if ((url.indexOf("&") >= 0)) {
            url = url + "×tamp=" + timestamp;
        } else {
            url = url + "?timestamp=" + timestamp;
        }
        return url;
    }
    

</script>
</html>
