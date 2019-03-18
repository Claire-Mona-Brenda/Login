<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head> 
    <title>the list of user</title>
	<meta charset="utf-8">
  </head>
  <body>
  	<h1>恭喜您已经成功注册，用户名：<%=new String(request.getParameter("username")) %></h1>
  </body>
</html>
