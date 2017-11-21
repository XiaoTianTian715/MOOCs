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

public class TeacherPwdServlet extends HttpServlet{

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
		LoginDao loginDao=new LoginDaoImpl();
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
	    	
	    	Teacher teacher1=new Teacher(myname, newpwd,null, null, null, null);
	    	loginDao.update(teacher1);
	    	//out.println("<script type='text/javascript'> alert(密码修改成功！请重新登录！);window.location.href='../login.jsp'</script>");
			resp.sendRedirect("success.jsp");
	    	
	    	ArrayList<Teacher> teacher=loginDao.findAllTeacher();
	    	for(int i=0;i<teacher.size();i++)
			{
				
				if(teacher.get(i).getAdminname().equals(myname))
				{  // teacher.get(i).setAdminpwd(newpwd);
			
					session.setAttribute("myteacher",teacher.get(i));
				}
			
			} 	    
	    
	    }
	    else
	    {
	    resp.sendRedirect("pwdmodifyerror.jsp");
	    }
		
		
	
		//super.doPost(req, resp);
	}

}
