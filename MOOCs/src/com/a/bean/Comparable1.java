package com.a.bean;

import java.util.Comparator;
public class Comparable1 {
	public Comparator<Course> comparator = new Comparator<Course>() {
		public int compare(Course n1, Course n2) 
		{
			return (n1.getId()-n2.getId());
		}
	};
	
}
