package com.a.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.a.bean.Course;
import com.a.bean.Teacher;
import com.a.dao.CourseDao;
import com.a.dao.impl.CourseDaoImpl;

public class MoocDetailServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
		int courseId = Integer.parseInt(req.getParameter("id"));
		CourseDao courseDao=new CourseDaoImpl(){};
		ArrayList<Course> course11=courseDao.findAllCourse();
		HttpSession session = req.getSession();
		for(int i=0;i<course11.size();i++)
	      {
		
	       
		    if(course11.get(i).getId()==courseId)
		    {
		    	Course	course2=course11.get(i);
			session.setAttribute("course2", course2);
			//session.setAttribute("cla",cla );
		//	session.setAttribute("cladao",cladao );
			resp.sendRedirect("coursedetail.jsp");
			return;
			
			
			
		    }
	}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
