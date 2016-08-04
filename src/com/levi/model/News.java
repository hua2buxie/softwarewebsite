package com.levi.model;

import java.util.Date;

public class News
{
	private int id;
	public News(int id, String title, String content, Date releaseDate)
	{
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.releaseDate = releaseDate;
	}
	public News(String title, String content)
	{
		super();
		this.title = title;
		this.content = content;
	}
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	private String title;
	private String content;
	public News()
	{
		
	}
	private Date releaseDate;
	public String getTitle()
	{
		return title;
	}
	
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
		this.content = content;
	}
	@Override
	public String toString()
	{
		return "News [id=" + id + ", title=" + title + ", content=" + content
				+ ", releaseDate=" + releaseDate + "]";
	}
	public Date getreleaseDate()
	{
		return releaseDate;
	}
	public void setreleaseDate(Date releaseDate)
	{
		this.releaseDate = releaseDate;
	}

}
