<%@page import="com.a.bean.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>管理区域</title>
</head>

<body>
<div id="man_zone">
	<%User user= (User)session.getAttribute("myuser");%>
  <table width="99%" border="0" align="center"  cellpadding="3" cellspacing="1" class="table_style">
    <tr>
      <td width="18%" class="left_title_1"></td>
      <td width="82%">&nbsp;</td>
    </tr>
    <tr>
      <td class="left_title_2"><span class="left-title">用户名</span></td>
      <td>&nbsp; <%=user.getUsername() %><input type="hidden" name="username" value="<%=user.getUsername()%>"> </td>
    </tr>
    <tr>
      <td class="left_title_1"></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td class="left_title_2">昵&nbsp;&nbsp;  称</td>
      <td>&nbsp; <%=user.getUsernick() %></td>
    </tr>
    <tr>
      <td class="left_title_1"></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td class="left_title_2">性&nbsp;&nbsp;  别&nbsp;</td>
      <td>&nbsp; <%=user.getSex() %></td>
    </tr>
    <tr>
      <td class="left_title_1">&nbsp; </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td class="left_title_2">生  &nbsp;&nbsp;日&nbsp;</td>
      <td>&nbsp; <%=user.getBirth() %></td>
    </tr>
    <tr>
      <td class="left_title_1">&nbsp; </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td class="left_title_2">电  &nbsp;&nbsp;话&nbsp;</td>
      <td>&nbsp; <%=user.getTele() %></td>
    </tr>
    <tr>
      <td class="left_title_1">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td class="left_title_2"> &nbsp; &nbsp; &nbsp; &nbsp;  </td>
      <td>&nbsp;        <input type="button"  value="修改"   class="left_title_2" onclick="window.location='update_user_info.jsp';" >                                    </td>
    </tr>
  </table>
</div>
</body>
</html>
