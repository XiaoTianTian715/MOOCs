<%@ page pageEncoding="GB18030"%>
<%@ page import="java.sql.*, com.bjsxt.bbs.*, java.util.*"%>
<%@page import="com.a.bean.User"%>


<%
//String keyword = new String(request.getParameter("keyword").getBytes("ISO-8859-1"), "GBK");
String keyword = request.getParameter("keyword");
//session.setAttribute("keyword", keyword);
if(keyword == null) keyword ="";


final int PAGE_SIZE = 8;
int pageNo = 1;
String strPageNo = request.getParameter("pageNo");
if(strPageNo != null && !strPageNo.trim().equals("")) {
	try {
		pageNo = Integer.parseInt(strPageNo);
	} catch (NumberFormatException e) {
		pageNo = 1;
	} 
}



int totalPages = 0;

List<Article> articles = new ArrayList<Article>();
Connection conn = DB.getConn();

Statement stmtCount = DB.createStmt(conn);
String sqlCount = "select count(*) from article where title like '%" + keyword 
			 + "%' or writer like '%" + keyword + "%'";
System.out.println(sqlCount);
ResultSet rsCount = DB.executeQuery(stmtCount, sqlCount);
rsCount.next();
int totalRecords = rsCount.getInt(1);

totalPages = (totalRecords + PAGE_SIZE - 1)/PAGE_SIZE;

if(pageNo > totalPages) pageNo = totalPages;

if(pageNo <= 0) pageNo = 1;

Statement stmt = DB.createStmt(conn);
int startPos = (pageNo-1) * PAGE_SIZE; 
String sql = "select * from Article where title like '%" + keyword 
			 + "%' or writer like '%" + keyword + "%' order by pdate desc limit " + startPos + "," + PAGE_SIZE ;
System.out.println(sql);
ResultSet rs = DB.executeQuery(stmt, sql);
while(rs.next()) {
	Article a = new Article();
	a.initFromRs(rs);
	articles.add(a);
}
DB.close(rsCount);
DB.close(stmtCount);

DB.close(rs);
DB.close(stmt);
DB.close(conn);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>查询结果</title>
<meta http-equiv="content-type" content="text/html; charset=utf8">
<link rel="stylesheet" type="text/css" href="images/style.css" title="Integrated Styles">
<script language="JavaScript" type="text/javascript" src="images/global.js"></script>
<link rel="alternate" type="application/rss+xml" title="RSS" href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?forumID=20">
<script language="JavaScript" type="text/javascript" src="images/common.js"></script>
</head>
<body>
 <%User user=(User)session.getAttribute("myuser");%>
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
<div id="jive-forumpage">
 <table border="0" cellpadding="0" cellspacing="0" width="1153" height="19">

<tbody><tr valign="top"><td width="98%">欢迎[用户]:<font color=blue><%=user.getUsernick()%> </font>查询结果<br></td>
      </tr>
    </tbody>
  </table>
 <div class="jive-buttons">
    <table summary="Buttons" border="0" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
        <td width="1%" class="jive-icon"><a href="userpost.jsp"><img src="images/post-16x16.gif" alt="发表新主题" border="0" height="16" width="16"></a></td>
          <td  width="80%"class="jive-icon-label"><a id="jive-post-thread" href="userpost.jsp">发表新主题</a> </td>
       
         
           
        </tr>
      </tbody>
    </table>
  </div>
  <table border="0" cellpadding="3" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td><span class="nobreak">  
          第<%=pageNo %>页,共<%=totalPages%>页 - <span class="jive-paginator"> [</span></span>
          
          <span class="nobreak"><span class="jive-paginator">
          <a href="searchResult.jsp?pageNo=1">第一页</a></span></span>
          
          
          
          <span class="nobreak"><span class="jive-paginator">|</span></span>
          <span class="nobreak"><span class="jive-paginator">
          <a href="searchResult.jsp?pageNo=<%=pageNo - 1 %>">上一页</a>
          </span></span>
          
         <span class="nobreak"><span class="jive-paginator">| </span></span>
         <span class="nobreak"><span class="jive-paginator">
         <a href="searchResult.jsp?pageNo=<%=pageNo + 1 %>">下一页</a>
          |&nbsp; 
          <a href="searchResult.jsp?pageNo=<%=totalPages %>">最末页</a> ] </span> </span> </td>
      </tr>
    </tbody>
  </table>

  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td width="99%"><div class="jive-thread-list">
            <div class="jive-table">
              <table summary="List of threads" cellpadding="0" cellspacing="0" width="100%">
                <thead>
                  <tr>
                 
                    <th class="jive-first" colspan="2"> 主题 </th>
                    <th class="jive-view-count"> <nobr> 内容 &nbsp; </nobr> </th>
                    <th class="jive-author"> <nobr> 作者 &nbsp; </nobr> </th>
                     <th class="jive-last" nowrap="nowrap"> 最新发布时间 </th>
                     <th class="jive-msg-count" nowrap="nowrap"> 回复 </th>
                  </tr>
                </thead>
                <tbody>
                <%
                int lineNo = 0;
                for(Iterator<Article> it = articles.iterator(); it.hasNext(); ) {           
                	Article a = it.next();
  					String classStr = lineNo%2 == 0 ? "jive-even" : "jive-odd";
                %>
                  <tr class="<%=classStr %>">
                    <td class="jive-first" nowrap="nowrap" width="1%"><div class="jive-bullet"> <img src="images/read-16x16.gif" alt="已读" border="0" height="16" width="16">
                        <!-- div-->
                      </div></td>
                      
                   
                    <td class="jive-thread-name" width="20%"><a id="jive-thread-1" href="articleDetail.jsp?id=<%=a.getId() %>"><%=a.getTitle() %></a></td>
                    <td class="jive-msg-count"width="50%"><span class=""> <%=a.getCont() %> </span></td>
                   <td class="jive-author"   width="8%"> <span class=""> <%=a.getWriter() %></span></td>
                   <td class="jive-last" nowrap="nowrap" width="10%"><div class="jive-last-post"> <%=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(a.getPdate()) %> <br> </div></td>
                   <td class="jive-view-count" width="4%"> 10000</td>
                  </tr>
                 
                  <%
                  	lineNo++;
                  }
                  %>
                </tbody>
              </table>
            </div>
          </div>
          <div class="jive-legend"></div></td>
      </tr>
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
    </tbody>
  </table>
  <br>
  <br>
</div>
</body>
</html>
