<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>欢迎注册</title>
</head>
<body>
<form action="register.jsp" method="post">
	<div align="center">
		<h1>请注册</h1>
		<input type="text" name="username" placeholder="用户名"><br>
		<input type="password" name="password1" placeholder="密码"><br>
		<input type="password" name="password2" placeholder="确认密码"><br>
		<input type="submit" value="注册">
	</div>
</form>
	<%
		TreeMap<String,String> allUsers = (TreeMap<String,String>)application.getAttribute("allUsers");
		String username=request.getParameter("username");
		String password1=request.getParameter("password1");
		String password2=request.getParameter("password2");

		session.setAttribute("username",username);
		session.setAttribute("password",password1);

	    if(password1!=null && !password1.equals(password2)){
			%>
			<script type="text/javascript" language="javascript">//弹窗提示
			alert("两次密码不一致！请重新输入！");
			window.document.location.href="register.jsp";
			</script>
			<%
		}
	    
	    if(username!=null && password1!=null){
		    try{
				username = new String(username.getBytes("ISO-8859-1"),"UTF-8");
			}catch(Exception e){}
			
			boolean find = false;
			if(allUsers.containsKey(username)){
				find = true;
			}

			if(find){
				%>
				<script type="text/javascript" language="javascript">//弹窗提示
				alert("该用户名已存在，请重新输入！");
				window.document.location.href="login.html";
				</script>
				<%
			}else{
				allUsers.put(username,password1);
				%>
				<script type="text/javascript" language="javascript">//弹窗提示
				alert("注册成功！请登录！");
				window.document.location.href="login.html";
				</script>
				<%
			}
		}
	%>
</body>
</html>
