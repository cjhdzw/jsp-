<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="java.io.*,java.util.*"%>
<%
	if(application.getAttribute("allUsers")==null){
		application.setAttribute("allUsers",new TreeMap<String,String>());
	}
	TreeMap<String,String> allUsers = (TreeMap<String,String>)application.getAttribute("allUsers");
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>用户管理系统</title>
</head>
<body>
	<form action="userManager.jsp">
		<div align="center">
			<a href="login.html"><h1>登录</h1></a>
			<a href="register.jsp"><h1>注册</h1></a>
		</div>
	</form>	
</body>
</html>