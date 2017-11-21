package com.a.bean;

public class User {
	private String username;
	private String userpwd;
	private String usernick;
	private String sex;
	private String birth;
	private String tele;
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsername() {
		return username;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUsernick(String usernick) {
		this.usernick = usernick;
	}
	public String getUsernick() {
		return usernick;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getSex() {
		return sex;
	}
	public void setTele(String tele) {
		this.tele = tele;
	}
	public String getTele() {
		return tele;
	}

	public User(String username, String userpwd, String usernick, String sex, String birth,String tele) {
		super();
		this.username = username;
		this.userpwd = userpwd;
		this.usernick =usernick;
		this.sex =  sex;
		this.birth = birth;
		this.tele = tele;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getBirth() {
		return birth;
	}
}
