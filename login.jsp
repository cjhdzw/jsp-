<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="java.io.*,java.util.*"%>

<%
	String username=request.getParameter("username").trim();
	String password=request.getParameter("password").trim();
	TreeMap<String,String> allUsers = (TreeMap<String,String>)application.getAttribute("allUsers");

%>

<%
	boolean find = false;
	if(allUsers.containsKey(username) && allUsers.get(username).equals(password)){
				find = true;
	}

	if(find){
			session.setAttribute("username",username);
			session.setAttribute("password",password);
		%>
			<script type="text/javascript" language="javascript">//弹窗提示
			alert("登陆成功！");
			window.document.location.href="homepage.jsp";
			</script>
			<%
	}
	else{
			%>
			<script type="text/javascript" language="javascript">//弹窗提示
			alert("用户名或密码错误！！！");
			window.document.location.href="login.html";
			</script>
			<%
	}
%>


