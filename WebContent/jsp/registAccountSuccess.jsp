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
		<h3 align="center">新增的帐号用户名：${account.username} 密码： ${account.password}</h3>
		<table class="data" align="center" border="1" bordercolor="blue">
			<tr height=30>
	   			<th width=100>用户名</th>
	    		<th width=100>密码</th>
	    		<th width=100>所属用户</th>
	    		<th width=50>状态</th>
			</tr>
			<c:forEach items="${accountList}" var="account">
				<tr height=30>
					<td>${account.username}</td>
					<td>${account.password}</td>
					<td>${account.user.name}</td>
					<td>
						<c:if test="${account.enabled == '1'}" >启用</c:if>
						<c:if test="${account.enabled == '0'}" >停用</c:if>
					</td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>