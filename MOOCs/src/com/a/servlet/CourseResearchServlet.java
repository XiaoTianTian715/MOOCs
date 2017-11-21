package com.a.servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.a.bean.Course;
import com.a.dao.CourseDao;
import com.a.dao.impl.CourseDaoImpl;
import com.a.util.ConnUtil;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

public class CourseResearchServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
		//String keyword1 = new String(req.getParameter("keyword1").getBytes("8859_1"), "GBK");
	//	if(keyword1 == null) keyword1 = "";
		String cstype = new String(req.getParameter("type").getBytes("8859_1"), "GBK");
		 if(cstype == null) cstype = "";
		 String keyword1 = new String(req.getParameter("keyword1").getBytes("8859_1"), "GBK");
		 if(keyword1 == null) keyword1 = "";
		 HttpSession session = req.getSession();
			ArrayList<Course>   courselist= new ArrayList<Course>();
		 CourseDao courseDao= new CourseDaoImpl();
			courselist=courseDao.findAllCourse();  
				
				// String sql = "select * from Article where type like '%" + cstype
				//	 + "%' or name like '%" + keyword1 + "%'";
			//ArrayList<Course> course= (ArrayList)session.getAttribute("courselist");	 
			ArrayList<Course> courselist2= (ArrayList)session.getAttribute("courselist");
			ArrayList<Course> researchCourse= new ArrayList<Course>();		
			for(int i=0;i<courselist2.size();i++){
				if(courselist2.get(i).getType().equals(cstype)){
					Course course11 =courselist2.get(i);
					researchCourse.add(course11);
					
				}
			}	
			session.setAttribute("researchCourse", researchCourse);
			resp.sendRedirect("CourseResearch.jsp");
			return;	

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
	

	
}
