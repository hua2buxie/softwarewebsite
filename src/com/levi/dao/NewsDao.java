package com.levi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.levi.model.News;
import com.levi.util.DateUtil;
import com.levi.util.DbUtil;

public class NewsDao
{
	public List<News> newsList(Connection con) throws Exception
	{
		List<News> newsList=new ArrayList<News>();
		String sql="select * from t_news";
		try
		{
			PreparedStatement pstmt=con.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				News news=new News();
				news.setId(rs.getInt("id"));
				news.setTitle(rs.getString("title"));
				news.setContent(rs.getString("content"));
				news.setreleaseDate(DateUtil.formatString(rs.getString("releaseDate"),"yyyy-MM-dd HH:mm:ss"));
				System.out.println("啊发布时间:"+news.getreleaseDate());
				newsList.add(news);
			}
		/*	System.out.println("取到的数据如下:");
			for (News i : newsList)
			{
				System.out.println(i);
			}
			*/
			
		} catch (SQLException e)
		{
			System.out.println("查询失败！");
		}
		
		return newsList;
	}
	
	public static void main(String[] args) throws Exception
	{
		DbUtil dbUtil=new DbUtil();
		Connection con=dbUtil.getCon();
		NewsDao d=new NewsDao();
		d.newsList(con);
		
	}
	public News newsShow(Connection con,String newsId)throws Exception
	{
		String sql="select * from t_news where id=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, newsId);
		News diary=new News();
		ResultSet rs=pstmt.executeQuery();
		if(rs.next())
		{
			diary.setId(rs.getInt("id"));
			diary.setTitle(rs.getString("title"));
			diary.setContent(rs.getString("content"));
			diary.setreleaseDate(DateUtil.formatString(rs.getString("releaseDate"), "yyy-MM-dd HH:mm:ss"));
		}
		return diary;
	}
	public int newsAdd(Connection con,News news) throws SQLException
	{
		String sql="insert into t_news values(null,?,?,now())";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1,news.getTitle());
		pstmt.setString(2,news.getContent());
		System.out.println("正在往数据库写新闻数据");
		System.out.println("标题是"+news.getTitle());
		System.out.println("往数据库写入数据成功");
		return pstmt.executeUpdate();
	}
	public int newsDelete(Connection con,int id) throws SQLException
	{
		String sql="delete from t_news where id=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setInt(1,id);
		System.out.println("正在删除id号为"+id+"的新闻");
		return pstmt.executeUpdate();
	}
}
