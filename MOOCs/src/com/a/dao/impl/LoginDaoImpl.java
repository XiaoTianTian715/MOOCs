package com.a.dao.impl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.a.bean.Teacher;

import com.a.dao.LoginDao;
import com.a.util.ConnUtil;

public  class LoginDaoImpl implements LoginDao {
	

	public ArrayList<Teacher> findAllTeacher() {
		ArrayList<Teacher> teacher=new ArrayList<Teacher>();
		
		try { 
			
		    Connection con=ConnUtil.getConn("url","username","password");
			String sql = "select adminname,adminpwd,adminnick,sex,dept,tele from Teacher";
			PreparedStatement	ps =con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
			
				String name=rs.getString("adminname");
				String pwd=rs.getString("adminpwd");
				String nick=rs.getString("adminnick");
				String sex=rs.getString("sex");
				String dept=rs.getString("dept");
				String tele=rs.getString("tele");
				
			    Teacher teacher1=new Teacher(name, pwd,nick,sex,dept,tele);
			    teacher.add(teacher1);
			}
		} catch (Exception e) {
			System.out.println("查询数据失败");
			e.printStackTrace();
		}
             return teacher;
	}

	public void add(Teacher teacher) {
		// TODO Auto-generated method stub
		try {  
			PreparedStatement ps;
		    Connection con=ConnUtil.getConn("url","username","password");
		    String sql = "insert into Teacher(adminname,adminpwd,adminnick,sex,dept,tele) values(?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, teacher.getAdminname());
			ps.setString(2, teacher.getAdminpwd());
			ps.setString(3, teacher.getAdminnick());
			ps.setString(4, teacher.getSex());
			ps.setString(5, teacher.getDept());
			ps.setString(6, teacher.getTele());
			System.out.println(sql);
		    ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("添加数据失败");
			e.printStackTrace();
		}
	}

	public void delete(Teacher teacher) {
		// TODO Auto-generated method stub
		try {    
			PreparedStatement ps;
		    Connection con=ConnUtil.getConn("url","username","password");
		    String sql = "delete  from Teacher where adminname='"+teacher.getAdminname()+"'";
			ps = con.prepareStatement(sql);
			System.out.println(sql);
		    ps.execute(sql);
		} catch (Exception e) {
			System.out.println("删除数据失败");
			e.printStackTrace();
		}
	}

	public void update(Teacher teacher) {
		// TODO Auto-generated method stub
		try {    
			PreparedStatement ps;
		    Connection con=ConnUtil.getConn("url","username","password");
		    String sql = "update  Teacher Set adminpwd='"+teacher.getAdminpwd()+"' where adminname='"+teacher.getAdminname()+"'";
			ps = con.prepareStatement(sql);
			System.out.println(sql);
		    ps.execute(sql);
		} catch (Exception e) {
			System.out.println("更新数据失败");
			e.printStackTrace();
		}	
	}

	public void updateinfo(Teacher teacher) {
		// TODO Auto-generated method stub
		try {    
			PreparedStatement ps;
		    Connection con=ConnUtil.getConn("url","username","password");
		    String sql = "update  Teacher Set adminnick='"+teacher.getAdminnick()+"',sex='"+teacher.getSex()+"',dept='"+teacher.getDept()+"',tele='"+teacher.getTele()+"' where adminname='"+teacher.getAdminname()+"'";
			
		    ps = con.prepareStatement(sql);
		    ps.execute(sql);
		} catch (Exception e) {
			System.out.println("更新数据失败");
			e.printStackTrace();
		}
	}


	

}
