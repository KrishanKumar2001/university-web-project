package com.jsp.academic_app.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.academic_app.dto.AdminSignup;
import com.jsp.academic_app.service.AdminSignupService;
@WebServlet("/adminSignup")
public class AdminSignupController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		AdminSignup ads=new AdminSignup(name,email,password);
		AdminSignupService a=new AdminSignupService();
		AdminSignup adminsignup=a.saveSignupService(ads);
		
		PrintWriter printwriter= resp.getWriter();
		if(adminsignup!=null) 
		{
			
			printwriter.write("<html><body>");
			printwriter.write("<h1>Congrats!! Id is created</h1>");
			printwriter.write("<h1>Please Login here to Enter Your Profile</h1>");
			printwriter.write("</html></body>");
			
		}else 
		{
			printwriter.write("<html><body>");
			printwriter.write("<h1>Sorry!!Failed to Sign Up </h1>");
			printwriter.write("<h1>Sign Up Again </h1>");
			printwriter.write("</html></body>");
			
		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("adminlogin.jsp");
		 dispatcher.include(req, resp);
		
	}

}
