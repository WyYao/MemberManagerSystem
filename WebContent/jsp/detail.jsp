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
			<div class="navbar-brand" id="member"></div>
			<!--获取到会员信息 -->
		</div>
	</div>
	</nav>
	<table class="table table-striped" role="tablist">
		<thead>
			<tr>
				<th>订单编号</th>
				<th>日期</th>
				<th>总价</th>
				<th>订单详情</th>
			</tr>
		</thead>
		<tbody id="order">
		
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
				url : "/MemberManagerSystem/order/listByMemberId.shtml",
				data : param,
				success : function(result) {
					var resultHtml = " "; 
					$.each(result, function(index, element) {
						resultHtml +="<tr>";
						resultHtml += "<th>"+ element.order_id +"</th>";
						resultHtml += "<th>"+ element.date +"</th>";
						resultHtml += "<th>"+ element.total_price+"</td>";
						resultHtml += ` <td>
							<button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#detailInfo" aria-expanded="false" 
								aria-controls="detailInfos" o-id=`+element.order_id+` onclick="details(this)">详情 
							</button>
							</td> `;
						resultHtml +="</tr>";
					});
					$("#order").html(resultHtml);
				}
			});
		}
		$("document").ready(function() {
			mem();
		})
		
		//订单详情
		function details(oid){
			var params = {
				order_id : $(oid).attr('o-id')
			};
			$.ajax({
				type : "post",
				url : "/MemberManagerSystem/order/listByOrderId.shtml",
				data : params,
				dataType : "json",
				success : function(result){
					if(result!=null){
						var resultHtml = "";
						/* resultHtml +="<tr>";
						resultHtml += "<td>"+ 商品名称 +"</td>";
						resultHtml += "<td>"+ 单价 +"</td>";
						resultHtml += "<td>"+ 数量 +"</td>";
						resultHtml += "<td>"+ 金额 +"</td>";
						resultHtml +="</tr>"; */
						$.each(result,function(index,element){
							resultHtml +="<tr>";
							resultHtml += "<td>"+ element.good_name+"</td>";
							resultHtml += "<td>"+ element.detail_price +"</td>";
							resultHtml += "<td>"+ element.detail_num+"</td>";
							resultHtml += "<td>"+ element.detail_price*element.detail_num+"</td>";
							resultHtml +="</tr>";
						});
						$("tbody").html(resultHtml);
					}
					
				}
			})
		}
		
	</script>

</body>
</html>