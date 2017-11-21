package com.a.dao;
import java.util.ArrayList;


import com.a.bean.Course;

public interface CourseDao {
	public ArrayList<Course> findAllCourse();
	 public   void add(Course course);
	public void delete(Course course);
	public void update(Course course);
	public  Course  SearchById(int id); 
}
