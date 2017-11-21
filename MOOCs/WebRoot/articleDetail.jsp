<%@ page pageEncoding="GB18030"%>
<%@ page import="java.sql.*, com.bjsxt.bbs.*, java.util.*" %>

<%
String strId = request.getParameter("id");
if(strId == null || strId.trim().equals("")) {
	out.println("Error ID!");
	return;
}
int id = 0;
try {
	 id = Integer.parseInt(strId);
} catch (NumberFormatException e) {
	out.println("Error ID Again!");
	return;
} 


List<Article> articles = new ArrayList<Article>();
Connection conn = DB.getConn();
String sql = "select * from Article where rootid = " + id + " order by pdate asc";
Statement stmt = DB.createStmt(conn);
ResultSet rs = DB.executeQuery(stmt, sql);
while(rs.next()) {
	Article a = new Article();
	a.initFromRs(rs);
	articles.add(a);
}


DB.close(rs);
DB.close(stmt);
DB.close(conn);

%>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>MOOC论坛</title>
<meta http-equiv="content-type" content="text/html; charset=GBK">
<link rel="stylesheet" type="text/css" href="images/style.css" title="Integrated Styles">
<script language="JavaScript" type="text/javascript" src="images/global.js"></script>
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

<div id="jive-flatpage" style="OVERFLOW-Y: auto; OVERFLOW-X:hidden;">
<%
				for(int i=0; i<articles.size(); i++) {
					Article a = articles.get(i);
					String floor = i == 0 ? "楼主" : "第" + i + "楼";
				 %>
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td width="99%">
          <p class="jive-page-title"> </p></td>
        <td width="1%"><div class="jive-accountbox"></div></td>
      </tr>
    </tbody>
  </table>
  
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td width="99%"><div id="jive-message-holder">
            <div class="jive-message-list">
              <div class="jive-table">
                <div class="jive-messagebox">
                	<!-- start -->
			
                  <table summary="Message" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr id="jive-message-780144" class="jive-odd" valign="top">
                        <td class="jive-first" width="1%">
						<!-- 个人信息的table -->
						<table border="0" cellpadding="0" cellspacing="0" width="150">
                            <tbody>
                              <tr>
                                <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tbody>
                                      <tr valign="top">
                                        <td style="padding: 0px;" width="1%"><nobr></nobr> </td>
                                        <td style="padding: 0px;" width="99%"><br>
                                        </td>
                                      </tr>
                                    </tbody>
                                  </table>
                                    <img class="jive-avatar" src="images/1111.jpg" alt="" border="0" width="90" height="78"> <br>
                                  <br>
                                  <span class="jive-description"> 发表人: <%=a.getWriter() %>
                                   <br>
                                 
                                发布时间: <%=a.getPdate() %> <br>
                                   </span> </td>
                              </tr>
                            </tbody>
                          </table>
						  <!--个人信息table结束-->
						  
						  </td>
                        <td class="jive-last" width="99%"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                              <tr valign="top">
                                <td width="1%"></td>
                                <td width="97%"><span class="jive-subject"> <%=floor + "-------" + a.getTitle()%></span> </td>
                                <td class="jive-rating-buttons" nowrap="nowrap" width="1%"></td>
                                <td width="1%"><div class="jive-buttons">
                                  <table border="0" cellpadding="0" cellspacing="0">
                                      <tbody>
                                        <tr>
                                          <td>&nbsp;</td>
                                          <td class="jive-icon"><a href="userreply.jsp?id=<%=a.getId() %>&rootId=<%=a.getRootId() %>" title="回复本主题"><img src="images/reply-16x16.gif" alt="回复本主题" border="0" height="16" width="16"></a> </td>
                                          <td class="jive-icon-label"><a href="userreply.jsp?id=<%=a.getId() %>&rootId=<%=a.getRootId() %>" title="回复本主题">回复本主题</a> </td>
                                        </tr>
                                      </tbody>
                                    </table> 
                                  </div></td>
                              </tr>
                              <tr>
                                <td colspan="4" style="border-top: 1px solid rgb(204, 204, 204);"><br>
                                 <%=a.getCont() %> <br>
                                  <br>
                                </td>
                               
                              </tr>
                              <tr>
                                <td colspan="4" style="font-size: 9pt;"><img src="images/sigline.gif"><br>
                                  <font color="#568ac2">学程序是枯燥的事情，愿大家在一起能从中找寻快乐！</font> <br>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="4" style="border-top: 1px solid rgb(204, 204, 204); font-size: 9pt; table-layout: fixed;"> ·</td>
                              </tr>
                            </tbody>
                          </table></td>
                      </tr>
                    </tbody>
                  </table>
                    <!-- end -->
				  <%
				  }
				   %>
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
                            <td><a href="article.jsp"><img src="images/arrow-left-16x16.gif" alt="返回到主题列表" border="0" height="16" hspace="6" width="16"></a> </td>
                            <td><a href="article.jsp">返回到主题列表</a> </td>
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
