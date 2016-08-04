<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="image/logo1.jpg" type="image/x-icon">
<title>城科软件协会</title>
<script type="text/javascript" src="js/myfocus-2.0.1.min.js" charset="utf-8"></script>
<link href="css/mF_fancy.css" rel="stylesheet">
<script type="text/javascript" src="js/mF_fancy.js"></script>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
}
</style>
<script type="text/javascript">
		myFocus.set({id:'boxID'});
	</script>
<script type="text/javascript">
		myFocus.set({
    id:'boxID',//焦点图盒子ID
    pattern:'mF_fancy',//风格应用的名称
    time:2,//切换时间间隔(秒)
    trigger:'click',//触发切换模式:'click'(点击)/'mouseover'(悬停)
    width:1024,//设置图片区域宽度(像素)
    height:465,//设置图片区域高度(像素)
    txtHeight:'default'//文字层高度设置(像素),'default'为默认高度，0为隐藏
});
	</script>

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 <script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="head.html"></jsp:include>
	<%--<div id="navbar" class="navbar-collapse collapse">
		<form class="navbar-form navbar-right" role="form">
			<div class="form-group">
							<input type="text" placeholder="Email" class="form-control">
						</div>
						<div class="form-group">
							<input type="password" placeholder="Password" class="form-control">
						</div>
			<button type="submit" class="btn btn-success">管理员登录</button>
		</form>

	</div>---%>


	<!--  </nav>这个有着神奇的力量哦，哈哈哈-->
	<div id="wrap" style="width: 1024px; margin: 0 auto;min-height:500px;">
		<div id="boxID">
			<div class="loading">
				<img src="image/loading.gif" alt="" />
			</div>
			<div class="pic">
				<ul>
					<li><a href="#"><img src="image/naxin.jpg" thumb=""
							text="纳新" /></a></li>
					<li><a href="#"><img src="image/guzhangbaoxiu.jpg"
							thumb="" text="故障报修" /></a></li>
				</ul>
			</div>
		</div>
		后面内容
	</div>
	<jsp:include page="footer.html"></jsp:include>
</body>
</html>