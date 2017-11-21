package com.a.bean;

import java.util.Comparator;
public class Comparable2 {
	public Comparator<Course> comparator = new Comparator<Course>() {
		public int compare(Course n1, Course n2) 
		{
			return (n2.getId()-n1.getId());
		}
	};
	
}
