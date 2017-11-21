package com.a.servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.a.bean.Comparable1;
import com.a.bean.Course;
import com.a.dao.CourseDao;
import com.a.dao.impl.CourseDaoImpl;
import com.a.util.CompareUtil;

public class CourseModServlet extends HttpServlet{

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
		//super.doPost(req, resp);
		//通过request来得到提交的表单中的值
		Date dt=new Date(0);//如果不需要格式,可直接用dt,dt就是当前系统时间
		int id=Integer.parseInt(req.getParameter("courseid"));
		
		String title = req.getParameter("title");
		title=new String(title.getBytes("ISO-8859-1"), "UTF-8");
       
		String type = req.getParameter("type");
		type=new String(type.getBytes("ISO-8859-1"), "UTF-8");
	
		
		String info= req.getParameter("info");
		info=new String(info.getBytes("ISO-8859-1"), "UTF-8");
		
		String publisher= req.getParameter("publisher");
		publisher=new String(publisher.getBytes("ISO-8859-1"), "UTF-8");
	
		//String title = req.getParameter("cdate");
		//title=new String(title.getBytes("ISO-8859-1"), "UTF-8");
       
		String pic = req.getParameter("pic");
		pic=new String(pic.getBytes("ISO-8859-1"), "UTF-8");
	
		
		String movie= req.getParameter("movie");
		movie=new String(movie.getBytes("ISO-8859-1"), "UTF-8");
		
		String introduce= req.getParameter("introduce");
		introduce=new String(introduce.getBytes("ISO-8859-1"), "UTF-8");
		
		
		
		
		//dao->实现类
		CourseDao dao = new CourseDaoImpl();
		
		//创建实体 
		Course  course=new  Course(id,title,info,type, publisher, dt, introduce, pic, movie);
	    dao.update(course);
	    
	    List<Course> courselist=new ArrayList<Course>();
		courselist=dao.findAllCourse();		
		Comparable1 comparable1=new Comparable1();
		CompareUtil.sort(courselist, comparable1.comparator);
		HttpSession session = req.getSession();
		session.setAttribute("courselist", courselist);		
		resp.sendRedirect("courselist.jsp");
		
	
		
		//req.getRequestDispatcher("success.jsp").forward(req, resp);
		
		

	}


public void init() throws ServletException {
	// Put your code here
}

}
