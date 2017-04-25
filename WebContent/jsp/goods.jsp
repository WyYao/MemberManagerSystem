<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 导航 -->
	<nav class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand">会员资料</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="employee.jsp">员工信息</a></li>
			<li><a href="member.jsp">会员信息</a></li>
			<li class="active"><a href="goods.jsp">商品信息</a></li>
			<li><a href="grade.jsp">会员等级信息</a></li>
			<li><a href="kinds.jsp">商品种类信息</a></li>
		</ul>
	</div>
	</nav>

	<!-- 新增按钮 -->
	<button class="btn btn-primary" data-toggle="modal"
		data-target="#memberModal" data-backdrop="static">点击新增</button>
	<div class="col-lg-6">
		<div class="input-group">
			<input type="text" class="form-control" placeholder="请输入电话进行查询"
				id="memberEach" name="member_tell"> <span
				class="input-group-btn">
				<button class="btn btn-default" type="button" id="memberEachKey">查询</button>
			</span>
		</div>
	</div>

	<!-- 个人信息列表 -->
	<table class="table table-striped" role="tablist">
		<thead>
			<tr>
				<th>商品名称</th>
				<th>商品种类</th>
				<th>数量</th>
				<th>进价</th>
				<th>售价</th>
			</tr>
		</thead>
		<tbody id="tbody">
			<!-- 动态显示信息 -->
		</tbody>
	</table>
	<script type="text/javascript">
		//查询全部员工信息，并且动态生成表格
		function listgoods() {
			$.ajax({
				type : "post",
				url : "/MemberManagerSystem/goods/listAll.shtml",
				success : function(result) {
					var resultHtml = "";
					$.each(result, function(index, element) {
						resultHtml += "<tr>";
						resultHtml += "<td>" + element.goods_name + "</td>";
						resultHtml += "<td>" + element.kinds_name + "</td>";
						resultHtml += "<td>" + element.num + "</td>";
						resultHtml += "<td>" + element.purch_price + "</td>";
						resultHtml += "<td>" + element.sell_price + "</td>";
						resultHtml += "</tr>";
					});
					$("table").children("tbody").html(resultHtml);
				},
				error : function(result) {
					alert("error");
				}

			});
		}

		//初始化页面
		$("document").ready(function() {
			listgoods();
		});
	</script>


</body>
</html>