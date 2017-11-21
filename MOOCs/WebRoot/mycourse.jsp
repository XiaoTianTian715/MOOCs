<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="com.a.bean.*"%>
<%User user=(User)session.getAttribute("myuser");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'mycourse.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="images/style.css" title="Integrated Styles">
<script language="JavaScript" type="text/javascript" src="images/global.js"></script>
	<link rel="stylesheet" type="text/css" href="img/style.css"/>
<script type="text/javascript" src="img/putaojiayuan.js"></script>
<script type="text/javascript" src="img/tab.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <div class="content">
   <div class="main">       
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td width="99%">
        <div id="jive-message-holder">
            <div class="jive-message-list">
              <div class="jive-table">
                <div class="jive-messagebox">
				
				<!-- start -->
				 <%ArrayList<Course> course= (ArrayList)session.getAttribute("newmycourse1");%>
				<%for(int i=0;i<course.size();i++){%> 
				
                  <table summary="Message" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr id="jive-message-780144" class="jive-odd" valign="top">
                        <td class="jive-first" width="1%">
						<!-- 个人信息的table -->
						<table border="0" cellpadding="0" cellspacing="0" width="169" height="162">
                            <tbody>
                              <tr>
                                <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tbody>
                                      <tr valign="top">
                                        <td style="padding: 0px;" width="1%"><nobr>  </nobr> </td>
                                        <td style="padding: 0px;" width="99%"><br>
                                        </td>
                                      </tr>
                                    </tbody>
                                  </table>&nbsp; 
                                  <br>
                                  <br>
                                  <span class="jive-description"> <br>
                                  </span> </td><td><img height="152" width="149" border="0" class="jive-avatar" src="<%=course.get(i).getPicurl()%>" alt=""></td>
                              </tr>
                            </tbody>
                          </table>
						  <!--个人信息table结束-->
						  
						  </td>
                        <td class="jive-last" width="99%"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                              <tr valign="top">
                                <td valign="top"><br></td><td width="1%"><br></td>
                                <td width="97%"><span class="jive-subject">课程标题--<%=course.get(i).getName()%></span> <br></td>
                                <td class="jive-rating-buttons" nowrap="nowrap" width="1%"><br></td>
                                <td width="1%"><div class="jive-buttons">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                      <tbody>
                                        <tr>
                                          <td>&nbsp;</td>
                                          <td class="jive-icon"><a href="MoocDetailServlet?id=<%=course.get(i).getId() %>" title="详情"><img src="images/reply-16x16.gif" alt="详情" border="0" height="16" width="16"></a> </td>
                                          <td class="jive-icon-label"><a href="MoocDetailServlet?id=<%=course.get(i).getId() %>" title="详情">详情</a> </td>
                                        </tr>
                                      </tbody>
                                    </table>
                                  </div></td>
                              </tr>
                              <tr>
                                <td valign="top"><br></td><td colspan="4" style="border-top: 1px solid rgb(204, 204, 204);"><br>
                               简介： <%=course.get(i).getInfo() %> <br>
                                  <br>
                                </td>
                              </tr>
                              <tr>
                                <td valign="top"><br></td> 
                                  <br> 
                                </td>
                              </tr>
                              <tr>
                                <td valign="top"><br></td><td colspan="4" style="border-top: 1px solid rgb(204, 204, 204); font-size: 9pt; table-layout: fixed;"><a href="DelMycourseServlet?id=<%=course.get(i).getId()%>&username=<%=user.getUsername()%>"   onClick="return confirm('真的要删除本课程么?')" >删除课程</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 发布日期：<%=course.get(i).getCdate() %> <br> <a href=""><font color="#666666"></font></a> </td>
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
          
      </div>
      </tr>
    </tbody>
  </table>
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
   </div> </div>
  </body>
</html>
