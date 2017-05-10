<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录界面</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/homePage.css" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
	<form action="" method="">
		<div class="mycenter">
			<div class="mysign">
				<div class="col-lg-11 text-center text-info">
					<h2>请登录</h2>
				</div>
				<div class="col-lg-10">
					<input type="text" class="form-control" name="employeename"
						placeholder="请输入用户名" required autofocus />
				</div>
				<div class="col-lg-10"></div>
				<div class="col-lg-10">
					<input type="password" class="form-control" name="employeepw"
						placeholder="请输入密码" required autofocus />
				</div>
				<div class="col-lg-10"></div>
				<div class="col-lg-10 mycheckbox checkbox">
					<input type="checkbox" class="col-lg-1">记住密码</input>
				</div>
				<div class="col-lg-10"></div>
				<div class="col-lg-10">
					<button type="button" class="btn btn-success col-lg-12">登录</button>
				</div>
			</div>
		</div>
	</form>


</body>
</html>