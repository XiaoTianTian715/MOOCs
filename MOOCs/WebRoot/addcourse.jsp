<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
   <form action="AddCourseServlet" method="get" name="form1" enctype="mutipart/form-data" class="elegant-aero ">
<h1>添加课程
<span>请将所有信息填完.</span>
</h1>
<label>
<span>课程编号:</span>
<input id="id" type="text" name="id" />
</label>
<label>
<span>课程名:</span>
<input id="name" type="text" name="name" />
</label>
<label>
<span>类型 :</span><select name="type">
<option value="基础学科">基础学科</option>
<option value="工程技术">工程技术</option>
<option value="政治经济">政治经济</option>
<option value="文学历史">文学历史</option>
</select>
</label>

<label>
<span>介绍:</span>
<input id="info" type="text" name="info" />
</label>
<label>
<span>发布人:</span>
<input id="publisher" type="text" name="publisher" />
</label>

<label>
<span>添加图片:</span>
<input id="pic" type="file" name="pic" value="浏览"  />
</label>
            
<label>
<span>添加视频:</span>
<input id="movie" type="file" name="movie" value="浏览"  />
</label>
<label>
<span>详细简介 :</span>
<textarea id="introduce" name="introduce" ></textarea>
</label>

<label>
<span>&nbsp;</span>
<input type="submit"  value="添加" />
<input  type="reset"  value="重置" />
</label>

</form>
  </body>
</html>
