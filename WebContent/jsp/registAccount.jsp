<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<html>
<head>
<%@ page isELIgnored="false"%>
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">


function check(){
	var value = $("#user").val();
  	alert(value);
}

</script>
<style>
   .width200 {width: 200px;}

 </style>

</head>
<body>
	<h1>注册页面</h1>
	<form:form modelAttribute="account" action="../account/registAccount.do">
		<table>
			<tr>
				<td><form:label path="username">用户名</form:label></td>
				<td><form:input id="username" path="username" cssClass="width200"/></td>
			</tr>
			<tr>
				<td><form:label path="password">密码</form:label></td>
				<td><form:password path="password" cssClass="width200"/></td>
			</tr>
			
			<tr>
				<td><form:label path="user">所属用户</form:label></td>
				<td>
					<form:select id="user" path="user.id" cssClass="width200">
						<c:forEach items="${users}" var="user">
							<form:option value="${user.id}">${user.name}</form:option>
						</c:forEach>
					</form:select>
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" onclick="check()" id="button" value="check">
					<input type="submit" value="Sumbit">
				</td>
			</tr>
		</table>
		
	</form:form>
</body>
</html>