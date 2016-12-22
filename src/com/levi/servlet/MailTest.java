package com.levi.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.mail.iap.Response;

/**
 * 发送邮件的测试程序
 * 
 * @author 花2不谢
 * 
 */
public class MailTest extends HttpServlet{

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static int hour=12;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  
        PrintWriter writer=null; 
        StringBuffer result=new StringBuffer("");
		int thour=new Date().getHours();
		
		
		String name=new String(req.getParameter("name").getBytes("utf-8"),"utf-8");
		String email=new String(req.getParameter("email").getBytes("utf-8"),"utf-8");
		String phoneNum=new String(req.getParameter("phoneNum").getBytes("utf-8"),"utf-8");
		String xueyuan=new String(req.getParameter("xueyuan").getBytes("utf-8"),"utf-8");
		String subject=new String(req.getParameter("subject").getBytes("utf-8"),"utf-8");
		String yijian=new String(req.getParameter("yijian").getBytes("utf-8"),"utf-8");
		String ip_city=new String(req.getParameter("ip_city").getBytes("utf-8"),"utf-8");
		String ip = req.getHeader("x-forwarded-for");
	        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	            ip = req.getHeader("Proxy-Client-IP");
	          
	        }
	        if (ip == null || ip.length() == 0 || "unknow".equalsIgnoreCase(ip)) {
	            ip = req.getHeader("WL-Proxy-Client-IP");
	          
	        }
	        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	            ip = req.getRemoteAddr();
	         
	        }
	        System.out.println("ip:"+ip);
	        // 配置发送邮件的环境属性
	        final Properties props = new Properties();
	        /*
	         * 可用的属性： mail.store.protocol / mail.transport.protocol / mail.host /
	         * mail.user / mail.from
	         */
	        // 表示SMTP发送邮件，需要进行身份验证
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.host", "smtp.163.com");
	        // 发件人的账号
	        props.put("mail.user", "189***@163.com");
	        // 访问SMTP服务时需要提供的密码
	        props.put("mail.password", "***");

	        // 构建授权信息，用于进行SMTP进行身份验证
	        Authenticator authenticator = new Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                // 用户名、密码
	                String userName = props.getProperty("mail.user");
	                String password = props.getProperty("mail.password");
	                return new PasswordAuthentication(userName, password);
	            }
	        };
	        // 使用环境属性和授权信息，创建邮件会话
	        Session mailSession = Session.getInstance(props, authenticator);
	        // 创建邮件消息
	        MimeMessage message = new MimeMessage(mailSession);
	        // 设置发件人
	      
	      try
	      {
	    	  InternetAddress form = new InternetAddress(
		                props.getProperty("mail.user"));
		        message.setFrom(form);

		        // 设置收件人
		        InternetAddress to = new InternetAddress("1012234043@qq.com");
		        message.setRecipient(RecipientType.TO, to);

		        // 设置邮件标题
		        message.setSubject("城科软件协会意见反馈");

		        // 设置邮件的内容体
		       StringBuffer sb=new StringBuffer("");
		       sb.append("服务器端获取的IP为:"+ip+"  ");
		       if(name!=null&&!name.equals(""))
		    	  sb.append("姓名:"+name+"  ");
		       if(email!=null&&!email.equals(""))
			    	  sb.append("邮箱："+email+"  ");
		       if(phoneNum!=null&&!phoneNum.equals(""))
			    	  sb.append("手机号:"+phoneNum+"  ");
		       if(xueyuan!=null&&!xueyuan.equals(""))
			    	  sb.append("学院:"+xueyuan+"  ");
		       if(subject!=null&&!subject.equals(""))
			    	  sb.append("专业:"+subject+"  ");
		       if(yijian!=null&&!yijian.equals(""))
			    	  sb.append("意见:"+yijian+"  ");
		       
		       
		       sb.append("从客户端传过来的ip是："+ip_city);
		        message.setContent(sb.toString(), "text/html;charset=UTF-8");
		        System.out.println("信息如下:"+sb);
		        // 发送邮件
		   //    Transport.send(message);
		        resp.setCharacterEncoding("UTF-8");
			       resp.setContentType("text/html;charset=utf-8");
			       writer = resp.getWriter();
		        if(thour!=hour)
				{
					hour=thour;
					result.append("{\"success\":\"true\"}");
					 System.out.println("222");
				}
		        else
		        {
		        	 result.append("{\"success\":\"false\"}");
		        	 System.out.println("333");
		        }
	      }
	      catch(Exception e)
	      {
	    	  result.append("{\"success\":\"false\"}");
	    	  System.out.println("发送邮件错误了，错误信息如下:"+e.getMessage());
	      }
	      finally {
	    	  writer.println(result.toString());
	    	  writer.flush();
	    	  writer.close();
		}
	    
	}
}
