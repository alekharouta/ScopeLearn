/**
 * alekh
 */

package com.scopelearn.application.entity;

import javax.validation.constraints.NotEmpty;

public class LoginDetails {
	
	@NotEmpty(message = "name must not be empty")
	private String username;

	@NotEmpty(message = "password must not be empty")
	private String password;


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LoginDetails(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public LoginDetails() {
		super();		
	}

}
