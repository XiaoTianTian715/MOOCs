package com.a.dao.impl;

import java.sql.Connection;





import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.a.bean.User;


import com.a.dao.UserDao;
import com.a.util.ConnUtil;

public  class UserDaoImpl implements UserDao {
	

	public ArrayList<User> findAllUser() {
		ArrayList<User> user=new ArrayList<User>();
		
		try { 
			
		    Connection con=ConnUtil.getConn("url","username","password");
			String sql = "select username,userpwd,usernick,sex,birth,tele from User";
			PreparedStatement	ps =con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				String name=rs.getString("username");
				String pwd=rs.getString("userpwd");
				String nick=rs.getString("usernick");
				String sex=rs.getString("sex");
				String birth=rs.getString("birth");
				String tele=rs.getString("tele");				
			    User user1=new User(name, pwd,nick,sex,birth,tele);
			    user.add(user1);
			}
		} catch (Exception e) {
			System.out.println("查询数据失败");
			e.printStackTrace();
		}
             return user;
	}


	public void add(User user) {
		 Connection con=ConnUtil.getConn("url","username","password");
		    String sql =  "insert into User values(?,?,?,?,?,?)";
		try { 
			//java.text.SimpleDateFormat fmt1 = new java.text.SimpleDateFormat("yyyy-MM-dd");  
			//String sql = String.format("insert into 表名(date类型的列) values('%s')", fmt1.format(date对象));
			PreparedStatement ps;
		   
			ps = con.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getUserpwd());
			ps.setString(3, user.getUsernick());
			ps.setString(4, user.getSex());
			ps.setString(5, user.getBirth());
			ps.setString(6, user.getTele());
			System.out.println(sql);
		    ps.executeUpdate();
		    ps.close();
		    con.close();
		} catch (Exception e) {
			System.out.println("添加数据失败");
			e.printStackTrace();
		}
}

	
	public void delete(User user) {
		// TODO Auto-generated method stub
		try {    
			PreparedStatement ps;
		    Connection con=ConnUtil.getConn("url","username","password");
		    String sql = "delete  from User where username='"+user.getUsername()+"'";
			ps = con.prepareStatement(sql);
			System.out.println(sql);
		    ps.execute(sql);
		} catch (Exception e) {
			System.out.println("删除数据失败");
			e.printStackTrace();
		}
		

	}


	public void update(User user) {
		// TODO Auto-generated method stub
		try {    
			PreparedStatement ps;
		    Connection con=ConnUtil.getConn("url","username","password");
		    String sql = "update  User Set userpwd='"+user.getUserpwd()+"' where username='"+user.getUsername()+"'";
			ps = con.prepareStatement(sql);
			System.out.println(sql);
		    ps.execute(sql);
		} catch (Exception e) {
			System.out.println("更新密码失败");
			e.printStackTrace();
		}
}


	public void updateinfo(User user) {
		try {    
			PreparedStatement ps;
		    Connection con=ConnUtil.getConn("url","username","password");
		    String sql = "update  User Set usernick='"+user.getUsernick()+"',sex='"+user.getSex()+"',birth='"+user.getBirth()+"',tele='"+user.getTele()+"' where username='"+user.getUsername()+"'";
			
		    ps = con.prepareStatement(sql);
		    ps.execute(sql);
		} catch (Exception e) {
			System.out.println("更新信息失败");
			e.printStackTrace();
		}
		
	}


	

}
