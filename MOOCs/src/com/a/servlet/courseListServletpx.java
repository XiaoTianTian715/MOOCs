package com.a.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.a.bean.Comparable1;
import com.a.bean.Comparable2;
import com.a.bean.Course;
import com.a.dao.CourseDao;
import com.a.dao.impl.CourseDaoImpl;
import com.a.util.CompareUtil;

public class courseListServletpx extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	super.doGet(req, resp);
		HttpSession session = req.getSession();
		List<Course> courselist=new ArrayList<Course>();
		
		
		
		CourseDao courseDao=new CourseDaoImpl();
		courselist=courseDao.findAllCourse();
		int addID = Integer.parseInt(req.getParameter("addID"));
		if(addID==1)
		{			
			Comparable1 comparable1=new Comparable1();
			CompareUtil.sort(courselist, comparable1.comparator);
		}		
		else if(addID==2)
		{		
		Comparable2 comparable2=new Comparable2();
		CompareUtil.sort(courselist, comparable2.comparator);
		}
		session.setAttribute("courselist", courselist);		
		resp.sendRedirect("courselist.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
