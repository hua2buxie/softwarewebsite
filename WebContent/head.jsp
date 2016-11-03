 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <div class="navbar navbar-default navbar-fixed-top header" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
        </button>
        <a class="navbar-brand" href="#"><img style="position:absolute;top: 3px;left:40px;width:80px;height:50px;" src="image/logo2.png"/></a>
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li><a href="NavServlet?action=index">首页</a></li>
    			<li><a href="NavServlet?action=newslist">活动与新闻</a></li>
    			<li><a href="#">成员风采</a></li>
    			<li><a href="NavServlet?action=softwaredownload">软件下载</a></li>
    			<li><a href="NavServlet?action=feedback">意见反馈</a></li>
    			<li><a href="#">知识库</a></li>
    			<li><a href="NavServlet?action=aboutus">关于我们</a></li>
        </ul>
      </div><!--/.nav-collapse -->
    </div>
  </div>