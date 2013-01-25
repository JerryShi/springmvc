<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>view</title>
</head>
<body>
		<h3 align="center">新增的姓名：${user.name} 新增的年龄： ${user.age}</h3>
		<table class="data" align="center" border="1" bordercolor="blue">
			<tr>
	   			<th>姓  名</th>
	    		<th>年  龄</th>
			</tr>
			<c:forEach items="${userList}" var="user">
				<tr>
					<td>${user.name}</td>
					<td>${user.age}</td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>