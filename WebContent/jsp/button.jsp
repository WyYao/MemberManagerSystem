<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="btn-group">
		<button type="button" class="btn btn-primary dropdown-toggle"
			data-toggle="dropdown">
			操作<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="#">修改</a></li>
			<li><a href="#">删除</a></li>
		</ul>
	</div>

	<td>
		<div class="btn-group">
			<button id=element.grade_id type="button"
				class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
				操作 <span class="caret"></span>
				<ul class="dropdown-menu" role="menu">
					<li><a href="#">修改</a></li>
					<li><a href="#">删除</a></li>
				</ul>
		</div>
	</td>
</body>
</html>