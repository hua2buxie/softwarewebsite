package com.levi.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.levi.dao.NewsDao;
import com.levi.util.DbUtil;

/**
 * Servlet implementation class NavServlet
 */
public class NavServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NavServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		DbUtil dbUtil=new DbUtil();
		NewsDao d=new NewsDao();
		Connection con = null;
		switch(action)
		{
		case "aboutus":
			System.out.println("关于我们");
			request.getRequestDispatcher("aboutus.jsp").forward(request, response);
			break;
		case "index":
			System.out.println("首页");
			try
			{
				con=dbUtil.getCon();
				List newsList=d.getHotNews(con);
				HttpSession session=request.getSession();
				session.setAttribute("hotNewsList", newsList);
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
			
			
			//response.sendRedirect("index.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		case "softwaredownload":
			System.out.println("软件下载");
			response.sendRedirect("softwaredownload.jsp");
			break;
		case "feedback":
			System.out.println("意见反馈");
			response.sendRedirect("feedback.jsp");break;
		case "newslist":
			System.out.println("新闻列表页");
			
			try
			{
				con=dbUtil.getCon();
				List newsList=d.newsList(con);
				HttpSession session=request.getSession();
				session.setAttribute("newsList", newsList);
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
			request.getRequestDispatcher("newslist.jsp").forward(request, response);
			break;			
			
			
		}
	}

}
