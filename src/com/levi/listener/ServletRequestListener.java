package com.levi.listener;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


import com.levi.dao.NewsDao;
import com.levi.util.DbUtil;

public class ServletRequestListener  implements ServletContextListener 
{
	 
		@Override
		public void contextDestroyed(ServletContextEvent event)
		{
			// TODO Auto-generated method stub
			
		}
		@Override
		public void contextInitialized(ServletContextEvent event)
		{
			
			DbUtil dbUtil=new DbUtil();
			NewsDao d=new NewsDao();
			Connection con = null;
			try
			{
				con=dbUtil.getCon();
				List newsList=d.getHotNews(con);
				event.getServletContext().setAttribute("hotNewsList",newsList );
				System.out.println("信息"+newsList.get(1).toString());;
			} catch (Exception e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try
			{
				con.close();
				System.out.println("数据库连接关闭成功");
			} catch (SQLException e)
			{
				System.out.println("数据库关闭连接失败");
			}
			
		}
	
}
