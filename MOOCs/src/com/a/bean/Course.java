package com.a.bean;

import java.util.Date;


public class Course {
private  int id;
private   String name;
private   String type;
private  String   info;
private   String  publisher;
private Date cdate;
private  String   introduce;
private   String picurl;
private   String  movieurl;
public Course( int id, String name, 
		String info,String type, String publisher,Date cdate ,String introduce,String picurl,String  movieurl) {
	super();
	this.id = id;
	this.name = name;
	this.type = type;
	this.info = info;
	this.publisher = publisher;
	this.cdate = cdate;
	this.introduce = introduce;
	this.picurl =picurl;
	this. movieurl =  movieurl;
	
	
}
public void setId(int id) {
	this.id = id;
}
public int getId() {
	return id;
}
public void setName(String name) {
	this.name = name;
}
public String getName() {
	return name;
}

public void setPublisher(String publisher) {
	this.publisher = publisher;
}
public String getPublisher() {
	return publisher;
}
public void setCdate(Date cdate) {
	this.cdate = cdate;
}
public Date getCdate() {
	return cdate;
}
public void setIntroduce(String introduce) {
	this.introduce = introduce;
}
public String getIntroduce() {
	return introduce;
}
public void setPicurl(String picurl) {
	this.picurl = picurl;
}
public String getPicurl() {
	return picurl;
}
public void setMovieurl(String movieurl) {
	this.movieurl = movieurl;
}
public String getMovieurl() {
	return movieurl;
}
public void setInfo(String info) {
	this.info = info;
}
public String getInfo() {
	return info;
}

public void setType(String type) {
	this.type = type;
}
public String getType() {
	return type;
}



}
