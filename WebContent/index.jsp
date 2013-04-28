<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<%@ page isELIgnored="false"%>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
   .green { font-weight:1000; color: green }

 </style>
<script type="text/javascript">
$(document).ready(function(){
  $("h1").click(function(event){
  	 $("p").toggle(1000,function(event){
  		 alert("master");
  	 });
  });
});


</script>


</head>
<frameset rows="15%,*" >
	<noframes><body>浏览器不支持</body></noframes>
	<frame src="jsp/top.jsp" name="top"/>
	
	<frameset cols="20%,*">
		<noframes><body>浏览器不支持</body></noframes>
		<frame src="jsp/left.jsp" name="left"/>
		<frame src="jsp/center.jsp" name="center"/>
	</frameset>
</frameset>
<body></body>
</html>
