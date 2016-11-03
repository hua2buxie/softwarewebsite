<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" href="image/logo1.jpg" type="image/x-icon">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript">
	function checkForm()
	{
		
		var userName=document.getElementById("stuId").value;
		var password=document.getElementById("password").value;
		if(userName==null||userName=="")
		{
			
			document.getElementById("error").innerHTML="账号不能为空!";
		return false;
		}
		if(password==null||password=="")
		{
			document.getElementById("error").innerHTML="密码不能为空!";
		return false;
		}
		return true;
	}
</script>
<title>软协后台登录系统</title>
<link rel="stylesheet" href="style/diary.css">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<style type="text/css">
body {
	padding-top: 200px;
	padding-bottom: 40px;
	background-image: url('image/bg.jpg');
}

.form-signin-heading {
	text-align: center;
}

.form-signin {
	max-width: 300px;
	padding: 19px 29px 0px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading, .form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin input[type="text"], .form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}
</style>

</head>
<body>
	<div class="container">
		<form name="myForm" class="form-signin" action="Login" method="post" onsubmit="return checkForm()">
			<h2 class="form-signin-heading">Login</h2>
			<input id="stuId" value="${stuId}" name="stuId" type="text"
				class="input-block-level" placeholder="管理员账号" > <input id="password" value="${password }"
				name="password" type="password" class="input-block-level" placeholder="管理员密码">
				<br/>
				<font id="error" color="red">${error }</font>  
				<br/><br/>
			<button class="btn btn-large btn-primary" type="submit">登录</button>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="btn btn-large btn-primary" type="reset">重置</button>
			&nbsp;&nbsp;&nbsp;&nbsp;	
			<button class="btn btn-large btn-primary" type="button" onclick="javascript:history.go(-1)">返回</button>
			 
		<p align="center" style="padding-top: 15px;">
			版权所有 2016 By <a href="# target="_blank">levi</a>
		</p>
		</form>
	</div>
</html>