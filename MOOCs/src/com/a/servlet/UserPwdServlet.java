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
import com.a.dao.UserDao;
import com.a.dao.impl.LoginDaoImpl;
import com.a.dao.impl.UserDaoImpl;

public class UserPwdServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		UserDao userDao=new UserDaoImpl();
		String oldpwd= req.getParameter("oldpassword");
		oldpwd=new String(oldpwd.getBytes("ISO-8859-1"), "UTF-8");
		String newpwd = req.getParameter("new_password");
		newpwd=new String(newpwd.getBytes("ISO-8859-1"), "UTF-8");
	    String myname= req.getParameter("myname");
	    myname=new String(myname.getBytes("ISO-8859-1"), "UTF-8");
	    String mypwd= req.getParameter("mypwd");
	    mypwd=new String(mypwd.getBytes("ISO-8859-1"), "UTF-8");
	    
	    
	    
	    HttpSession session=req.getSession();
	    if(oldpwd.equals(mypwd))
	    {
	    	
	    	User user1=new User(myname, newpwd,null, null, null, null);
	    	userDao.update(user1);
			resp.sendRedirect("success.jsp");
	    	
	    	ArrayList<User> user=userDao.findAllUser();
	    	for(int i=0;i<user.size();i++)
			{
				
				if(user.get(i).getUsername().equals(myname))
				{  
			
					session.setAttribute("myuser",user.get(i));
				}
			
			} 	    
	    
	    }
	    else
	    {
	    resp.sendRedirect("userpwdmodifyerror.jsp");
	    }
		
		
	
		
	}

		
	}


	


