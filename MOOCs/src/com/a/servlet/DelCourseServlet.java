package com.a.servlet;

import java.io.IOException;

import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.a.bean.Comparable1;
import com.a.bean.Course;
import com.a.bean.Mycourse;
import com.a.dao.CourseDao;
import com.a.dao.MycourseDao;
import com.a.dao.impl.CourseDaoImpl;
import com.a.dao.impl.MycourseDaoImpl;
import com.a.util.CompareUtil;

public class DelCourseServlet  extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	super.doGet(req, resp);
		//通过request来得到提交的表单中的值
		int courseId = Integer.parseInt(req.getParameter("Id"));;

		//dao->实现类
		        	CourseDao dao = new CourseDaoImpl();
		//创建实体
		        	Course course=new  Course(courseId,null, null, null, null, null, null, null, null);
		    		
		        	dao.delete(course);
		        	//Course course2=dao.SearchById(courseId);
		        	//System.out.println("hao");
		        //dao.delete(course2);
		        
		        	ArrayList<Course> courselist=dao.findAllCourse();	
				
				Comparable1 comparable1=new Comparable1();
				CompareUtil.sort(courselist, comparable1.comparator);
				
				HttpSession session = req.getSession();
				session.setAttribute("courselist", courselist);		
				//resp.sendRedirect("courselist.jsp");
				req.getRequestDispatcher("courselist.jsp").forward(req, resp);
		        
    	
        
        
        //req.getRequestDispatcher("success.jsp").forward(req, resp);
	
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


