package com.jsp.academic_app.service;

import java.util.List;

import com.jsp.academic_app.dao.StudentDao;
import com.jsp.academic_app.dto.Student;

public class StudentService {
	
	StudentDao studentDao=new StudentDao();
	
	public Student insertStudentService(Student student) 
	{
		return studentDao.insertStudentDao(student);
	}

	public List<Student> displayAllStudentService() 
	{
		return studentDao.displayAllStudentDao();
	}
	
	public int deleteStudentService(int studentId) 
	{
		return studentDao.deleteStudentDao(studentId);
	} 
	
}
