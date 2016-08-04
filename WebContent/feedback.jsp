<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="image/logo1.jpg" type="image/x-icon">
<title>城科软件协会--意见反馈</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script><!-- 不知道怎么，这个竟然不能删除。。。前面明明引入了文件了，这里还得引入才正常，不然对话框闪退。。 -->
<script type="text/javascript">

</script>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
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
</style>
</head>
<body>
	<jsp:include page="head.html"></jsp:include>
	<div id="wrap"
		style="width: 1024px; min-height: 525px; margin: 0 auto;">
		<img src="image/feedback.jpg" style="margin-left: 20%;"><br />
		<br />
		<table width="530" height="50px" cellspacing="0" border="1"
			bordercolor="#000000" style="margin-left: 20%;">
			<tr style="background: gray;">
				<td>意见反馈</td>

			</tr>
			<form onsubmit="return checkForm()">
				<tr height=200px width="200px">

					<td><br /> &nbsp;&nbsp;QQ号:<input
						style="width: 200px; height: 30px;"text"><br /> <br />
						手机号:<input style="width: 200px; height: 30px;"text"><br />
						<br /> <textarea rows="5" cols="75" placeholder="请输入您的建议与意见"></textarea><br />&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" data-toggle="modal" data-target="#myModal" 
							class="btn btn-primary" >提交</button>&nbsp;&nbsp;
						<button type="reset" class="btn btn-success">重置</button></td>
						<button type="submit" style="display:none;" id="hiddenSubmit">隐藏域按钮</button>
				</tr>

			</form>
		</table>

	</div>
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">反馈成功</h4>
				</div>
				<div class="modal-body">感谢您的反馈与建议!<br/>有了您的这些建议与意见，我相信软件协会会越来越好!</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.html"></jsp:include>
</body>
</html>