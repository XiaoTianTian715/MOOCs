package com.a.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.a.bean.Mycourse;
import com.a.dao.MycourseDao;
import com.a.dao.impl.MycourseDaoImpl;

public class AddMycourseServlet  extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
		int id= Integer.parseInt(req.getParameter("id"));
		String username = req.getParameter("username");
		username=new String(username.getBytes("ISO-8859-1"), "UTF-8");
        MycourseDao dao = new MycourseDaoImpl();
		
		//创建实体 
        Mycourse mycourse=new  Mycourse(username, id);
		
		//dao->实现类
		dao.add(mycourse);
		
		ArrayList<Mycourse> mycourselist=dao.findAllMycourse();
		
		HttpSession session=req.getSession();
		session.setAttribute("mycourselist", mycourselist);
		
		
	req.getRequestDispatcher("mooc.jsp").forward(req, resp);
	return;
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
