
<link rel="icon" href="image/logo1.jpg" type="image/x-icon">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/flat-ui.min.css">
  <link rel="stylesheet" href="css/app.css">
  <!--[if lt IE 9]>
    <script src="js/vendor/html5shiv.js"></script>
    <script src="js/vendor/respond.min.js"></script>
  <![endif]-->
  <title>关于我们</title>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>

<div class="container">
		<article class=" col-md-8 col-md-offset-2" >
		
	<div >
		<img
			src="${pageContext.request.contextPath}/image/diary_show_icon.png" />
		新闻信息
	</div>
	<div> 
	<h4 class="title">${news.title }</h4>
		<h6 class="tab">
			发布时间:『
			<fmt:formatDate value="${news.releaseDate }" type="date"
				pattern="yyyy-MM-dd HH:mm:ss" />
			』
		</h6>
		<div class="diary_content">${news.content}</div>


		</div>
	</article>
</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/vendor/jquery.min.js" charset="utf-8"></script>
	<script src="js/flat-ui.min.js" charset="utf-8"></script>
	<script src="js/app.js" charset="utf-8"></script>
</body>
</html>