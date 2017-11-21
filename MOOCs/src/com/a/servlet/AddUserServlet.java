package com.a.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.a.bean.User;
import com.a.dao.LoginDao;
import com.a.dao.UserDao;
import com.a.dao.impl.LoginDaoImpl;
import com.a.dao.impl.UserDaoImpl;

public class AddUserServlet  extends HttpServlet{

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
		String username = req.getParameter("loginName");
		username=new String(username.getBytes("ISO-8859-1"), "UTF-8");
		
		String pwd = req.getParameter("password");
		pwd=new String(pwd.getBytes("ISO-8859-1"), "UTF-8");
		
		String nick= req.getParameter("nick");
		nick=new String(nick.getBytes("ISO-8859-1"), "UTF-8");
		
		String checked = req.getParameter("sex");
		checked=new String(checked.getBytes("ISO-8859-1"), "UTF-8");
		
		String year = req.getParameter("yearSelect");
		String month = req.getParameter("monthSelect");
		String day = req.getParameter("daySelect");
		String birth=year+month+day;
		birth =new String(birth .getBytes("ISO-8859-1"), "UTF-8");
		
		String tele= req.getParameter("tele");
		tele=new String(tele.getBytes("ISO-8859-1"), "UTF-8");
		
		
		
		
		
		
		//dao->实现类
		UserDao dao = new UserDaoImpl();
		
		//创建实体 
		User user=new  User(username, pwd,nick, checked, birth, tele);
		
		//dao->实现类
		dao.add(user);
		
		ArrayList<User> userlist=dao.findAllUser();
		
		HttpSession session=req.getSession();
		session.setAttribute("userlist", userlist);
		
		
	req.getRequestDispatcher("userlist.jsp").forward(req, resp);
	return;
		//super.doPost(req, resp);
	}
	public void init() throws ServletException {
		// Put your code here
		}
		
	
}
