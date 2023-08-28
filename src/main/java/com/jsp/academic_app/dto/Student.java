package com.jsp.academic_app.dto;

import java.time.LocalDate;

/**
 * 
 * @author krish
 *
 */
public class Student {
	
	private int studetId;
	private String studentName;
	private String studentEmail;
	private String studentPassword;
	private String studentDepartment;
	private String Batch;
	private String studentAddress;
	
	
	public Student() {
		// TODO Auto-generated constructor stub
	}


	/**
	 * @param studetId
	 * @param studentName
	 * @param studentEmail
	 * @param studentPassword
	 * @param studentDepartment
	 * @param batch
	 * @param studentAddress
	 */
	public Student(int studetId, String studentName, String studentEmail, String studentPassword,
			String studentDepartment, String batch, String studentAddress) {
		super();
		this.studetId = studetId;
		this.studentName = studentName;
		this.studentEmail = studentEmail;
		this.studentPassword = studentPassword;
		this.studentDepartment = studentDepartment;
		Batch = batch;
		this.studentAddress = studentAddress;
	}


	/**
	 * @param studentName
	 * @param studentEmail
	 * @param studentPassword
	 * @param studentDepartment
	 * @param batch
	 * @param studentAddress
	 */
	public Student(String studentName, String studentEmail, String studentPassword, String studentDepartment,
			String batch, String studentAddress) {
		super();
		this.studentName = studentName;
		this.studentEmail = studentEmail;
		this.studentPassword = studentPassword;
		this.studentDepartment = studentDepartment;
		Batch = batch;
		this.studentAddress = studentAddress;
	}


	/**
	 * @return the studetId
	 */
	public int getStudetId() {
		return studetId;
	}


	/**
	 * @param studetId the studetId to set
	 */
	public void setStudetId(int studetId) {
		this.studetId = studetId;
	}


	/**
	 * @return the studentName
	 */
	public String getStudentName() {
		return studentName;
	}


	/**
	 * @param studentName the studentName to set
	 */
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}


	/**
	 * @return the studentEmail
	 */
	public String getStudentEmail() {
		return studentEmail;
	}


	/**
	 * @param studentEmail the studentEmail to set
	 */
	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}


	/**
	 * @return the studentPassword
	 */
	public String getStudentPassword() {
		return studentPassword;
	}


	/**
	 * @param studentPassword the studentPassword to set
	 */
	public void setStudentPassword(String studentPassword) {
		this.studentPassword = studentPassword;
	}


	/**
	 * @return the studentDepartment
	 */
	public String getStudentDepartment() {
		return studentDepartment;
	}


	/**
	 * @param studentDepartment the studentDepartment to set
	 */
	public void setStudentDepartment(String studentDepartment) {
		this.studentDepartment = studentDepartment;
	}


	/**
	 * @return the batch
	 */
	public String getBatch() {
		return Batch;
	}


	/**
	 * @param batch the batch to set
	 */
	public void setBatch(String batch) {
		Batch = batch;
	}


	/**
	 * @return the studentAddress
	 */
	public String getStudentAddress() {
		return studentAddress;
	}


	/**
	 * @param studentAddress the studentAddress to set
	 */
	public void setStudentAddress(String studentAddress) {
		this.studentAddress = studentAddress;
	}

	
	

	
}
