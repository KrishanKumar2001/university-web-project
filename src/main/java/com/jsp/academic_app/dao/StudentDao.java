package com.jsp.academic_app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jsp.academic_app.connection.ConnectionClass;
import com.jsp.academic_app.dto.Student;

public class StudentDao {
	
	Connection connection=ConnectionClass.getConnection();
	
	public Student insertStudentDao(Student student) 
	{
		String insert_query="INSERT INTO student (name,email,password,department,batch,address) VALUES(?,?,?,?,?,?)";
		
		try {
			PreparedStatement pst=connection.prepareStatement(insert_query);
			
			pst.setString(1, student.getStudentName());
			pst.setString(2, student.getStudentEmail());
			pst.setString(3, student.getStudentPassword());
			pst.setString(4, student.getStudentDepartment());
			pst.setString(5, student.getBatch());
			pst.setString(6, student.getStudentAddress());
			
			pst.execute();
			
			return student;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return null;
	}
	
	
	/**
	 * displey student method
	 * @return
	 */
	public List<Student> displayAllStudentDao()
	{
		String display_query="SELECT * FROM student";
		List<Student> l1=new ArrayList<Student>();
		
		try {
			PreparedStatement pst= connection.prepareStatement(display_query);
			ResultSet rst=pst.executeQuery();
			
			while(rst.next()) 
			{
				Student student=new Student();
				
				student.setStudetId(rst.getInt("id"));
				student.setStudentName(rst.getString("name"));
				student.setStudentEmail(rst.getString("email"));
				student.setStudentPassword(rst.getNString("password"));
				student.setStudentDepartment(rst.getNString("department"));
				student.setBatch(rst.getString("batch"));
				student.setStudentAddress(rst.getNString("address"));
				
				l1.add(student);
			}
			
			return l1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	
	/*
	 * get studnet by id
	 */
	
	
	public Student getStudentByIdDao(int studentId) 
	{
		String display_student="SELECT * From student Where id=?";
		
		try {
			PreparedStatement pst=connection.prepareStatement(display_student);
			pst.setInt(1, studentId);
			ResultSet rst=pst.executeQuery();
			
			if(rst.next()) 
			{
				Student student =new Student();
				
				student.setStudetId(rst.getInt("id"));
				student.setStudentName(rst.getString("name"));
				student.setStudentEmail(rst.getString("email"));
				student.setStudentPassword(rst.getString("password"));
				student.setStudentDepartment(rst.getString("department"));
				student.setBatch(rst.getString("batch"));
				student.setStudentAddress(rst.getString("address"));
				return student;
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * delete student method
	 */
	
	
	
	public int deleteStudentDao(int studentId) 
	{
		//step-3 import delete query
		String delete_query="DELETE FROM student WHERE id=?";
		
		
		
		try {
			
			//step-4 create statment
			PreparedStatement pst=connection.prepareStatement(delete_query);
			pst.setInt(1, studentId);
			return pst.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return 0;
	}
	
	
	//========================Update======================
	
		/*
		 * updateCustomerData
		 */
		
	       public int updateStudentDao(Student student) 
	       {
	    	   //step-3 import update Query
	    	   String update_query="UPDATE student SET name=?,email=?,password=?, department=?,batch=?,address=? WHERE id =?";
	    	   
	    	   
	    	   try {
	    		   
	    		 //step-4 create statment
				PreparedStatement pst=connection.prepareStatement(update_query);
				  
				pst.setString(1, student.getStudentName());
				pst.setString(2, student.getStudentEmail());
				pst.setString(3, student.getStudentPassword());
				pst.setString(4, student.getStudentDepartment());
				pst.setString(5, student.getBatch());
				pst.setString(6, student.getStudentAddress());
				pst.setInt(7, student.getStudetId());
				
				return pst.executeUpdate();
			   } catch (SQLException e) {
				
				e.printStackTrace();
			}
			return 0;
	    	   
	       }
		
	
	

}
