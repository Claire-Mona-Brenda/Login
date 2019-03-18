<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
    	<h1>计算梯形面积</h1>
    	<form action="" method="get">
    	<p>输入梯形的上底：<input type="text" name="top"></p>
    	<p>输入梯形的下底：<input type="text" name="bottom"></p>
    	<p>输入梯形的高：<input type="text" name="high"></p>
    	<p><input type="submit" value="提交"></p>
    	</form>
    	<%
    		double t=0,b=0,h=0;
    		String top=request.getParameter("top");
    		if(top==null)
    			top="";
    		String bottom=request.getParameter("bottom");
    		if(bottom==null)
    			bottom="";
    		String high=request.getParameter("high");
    		if(high==null)
    			high="";
    		try{
    		    t=Double.parseDouble(top);
    			h=Double.parseDouble(high);
    			b=Double.parseDouble(bottom);
    			if(t>0&&h>0&&b>0){
    	%>
    				<jsp:include page="lader.jsp">
    	 				<jsp:param name="t" value="<%=t%>"/>
    	 				<jsp:param name="b" value="<%=b%>"/>
    	 				<jsp:param name="h" value="<%=h%>"/>
    				</jsp:include>
    	<%	}
    		else{
    			out.print("<br>"+"请输入一个正整数");
    		}
    		}
    		catch(NumberFormatException e){
    			out.print("<br>"+"请入数字字符");
    		}
    	 %>
  </body>
</html>
