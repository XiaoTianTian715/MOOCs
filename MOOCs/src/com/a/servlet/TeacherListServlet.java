package com.a.servlet;

import java.io.IOException;


import java.util.ArrayList;
import com.a.bean.Teacher;
import com.a.dao.*;
import com.a.dao.impl.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class TeacherListServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		ArrayList<Teacher>   teacherlist= new ArrayList<Teacher>();
		LoginDao loginDao= new LoginDaoImpl();
		teacherlist=loginDao.findAllTeacher();
		session.setAttribute("teacherlist", teacherlist);
		resp.sendRedirect("teacherlist.jsp");
		//super.doGet(req, resp);
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
