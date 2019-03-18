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
    <form action="userInform.jsp" method="post" name="form" id="table">
        <div class="form-group">
            <label>帐号：</label>
            <input type="text" name="username">
        </div>
        <div class="form-group">
            <label>密码：</label>
            <input type="text" name="password">
        </div>
        <div class="form-group">
        	<label>重复密码：</label><input type="text" name="repassword">
    	</div>
    	<div class="form-grouop">
        	<label>真实姓名：</label><input type="text" name="name">
   	 	</div>
    	<div class="form-group">
        	<label>性别：</label>
        	<input type="radio" name="sex" value="男">男
        	<input type="radio" name"sex" value="女">女
    	</div>
    	<div class="form-group">
        	<label>邮箱</label>
        	<input type="text" name="email">
    	</div>
    	<div class="form-group">
        	<label>电话：</label>
        	<input type="text" name="tel">
    	</div>
    	<div class="from-group">
        	<label>爱好：</label>
        	<input type="checkbox" name="hobby" value="羽毛球">羽毛球
        	<input type="checkbox" name="hobby" value="篮球">篮球
        	<input type="checkbox" name="hobby" value="逛街">逛街
        	<input type="checkbox" name="hobby" value="游泳">游泳
        </div>
        <div class="form-group">
        	<label>个人简介</label>
        	<textarea rows="5" cols="" id="intrduce"></textarea>
        </div>
        <div class="form-group">
        	<label>学历</label>
        	<select name="schoolage">
        		<option value="本科">本科</option>
        		<option value="专科">专科</option>
        		<option value="硕士">硕士</option>
        		<option value="博士">博士</option>
        	</select>
        <div class="form-group">
        	<label>简历文件</label>
        	<input type="file" name="file">
        </div>
        <div>
        	注：简历文件只能为<span style="color.red">word</span>格式，且<span style="color.red">文件大小不能超过2M</span>
        </div>
        <br>
        <div>
            <input type="submit" value="提交" name="submit">
        	<input type="reset" value="重置" name="reset">
        </div>
    </form>
    <script type="text/javascript" src="js/validate.js">
    </script>
  </body>
</html>

