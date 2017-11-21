package com.a.servlet;

import java.io.IOException;
import java.util.ArrayList;

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

public class CourseListServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
		HttpSession session = req.getSession();
		ArrayList<Course>   courselist= new ArrayList<Course>();
		CourseDao courseDao= new CourseDaoImpl();
		courselist=courseDao.findAllCourse();
		Comparable1 comparable1=new Comparable1();
		CompareUtil.sort(courselist, comparable1.comparator);
		//Comparable2 comparable2=new Comparable2();
		//CompareUtil.sort(courselist, comparable2.comparator);
		session.setAttribute("courselist", courselist);
		resp.sendRedirect("courselist.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	public void init() throws ServletException {
		// Put your code here
	}
	

}
