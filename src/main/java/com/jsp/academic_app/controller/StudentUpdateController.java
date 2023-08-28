package com.jsp.academic_app.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.academic_app.dao.StudentDao;
import com.jsp.academic_app.dto.Student;


@WebServlet("/updateStudentData")
public class StudentUpdateController extends HttpServlet
{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String department=req.getParameter("department");
		String batch=req.getParameter("batch");
		String address=req.getParameter("address");
		
		Student student =new Student();
		
		student.setStudetId(id);
		student.setStudentName(name);
		student.setStudentEmail(email);
		student.setStudentPassword(password);
		student.setStudentDepartment(department);
		student.setBatch(batch);
		student.setStudentAddress(address);
		
		
		StudentDao studentDao=new StudentDao();
		studentDao.updateStudentDao(student);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("displaystudent.jsp");
		dispatcher.forward(req, resp);
	}
	

}
