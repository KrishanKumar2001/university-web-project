package com.jsp.academic_app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.jsp.academic_app.connection.ConnectionClass;
import com.jsp.academic_app.dto.AdminSignup;

public class AdminSighnupDao {
	
	Connection con=ConnectionClass.getConnection();
	
	public AdminSignup saveSignupDetails(AdminSignup adminsignup) 
	{
		//step-3 import insert query
		String insert_query="INSERT INTO admin_signup VALUES(?,?,?)";
		
		
		try {
			//STEP-4 create statement
			PreparedStatement pst=con.prepareStatement(insert_query);
			pst.setString(1,adminsignup.getName());
			pst.setString(2,adminsignup.getEmail() );
			pst.setString(3,adminsignup.getPassword() );
			
			//step-5 execute statment
			pst.execute();
			
			return adminsignup;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return null;
		
	}
	
	

}
