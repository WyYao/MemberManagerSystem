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
			<li><a href="grade.jsp">会员等级信息</a></li>
			<li class="active"><a href="goods.jsp">商品信息</a></li>
			<li><a href="kinds.jsp">商品种类信息</a></li>
		</ul>
	</div>
	</nav>

	<!-- 新增按钮 -->
	<button class="btn btn-primary" data-toggle="modal"
		data-target="#goodsModal" data-backdrop="static" id="addButton">点击新增</button>
	<div class="col-lg-6">
		<div class="input-group">
			<input type="text" class="form-control" placeholder="请输入电话进行查询"
				id="memberEach" name="member_tell"> <span
				class="input-group-btn">
				<button class="btn btn-default" type="button" id="memberEachKey">查询</button>
			</span>
		</div>
	</div>

	<!-- 信息列表 -->
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

	<!--新增模态框  -->
	<div class="modal" id="goodsModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					<h4 class="modal-title">新增商品信息</h4>
				</div>
				<div class="modal-body">
					<div class="input-group-sm">
						<span class="input-group-addon"> 商品名称 </span> <input type="text"
							id="goods_name" class="form-control" placeholder="请输入商品名称">
					</div>

					<div class="input-group-sm">
						<span class="input-group-addon">选择种类</span> <select
							id="kinds_name" class="form-control">
							<!--动态生成种类下拉框  -->
							<!-- <option>男</option>
							<option selected="selected">女</option> -->
						</select>
					</div>


					<div class="input-group-sm">
						<span class="input-group-addon"> 商品数量 </span> <input type="text"
							id="num" class="form-control" placeholder="请输入商品数量">
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon"> 进价 </span> <input type="text"
							id="purch_price" class="form-control" placeholder="请输进价">
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon"> 售价 </span> <input type="text"
							id="sell_price" class="form-control" placeholder="请输入售价">
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-defaule" data-dismiss="modal">取消</button>
					<button class="btn btn-primary" id="addKinds">确定</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		//查询全部员工信息，并且动态生成表格
		function listGoods() {
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
			listGoods();
		});
		
		//查询所有种类名称
		$("#addButton").click(function(){
			$.ajax({
				type : "post",	
				url : "/MemberManagerSystem/kinds/listAll.shtml",
				success : function(result){
					var resultHtml = "";
					$.each(result,function(index,element) {
						resultHtml += "<option value="+element.kinds_id+" onclick=\"option(this)\">" + element.kinds_name + "</option>";
					});
					$("#kinds_name").html(resultHtml);
				},
				error : function(result) {
					alert("error");
				}
			});
		});
		
		function option(ie){ 
			
			$("#addKinds").click(function(){
				var param = {
					goods_name : $("#goods_name").val(),
					kinds_id : $(ie).attr('value'),
					num : $("#num").val(),
					purch_price : $("#purch_price").val(),
					sell_price : $("#sell_price").val()
				};
				$.ajax({
					type : "post",
					url : "/MemberManagerSystem/goods/addGoods.shtml",
					data : param,
					success : function(result){
						alert("新增成功");
						$("#goodsModal").modal("hide");
						listGoods();
					},
					error : function(result){
						alert("新增出错");
						$("#goodsModal").modal("hide");
						listGoods();
					}
				});
			});
						
	 	}  
		
	</script>


</body>
</html>