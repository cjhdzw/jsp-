<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="java.io.*,java.util.*"%>
当前用户：<%=session.getAttribute("username")%>
<form action="homepage.jsp" method="center">
	<a href="update.jsp">修改密码</a>	
	<a href="logout.jsp">注销</a>	
	<br>
	<p>已登录过的所有用户：</p>
	<%
		TreeMap<String,String> allUsers = (TreeMap<String,String>)application.getAttribute("allUsers");
		for(String c:allUsers.keySet()){
		out.println("<p>"+"用户名："+c+"&nbsp&nbsp&nbsp&nbsp"+"密码："+allUsers.get(c));
		}
	%>
</form>
