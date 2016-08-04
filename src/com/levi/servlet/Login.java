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

import com.levi.dao.LoginDao;
import com.levi.dao.NewsDao;
import com.levi.model.User;
import com.levi.util.DbUtil;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		System.out.println("正在进行登录验证操作");
		String stuId=request.getParameter("stuId");
		String password=request.getParameter("password");
		System.out.println("账号:"+stuId);
		System.out.println("密码:"+password);
		User user=new User(stuId,password);
		DbUtil dbUtil=new DbUtil();
		Connection con=null;
		User currentUser;
		try
		{
			con=dbUtil.getCon();
			LoginDao ld=new LoginDao();
			currentUser=ld.login(con, user);
			if(currentUser==null)
			{
				System.out.println("密码错误");
				request.setAttribute("error", "账号不存在或密码错误!");
				request.setAttribute("stuId", stuId);
				request.setAttribute("password", password);
				
				request.getRequestDispatcher("login.jsp").forward(request, response);
				
				
			}
			else
			{
				System.out.println("密码正确");
				request.removeAttribute("error");
				HttpSession session=request.getSession();
				session.removeAttribute("newsList");
				session.removeAttribute("error");
				request.removeAttribute("newsList");
				session.setAttribute("currentUser", currentUser);
				NewsDao d=new NewsDao();
				try
				{
					con=dbUtil.getCon();
					List newsList=d.newsList(con);
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
			}
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
