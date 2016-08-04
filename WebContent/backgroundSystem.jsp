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
	<jsp:include page="backgroundHead.jsp"></jsp:include>
	<div id="wrap" style="width:50%;margin:0 20px;">
		<div class="data_list">
			<div class="data_list_title">
				<img src="image/list_icon.png" /> 新闻列表<a  type="button" class="btn btn-primary" style="margin-left:50px;" href="newsAdd.jsp">发布新闻</a>
			</div>
			<div class="diary_datas">
				<ul>
					<c:forEach var="news" items="${newsList}">
						<li>『<fmt:formatDate value="${news.releaseDate}" type="date"
								pattern="yyyy-MM--dd" />』<span>&nbsp;<a
								href="News?newsid=${news.id}">${news.title}</a></span>
								<a  class="btn btn-primary" href="News?action=delete&newsId=${news.id}">删除</a>
						</li>

					</c:forEach>
				</ul>
			</div>

		</div>
	</div>
	
</body>
</html>