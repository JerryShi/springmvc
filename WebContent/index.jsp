<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false"%>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
   .green { font-weight:1001; color: green }

 </style>
<script type="text/javascript">
$(document).ready(function(){
  $("h1").click(function(event){
  	 $("p").toggle(1000,function(event){
  		 alert("finish!");
  	 });
  });
});


</script>


</head>
<body>
	<h1 id="link">首页面</h1>
	<a id="link" href="registView.do">进入表单页面</a>
	<p>12345</p>
	<p>67890</p>
</body>
</html>
