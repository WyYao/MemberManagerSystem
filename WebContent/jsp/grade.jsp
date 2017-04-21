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
	<!-- 	<nav class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand">员工资料</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="employee.jsp">员工信息</a></li>
			<li><a href="member.jsp">客户信息</a></li>
			<li><a href="goods.jsp">商品信息</a></li>
		</ul>
	</div>
	</nav> -->

	<!-- 新增等级信息模态框 -->
	<div class="modal" id="gradeModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<!-- 可关闭 -->
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					<h4 class="modal-title">新增等级信息</h4>
				</div>
				<div class="modal-body">

					<div class="input-group-lg">
						<span class="input-group-addon"> 等级编号 </span> <input type="text"
							id="grade_id" class="form-control" placeholder="请输入等级编号">
					</div>
					<div class="input-group-lg">
						<span class="input-group-addon"> 等级名称 </span> <input type="text"
							id="grade_name" class="form-control" placeholder="请输入等级名称">
					</div>
					<div class="input-group-lg">
						<span class="input-group-addon"> 会员折扣率 </span> <input type="text"
							id="discount" class="form-control" placeholder="请输入折扣率">
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-defaule" data-dismiss="modal">取消</button>
					<button class="btn btn-primary" id="addGrade">确定</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 删除等级模态框  -->
	<div class="modal" id="deleteGradeModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<!-- 可关闭 -->
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
	</div>
	<!-- 新增按钮 -->
	<button class="btn btn-primary" data-toggle="modal"
		data-target="#gradeModal" data-backdrop="static">点击新增</button>
	<!-- 个人信息列表 -->
	<table class="table table-striped" role="tablist">
		<thead>
			<tr>
				<th>等级编号</th>
				<th>等级名称</th>
				<th>会员折扣率</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody id="tbody">
			<!-- 动态显示信息 -->

		</tbody>
	</table>
	
	<script type="text/javascript">
		//查询全部员工信息，并且动态生成表格
	 	function listGrades() {
			$.ajax({
				type : "post",
				url : "/MemberManagerSystem/grade/list.shtml",
				success : function(result) {
					var resultHtml = "";
					$.each(result,function(index, element) {
						resultHtml += "<tr>";
						resultHtml += "<td>"+ element.grade_id+ "</td>";
						resultHtml += "<td>"+ element.grade_name + "</td>";
						resultHtml += "<td>"+ element.discount+ "</td>";
						/* resultHtml += "<td><button id="+element.grade_id+" class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#reservation\" data-backdrop=\"static\">操作</button></td>"; */  
						/* resultHtml += "<td><div class=\"btn-group\">"+
							"<button id="+element.grade_id+" type=\"button\"class=\"btn btn-primary dropdown-toggle\""+
							"data-toggle=\"dropdown\">操作   <span class=\"caret\"></span></button>"+
								"<ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"dLabel\">"+
									"<li><a href=\"#\">修改</a></li>"+
									"<li><a href=\"#\">删除</a></li>"+
								"</ul>"+
							"</div></td>"; */ 
						resultHtml += ` <td>
							<div class="btn-group">
							<button type="button" class="btn btn-primary dropdown-toggle" 
								data-toggle="dropdown">
								操作 <span class="caret"></span>
							</button>	
								<ul class="dropdown-menu" role="menu">
									<input type="text" id="delete" class="hidden" value=`+element.grade_id+`>
									<li><a id="del">修改</a></li>
									<li><a data-id=`+element.grade_id+` onclick="del(this)" style="cursor:pointer" data-target="#deleteGradeModal" data-toggle="modal" class="operate-account-edit">删除</a></li>
								</ul>
							</div>
							</td> `;	 	
						resultHtml += "</tr>";
						/* <a onclick=\"clickDetail(this)\" style=\"cursor: pointer;\"
						data-target=\"#add_accountModal\" data-toggle=\"modal\" class=\"operate-account-edit\" */
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
			listGrades();
		});

		//清除新增个人信息的模态框内容
		function clear() {
			$("#grade_id").val("");
			$("#grade_name").val("");
			$("#discount").val("");
		}
		
	    //输入框不能为空 
		function checkNull() {
			if ($("#grade_id").val().length == 0) {
				alert("等级编号不能为空!");
				$("#grade_id").focus();
				return false;
			} else if ($("#grade_name").val().length == 0) {
				alert("等级名称不能为空!");
				$("#grade_name").focus();
				return false;
			} else if ($("#discount").val().length == 0) {
				alert("折扣率不能为空!");
				$("#discount").focus();
				return false;
			}
		} 
	    
		//获取模态框中的信息，添加到数据库
		$("#addGrade").click(function() {
			checkNull(); 
			if ($("#grade_id").val().length != 0
					&& $("#grade_name").val().length != 0
					&& $("#discount").val().length != 0){
				var param = {
					grade_id : $("#grade_id").val(),
					grade_name : $("#grade_name").val(),
					discount : $("#discount").val()
				};
				$.ajax({
					type : "post",
					url : "/MemberManagerSystem/grade/addGrade.shtml",
					data : param,
					dataType : "json",
					success:function(data){
						alert("新增成功");
					    $("#gradeModal").modal("hide");
						listGrades();
						clear();
					},
					error:function(data){
						alert("新增失败，请重新操作");
						$("#gradeModal").modal("hide");
					}
				});
			 }
		});

		//删除等级
		function del(ie){
			var ie = $(ie).attr('data-id');
			$("#deleteGrade").click(function(){
				var param = {
					grade_id : ie
				};
				alert(ie);
				$.ajax({
					type : "post",
					url : "/MemberManagerSystem/grade/deleteGrade.shtml",
					data : param,
					dataType : "json",
					success : function(data){
						alert("删除成功");
						ie = "";
						$("#deleteGradeModal").modal("hide");
						listGrades();
					},
					error : function(data){
						alert("删除失败，请稍后重新操作");
						$("#deleteGradeModal").modal("hide");
					}
				})
				
			});
		}
	</script>

</body>
</html>