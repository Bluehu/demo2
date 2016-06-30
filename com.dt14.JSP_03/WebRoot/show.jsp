<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'show.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<%
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String pwd1 = request.getParameter("pwd1");
		String pwd2 = request.getParameter("pwd2");
		String sex = request.getParameter("sex");
		String email = request.getParameter("email");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
	%>
	<h2>
		用户名:
		<%=username%><br> 密码：<%=pwd1%><br> 确认密码：<%=pwd2%><br>
		性别：<%=sex%><br> 电子邮箱：<%=email%><br> 生日：<%=year%>年<%=month%>月<%=day%>日
	</h2>
</body>
</html>
