<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>

<script language="javascript">


function onreset1(){
	document.getElementById("loginName").value='';
	document.getElementById("new_password").value='';
	document.getElementById("new_password_confirmation").value='';
    document.getElementById("nick").value='';
    document.getElementById("tele ").value='';
	//document.getElementById("divMsg").innerHTML='';
	return true;
}



  	
  			function checkName(userName){
  			if(userName == null || userName.length == 0){
  				alert("用户名不能为空！ ");
  				return false;
  			}
  		
  			return true;
  		}
  			function checkNick(userNick){
  			if(userNick == null || userNick.length == 0){
  				alert("昵称不能为空！  ");
  				return false;
  			}
  		
  			return true;
  		}
  		
  		function checkPwd(passWord){
  			if(passWord == null || passWord.length == 0){
  			alert("请输入密码 ！");
  				return false;
  			}else if(passWord.length<5){
  				alert("密码必须不小于五位 ！");
  				return false;
  			}
  			return true;			
  		} 	
  		
  				function checkConfirmPwd(passWord){
  			if(passWord == null || passWord.length == 0){
  			alert("请输入确认密码 ！ ");
  				return false;
  			}else if(passWord.length<5){
  				alert("确认密码必须不小于五位 ！");
  				return false;
  			}
  			return true;			
  		} 		
  		
  		function checknewpwd(passWordnew1,passWordnew2)
  		{
  		if(checkPwd(passWordnew1)&& checkConfirmPwd(passWordnew2))
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
  	        var userName = $("loginName").value;
  			var passWordnew1 = $("new_password").value;
  			var passWordnew2 = $("new_password_confirmation").value;
  			var userNick = $("nick").value;
  			
  			
			if(checkName(userName)&&checknewpwd(passWordnew1,passWordnew2)&&checkNick(userNick)){
				return true;
			}
			
			return false;  		
  		}
</script>
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
<body  style="background:url('images/bg.jpg') repeat; ">
	<h1 align="center">用户注册</h1>
	<div align="center">
	
			<form name="reform" action="UserRegisterServlet" method="post" onsubmit="return check();" >
			<table >
				<tr>
					<td >用户名</td>
					<td >
						<INPUT class=textbox id="loginName" name="loginName"/>
					</td>
					<td>
						<font color="red" >
							<h6>*必填</h6>
						</font>
					</td>
				</tr>
				
				<tr>
					<td >密    码</td>
					<td>
						<input type="password" name="new_password" id="new_password"/>
					</td>
					<td>
						<font color="red" >
							<h6>*必填</h6>
						</font>
					</td>
				</tr>
				
				<tr>
					<td >重复密码</td>
					<td><input type="password" name="new_password_confirmation"id="new_password_confirmation" /></td>
					<td>
						<font color="red" >
							<h6>*必填</h6>
						</font>
					</td>
				</tr>
				
				<tr>
					<td >昵称<br></td>
					<td><INPUT class=textbox id="nick" name="nick"/></td>
					<td><font color="red" ><h6>*必填</h6></font></td>
				</tr>
				
			
				
				<tr>
					<td >性别</td>
					<td>
						<input type="radio" name="sex" value="男" checked="checked"/>
						男
						<input type="radio" name="sex" value="女"/>
						女
					</td>
				</tr>
				
			<tr>
			<td >出生日期</td>
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
			 <td></td>
			</tr>
				
				<tr>
					<td >电话<br></td>
					<td><INPUT class=textbox id="tele" name="tele"/></td>
					<td></td>
				</tr>
				
	        	<tr>
	        	<td></td>	
				<td align="center"><input onclick="onreset1();" type="reset" value="重置"></td>
				<td  align="center"><input type="submit" value="提交"></td>
				
				</tr>	
        
        </table>
       
		</form>
	</div>

</body>
</html>