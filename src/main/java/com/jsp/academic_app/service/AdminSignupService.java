package com.jsp.academic_app.service;

import com.jsp.academic_app.dao.AdminSighnupDao;
import com.jsp.academic_app.dto.AdminSignup;

public class AdminSignupService {

	AdminSighnupDao adm=new AdminSighnupDao();		
	public AdminSignup saveSignupService(AdminSignup adminsignup) 
	{
		
		return adm.saveSignupDetails(adminsignup);
		
	}
	
	
}
