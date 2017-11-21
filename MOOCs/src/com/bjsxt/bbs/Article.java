package com.bjsxt.bbs;

import java.sql.ResultSet;


import java.util.Date;

public class Article {
	private int id;
	private int pid; //private Article parent
	private int rootId;
	private String writer;
	private String title;
	private String cont;
	private Date pdate;
	private boolean isLeaf;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getRootId() {
		return rootId;
	}
	public void setRootId(int rootId) {
		this.rootId = rootId;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWriter() {
		return writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public boolean isLeaf() {
		return isLeaf;
	}
	public void setLeaf(boolean isLeaf) {
		this.isLeaf = isLeaf;
	}

	
	public void initFromRs(ResultSet rs) {
		try {
			setId(rs.getInt("id"));
			setPid(rs.getInt("pid"));
			setRootId(rs.getInt("rootId"));
			setWriter(rs.getString("writer"));
			setTitle(rs.getString("title"));
			setCont(rs.getString("cont"));
			setPdate(rs.getTimestamp("pdate"));
			setLeaf(rs.getInt("isLeaf") == 0 ? true : false);
			
		
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
