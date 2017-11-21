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

public class UserRegisterServlet  extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}
    
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		UserDao userDao=new UserDaoImpl(){};
		ArrayList<User> user=userDao.findAllUser();
		HttpSession session = req.getSession();
		String checked = req.getParameter("sex");
		String userName = req.getParameter("loginName");
		String passWord = req.getParameter("new_password");
		String nick = req.getParameter("nick");
		String year = req.getParameter("yearSelect");
		String month = req.getParameter("monthSelect");
		String day = req.getParameter("daySelect");
		String tele = req.getParameter("tele");
		String birth=year+month+day;
	
	
		checked=new String(checked.getBytes("ISO-8859-1"), "UTF-8");
		userName=new String(userName.getBytes("ISO-8859-1"), "UTF-8");
		passWord=new String(passWord.getBytes("ISO-8859-1"), "UTF-8");
		nick=new String(nick.getBytes("ISO-8859-1"), "UTF-8");
		//year=new String(year.getBytes("ISO-8859-1"), "UTF-8");
		//month=new String(month.getBytes("ISO-8859-1"), "UTF-8");	
		//day=new String(day.getBytes("ISO-8859-1"), "UTF-8");
		birth =new String(birth .getBytes("ISO-8859-1"), "UTF-8");
		tele =new String(tele .getBytes("ISO-8859-1"), "UTF-8");
	    
		/*SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");//此处引号内的是你需要的日期格式
		java.util.Date date1 = null;
		try {
			date1 = format.parse(both);
		} catch (ParseException e) {
		
			e.printStackTrace();
		}
		java.sql.Date date2=new java.sql.Date(date1.getTime());
		*/
	
		for(int j=0;j<user.size();j++)
		{
		
			if(user.get(j).getUsername().equals(userName))
			{
				
				resp.sendRedirect("message.jsp");
				return;
			
		    	//req.getRequestDispatcher("login.jsp").forward(req,resp);
			}
			
			//req.getRequestDispatcher("false.jsp").forward(req, resp);
		}
		User user1=new User(userName, passWord,nick, checked, birth, tele);
    	userDao.add(user1);
    	resp.sendRedirect("onload.jsp");
    	return;
	}
			   // User	user2=user.get(j);
				//session.setAttribute("myuser", user2);
				//session.setAttribute("cla",cla );
			    //session.setAttribute("cladao",cladao );
				
				//return;
				/*try { 
					
					java.sql.Statement ps=null;
					
				    Connection con=ConnUtil.getConn("url","username","password");
				    ps = con.createStatement();
				    User user1=new User(userName, passWord,nick, checked, birth, tele);
			    	userDao.add(user1);
				    String sql =  "insert into User values(?,?,?,?,?,?)";
					
				    ps.executeUpdate(sql);
					
					System.out.println(sql);
					req.getRequestDispatcher("login.jsp").forward(req,resp);
					//resp.sendRedirect("success.jsp");
				} catch (SQLException e) {
					System.out.println("添加数据失败");
					e.printStackTrace();
				}
			
		    	
			
				//req.getRequestDispatcher("").forward(req, resp);
				
				
			}
			resp.sendRedirect("false.jsp");
			//req.getRequestDispatcher("false.jsp").forward(req, resp);
				
		}*/
				
	
	
	public void init() throws ServletException {
		// Put your code here
		}
		
	

}