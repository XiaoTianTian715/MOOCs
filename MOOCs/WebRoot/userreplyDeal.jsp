<%@ page language="java" import="java.util.*, java.sql.*,  com.bjsxt.bbs.*" pageEncoding="GB18030"%>
<%@page import="com.a.bean.User"%>
<%User user=(User)session.getAttribute("myuser");%>
<%
request.setCharacterEncoding("GBK");

int pid = Integer.parseInt(request.getParameter("id"));
int rootId = Integer.parseInt(request.getParameter("rootId"));
//String writer = request.getParameter("writer");

//System.out.println(writer);
String title = request.getParameter("title");
System.out.println(title);
String cont = request.getParameter("cont");
System.out.println(cont);
Connection conn = DB.getConn();

boolean autoCommit = conn.getAutoCommit();
conn.setAutoCommit(false);
String sql = "insert into article values (null,?,?, ?, ?, ?, now(),?)";
PreparedStatement pstmt = DB.prepareStmt(conn, sql);
//ResultSet rsKey = pstmt.getGeneratedKeys();
	//	rsKey.next();
	//	int id = rsKey.getInt(1);


//pstmt.setInt(0, id);
pstmt.setInt(1, pid);
pstmt.setInt(2, rootId);
pstmt.setString(3, user.getUsernick());
pstmt.setString(4, title);
pstmt.setString(5, cont);
pstmt.setInt(6, 0);
pstmt.executeUpdate();


		
Statement stmt = DB.createStmt(conn);
stmt.executeUpdate("update Article set isleaf = 0 where id = " + pid);

conn.commit();
conn.setAutoCommit(autoCommit);
DB.close(pstmt);
DB.close(stmt);
DB.close(conn);
response.sendRedirect("article.jsp");
 %>
