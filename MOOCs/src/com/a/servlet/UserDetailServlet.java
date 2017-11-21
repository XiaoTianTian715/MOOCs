package com.a.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.a.bean.User;
import com.a.dao.UserDao;
import com.a.dao.impl.UserDaoImpl;

public class UserDetailServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

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
		String birthString=req.getParameter("birth");
		String teleString=req.getParameter("tele");
		
		nameString=new String(nameString.getBytes("ISO-8859-1"), "UTF-8");
		nickString=new String(nickString.getBytes("ISO-8859-1"), "UTF-8");
		sexString=new String(sexString.getBytes("ISO-8859-1"), "UTF-8");
		birthString=new String(birthString.getBytes("ISO-8859-1"), "UTF-8");
		teleString=new String(teleString.getBytes("ISO-8859-1"), "UTF-8");
		
		
		User myuser=new User(nameString, null, nickString, sexString,birthString, teleString);		
		UserDao userDao=new UserDaoImpl();
		userDao.updateinfo(myuser);
		
		HttpSession session=req.getSession();
		ArrayList<User> user=userDao.findAllUser();
    	for(int i=0;i<user.size();i++)
		{
			
			if(user.get(i).getUsername().equals(nameString))
			{
				user.get(i).setUsernick(nickString);
				user.get(i).setSex(sexString);
				user.get(i).setBirth(birthString);
				user.get(i).setTele(teleString);
				
				session.setAttribute("myuser",user.get(i));
			}
		
		} 
		
		resp.sendRedirect("user_personal_info.jsp");
		


		
		//super.doPost(req, resp);
	}

}
