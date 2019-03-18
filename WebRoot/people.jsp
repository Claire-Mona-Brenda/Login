<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>personList</title>
    
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
  	<%!
  		StringBuffer personList;
  		int count;
  		public void judge(){
  			if(count==0){
  				personList=new StringBuffer();
  			}
  		}
  		public void addPerson(String p){
  			if(count==0){
  				personList.append(p);
  			}
  			else
  				personList.append(","+p);
  			count++;
  		}
  	  %>
    <%
    	String name=request.getParameter("userName"); 
    	if(name.length()==0||name.length()>10){
    		%><jsp:forward page="inputName.jsp" /><%
    	}%>
    <%
    	judge();
    	addPerson(name);
    	out.println("目前总共有"+count+"人浏览了页面，他们的名字是");
    	for(int i=0;i<personList.length();i++){
    		out.print(personList.charAt(i));
    	}
    %>
  </body>
</html>
