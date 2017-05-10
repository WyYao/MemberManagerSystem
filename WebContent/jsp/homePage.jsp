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
			<a class="navbar-brand">首页</a>
		</div>
	</div>
	</nav>
	<!-- 新增会员信息模态框 -->
	<div class="modal" id="memberModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">	
					<!-- 可关闭 -->
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					<h4 class="modal-title">新增会员信息</h4>
				</div>
				<div class="modal-body">

					<div class="input-group-sm">
						<span class="input-group-addon"> 会员名称 </span> <input type="text"
							id="member_name" class="form-control" placeholder="请输入会员名称">
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon">选择性别</span> <select
							id="member_sex" class="form-control">
							<option>男</option>
							<option selected="selected">女</option>
						</select>
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon"> 会员电话 </span> <input type="text"
							id="member_tell" class="form-control" placeholder="请输入会员电话">
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon"> 会员地址</span> <input type="text"
							id="member_add" class="form-control" placeholder="请输入会员地址">
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon"> 会员等级 </span> <input type="text"
							class="form-control" placeholder="" value="铜牌会员" readonly="true">
						<input type="text" value="1" id="member_id" class="hidden" />
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon"> 会员积分 </span> <input type="text"
							id="integral" class="form-control" value="0" readonly="true">
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-defaule" data-dismiss="modal">取消</button>
					<button class="btn btn-primary" id="addMember">确定</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 删除等级模态框  -->
	<div class="modal" id="deleteMemberModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<!-- 可关闭 -->
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					<h4 class="modal-title">删除会员信息</h4>
				</div>
				<div class="modal-body">
					确定删除此条等级，删除后无法恢复
					<div class="modal-footer">
						<button class="btn btn-defaule" data-dismiss="modal">取消</button>
						<button class="btn btn-primary" id="deleteMember">确定</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--修改会员信息模态框  -->
	<div class="modal" id="editMemberModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<!-- 可关闭 -->
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					<h4 class="modal-title">新增会员信息</h4>
				</div>
				<div class="modal-body">

					<div class="input-group-sm">
						<span class="input-group-addon"> 会员名称 </span> <input type="text"
							id="member_namee" class="form-control"> <input
							type="text" value="1" id="member_ide" class="hidden" />
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon">选择性别</span> <select
							id="member_sexe" class="form-control">
							<option>男</option>
							<option selected="selected">女</option>
						</select>
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon"> 会员电话 </span> <input type="text"
							id="member_telle" class="form-control">
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon"> 会员地址</span> <input type="text"
							id="member_adde" class="form-control">
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon"> 会员等级 </span> <input type="text"
							id="grade_namee" class="form-control" readonly="true"> <input
							type="text" id="grade_ide" class="hidden">
					</div>
					<div class="input-group-sm">
						<span class="input-group-addon"> 会员积分 </span> <input type="text"
							id="integrale" class="form-control" readonly="true">
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-defaule" data-dismiss="modal">取消</button>
					<button class="btn btn-primary" id="DeitMember">确定</button>
				</div>
			</div>
		</div>
	</div>

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
				<th>会员名称</th>
				<th>会员性别</th>
				<th>会员电话</th>
				<th>会员地址</th>
				<th>会员等级</th>
				<th>会员积分</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody id="tbody">
			<!-- 动态显示信息 -->

		</tbody>
	</table>
	</div>
	<script type="text/javascript">
		//初始化页面
		$("document").ready(function() {
			
		});

		//清除新增个人信息的模态框内容
		function clear() {
			$("#member_name").val("");
			$("#member_tell").val("");
			$("#member_add").val("");
		}
		
	    //输入框不能为空 
		function checkNull() {
			if ($("#member_name").val().length == 0) {
				alert("会员姓名不能为空!");
				$("#member_name").focus();
				return false;
			} else if ($("#member_sex").val().length == 0) {
				alert("客户性别不能为空!");
				$("#member_sex").focus();
				return false;
			} else if ($("#member_tell").val().length == 0) {
				alert("会员电话不能为空!");
				$("#member_tell").focus();
				return false;
			} else if ($("#member_add").val().length == 0) {
				alert("会员地址不能为空!");
				$("#member_add").focus();
				return false;
			}
			
		} 
	    
		//获取模态框中的信息，添加到数据库
		$("#addMember").click(function() {
			checkNull(); 
			if ($("#member_name").val().length != 0
					&& $("#member_sex").val().length != 0
					&& $("#member_tell").val().length != 0
					&& $("#member_add").val().length != 0){
				var param = {
					member_name : $("#member_name").val(),
					member_sex : $("#member_sex").val(),
					member_tell : $("#member_tell").val(),
					member_add : $("#member_add").val()
				};
				$.ajax({
					type : "post",
					url : "/MemberManagerSystem/member/addMember.shtml",
					data : param,
					dataType : "json",
					success:function(data){
						alert("新增成功");
					    $("#memberModal").modal("hide");
						listMembers();
						clear();
					},
					error:function(data){
						alert("新增失败，请重新操作");
						$("#memberModal").modal("hide");
					}
				});
			 }
		});

		//根据电话查询会员
		$("#memberEachKey").click(function(){
			var param = {
				member_tell : $("#memberEach").val()
			};
			$.ajax({
				type : "post",
				url : "/MemberManagerSystem/member/listByTell.shtml",
				data : param,
				dataType : "json",
				success:function(result){
					if (result != null) {
						$("#tbody").html("");
						var resultHtml = "";
						$.each(result,function(index,element) {
							resultHtml += "<tr>";
							resultHtml += "<td>"+ element.member_name+ "</td>";
							resultHtml += "<td>"+ element.member_sex + "</td>";
							resultHtml += "<td>"+ element.member_tell+ "</td>";
							resultHtml += "<td>"+ element.member_add + "</td>";
							resultHtml += "<td>"+ element.grade_name + "</td>";
							resultHtml += "<td>"+ element.integral+ "</td>";
							
							resultHtml += ` <td>
								<div class="btn-group">
								<button type="button" class="btn btn-primary dropdown-toggle" 
									data-toggle="dropdown">
									操作 <span class="caret"></span>
								</button>
									<ul class="dropdown-menu" role="menu">
										<li><a data-id=`+element.member_id+` onclick="edit(this)" style="cursor:pointer" data-target="#editMemberModal" data-toggle="modal" class="operate-account-edit">修改</a></li>
										<li><a data-id=`+element.member_id+` onclick="del(this)" style="cursor:pointer" data-target="#deleteMemberModal" data-toggle="modal" class="operate-account-edit">删除</a></li>
										<li><a href="detail.jsp?id=`+element.member_id+`">详情</a></li>
									</ul>
								</div>
								</td> `;	
							resultHtml += "</tr>";
						});
						$("table").children("tbody").html(resultHtml);
					}
				}
			
			});
		});
		
		//删除会员
		function del(ie){
			$("#deleteMember").click(function(){
				var param = {
					member_id : $(ie).attr('data-id')
				};
				$.ajax({
					type : "post",
					url : "/MemberManagerSystem/member/deleteMember.shtml",
					data : param,
					dataType : "json",
					success : function(data){
						/* alert("删除成功"); */
						$("#deleteMemberModal").modal("hide");
						listMembers();
					},
					error : function(data){
						alert("删除失败，请稍后重新操作");
						$("#deleteMemberModal").modal("hide");
					}
				})
				
			});
		}
		//修改会员信息
		function edit(ie){
			/* ie就是被选中的那个节点   */
			var params = {
				member_id : $(ie).attr('data-id')
			};
			$.ajax({
				type : "post",
				url : "/MemberManagerSystem/member/listById.shtml",
				data : params,
				dataType : "json",
				success : function(result) {
					$.each(result,function(index, element) {
						$("#member_ide").val(element.member_id),
						$("#member_namee").val(element.member_name),
						$("#member_sexe").val(element.member_sex),
						$("#member_telle").val(element.member_tell),
						$("#member_adde").val(element.member_add),
						$("#grade_namee").val(element.grade_name),
						$("#grade_ide").val(element.grade_id),
						$("#integrale").val(element.integral)
					});
				}
			})
		}
		$("#DeitMember").click(function(){
			var param = {
				member_id : $("#member_ide").val(),
				member_name : $("#member_namee").val(),
				member_sex : $("#member_sexe").val(),
				member_tell : $("#member_telle").val(),
				member_add : $("#member_adde").val(),
			};
			$.ajax({
				type : "post",
				url : "/MemberManagerSystem/member/editMember.shtml",
				data : param,
				dataType : "json",
				success : function(result){
					alert("修改成功");
					$("#editMemberModal").modal("hide");
					listMembers();
				},
				erreo : function(result){
					alert("修改失败");
				}
			});
		});
	</script>

</body>
</html>