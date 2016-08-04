package com.levi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



import com.levi.model.User;
import com.levi.util.PropertiesUtil;

public class LoginDao
{
	public User login(Connection con,User user)throws Exception
	{
		User resultUser=null;
		String sql="select *from T_user where stuId=? and password=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1,user.getStuId());
		pstmt.setString(2, user.getPassword());
		ResultSet rs=pstmt.executeQuery();
		if(rs.next())
		{
			resultUser=new User();
			resultUser.setStuId(rs.getString("stuId"));
			resultUser.setPassword(rs.getString("password"));
		}
		return resultUser;
	}
	public int userUpdate(Connection con,User user)throws Exception
	{
		/*String sql="update t_user set nickName=?,imageName=?,mood=? where userId=? ";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, user.getNickName());
		pstmt.setString(2, user.getImageName());
		pstmt.setString(3, user.getMood());
		pstmt.setInt(4, user.getUserId());
		return pstmt.executeUpdate();*/
		return 0;
	}
}
