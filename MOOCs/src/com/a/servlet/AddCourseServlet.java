package com.a.servlet;

import java.io.IOException;



import java.io.File; 
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter; 

import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List; 
import java.util.UUID;
import java.util.Vector;

import javax.servlet.ServletContext; 
import javax.servlet.ServletException; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.a.bean.Course;
import com.a.bean.Teacher;
import com.a.dao.CourseDao;
import com.a.dao.LoginDao;
import com.a.dao.impl.CourseDaoImpl;
import com.a.dao.impl.LoginDaoImpl;




public class AddCourseServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8"); 
		 HttpSession session=req.getSession();  
		 String id = req.getParameter("id");
		 id=new String(id.getBytes("ISO-8859-1"), "UTF-8");	
		 int idd= Integer.parseInt(id); 
		String csname = req.getParameter("name");
		csname=new String(csname.getBytes("ISO-8859-1"), "UTF-8");
		String cstype = req.getParameter("type");
		cstype=new String(cstype.getBytes("ISO-8859-1"), "UTF-8");
		String csinfo= req.getParameter("info");
		csinfo=new String(csinfo.getBytes("ISO-8859-1"), "UTF-8");
		String cspublisher = req.getParameter("publisher");
		cspublisher=new String(cspublisher.getBytes("ISO-8859-1"), "UTF-8");
		String csintroduce= req.getParameter("introduce");
		csintroduce=new String(csintroduce.getBytes("ISO-8859-1"), "UTF-8");
		String url1= req.getParameter("pic");
		url1=new String(url1.getBytes("ISO-8859-1"), "UTF-8");
		String url2= req.getParameter("movie");
		url2=new String(url2.getBytes("ISO-8859-1"), "UTF-8");
		System.out.println(url1);
		String url11="uploadimage/"+url1;
		
		
		
		//得到上传文件的保存目录，将上传的文件存放于WEB-INF目录下，不允许外界直接访问，保证上传文件的安全
        String savePath = this.getServletContext().getRealPath("/uploadimage");
        File file = new File(savePath);
        String url22=file.getAbsolutePath()+"\\" + url2;
        System.out.println(url22);
       
		
		
		Date dt = new Date(System.currentTimeMillis());
    	CourseDao dao = new CourseDaoImpl();
    	 Course course=new  Course(idd,csname, csinfo,cstype, cspublisher,dt, csintroduce, url11,url22);
			
			//dao->实现类
			dao.add(course);
		
	 
				ArrayList<Course> courselist=dao.findAllCourse();
				
				session.setAttribute("courselist", courselist);
				resp.sendRedirect("courselist.jsp");
				return;
		
		
	
	
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
		
		
		
	}
	public void init() throws ServletException {
		// Put your code here
		}
		
}
   

	

