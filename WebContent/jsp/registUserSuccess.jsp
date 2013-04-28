<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>view</title>
</head>
<body>
		<h3 align="center">新增的姓名：${user.name} 新增的年龄： ${user.age}</h3>
		<table class="data" align="center" border="1" bordercolor="blue">
			<tr height=30>
	   			<th width=100>姓名</th>
	    		<th width=50>年龄</th>
	    		<th width=80>性别</th>
			</tr>
			<c:forEach items="${userList}" var="user">
				<tr height=30>
					<td>${user.name}</td>
					<td>${user.age}</td>
					<td>${user.sex}</td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>