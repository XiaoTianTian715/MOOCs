<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'onload.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 
    <script language="javascript">
var count = 5;//记数器

function countdown()
{ 
count--;

if(count == 1)
{
window.location.href='onlylogin.jsp';
}

if(document.layers)
{   
document.layers.showtime.document.write(count);   
document.layers.showtime.document.close();   
}   
else if(document.all)
{
showtime.innerHTML=count+" 秒后跳转到登录 界面 ...";
}

setTimeout("countdown()",1000);   
}   
</script>
  </head>
  
 <body bgcolor="#F4F6F6" onLoad="countdown();">
<center>
<span id="showtime"></span>
</center>
注册成功！等待跳转到登录界面......
</body>
</html>
