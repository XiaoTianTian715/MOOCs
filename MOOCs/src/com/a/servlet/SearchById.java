package com.a.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.a.bean.Course;
import com.a.dao.CourseDao;
import com.a.dao.impl.CourseDaoImpl;

public class SearchById extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;



	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
		//通过request来得到提交的表单中的值
		int courseId = Integer.parseInt(req.getParameter("courseId"));

		//dao->实现类
		CourseDao dao = new CourseDaoImpl(){};
		//创建实体
		 ArrayList<Course> course11=dao.findAllCourse();
		 HttpSession session=req.getSession();
		 for(int i=0;i<course11.size();i++)
	      {
		
	       
		    if(course11.get(i).getId()==courseId)
		    {
		    	Course	course1=course11.get(i);
			session.setAttribute("course1", course1);
			//session.setAttribute("cla",cla );
		//	session.setAttribute("cladao",cladao );
			resp.sendRedirect("coursemodify.jsp");
			return;
			
			
			
		    }}
		// Course course1=dao.SearchById(courseId);
	//	 System.out.println("courseId");
	// session.setAttribute("course1", course1);
	
	//	req.getRequestDispatcher("course-modify.jsp").forward(req, resp);
	
	}
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	

}}
