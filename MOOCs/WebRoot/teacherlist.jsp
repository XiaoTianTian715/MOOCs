<%@page import="com.a.bean.Teacher"%>
<%@page import="com.a.dao.LoginDao"%>
<%@page import="com.a.dao.impl.LoginDaoImpl"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

     

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>教师列表</title>


<link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="tablecloth/tablecloth.js"></script>


<style type="text/css"><!--
#senfe {
border-top: #000 1px solid;
border-left: #000 1px solid;
}
#senfe td {
border-right: #000 1px solid;
border-bottom: #000 1px solid;
}
--></style>

<style>

body{
	margin:0;
	padding:0;
	
	font:70% Arial, Helvetica, sans-serif; 
	color:#555;
	line-height:150%;
	text-align:left;
}
a{
	text-decoration:none;
	color:#057fac;
}
a:hover{
	text-decoration:none;
	color:#999;
}
h1{
	font-size:140%;
	margin:0 20px;
	line-height:80px;	
}
h2{
	font-size:120%;
}

form{
	margin:1em 0;
	padding:.2em 20px;
	background:#eee;
}
</style>

</head>

   <body>

   <div id="container">
<div id="content">

<table cellspacing="0" cellpadding="0" id="senfe" width="100%">  
<thead>

    <tr>  
        <th style="text-align: center">账号</th>  
        <th style="text-align: center">密码</th> 
        <th style="text-align: center">昵称</th>
        <th style="text-align: center">性别</th>
        <th style="text-align: center">职位</th>
        <th style="text-align: center">电话</th>
        <th><a href="addteacher.jsp">添加新用户</a></th>
    </tr>
    </thead>
    	<tbody id="group_one">
    	 <%ArrayList<Teacher> teacher= (ArrayList)session.getAttribute("teacherlist");%>
         <%for(int i=0;i<teacher.size();i++){%>  
        <tr>  
            <td><%=teacher.get(i).getAdminname() %> </td>  
            <td><%=teacher.get(i).getAdminpwd() %> </td>
            <td><%=teacher.get(i).getAdminnick() %> </td>
            <td><%=teacher.get(i).getSex() %> </td>
            <td><%=teacher.get(i).getDept() %> </td>
            <td><%=teacher.get(i).getTele() %> </td>
            <td><a href="DelTeacherServlet?Name=<%=teacher.get(i).getAdminname()%>" onClick="return confirm('真的要删除?')">删除</a></td>
        </tr>
     <%}%>   
     	</tbody>	
</table>

</div>
</div>

  </body>
</html>
