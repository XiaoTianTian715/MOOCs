package com.a.bean;

public class Teacher {
	private String adminname;
	private String adminpwd;
	private String adminnick;
	private String sex;
	private String dept;
	private String tele;
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminpwd(String adminpwd) {
		this.adminpwd = adminpwd;
	}
	public String getAdminpwd() {
		return adminpwd;
	}
	public void setAdminnick(String adminnick) {
		this.adminnick = adminnick;
	}
	public String getAdminnick() {
		return adminnick;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getSex() {
		return sex;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getDept() {
		return dept;
	}
	public void setTele(String tele) {
		this.tele = tele;
	}
	public String getTele() {
		return tele;
	}
	public Teacher(String adminname, String adminpwd, String adminnick, String sex, String dept, String tele) {
		super();
		this.adminname = adminname;
		this. adminpwd =  adminpwd;
		this. adminnick =  adminnick;
		this.sex = sex;
		this.dept = dept;
		this.tele = tele;
	}
}
