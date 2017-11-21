<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.a.bean.User"%>

<%@ page import="com.a.bean.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
    
    
    
    <title>My JSP 'call.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="img/style.css"/>

</head>
<script type="text/javascript" src="img/tab.js"></script>
	<script type="text/javascript" src="img/putaojiayuan.js"></script>
<body>

<div class="content" style="OVERFLOW-Y: auto; OVERFLOW-X:hidden;">
   <div class="main">
 <%Course course2= (Course)session.getAttribute("course2");%>

   <div class="left">
  
         <a href=""><img src="<%=course2.getPicurl()%>" height="152" width="149" /></a>
         
            <h2>课题名--<%=course2.getName()%></h2>
            <br>
                                  <br>
             <p>类型：<%=course2.getType()%><br></p>
             <br>
                                  <br>
             <p>发布人：<%=course2.getPublisher()%><br></p>
             <br>
                                  <br>
              <p>发布时间：<%=course2.getCdate()%><br></p>
              <br>
                                  <br>
            <p>简介：<%=course2.getInfo()%><br></p>
            <br>
                                  <br>
                                  
        
         <p>详细介绍：<%=course2.getIntroduce()%><br></p>
         <br>
          <input type="hidden"  name="courseid"    value="<%=course2.getId()  %>" >                        <br>
    </div>
   
    <object align=middle classid="CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95" class=OBJECT
id=MediaPlayer width=420 height=310>
      <param name=ShowStatusBar value=0>
        <param name=Filename value="<%=course2.getMovieurl()  %>">
         <embed type=application/x-oleobject
   codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,7
01" >
      </embed>
   </object>


 
     <div class="clear"></div>
  </div>
</div>

</body>
</html>
