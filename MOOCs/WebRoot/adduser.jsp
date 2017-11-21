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
<script>
rebuildDay();//页面初始化构建日期
/**
*日期构建函数
*/
 function rebuildDay(){
  var year = Number(document.getElementById("yearSelect").value);//计算选择的年
  var month = Number(document.getElementById("monthSelect").value);//计算选择的月份
  var count = 31;
  if(month==1||month==3||month==5||month==7||month==8||month==10||month==12){
   count =31; 
  }else if(month==2)
  {
   if(year%4==0)
   {
     count=29;
   } else
   {
    count=28;
    }
   }
   else if(month==4||month==6||month==9||month==11) 
   {count=31;}
   var h = buildHtml(count);
   document.getElementById("daySelect").innerHTML=buildHtml(count);
 }
 function buildHtml(count)
 {
  var html="";
 
  for(var i=1;i<=count;i++){
   html += "<option value='"+i+"'>"+i+"</option>"; 
  }
  html+=""
  return html;
 }
 function forto(ff,to){
 document.write('<OPTION value=""></OPTION>');
 for(var ii=ff;ii<=to;ii++)
 document.write('<OPTION value="'+ii+'">'+ii+'</OPTION>');
 }
</script>
</head>
<body>
<center>
<font color=black size=72>用户信息添加页面</font>
<hr>
<form action="AddUserServlet" method="post" name="form1">
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
<th>生      日：</th>
<td>
	<select id="yearSelect" name="yearSelect" onchange="javasctipt:rebuildDay()">
			 <script>forto(1960,2015)</script>
             </select>年
           
            
             <select id="monthSelect"  name="monthSelect" onchange="javasctipt:rebuildDay()">
                     <option value="1">01</option>
                     <option value="2">02</option> 
                     <option value="3">03</option> 
                     <option value="4">04</option> 
                     <option value="5">05</option>
                     <option value="6">06</option>
                     <option value="7">07</option> 
                     <option value="8">08</option> 
                     <option value="9">09</option> 
                     <option value="10">10</option>
                     <option value="11">11</option>
                      <option value="12">12</option>

             </select>月
             
             
                <span  >
                  <select id="daySelect" name="daySelect"></select>
              </span>日
</td>
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