package com.a.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.a.bean.User;
import com.a.dao.UserDao;
import com.a.dao.impl.UserDaoImpl;

public class UserListServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		List<User> userlist=new ArrayList<User>();
		UserDao userDao=new UserDaoImpl();
		userlist=userDao.findAllUser();
		session.setAttribute("userlist", userlist);
		resp.sendRedirect("userlist.jsp");
		return;
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
