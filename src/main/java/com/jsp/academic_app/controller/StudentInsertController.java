package com.jsp.academic_app.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.academic_app.dto.Student;
import com.jsp.academic_app.service.StudentService;


@WebServlet("/submitStudent")
public class StudentInsertController extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");		
		String department=req.getParameter("department");
		String batch=req.getParameter("batch");
		String address=req.getParameter("address");
		
		Student student =new Student(name,email,password,department,batch,address);
		
		StudentService studentService=new StudentService();
		Student s=studentService.insertStudentService(student);
		
		PrintWriter printwriter=resp.getWriter();
		if(s!=null) 
		{
//			printwriter.write("<html><body>");
//			printwriter.write("<h1>Student Registred Succesfully</h1>");
//			printwriter.write("</html></body>");
			
			  req.setAttribute("studentRegisterd", "Student Register Succesfully!");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("addStudent.jsp");
			 dispatcher.include(req, resp);
		}else 
		{
			RequestDispatcher dispatcher = req.getRequestDispatcher("addStudent.jsp");
			 dispatcher.include(req, resp);
		}
		
	}
	
	

}



