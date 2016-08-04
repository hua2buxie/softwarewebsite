package com.levi.model;

public class User
{
	private String stuId;
	private String password;
	public String getStuId()
	{
		return stuId;
	}
	public void setStuId(String stuId)
	{
		this.stuId = stuId;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public User(String stuId, String password)
	{
		super();
		this.stuId = stuId;
		this.password = password;
	}
	public User()
	{
		super();
		// TODO Auto-generated constructor stub
	}
	
}
