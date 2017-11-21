package com.a.servlet;

import java.io.IOException;
import java.io.PrintWriter;



import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.a.bean.Teacher;
import com.a.bean.User;
import com.a.dao.impl.LoginDaoImpl;
import com.a.dao.impl.UserDaoImpl;
import com.a.dao.*;

public class LoginServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//resp.setCharacterEncoding("GB2312");
		PrintWriter out = resp.getWriter();
		LoginDao loginDao=new LoginDaoImpl(){};
		ArrayList<Teacher> teacher=loginDao.findAllTeacher();
		
		
		UserDao userDao=new UserDaoImpl(){};
		ArrayList<User> user=userDao.findAllUser();
		HttpSession session = req.getSession();
		String checked = req.getParameter("posi");
		String userName = req.getParameter("loginName");
		String passWord = req.getParameter("password");
		// TODO Auto-generated method stub
		checked=new String(checked.getBytes("ISO-8859-1"), "UTF-8");
		userName=new String(userName.getBytes("ISO-8859-1"), "UTF-8");
		passWord=new String(passWord.getBytes("ISO-8859-1"), "UTF-8");
		
		//ClassesDao cladao=new  ClassesDaoImpl();
		//ArrayList<Classes> cla=cladao.findAllClasses();

		

		String str1="User";
		String str2="Teacher";
		if(checked.equals(str2))
	
		{
			for(int i=0;i<teacher.size();i++)
		      {
			
		        System.out.println(teacher.get(i).getAdminname());
			    if(teacher.get(i).getAdminname().equals(userName)&&teacher.get(i).getAdminpwd().equals(passWord))
			    {
			    Teacher	teacher2=teacher.get(i);
				session.setAttribute("myteacher", teacher2);
				//session.setAttribute("cla",cla );
			//	session.setAttribute("cladao",cladao );
				resp.sendRedirect("main.jsp");
				return;
				
				
				
			    }
		      }
			//out.print("<script language='javascript'>window.confirm('用户名或密码错误！');</script>");
		    resp.sendRedirect("false.jsp");
			//String message="用户名或密码错误！";
		   // req.setAttribute("message",message);
		  //resp.sendRedirect("onlylogin.jsp");
		    // session.setAttribute("message", message);
		    
		}
		else if(checked.equals(str1))
		
		{
			for(int j=0;j<user.size();j++)
			{
				System.out.println(user.get(j).getUsername());
				if(user.get(j).getUsername().equals(userName)&&user.get(j).getUserpwd().equals(passWord))
				{
				    User	user2=user.get(j);
					session.setAttribute("myuser", user2);
					//session.setAttribute("cla",cla );
				    //session.setAttribute("cladao",cladao );
					resp.sendRedirect("frontpage.jsp");
					return;
					
					
					
				}
			}
			 resp.sendRedirect("false.jsp");
		}
		else
		{	 resp.sendRedirect("false.jsp");}
		}
	
		//super.doGet(req, resp);


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
