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
  <title>软件协会</title>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="carousel-example-generic" class="carousel slide col-md-offset-2 col-md-8" data-ride="carousel" style="margin-top:20px;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
     
        <img src="image/naxin.png"  width=100% alt="第一">
        <div class="carousel-caption">
        
        </div>
      </div>
      <div class="item">
        <img src="image/guzhangbaoxiu.jpg" width=100% alt="第二">
        <div class="carousel-caption">
        
        </div>
      </div>
     
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button"  style="margin-left: 15px"  data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">上一张</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button"  style="margin-right: 15px" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">下一张</span>
    </a>
  </div>

  <div class="container-full content-main">
    <div class="row">
      <div class="col-md-8 col-md-offset-2 articles" >
        <h3>热点新闻</h3>
      <hr>
         <c:forEach var="news" items="${hotNewsList}">
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
