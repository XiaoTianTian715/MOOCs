<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>  
 <%@page import="com.a.bean.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 

%>

<HTML><HEAD><TITLE>�û���������</TITLE> 
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
.label {font-style.:italic; }
.errorLabel {font-style.:italic;  color:red; }
.errorMessage {font-weight:bold; color:red; } 
</STYLE>
 <script src="<%=basePath %>calendar.js"></script>
</HEAD>
<%User user= (User)session.getAttribute("myuser");%>
<script type="text/javascript">
  	function checkName(userName){
  			if(userName == null || userName.length == 0){
  				alert("�����벻��Ϊ�գ�");
  				return false;
  			}
  			else if(userName.length<5){
  				alert("��������벻С����λ  ��");
  				return false;
  				}
  			return true;
  		}
  		
  		
  		
  		function checkPwd(passWord){
  			if(passWord == null || passWord.length == 0){
  			alert("������������ ��");
  				return false;
  			}else if(passWord.length<5){
  				alert("������벻С����λ ��");
  				return false;
  			}
  			return true;			
  		} 		
  			function checkPwdConfirm(passWord){
  			if(passWord == null || passWord.length == 0){
  			alert("	������ȷ������ ��");
  				return false;
  			}else if(passWord.length<5){
  				alert("������벻С����λ ��");
  				return false;
  			}
  			return true;			
  		} 
  		
  		function checknewpwd(passWordnew1,passWordnew2)
  		{
  		if(checkPwd(passWordnew1)&& checkPwdConfirm(passWordnew2))
  		{
  		if(passWordnew1!=passWordnew2)
  		{
  		alert("ǰ�����벻һ�£�");
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
  			var passwordold =$("oldpassword").value;
  			var passWordnew1 = $("new_password").value;
  			var passWordnew2 = $("new_password_confirmation").value;
  			
  			
			if(checkName(passwordold)&&checknewpwd(passWordnew1,passWordnew2)){
				return true;
			}
			
			return false;  		
  		}
  </script>

<BODY>
 
<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0 width="80%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top ><br><form action="UserPwdServlet" method="post" onsubmit="return check();">
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
  
  
  <tr>
  	<td align="right" width="35%">��ǰ������:</td>
    <td width=65%><input name="oldpassword"  id="oldpassword" type=password /></td>   
  </tr>
 <tr>
  	<td align="right" width="35%">����������:</td>
    <td width=65%><input name="new_password" id="new_password" type=password /></td>   
  </tr>
  <tr>
  	<td align="right" width="35%">������������:</td>
    <td width=65%><input name="new_password_confirmation"
					id="new_password_confirmation" type=password /></td>   
  </tr>
  <tr bgcolor='#FFFFFF'> 
      <td colspan="4" align="center"> 
        <input type='submit' name='button' value='�ύ' >
        &nbsp;&nbsp;
       
      </td>
    </tr>
	 <tr>  
		    <input type="hidden"    name="myname" id="myname"  value=<%= user.getUsername() %> />
		    <input type="hidden"    name="mypwd"  id="mypwd"  value=<%= user.getUserpwd() %> />
		    </tr>
</table>
</form>
   </TD>
	</TR>
  </TBODY>
</TABLE>
</BODY> 
</HTML>
