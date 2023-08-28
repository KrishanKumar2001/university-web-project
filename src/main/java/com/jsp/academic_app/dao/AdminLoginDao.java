package com.jsp.academic_app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jsp.academic_app.connection.ConnectionClass;
import com.jsp.academic_app.dto.AdminLogin;
import com.jsp.academic_app.dto.AdminSignup;

public class AdminLoginDao {
	Connection con=ConnectionClass.getConnection();
	
	public AdminLogin adminLogin(String emailId) 
	{
		//step-3 import query
	
		String display_query="SELECT * FROM admin_signup WHERE email=?";
		
		
		try {
			//step-4 create statment
			PreparedStatement pst=con.prepareStatement(display_query);
			
			pst.setString(1,emailId );
			ResultSet rst=pst.executeQuery();
			
			if(rst.next()) 
			{  
				AdminLogin adminlogin=new AdminLogin();
				
				adminlogin.setEmail(rst.getString("email"));
				adminlogin.setPassword(rst.getString("password"));
				
				return adminlogin;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return null;
		
	}  

}
