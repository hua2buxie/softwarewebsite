<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
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
  <title>城科软件协会-活动与新闻</title>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div class="container-full content-main">
    <div class="row">
      <div class="col-md-8 col-md-offset-2 articles" >
        <h3>活动与新闻</h3>
      <hr>
      <c:forEach var="news" items="${newsList}">
        <article >
          <h5><a href= "News?newsid=${news.id}">${news.title}</a> 
            <span>发布时间:<fmt:formatDate value="${news.releaseDate}" type="date"
								pattern="yyyy-MM--dd" />&nbsp;&nbsp;&nbsp;&nbsp;<a href="News?newsid=${news.id}">阅读全文 >>></a></span>
          </h5>
        </article>
        
		</c:forEach>
      </div>
    </div>
	 </div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/vendor/jquery.min.js" charset="utf-8"></script>
	<script src="js/flat-ui.min.js" charset="utf-8"></script>
	<script src="js/app.js" charset="utf-8"></script>
</body>
</html>