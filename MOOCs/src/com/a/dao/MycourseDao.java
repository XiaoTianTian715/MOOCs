package com.a.dao;

import java.util.ArrayList;

import com.a.bean.Mycourse;

public interface MycourseDao {
	public ArrayList<Mycourse> findAllMycourse();
	 public   void add(Mycourse mycourse);
	public void delete(Mycourse mycourse);
}
