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

import com.levi.dao.NewsDao;
import com.levi.model.User;
import com.levi.util.DbUtil;

/**
 * Servlet implementation class News
 */
public class News extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public News()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		DbUtil dbUtil=new DbUtil();
		Connection con=null;
		User currentUser;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("newsid");
		String action = request.getParameter("action");
		System.out.println("action是" + action);
		
		NewsDao d = new NewsDao();
		if (action != null)
		{
			if (action.equals("add"))
			{
				System.out.println("111");
				String content = request.getParameter("content");
				String title = request.getParameter("title");
				System.out.println("获取到的标题是:" + title);
				com.levi.model.News news = new com.levi.model.News(title,
						content);
				try
				{
					try
					{
						con = dbUtil.getCon();
					} catch (Exception e)
					{
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					int resultNum = d.newsAdd(con, news);
					if (resultNum > 0)
					{
						System.out.println("发布新闻成功！");
					} else
					{
						System.out.println("虽然没有出现异常，但是新闻发布失败！！");
					}
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
					request.getRequestDispatcher("backgroundSystem.jsp").forward(request, response);
				} catch (SQLException e)
				{
					System.out.println("发布新闻失败!" + e.getMessage());
				}
			}
			if (action.equals("delete"))
			{
				
				try
				{
					id=request.getParameter("newsId");
					con=dbUtil.getCon();
					System.out.println("成功获取了连接,接下来将要删除id="+id+"的新闻");
					d.newsDelete(con, Integer.valueOf(id));
					//request.getRequestDispatcher("backgroundSystem.jsp").forward(request, response);
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
					request.getRequestDispatcher("backgroundSystem.jsp").forward(request, response);
				} catch (Exception e)
				{
					System.out.println("出错啦，信息如下:"+e.getMessage());
				}
			}
		}

		else
		{

			try
			{
				con = dbUtil.getCon();
				com.levi.model.News news = d.newsShow(con, id);
				request.setAttribute("news", news);
				request.getRequestDispatcher("newsShow.jsp").forward(request,
						response);
			} catch (Exception e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
