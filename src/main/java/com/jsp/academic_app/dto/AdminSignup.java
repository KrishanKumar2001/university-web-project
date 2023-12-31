/**
 * 
 */
package com.jsp.academic_app.dto;

/**
 * @author krish
 *
 */
public class AdminSignup {
	
	private String name;
	private String email;
	private String password;
	
	/**
	 * no argument constructor
	 */
	public AdminSignup() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param name
	 * @param email
	 * @param password
	 */
	public AdminSignup(String name, String email, String password) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
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
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return name+email+password;
	}
	
	
	

}
