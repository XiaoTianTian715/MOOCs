package com.a.dao;

import java.util.ArrayList;

import com.a.bean.Teacher;

public interface LoginDao {
	public ArrayList<Teacher> findAllTeacher();
	 public   void add(Teacher teacher);
	public void delete(Teacher teacher);
	public void update(Teacher teacher);
	public void updateinfo(Teacher teacher);

}
