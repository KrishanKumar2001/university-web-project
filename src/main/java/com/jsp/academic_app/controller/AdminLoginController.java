package com.jsp.academic_app.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.academic_app.dao.AdminLoginDao;
import com.jsp.academic_app.dto.AdminLogin;

@SuppressWarnings("serial")
@WebServlet("/adminLogin")
public class AdminLoginController extends  HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter printwriter= resp.getWriter();
		String email=req.getParameter("loginemail");
		String password=req.getParameter("loginpassword");
		
		String system_captcha=req.getParameter("systemCaptcha");
		String user_captcha=req.getParameter("userCaptcha");
		
		
	//=================	captcha validation
		
		if(system_captcha.equals(user_captcha)) 
		{
			AdminLoginDao ad=new AdminLoginDao();
			AdminLogin adm=ad.adminLogin(email);
			if(adm!=null) 
			{
				if(adm.getPassword().equals(password)) 
				{
					RequestDispatcher dispatcher = req.getRequestDispatcher("adminprofile.jsp");
					dispatcher.forward(req, resp);
					
				}else 
				{
//     				printwriter.write("<html><body>");
//					printwriter.write("<h1>Invalid password</h1>");
//					printwriter.write("<script>");
//					printwriter.write("alert('Invalid password');");
//					printwriter.write("</script>");
//					printwriter.write("</html></body>");
					
				    req.setAttribute("adminIncorrectPassword", "Invalid Password");
     				RequestDispatcher dispatcher = req.getRequestDispatcher("adminlogin.jsp");
					dispatcher.forward(req, resp);
					
				}
				
				
			}else 
			{
				
//				printwriter.write("<html><body>");
//				printwriter.write("<h1>Invalid Email</h1>");
//				printwriter.write("</html></body>");
				
				req.setAttribute("AdminIncorrectEmail", "invalid Email ");
				RequestDispatcher dispatcher = req.getRequestDispatcher("adminlogin.jsp");
				dispatcher.forward(req, resp);
			}
			
			
			
		}else 
		{
//			printwriter.write("<html><body>");
//			printwriter.write("<h1>Invalid Captcha</h1>");
//			printwriter.write("</html></body>");
			req.setAttribute("AdminIncorrectCaptcha", "invalid Captcha");
			RequestDispatcher dispatcher = req.getRequestDispatcher("adminlogin.jsp");
			dispatcher.forward(req, resp);
			
		}
		
	
		
   //=========================		
		
	}
}
