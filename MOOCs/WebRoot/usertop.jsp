<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.a.bean.User"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>usertop.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="img/style.css"/>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<!--[if lt IE 7]>
<script type="text/javascript" src="img/putaojiayuan.js"></script>
<![endif]-->

<body>
  <%User user=(User)session.getAttribute("myuser");%>
<div class="top">
<div class="top_bar">
 <div class="logo"></div>
 <div class="at1"><%=user.getUsername()  %> 欢迎您！<a href="onlylogin.jsp" target="_top" class="b" onclick="return confirm('您确定要注销登录吗？ ')">注销</a></div>

 <div class="clear"></div>
</div>
 <div class="nav">
   	<ul>
					<li>
						<a onclick="javascript:parent.document.getElementById('mainFrame').src='<%=basePath %>welcome.jsp';" >首页</a>
					</li>
					<li>
						<a href="MoocServlet?name=<%=user.getUsername()  %> " target= "mainFrame"  >慕课资源</a>
					</li>
					<li>
						<a href="MycourseCartServlet?name=<%=user.getUsername()  %>" target= "mainFrame" >我的课程</a>
					</li>
					<li>
						<a onclick="javascript:parent.document.getElementById('mainFrame').src='<%=basePath %>article.jsp';">讨论区</a>
					</li>
					<li>
						<a onclick="javascript:parent.document.getElementById('mainFrame').src='<%=basePath %>user_personal_info.jsp';">个人资料</a>
					</li>
					<li>
						<a onclick="javascript:parent.document.getElementById('mainFrame').src='<%=basePath %>user_password_modify.jsp';">密码设置</a>
					</li>
				
	</ul>
 </div>
</div>
 
  </body>
</html>
