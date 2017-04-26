<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>会员购物详情</title>
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
			<a class="navbar-brand">会员购物详情</a>
			<div class="navbar-brand" id="member">
			</div>
			<!--获取到会员信息 -->
		</div>
	</div>
	</nav>
	<table class="table table-striped" role="tablist">
		<thead>
			<tr>
				<th>订单编号</th>
				<th>日期</th>
				<th>商品名称</th>
				<th>数量</th>
				<th>售价</th>
				<th>总价</th>
			</tr>
		</thead>
		<tbody id="tbody">
			<!-- 动态显示信息 -->
		</tbody>
	</table>


	<script type="text/javascript">
		//获取URL传来的参数
		var url = window.location.search;
		var id = url.split("=", 2)[1];

		function mem() {
			var param = {
				member_id : id,
			};
			$.ajax({
				type : "post",
				url : "/MemberManagerSystem/member/listById.shtml",
				data : param,
				success : function(result) {
					var resultHtml = "  "; 
					$.each(result, function(index, element) {
						resultHtml += "<td>&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp </td>"
						resultHtml += "<td>会员：" + element.member_name + "</td>";
						resultHtml += "<td>&nbsp &nbsp &nbsp &nbsp</td>"
						resultHtml += "  <td>电话：" + element.member_tell + "</td>";
					});
					$("#member").html(resultHtml); 
				}
			});
			
			$.ajax({
				type : "post",
				url : "/MemberManagerSystem/detail/listById.shtml",
				data : param,
				success : function(result) {
					var resultHtml = " "; 
					$.each(result, function(index, element) {
						resultHtml +="<tr>"
						resultHtml += "<th>"+ element.id +"</th>"
						resultHtml += "<th>"+ element.date +"</td>"
						resultHtml += "<th>"+ element.goods_name +"</th>";
						/* resultHtml += "<th>"+ element.kinds_name +"</td>" */
						resultHtml += "<th>"+ element.detail_num +"</th>";
						resultHtml += "<th>"+ element.sell_price +"</td>"
						resultHtml += "<th>"+ (element.sell_price * element.detail_num) +"</td>"
						resultHtml +="</tr>"
					});
					$("tbody").html(resultHtml); 
				}
			});
		}

		$("document").ready(function() {
			mem();
		})
		
		
	</script>

</body>
</html>