package com.a.bean;

public class Mycourse {
	private String username;
	private int id;
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsername() {
		return username;
	}
	
	public Mycourse(String username, int id) {
		super();
		this.username = username;
		this.id = id ;
		
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId() {
		return id;
	}
}
