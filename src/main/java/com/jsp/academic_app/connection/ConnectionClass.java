package com.jsp.academic_app.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionClass {
	
	/**
	 * 
	 * @return connection by createConnection method
	 */
     public static Connection getConnection() 
     {
    	
        try {
        	//step-1 create load or register Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//step-2 create conection
			
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/admin_database","root","root");
			return con;
		} catch (ClassNotFoundException | SQLException e) {
			 
			e.printStackTrace();
		}
    	  
    	 return null;
     }
     
     
     

}
