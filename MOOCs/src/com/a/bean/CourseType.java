package com.a.bean;

public class CourseType {
	private String typename;
	private int  typeid;
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	public int getTypeid() {
		return typeid;
	}
	public CourseType(String typename,int typeid){
		super();
		this.typename = typename;
		this.typeid = typeid;
	}
}
