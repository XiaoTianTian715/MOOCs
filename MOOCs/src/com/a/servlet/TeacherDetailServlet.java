package com.a.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.a.bean.Teacher;
import com.a.bean.User;
import com.a.dao.LoginDao;
import com.a.dao.impl.LoginDaoImpl;

public class TeacherDetailServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nameString=req.getParameter("name");
		String nickString=req.getParameter("nick");
		String sexString=req.getParameter("sex");
		String deptString=req.getParameter("dept");
		String teleString=req.getParameter("tele");
		
		nameString=new String(nameString.getBytes("ISO-8859-1"), "UTF-8");
		nickString=new String(nickString.getBytes("ISO-8859-1"), "UTF-8");
		sexString=new String(sexString.getBytes("ISO-8859-1"), "UTF-8");
		deptString=new String(deptString.getBytes("ISO-8859-1"), "UTF-8");
		teleString=new String(teleString.getBytes("ISO-8859-1"), "UTF-8");
		
		
		Teacher myteacher=new Teacher(nameString, null, nickString, sexString,deptString, teleString);		
		LoginDao loginDao=new LoginDaoImpl();
		loginDao.updateinfo(myteacher);
		
		HttpSession session=req.getSession();
		ArrayList<Teacher> teacher=loginDao.findAllTeacher();
    	for(int i=0;i<teacher.size();i++)
		{
			
			if(teacher.get(i).getAdminname().equals(nameString))
			{
				teacher.get(i).setAdminnick(nickString);
				teacher.get(i).setSex(sexString);
				teacher.get(i).setDept(deptString);
				teacher.get(i).setTele(teleString);
				
				session.setAttribute("myteacher",teacher.get(i));
			}
		
		} 
		
		resp.sendRedirect("teacher_personal_info.jsp");
		


		
	}
}
