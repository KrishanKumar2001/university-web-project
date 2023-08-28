package com.jsp.academic_app.service;

import com.jsp.academic_app.dao.AdminLoginDao;
import com.jsp.academic_app.dto.AdminLogin;

public class AdminLoginService {
	
	public AdminLogin adminLoginService(String email) 
	{
		AdminLoginDao adm=new AdminLoginDao();
		return adm.adminLogin(email);
		
		
	} 
	
	
	

}
