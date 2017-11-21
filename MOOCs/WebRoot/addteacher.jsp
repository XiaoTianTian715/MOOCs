<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="com.a.bean.*"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="tablecloth/tablecloth.js"></script>
<title>更新</title>

</head>
<body>
<center>
<font color=black size=72>教师信息添加页面</font>
<hr>
<form action="AddTeacherServlet" method="post" name="form1">
<table border="1" width="100%" >
<tr>
  <th style="width: 254px; ">用户名：</th>
  <td>  <input  id="loginName" name="loginName" style="width: 254px; ">  </td>
</tr>


<tr>
<th>密       码：</th>
<td>  <input  type="password" name="password" id="password" style="width: 254px; " ></td>
</tr>




<tr>
<th>昵       称：</th>
<td><input id="nick" name="nick" style="width: 254px; "></td>
</tr>


<tr>
<th>性       别：</th>
<td>  
<input type="radio" name="sex" value="男" checked="checked"/>男
<input type="radio" name="sex" value="女"/>女
</td>
</tr>


<tr>
<th>职        称：</th>
<td><input  name="dept" id="dept" style="width: 254px; "></td>
</tr>


<tr>
<th>电       话：</th>
<td><input  name="tele" id="tele" style="width: 254px; "></td>
</tr>

<tr>
<td colspan="2">
 <center>
 <img src="images/bg1_submit.png" onclick="form1.submit()"> 
 <img   src="images/bg1_reset.png" onclick="form1.reset()">
</center>
</td>
</tr>
</table>

</form>

</center>
</body>
</html>