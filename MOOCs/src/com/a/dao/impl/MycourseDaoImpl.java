package com.a.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.a.bean.Mycourse;
import com.a.dao.MycourseDao;
import com.a.util.ConnUtil;

public class MycourseDaoImpl implements  MycourseDao {

	public void add(Mycourse mycourse) {
		// TODO Auto-generated method stub
		 Connection con=ConnUtil.getConn("url","username","password");
		    String sql =  "insert into Mycourse values(?,?)";
		try { 
			
			PreparedStatement ps;
		    ps = con.prepareStatement(sql);
			ps.setString(1, mycourse.getUsername());
			ps.setInt(2, mycourse.getId());
			System.out.println(sql);
		    ps.executeUpdate();
		    ps.close();
		    con.close();
		} catch (Exception e) {
			System.out.println("添加数据失败");
			e.printStackTrace();
		}
		
	}

	public void delete(Mycourse mycourse) {
		// TODO Auto-generated method stub
		try {    
			PreparedStatement ps;
		    Connection con=ConnUtil.getConn("url","username","password");
		    String sql = "delete  from Mycourse where id='"+mycourse.getId()+"'and username='"+mycourse.getUsername()+"'";
			ps = con.prepareStatement(sql);
			System.out.println(sql);
		    ps.execute(sql);
		} catch (Exception e) {
			System.out.println("删除数据失败");
			e.printStackTrace();
		}
	}

	public ArrayList<Mycourse> findAllMycourse() {
		// TODO Auto-generated method stub
		ArrayList<Mycourse> mycourse = new ArrayList<Mycourse>();
try { 
			
		    Connection con=ConnUtil.getConn("url","username","password");
			String sql = "select username,id from Mycourse";
			PreparedStatement	ps =con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				String name=rs.getString("username");
				int id=rs.getInt("id");
							
			    Mycourse course1=new Mycourse(name,id);
			    mycourse.add(course1);
			}
		} catch (Exception e) {
			System.out.println("查询我的课程数据失败");
			e.printStackTrace();
		}
             return mycourse;
	}
}
