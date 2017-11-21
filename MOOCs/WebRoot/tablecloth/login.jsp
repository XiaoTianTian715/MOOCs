<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<html xmlns="http://www.w3.org/1999/xhtml"  lang="en-US">

<head>
<title>登录界面</title>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<LINK href="images/public.css" type=text/css rel=stylesheet>
<LINK href="images/login.css" type=text/css rel=stylesheet>
<STYLE type=text/css>
</STYLE>
<STYLE><META content="MSHTML 6.00.2900.5848" name=GENERATOR></style>
<script language="javascript">
  function onsubmit1(){
	

	if(document.getElementById("loginName").value==''){
		document.getElementById("divMsg").innerHTML="请输入用户名！";
		return false;
	}
	if(document.getElementById("loginPwd").value==''){
		document.getElementById("divMsg").innerHTML="请输入密码！";
		return false;
	}
	
	form1.submit();
}

function onreset1(){
	document.getElementById("loginName").value='';
	document.getElementById("loginPwd").value='';
	document.getElementById("divMsg").innerHTML='';
	return true;
}

</script>
</head>


<BODY>



<form id="form1" name="form1" action="loginServlet" method="get">
<DIV id=div1>
  <TABLE id=login height="437" cellSpacing=0 cellPadding=0 width=800 align=center>
    <TBODY>
      <TR id=main>
        <TD>
          <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%">
            <TBODY>
              <TR>
                <TD colSpan=4>&nbsp;</TD>
              </TR>
              <TR height=30>
                <TD width=380>&nbsp;</TD>
                <TD>身&nbsp; 份：<br></TD>
                <TD>&nbsp;<input type="radio" checked="checked" value="User" name="posi">学生&nbsp; <input type="radio" value="Teacher" name="posi">教师</TD>
                <TD>&nbsp;</TD>
              </TR>
              <TR height=40>
                <TD rowSpan=4>&nbsp;</TD>
                <TD>用户名：</TD>
                <TD><INPUT class=textbox id="loginName" name="loginName"/> </TD>
                <TD width=120>&nbsp;</TD>
              </TR>
              <TR height=40>
                <TD>密　码：</TD>
                <TD><INPUT class=textbox id="loginPwd" name="loginPwd" type=password>  </TD>
                <TD width=120>&nbsp;&nbsp;&nbsp;<a href="register.jsp">注册</a></TD>
              </TR>
              
      <TR height=40>
               
        <TD align=right> 
<a href="javascript:void(0);" onclick="onreset1();">
</a>&nbsp;<a href="javascript:void(0);" onclick="onsubmit1();"></a>
        </TD>
       <TD width=120>
    <a href="javascript:void(0);" onclick="onsubmit1();"> <img height="20" width="57" border="0" src="${pageContext.request.contextPath}/images/login.gif"></a>  
    <a href="javascript:void(0);" onclick="onreset1();"><img height="20" width="57" border="0" src="${pageContext.request.contextPath}/images/reset.gif"></a>
       </TD>
     
      </TR>
              <TR height=110>
                <TD colSpan=4><div id="divMsg" style="color:red; font-size:12px;"> </div></TD>
                
              </TR>
            </TBODY>
          </TABLE>
        </TD>
      </TR>
      <TR id=root height=104></TR>
    </TBODY>
  </TABLE>
</DIV>
</form>
<DIV id=div2 style="DISPLAY: none"></DIV>
</CONTENTTEMPLATE>
</BODY>
</HTML>