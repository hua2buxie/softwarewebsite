<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="image/logo1.jpg" type="image/x-icon">
<title>城科软件协会后台管理系统</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet" href="style/diary.css">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

#keyword {
	font-size: 3em;
	font-family: "黑体";
	color: orange;
	float: left;
	margin-top: 30px;
}

#admin {
	display: inline-block;
	margin-left: 100px;
	margin-top: 40px;
}
#showtime{margin-left: 100px;}
#showweek{margin-left: 50px;}
#updatepassword{margin-left:10px;}
.line{width:100%;margin:0 auto;border:1px green solid;}
</style>
<script type="text/javascript">
	$(function() {
		startTime();
	})
	function checkTime(i) {
		if (i < 10) {
			i = "0" + i
		}
		return i
	}
	function startTime() {
		var today = new Date()
		var year=today.getFullYear();
		var month=today.getMonth();
		var day=today.getDate();
		var h = today.getHours()
		var m = today.getMinutes()
		var s = today.getSeconds()
		var week=today.getDay();
		switch(week)
		{
		case 0:
			week="星期天";break;
		case 1:
			week="星期一";break;
		case 2:
			week="星期二";break;
		case 3:
			week="星期三";break;
		case 4:
			week="星期四";break;
		case 5:
			week="星期五";break;
		case 6:
			week="星期六";break;
		}
		// add a zero in front of numbers<10
		m = checkTime(m)
		s = checkTime(s)
		$("#time").text((year+"-"+(Number(month)+Number(1))+ "-"+day+" "+h + ":" + m + ":" + s))
		$("#showweek").text(week)
		t = setTimeout('startTime()', 500)
	}
</script>
</head>
<body>
	<div id="head">
		<img src="image/logo1.jpg"
			style="float: left; vertical-align: middle;">
		<p id="keyword">后台管理系统</p>
		<span id="admin">欢迎管理员:<font color="red" size="6px">${currentUser.stuId}</font>&nbsp;&nbsp;&nbsp;<a
			class="btn btn-primary"
			href="http://localhost:8080/softwarewebsite/Login">安全退出</a></span>
			<button id="updatepassword" type="button" class="btn btn-primary">密码修改</button>
			<button id="showtime" type="button" class="btn btn-primary">当前时间:<span id="time"
			></span></button>
			<button id="showweek" type="button" class="btn btn-primary"></button>
	</div>
	<br/><br/>
	<div class="line"></div>
</body>
</html>