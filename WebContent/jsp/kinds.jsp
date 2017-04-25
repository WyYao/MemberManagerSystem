<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>员工信息</title>
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
			<a class="navbar-brand">种类资料</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="employee.jsp">员工信息</a></li>
			<li><a href="member.jsp">客户信息</a></li>
			<li><a href="goods.jsp">商品信息</a></li>
			<li><a href="grade.jsp">会员等级信息</a></li>
			<li class="active"><a href="kinds.jsp">商品种类信息</a></li>
		</ul>
	</div>
</nav> 
	<!-- 新增种类信息模态框 -->
	<div class="modal" id="kindsModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					可关闭
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					<h4 class="modal-title">新增种类信息</h4>
				</div>
				<div class="modal-body">
					<div class="input-group-lg">
						<span class="input-group-addon"> 种类名称 </span> <input type="text"
							id="kinds_name" class="form-control" placeholder="请输入等级名称">
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-defaule" data-dismiss="modal">取消</button>
					<button class="btn btn-primary" id="addKinds">确定</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 删除等级模态框  -->
	<!-- <div class="modal" id="deleteGradeModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					可关闭
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					<h4 class="modal-title">删除等级信息</h4>
				</div>
				<div class="modal-body">
					确定删除此条等级，删除后无法恢复
					<div class="modal-footer">
						<button class="btn btn-defaule" data-dismiss="modal">取消</button>
						<button class="btn btn-primary" id="deleteGrade">确定</button>
					</div>
				</div>
			</div>
		</div>
	</div> -->

	<!--修改等级模态框  -->
	<!-- <div class="modal" id="editGradeModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					可关闭
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					<h4 class="modal-title">新增等级信息</h4>
				</div>
				<div class="modal-body">

					<div class="input-group-lg">
						<span class="input-group-addon"> 等级编号 </span> <input type="text"
							id="kinds_ide" class="form-control" readonly="true">
					</div>
					<div class="input-group-lg">
						<span class="input-group-addon"> 等级名称 </span> <input type="text"
							id="kinds_namee" class="form-control">
					</div>
					<div class="input-group-lg">
						<span class="input-group-addon"> 会员折扣率 </span> <input type="text"
							id="discounte" class="form-control">
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-defaule" data-dismiss="modal">取消</button>
					<button class="btn btn-primary" id="DeitGrade">确定</button>
				</div>
			</div>
		</div>
	</div> -->

	<!-- 新增按钮 -->
	<button class="btn btn-primary" data-toggle="modal"
		data-target="#kindsModal" data-backdrop="static">点击新增</button>
	<!-- 个人信息列表 -->
	<table class="table table-striped" role="tablist">
		<thead>
			<tr>
				<th>种类编号</th>
				<th>种类名称</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody id="tbody">
			<!-- 动态显示信息 -->

		</tbody>
	</table>
	</div>
	<script type="text/javascript">
		//查询全部员工信息，并且动态生成表格
	 	function listKinds() {
			$.ajax({
				type : "post",
				url : "/MemberManagerSystem/kinds/listAll.shtml",
				success : function(result) {
					var resultHtml = "";
					$.each(result,function(index, element) {
						resultHtml += "<tr>";
						resultHtml += "<td>"+ element.kinds_id+ "</td>";
						resultHtml += "<td>"+ element.kinds_name + "</td>";
						resultHtml += ` <td>
							<div class="btn-group">
							<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
								操作 <span class="caret"></span>
							</button>	
								<ul class="dropdown-menu" role="menu">
									<li><a data-id=`+element.kinds_id+` onclick="edit(this)" style="cursor:pointer" data-target="#editKindsModal" data-toggle="modal" class="operate-account-edit">修改</a></li>
									<li><a data-id=`+element.kinds_id+` onclick="del(this)" style="cursor:pointer" data-target="#deleteKindsModal" data-toggle="modal" class="operate-account-edit">删除</a></li>
								</ul>
							</div>
							</td> `;	 	
						resultHtml += "</tr>";
					
					});
					$("table").children("tbody").html(resultHtml);
				},
				error : function(result){
					alert("error");
				}
			});
		} 

		//初始化页面
		$("document").ready(function() {
			listKinds();
		});

		//清除新增个人信息的模态框内容
		 function clear() {
			$("#kinds_name").val("");
		}
		
	    //输入框不能为空 
		function checkNull() {
			if ($("#kinds_name").val().length == 0) {
				alert("种类名称不能为空!");
				$("#kinds_name").focus();
				return false;
			} 
		}  
	    
		//获取模态框中的信息，添加到数据库
		$("#addKinds").click(function() {
			checkNull(); 
			if ($("#kinds_name").val().length != 0){
				var param = {
					kinds_name : $("#kinds_name").val(),
				};
				$.ajax({
					type : "post",
					url : "/MemberManagerSystem/kinds/addKinds.shtml",
					data : param,
					dataType : "json",
					success:function(data){
						alert("新增成功");
					    $("#kindsModal").modal("hide");
						listKinds();
						clear();
					},
					error:function(data){
						alert("新增失败，请重新操作");
						$("#kindsModal").modal("hide");
					}
				});
			 }
		}); 

		//删除等级
		/* function del(ie){
			$("#deleteGrade").click(function(){
				var param = {
					kinds_id : $(ie).attr('data-id')
				};
				$.ajax({
					type : "post",
					url : "/MemberManagerSystem/kinds/deleteGrade.shtml",
					data : param,
					dataType : "json",
					success : function(data){
						alert("删除成功")
						$("#deleteGradeModal").modal("hide");
						listGrades();
					},
					error : function(data){
						alert("删除失败，请稍后重新操作");
						$("#deleteGradeModal").modal("hide");
					}
				})
				
			});
		} */
		//修改等级信息
		/* function edit(ie){
			var param = {
				kinds_id : $(ie).attr('data-id')
			};
			$.ajax({
				type : "post",
				url : "/MemberManagerSystem/kinds/listById.shtml",
				data : param,
				dataType : "json",
				success : function(result) {
					$.each(result,function(index, element) {
						$("#kinds_ide").val(element.kinds_id),
						$("#kinds_namee").val(element.kinds_name),
						$("#discounte").val(element.discount)
					});
				}
			})
		}
		$("#DeitGrade").click(function(){
			param = {
				kinds_id : $("#kinds_ide").val(),
				kinds_name : $("#kinds_namee").val(),
				discount : $("#discounte").val()
			};
			$.ajax({
				type : "post",
				url : "/MemberManagerSystem/kinds/editGrade.shtml",
				data : param,
				dataType : "json",
				success : function(result){
					alert("修改成功");
					$("#editGradeModal").modal("hide");
					listGrades();
				},
				erreo : function(result){
					alert("修改失败");
				}
				
			});
			
		}); */
	</script>

</body>
</html>