package com.a.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import com.a.bean.Course;
import com.a.dao.CourseDao;
import com.a.util.ConnUtil;
import java.sql.Date;
public class CourseDaoImpl implements CourseDao{

	public void add(Course course) {
		// TODO Auto-generated method stub
		try {  
		    Date dt = new Date(System.currentTimeMillis());//如果不需要格式,可直接用dt,dt就是当前系统时间
			PreparedStatement ps ;
		    Connection con=ConnUtil.getConn("url","username","password");
		 
		    //int id = -1;
		    //ResultSet rsKey = ps.getGeneratedKeys();
			//rsKey.next();
			//id = rsKey.getInt(1);
		    String sql = "insert into Course values(?,?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setInt(1, course.getId());
			ps.setString(2, course.getName());
			ps.setString(3, course.getInfo());
			ps.setString(4,course.getType() );
			ps.setString(5, course.getPublisher());
			ps.setDate(6, dt);
			ps.setString(7, course.getIntroduce());
			ps.setString(8, course.getPicurl());
			ps.setString(9, course.getMovieurl());
			System.out.println(sql);
		    ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("添加数据失败");
			e.printStackTrace();
		}
	}

	public void delete(Course course) {
		// TODO Auto-generated method stub
		try {
		    
			
			PreparedStatement ps;
			Connection con = ConnUtil.getConn("url", "username", "password");
			String sql = "delete  from Course where id='"+ course.getId() + "'";
			ps = con.prepareStatement(sql);
			System.out.println(sql);
			ps.execute(sql);
		} catch (Exception e) {
			System.out.println("删除数据失败");
			e.printStackTrace();
		}
	}

	public ArrayList<Course> findAllCourse() {
		// TODO Auto-generated method stub
ArrayList<Course> course=new ArrayList<Course>();
		
		try { 
			
		    Connection con=ConnUtil.getConn("url","username","password");
			String sql = "select * from Course";
			PreparedStatement	ps =con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				
				int id=rs.getInt("id");
				String name=rs.getString("name");
				String info=rs.getString("info");
				String type=rs.getString("type");
				String pub=rs.getString("publisher");
				Date cdate=rs.getDate("cdate");
				String intr=rs.getString("introduce");
				String pic=rs.getString("picurl");
				String movie=rs.getString("movieurl");
				
				
			    Course course1=new Course(id,name, info,type,pub,cdate,intr,pic,movie);
			    course.add(course1);
			}
		} catch (Exception e) {
			System.out.println("查询课程数据失败");
			e.printStackTrace();
		}
             return course;
		
	}

	public void update(Course course) {
		// TODO Auto-generated method stub
		try {    
			PreparedStatement ps;
		    Connection con=ConnUtil.getConn("url","username","password");
		    String sql = "update  Course Set name='"+course.getName()+"',info='"+course.getInfo()+"' ,picurl='"+course.getPicurl()+"' ,movieurl='"+course.getMovieurl()+"'  ,type='"+course.getType()+"'  ,publisher='"+course.getPublisher()+"'    ,introduce='"+course.getIntroduce()+"'  where id='"+course.getId()+"'";
			ps = con.prepareStatement(sql);
			System.out.println(sql);
		    ps.execute(sql);
		} catch (Exception e) {
			System.out.println("更新数据失败");
			e.printStackTrace();
		}
	}

	public Course SearchById(int id) {
		Course course1 = null;
		try { 
		 Connection con=ConnUtil.getConn("url","username","password");
			String sql = "select * from Course";
			PreparedStatement	ps =con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				int csid=rs.getInt("id");
				String csname=rs.getString("name");
				String csinfo=rs.getString("info");
				String cstype=rs.getString("type");
				String publisher=rs.getString("publisher");
				Date cdate=rs.getDate("cdate");
				String introduce=rs.getString("introduce");
				String picurl=rs.getString("picurl");
				String movieurl=rs.getString("movieurl");
				if(id==csid)
				{course1 =new Course(csid,csname,csinfo, cstype,publisher,cdate,introduce,picurl,movieurl);}
			 
			}
		} catch (Exception e) {
			System.out.println("查询数据失败");
			e.printStackTrace();
		}
		return course1;
    }
}
