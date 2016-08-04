<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="image/logo1.jpg" type="image/x-icon">
<title>城科软件协会--活动与新闻</title>
<link rel="stylesheet" href="style/diary.css">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<!-- 不知道怎么，这个竟然不能删除。。。前面明明引入了文件了，这里还得引入才正常，不然对话框闪退。。 -->
<script type="text/javascript">
	
</script>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

ul li {
	list-style-type: none;
}

#keyword {
	font-family: "Times New Roman";
	font-size: 3em;
	margin-left: 30%;
}

#word_cdckrjxh {
	font-family: "微软雅黑";
	font-size: 1.5em;
	margin-left: 70%;
}

.word_head {
	color: blue;
	font-family: "Arial Black";
	font-size: 2em;
}

.word_main {
	color: gray;
	font-family: "黑体";
	font-size: 1.5em;
	text-indent: 2em;
}

.line {
	width: 800px;
	margin: 0 auto;
	border: 1px green solid;
}

.word_main li {
	list-style-type: none;
}

#wrap {
	min-height: 500px;
}
</style>
</head>
<body>
	<jsp:include page="head.html"></jsp:include>

	<div id="wrap"
		style="width: 1024px; margin: 0 auto; min-height: 500px;">
		<div class="data_list">
			<div class="data_list_title">
				<img src="image/list_icon.png" /> 新闻列表
			</div>
			<div class="diary_datas">
				<ul>
					<c:forEach var="news" items="${newsList}">
						<li>『<fmt:formatDate value="${news.releaseDate}" type="date"
								pattern="yyyy-MM--dd" />』<span>&nbsp;<a
								href="News?newsid=${news.id}">${news.title}</a></span></li>

					</c:forEach>
				</ul>
			</div>

		</div>
	</div>
	<jsp:include page="footer.html"></jsp:include>
</body>
</html>