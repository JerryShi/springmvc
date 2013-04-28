<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<%@ page isELIgnored="false"%>
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">


function check(){
	var value = $("#name").val();
  	alert(value);
}

</script>
<style>
   .width200 {width: 200px;}

 </style>

</head>
<body>
	<h1>注册页面</h1>
	<form:form modelAttribute="user" action="../user/registUser.do">
		<table>
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input id="name" path="name" cssClass="width200"/></td>
			</tr>
			<tr>
				<td><form:label path="age">Age</form:label></td>
				<td><form:input path="age" cssClass="width200"/></td>
			</tr>
			
			<tr>
				<td><form:label path="sex">Sex</form:label></td>
				<td>
					<form:select path="sex" cssClass="width200">
						<form:option value="male">男</form:option>
						<form:option value="female">女</form:option>
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