<%@ page pageEncoding="GB18030"%>
<%@ page import="java.sql.*, com.bjsxt.bbs.*" %>

<%
int id = Integer.parseInt(request.getParameter("id"));
int rootId = Integer.parseInt(request.getParameter("rootId"));

%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>MOOC论坛</title>
<meta http-equiv="content-type" content="text/html; charset=GBK">
<link rel="stylesheet" type="text/css" href="images/style.css" title="Integrated Styles">
<script language="JavaScript" type="text/javascript" src="images/global.js"></script>
<!-- fckeditor -->
<script type="text/javascript" src="fckeditor/fckeditor.js"></script>
<script type="text/javascript">

window.onload = function()
{
	var sBasePath = "<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/fckeditor/" %>"
	var oFCKeditor = new FCKeditor( 'cont' ) ;
	oFCKeditor.BasePath	= sBasePath ;
	oFCKeditor.ReplaceTextarea() ;
}

</script>
<!-- end of fckeditor -->

<link rel="alternate" type="application/rss+xml" title="RSS" href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?threadID=744236">
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody>
    <tr>
      <td width="40%"><img src="images/header-stretch.gif" alt="" border="0" height="57" width="100%">
     	</td>
      <td width="1%"><img src="images/header-right.gif" alt="" height="57" border="0"></td>
    </tr>
  </tbody>
</table>
<br>
<div id="jive-flatpage">
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td width="99%">
          <p class="jive-page-title"> 主题: reply </p></td>
        <td width="1%"><div class="jive-accountbox"></div></td>
      </tr>
    </tbody>
  </table>
 
  <br>
  <table border="0" cellpadding="0" cellspacing="0" width="930" height="61">
    <tbody>
      <tr valign="top">
        <td width="99%"><div id="jive-message-holder">
            <div class="jive-message-list">
              <div class="jive-table">
                <div class="jive-messagebox">
                	
                	<form action="replyDeal.jsp" method="post">
                		<input type="hidden" name="id" value="<%=id %>"/>
                		<input type="hidden" name="rootId" value="<%=rootId %>"/>
                		标题：<input type="text" name="title"><br>
                		内容：<textarea name="cont" rows="15" cols="80"></textarea>
                		<br>
                		<input type="submit" value="submit"/>
                	</form>
                	
                </div>
              </div>
            </div>
            <div class="jive-message-list-footer">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tbody>
                  <tr>
                    <td nowrap="nowrap" width="1%"><br><br></td>
                    <td align="center" width="98%"><table border="0" cellpadding="0" cellspacing="0">
                        <tbody>
                          <tr>
                            <td><a href="articleFlat.jsp"><img src="images/arrow-left-16x16.gif" alt="返回到主题列表" border="0" height="16" hspace="6" width="16"></a> </td>
                            <td><a href="articleFlat.jsp">返回列表</a> </td>
                          </tr>
                        </tbody>
                      </table></td>
                    <td nowrap="nowrap" width="1%">&nbsp;</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div></td>
        <td width="1%">&nbsp;</td>
      </tr>
    </tbody>
  </table>
</div>
</body>
</html>
