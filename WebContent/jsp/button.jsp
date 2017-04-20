<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
<td>
                      <div class="btn-group">
                       <a class="btn btn-small dropdown-toggle" data-toggle="dropdown" href="#">
                                                                    操作
                          <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu pull-right">
                          <li><a href='
                                 <s:url action="selGs">
                                 <s:param name="gsid" value="gsid"></s:param>
                                 </s:url>
                                 '><i class="icon-edit"></i> 修改</a></li>
                          <li><a href='
                                 <s:url action="delGs">
                                 <s:param name="gsid" value="gsid"></s:param>
                                 </s:url>
                                 '><i class="icon-trash"></i> 删除</a></li>
                        </ul>
                      </div>
                    </td>
</body>
</html>