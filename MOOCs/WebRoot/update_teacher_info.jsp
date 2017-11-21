<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="com.a.bean.Teacher"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>教师个人资料修改</title>
<link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="tablecloth/tablecloth.js"></script>
</head>
<body>
<center>
<font color=blue size=72>教师个人信息修改页面</font>
<hr>
<form action="updateTeacherDetail" method="post" name="form1">
<%Teacher teacher= (Teacher)session.getAttribute("myteacher");%>
<table border="1" width="100%" >
<tr>
<th>用户名：</th>
<td> <%=teacher.getAdminname() %> <input type="hidden" name="name" value="<%=teacher.getAdminname()%>"> </td>
</tr>

<tr>
<th>昵   &nbsp;&nbsp;称：</th>
<td><input name="nick" value="<%= teacher.getAdminnick() %>" style="width: 254px; " ></td>
</tr>

<tr>
<th>性  &nbsp;&nbsp; 别：</th>
<td><input  name="sex" value="<%=teacher.getSex()  %>"  style="width: 254px; "></td>
</tr>

<tr>
<th>职   &nbsp;&nbsp; 称：</th>
<td><input  name="dept" value="<%=teacher.getDept()  %>"  style="width: 254px; "></td>
</tr>

<tr>
<th style="height: 10px; ">电话号码：</th>
<td><input  name="tele" value="<%=teacher.getTele()  %>"  style="width: 254px; "></td>
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