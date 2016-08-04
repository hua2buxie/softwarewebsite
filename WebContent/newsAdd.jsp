<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="${pageContext.request.contextPath}/js/ckeditor/ckeditor.js"></script>
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

#showtime {
	margin-left: 100px;
}

#showweek {
	margin-left: 50px;
}

#updatepassword {
	margin-left: 10px;
}

.line {
	width: 100%;
	margin: 0 auto;
	border: 1px green solid;
}
</style>
<script type="text/javascript">
	function checkForm() {
		var title = document.getElementById("title").value;
		var content = CKEDITOR.instances.content.getData();
		var typeId = document.getElementById("typeId").value;
		if (title == null || title == "") {
			document.getElementById("error").innerHTML = "标题不能为空！";
			return false;
		}
		if (content == null || content == "") {
			document.getElementById("error").innerHTML = "内容不能为空！";
			return false;
		}
		if (typeId == null || typeId == "") {
			document.getElementById("error").innerHTML = "请选择日志类别！";
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<jsp:include page="backgroundHead.jsp"></jsp:include>
	<div id="wrap" style="width: 50%; margin: 0 20px;">
		<div class="data_list">
			<div class="data_list_title">
				
						<img
							src="image/diary_add_icon.png" />
				发布新闻
			</div>
			<form action="News?action=add" method="post"
				onsubmit="return checkForm()">
				<div>
					<div class="diary_title">
						<input type="text" id="title" name="title" class="input-xlarge"
							style="margin-top: 5px; height: 30px;" placeholder="日志标题..." />
					</div>
					<div>
						<textarea class="ckeditor" id="content" name="content"></textarea>
					</div>

					<div>
						<input type="submit"
							class="btn btn-primary" value="发布" />
						<button class="btn btn-primary" type="button"
							onclick="javascript:history.back()">返回</button>
						<font id="error" color="red">${error }</font>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>