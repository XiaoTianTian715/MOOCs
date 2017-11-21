<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="com.a.bean.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addcourse.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
	
<style>
 .elegant-aero {
margin-left:auto;
margin-right:auto;
max-width: 500px;
background: #D2E9FF;
padding: 20px 20px 20px 20px;
font: 12px Arial, Helvetica, sans-serif;
color: #666;
}
.elegant-aero h1 {
font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
padding: 10px 10px 10px 20px;
display: block;
background: #C0E1FF;
border-bottom: 1px solid #B8DDFF;
margin: -20px -20px 15px;
}
.elegant-aero h1>span {
display: block;
font-size: 11px;
}
.elegant-aero label>span {
float: left;
margin-top: 10px;
color: #5E5E5E;
}
.elegant-aero label {
display: block;
margin: 0px 0px 5px;
}
.elegant-aero label>span {
float: left;
width: 20%;
text-align: right;
padding-right: 15px;
margin-top: 10px;
font-weight: bold;
}
.elegant-aero input[type="text"], .elegant-aero input[type="email"], .elegant-aero textarea, .elegant-aero select {
color: #888;
width: 70%;
padding: 0px 0px 0px 5px;
border: 1px solid #C5E2FF;
background: #FBFBFB;
outline: 0;
-webkit-box-shadow:inset 0px 1px 6px #ECF3F5;
box-shadow: inset 0px 1px 6px #ECF3F5;
font: 200 12px/25px Arial, Helvetica, sans-serif;
height: 30px;
line-height:15px;
margin: 2px 6px 16px 0px;
}
.elegant-aero textarea{
height:100px;
padding: 5px 0px 0px 5px;
width: 70%;
}
.elegant-aero select {
background: #fbfbfb url('down-arrow.png') no-repeat right;
background: #fbfbfb url('down-arrow.png') no-repeat right;
appearance:none;
-webkit-appearance:none;
-moz-appearance: none;
text-indent: 0.01px;
text-overflow: '';
width: 70%;
}
.elegant-aero .button{
padding: 10px 30px 10px 30px;
background: #66C1E4;
border: none;
color: #FFF;
box-shadow: 1px 1px 1px #4C6E91;
-webkit-box-shadow: 1px 1px 1px #4C6E91;
-moz-box-shadow: 1px 1px 1px #4C6E91;
text-shadow: 1px 1px 1px #5079A3;
}
.elegant-aero .button:hover{
background: #3EB1DD;
} 
  
</style>
  </head>
  
  <body>
    <%Course course1= (Course)session.getAttribute("course1");%>
   <form action="CourseModServlet" method="post" name="form1"  class="elegant-aero ">
 
<h1>修改课程

</h1>

<label>
<span>课程编号:</span>
<input id="id" type="text" name="id" value="<%=course1.getId()  %>" />
</label>

<label>
<span>课程标题:</span>
<input name="title" value="<%=course1.getName()  %>" type="text">
</label>
<label>
<span>类型 :</span>
<input name="type" value="<%=course1.getType() %>" type="text">
</label>

<label>
<span>简介:</span>
<input name="info" value="<%=course1.getInfo()  %>" type="text">
</label>
<label>
<span>发布人:</span>
<input  name="publisher" value="<%=course1.getPublisher() %>" type="text">
</label>



<label>
<span>图片地址:</span>
<input name ="pic" value="<%=course1.getPicurl() %>" type="text">
</label>
            
<label>
<span>视频地址:</span>
<input name ="movie" value="<%=course1.getMovieurl() %>" type="text">
</label>

<label>
<span>详细简介 :</span>
<textarea id="introduce" name="introduce"  > <%=course1.getIntroduce() %> </textarea>
</label>
<tr>
<td><input type="hidden"  name="courseid"    value="<%=course1.getId()  %>" ></td>
</tr>
<label>
<span>&nbsp;</span>
<input type="submit"  value="修改" />
<input  type="reset"  value="重置" />
</label>

</form>
  </body>
</html>
