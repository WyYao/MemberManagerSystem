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
			<a class="navbar-brand">员工资料</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="employee.jsp">员工信息</a></li>
			<li><a href="member.jsp">会员信息</a></li>
			<li><a href="grade.jsp">会员等级信息</a></li>
			<li><a href="goods.jsp">商品信息</a></li>
			<li><a href="kinds.jsp">商品种类信息</a></li>
		</ul>
	</div>
</nav> 

	<!-- 新增员工信息模态框 -->
	<div class="modal" id="employeeModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<!-- 可关闭 -->
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					<h4 class="modal-title">新增员工信息</h4>
				</div>
				<div class="modal-body">
				
					<div class="input-group-sm">
						<span class="input-group-addon"> 用户名 </span> <input type="text"
							id="emp_id" class="form-control" placeholder="请输入用户名">
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon"> 密码 </span> <input type="text"
							id="emp_pw" class="form-control" placeholder="请输入密码">
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon"> 姓 名</span> <input type="text"
							id="emp_name" class="form-control" placeholder="请输入姓名">
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon">选择性别</span> <select id="emp_sex"
							class="form-control">
							<option>男</option>
							<option selected="selected">女</option>
						</select>
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon">电话</span> <input type="text"
							id="emp_tell" class="form-control" placeholder="请输入电话">
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon">地址</span> <input type="text"
							id="emp_add" class="form-control" placeholder="请输入地址">
					</div>
					
				</div>
				<div class="modal-footer">
					<button class="btn btn-defaule" data-dismiss="modal">取消</button>
					<button class="btn btn-primary" id="addEmployee">确定</button>
				</div>
			</div>
		</div>
	</div>

		<!-- 新增和查询按钮 -->
		<button class="btn btn-primary" data-toggle="modal"
			data-target="#employeeModal" data-backdrop="static">点击新增</button>
		<div class="col-lg-6">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="请输入姓名进行查询"
					id="employeeEach" name="emp_name"> <span
					class="input-group-btn">
					<button class="btn btn-default" type="button" id="employeeEachKey">查询</button>
				</span>
			</div>
		</div>
		<!-- 个人信息列表 -->
		<table class="table table-striped" role="tablist">
			<thead>
				<tr>
					<th>用户名</th>
					<th>密码</th>
					<th>姓名</th>
					<th>性别</th>
					<th>电话</th>
					<th>地址</th>
					<!-- <th>操作</th> -->
				</tr>
			</thead>
			<tbody id="tbody">
				<!-- 动态显示信息 -->
			</tbody>
		</table>
	</div>
	<script type="text/javascript">
		//查询全部员工信息，并且动态生成表格
	 	function listEmployees() {
			$.ajax({
				type : "post",
				url : "/MemberManagerSystem/employee/list.shtml",
				success : function(result) {
					var resultHtml = "";
					$.each(result,function(index, element) {
						resultHtml += "<tr>";
						resultHtml += "<td>"+ element.emp_id+ "</td>";
						resultHtml += "<td>"+ element.emp_pw + "</td>";
						resultHtml += "<td>"+ element.emp_name+ "</td>";
						resultHtml += "<td>"+ element.emp_sex+ "</td>";
						resultHtml += "<td>"+ element.emp_tell+ "</td>";
						resultHtml += "<td>"+ element.emp_add + "</td>";
						/* resultHtml += "<td><button id="+element.eid+" class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#reservation\" data-backdrop=\"static\">修改</button></td>"; */
						resultHtml += "</tr>";
					});
					$("table").children("tbody").html(resultHtml);
				}
			});
		} 

		//初始化页面
		$("document").ready(function() {
			listEmployees();
		});

		//清除新增个人信息的模态框内容
		function clear() {
			$("#emp_id").val("");
			$("#emp_pw").val("");
			$("#emp_name").val("");
			$("#emp_sex").val("");
			$("#emp_tell").val("");
			$("#emp_add").val("");
		}
		
		//输入框不能为空 
		function checkNull() {
			if ($("#emp_id").val().length == 0) {
				alert("姓名不能为空!");
				$("#emp_id").focus();
				return false;
			} else if ($("#emp_pw").val().length == 0) {
				alert("密码不能为空!");
				$("#emp_pw").focus();
				return false;
			} else if ($("#emp_name").val().length == 0) {
				alert("姓名不能为空!");
				$("#emp_name").focus();
				return false;
			} else if ($("#emp_sex").val().length == 0) {
				alert("性别不能为空!");
				$("#emp_sex").focus();
				return false;
			} else if ($("#emp_tell").val().length == 0) {
				alert("电话不能为空!");
				$("#emp_tell").focus();
				return false;
			} else if ($("#emp_add").val().length == 0) {
				alert("地址不能为空!");
				$("#emp_add").focus();
				return false;
			}
		}
		
		//获取模态框中的信息，添加到数据库
		$("#addEmployee").click(function() {
			checkNull();
			if ($("#emp_id").val().length != 0
					&& $("#emp_pw").val().length != 0
					&& $("#emp_name").val().length != 0
					&& $("#emp_sex").val().length != 0
					&& $("#emp_tell").val().length != 0
					&& $("#emp_add").val().length != 0) { 
				var param = {
					emp_id : $("#emp_id").val(),
					emp_pw : $("#emp_pw").val(),
					emp_name : $("#emp_name").val(),
					emp_sex : $("#emp_sex").find("option:selected").text(),
					emp_tell : $("#emp_tell").val(),
					emp_add : $("#emp_add").val()
					
				};
				
				$.ajax({
					type : "post",
					url : "/MemberManagerSystem/employee/addEmployee.shtml",
					data : param,
					dataType : "json",
					success:function(data){
						alert("新增成功");
					    $("#employeeModal").modal("hide");
						listEmployees();
						clear();
					},
					error:function(data){
						alert("新增失败，请重新操作");
					}
				});
			 }
		});
	
		//根据员工姓名进行查询 
		$("#employeeEachKey").click(function() {
			var param = {
				emp_name : $("#employeeEach").val()
			};
			$.ajax({
				type : "post",
				url : "/MemberManagerSystem/employee/listByName.shtml",
				data : param,
				dataType : "json",
				success : function(result) {
					if (result != null) {
						$("#tbody").html("");
						var resultHtml = "";
						$.each(result,function(index,element) {
							resultHtml += "<tr>";
							resultHtml += "<td>"+ element.emp_id+ "</td>";
							resultHtml += "<td>"+ element.emp_pw+ "</td>";
							resultHtml += "<td>"+ element.emp_name+ "</td>";
							resultHtml += "<td>"+ element.emp_sex+ "</td>";
							resultHtml += "<td>"+ element.emp_tell+ "</td>";
							resultHtml += "<td>"+ element.emp_add+ "</td>";
							resultHtml += "</tr>";
						});
						$("table").children("tbody").html(resultHtml);
					} else {
						alert("查无此员工");
					}
				},
				error : function(result){
					alert("查找出现错误"+result);
				}
			});
		});
	</script>

</body>
</html>