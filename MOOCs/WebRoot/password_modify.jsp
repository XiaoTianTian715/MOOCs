<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.awt.List"%>
<%@page import="com.a.bean.Teacher"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!-- apatan -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>教师密码设置</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
</head>
<%Teacher teacher= (Teacher)session.getAttribute("myteacher");%>
 <td align="center"></td>
<script type="text/javascript">
  	function checkName(userName){
  			if(userName == null || userName.length == 0){
  				alert("旧密码不能为空！");
  				return false;
  			}
  			else if(userName.length<5){
  				alert("旧密码必须不小于五位  ！");
  				return false;
  				}
  			return true;
  		}
  		
  		
  		
  		function checkPwd(passWord){
  			if(passWord == null || passWord.length == 0){
  			alert("请输入新密码 ！");
  				return false;
  			}else if(passWord.length<5){
  				alert("密码必须不小于五位 ！");
  				return false;
  			}
  			return true;			
  		} 		
  			function checkPwdConfirm(passWord){
  			if(passWord == null || passWord.length == 0){
  			alert("	请输入确认密码 ！");
  				return false;
  			}else if(passWord.length<5){
  				alert("密码必须不小于五位 ！");
  				return false;
  			}
  			return true;			
  		} 
  		
  		function checknewpwd(passWordnew1,passWordnew2)
  		{
  		if(checkPwd(passWordnew1)&& checkPwdConfirm(passWordnew2))
  		{
  		if(passWordnew1!=passWordnew2)
  		{
  		alert("前后密码不一致！");
  		return false;
  		}
  		else
  		{
  			return true;
  		}
  		}
  		return false;
  		} 		
  		
  		
  		
  		function $(id){
  			return document.getElementById(id);
  		}
  		
  		
  		function check(){
  			var passwordold =$("oldpassword").value;
  			var passWordnew1 = $("new_password").value;
  			var passWordnew2 = $("new_password_confirmation").value;
  			
  			
			if(checkName(passwordold)&&checknewpwd(passWordnew1,passWordnew2)){
				return true;
			}
			
			return false;  		
  		}
  </script>
<body>
	<form name="reform" action="teacherPwdServlet" method="post" onsubmit="return check();">
		<div align="center" id="result"></div>
		<table align="center">
			<tr>
			   
				<th width="200px" align="left">旧密码：
				</th>
				<td width="300px" colspan="2"><input type="password" name="oldpassword"
					id="oldpassword"></td>

			</tr>
			<tr>
				<th align="left">新密码：
				</th>
				<td><input type="password" name="new_password" id="new_password"/></td>
				<td><a style="font-size:13px">密码长度不小于五位！</a></td>
			</tr>
			<tr>
				<th align="left">确认新密码：
				</th>
				<td colspan="2"><input type="password" name="new_password_confirmation"
					id="new_password_confirmation" /></td>
			</tr>
			<tr>
				<td colspan="3" align="center"><input type="submit" value="提交">
				</td>
		</tr>
		    <tr>  
		    <input type="hidden"    name="myname" id="myname"  value=<%= teacher.getAdminname() %> />
		    <input type="hidden"    name="mypwd"  id="mypwd"  value=<%= teacher.getAdminpwd() %> />
		    </tr>
		</table>
	</form>

</body>
</html>
