/**
 * 
 */
package com.jsp.academic_app.dto;

/**
 * @author krish
 *
 */
public class AdminLogin {
	
	private String email;
	private String password;
	
	public AdminLogin() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param email
	 * @param password
	 */
	public AdminLogin(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
