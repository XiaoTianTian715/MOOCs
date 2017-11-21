package com.a.servlet;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.a.bean.Teacher;
import com.a.dao.LoginDao;
import com.a.dao.impl.LoginDaoImpl;

public class DelTeacherServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {

doPost(req,resp);
}


	@Override

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//通过request来得到提交的表单中的值
		String teachername = req.getParameter("Name");
		teachername=new String(teachername.getBytes("ISO-8859-1"), "UTF-8");

		//dao->实现类
		LoginDao dao = new LoginDaoImpl();
		
		//创建实体 
		Teacher teacher=new  Teacher(teachername,null, null, null, null, null);
		
	        	dao.delete(teacher);
	        	
	    
	    ArrayList<Teacher> teacherlist=dao.findAllTeacher();
				
		HttpSession session=req.getSession();
		session.setAttribute("teacherlist", teacherlist);    	
	        	
	        	
	    req.getRequestDispatcher("teacherlist.jsp").forward(req, resp);
			
		
		}

	
		//super.doPost(req, resp);
	
public void init() throws ServletException {
	// Put your code here
}
}
