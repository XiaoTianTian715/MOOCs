package com.a.servlet;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.a.bean.Course;
import com.a.bean.Mycourse;
import com.a.dao.CourseDao;
import com.a.dao.MycourseDao;
import com.a.dao.impl.CourseDaoImpl;
import com.a.dao.impl.MycourseDaoImpl;

public class MycourseCartServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
		String username = req.getParameter("name");
		username=new String(username.getBytes("ISO-8859-1"), "UTF-8");
		HttpSession session = req.getSession();
		ArrayList<Mycourse>   mycourselist= new ArrayList<Mycourse>();
		 MycourseDao dao = new MycourseDaoImpl();
      mycourselist=dao.findAllMycourse();
      System.out.println("查询我的课程数据表单");
      session.setAttribute("mycourselist", mycourselist);
	ArrayList<Mycourse> mycourse= (ArrayList)session.getAttribute("mycourselist");
	ArrayList<Mycourse>   newmycourse= new ArrayList<Mycourse>();
	for(int i=0;i<mycourse.size();i++)
    { if(mycourse.get(i).getUsername().equals(username))
	    {
	    	Mycourse	mycourse111=mycourse.get(i);
	    	
	    	newmycourse.add(mycourse111);
	    	
	    	System.out.println("查询匹配我的课程数据表单");
				}
			}
	session.setAttribute("newmycourse", newmycourse);
	System.out.println("查询匹配成功我的课程数据表单");
	ArrayList<Course>   newmycourse1= new ArrayList<Course>();
	ArrayList<Mycourse> mycourse2= (ArrayList)session.getAttribute("newmycourse");
	ArrayList<Course>   courselist= new ArrayList<Course>();
	CourseDao courseDao= new CourseDaoImpl();
	courselist=courseDao.findAllCourse();
	System.out.println("查询课程数据表单");
	
		for(int j=0;j<courselist.size();j++){
	
			for(int i=0;i<mycourse2.size();i++){
		if(courselist.get(j).getId()==mycourse2.get(i).getId()){
			Course course11=courselist.get(j);
			System.out.println("查询匹配课程数据表单");
	    	newmycourse1.add(course11);
	    	
		}
		
		
		
		
	    }
	}

		
	 session.setAttribute("newmycourse1", newmycourse1);
	 System.out.println("查询匹配成功课程数据表单");
    	// req.getRequestDispatcher("mycourse.jsp").forward(req, resp);
    	resp.sendRedirect("mycourse.jsp");
    	System.out.println("运行");
return;	
  
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
