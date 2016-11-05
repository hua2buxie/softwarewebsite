package com.levi.servlet;

import java.io.IOException;
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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String phoneNum=req.getParameter("phoneNum");
		String xueyuan=req.getParameter("xueyuan");
		String subject=req.getParameter("subject");
		String yijian=req.getParameter("yijian");
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
	        props.put("mail.user", "18983027657@163.com");
	        // 访问SMTP服务时需要提供的密码
	        props.put("mail.password", "lw886520");

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
		        message.setContent(sb.toString(), "text/html;charset=UTF-8");
		        System.out.println("信息如下:"+sb);
		        // 发送邮件
		        Transport.send(message);
	      }
	      catch(Exception e)
	      {
	    	  System.out.println("发送邮件错误了，错误信息如下:"+e.getMessage());
	      }
	    
	}
}
