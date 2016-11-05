<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="icon" href="image/logo1.jpg" type="image/x-icon">
<title>城科软件协会--意见反馈</title>
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
<style type="text/css">
* {
	padding: 0;
	margin: 0;
}


</style>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
  <div class="container">
  <div class="center col-sm-offset-1">
  <a href="mailto:1012234043@qq.com">给我发邮件</a>
  <h3>提交你的意见</h3>
  <hr>
  </div>
  <div class="row contact-wrap">
  <div class="status alert alert-success" style="display: none"></div>
  <form id="main-contact-form" class="contact-form" name="contact-form" method="get" action="action.php" target="iframe"  >
  <div class="col-sm-5 col-sm-offset-1">
  <div class="form-group">
  <label>姓名 *</label>
  <input type="text" name="name" class="form-control" required="required">
  </div>
  <div class="form-group">
  <label>邮箱 *</label>
  <input type="email" name="email" class="form-control" required="required">
  </div>
  <div class="form-group">
  <label>手机号</label>
  <input type="number" class="form-control">
  </div>
  <div class="form-group">
  <label>学院</label>
  <input type="text" class="form-control">
  </div>
  </div>
  <div class="col-sm-5">
  <div class="form-group">
  <label>专业班级</label>
  <input type="text" name="subject" class="form-control"  >
  </div>
  <div class="form-group">
  <label>意见 *</label>
  <textarea name="message" id="message" required="required" class="form-control" rows="8"></textarea>
  </div>
  <div class="form-group">
  <button type="submit" name="submit" id="submit" class="btn btn-primary btn-lg" required="required"  data-toggle="modal" data-target="#myModal">提交</button>
  </div>
  </div>
  </form>
  </div>
  </div>

<iframe name="iframe" id="iframe" style="display:none" src="" frameborder="0"></iframe>
  <!-- Modal -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
          <h4 class="modal-title" id="myModalLabel">提示</h4>
        </div>
        <div class="modal-body">
          提交成功，非常感谢您的反馈!
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-success" data-dismiss="modal">确定</button>
        </div>
      </div>
    </div>
  </div>
<script src="js/vendor/jquery.min.js" charset="utf-8"></script>
<script src="js/flat-ui.min.js" charset="utf-8"></script>
<script type="text/javascript">

</script>
	<jsp:include page="footer.jsp"></jsp:include>
		<script src="js/vendor/jquery.min.js" charset="utf-8"></script>
	<script src="js/flat-ui.min.js" charset="utf-8"></script>
	<script src="js/app.js" charset="utf-8"></script>
</body>
</html>