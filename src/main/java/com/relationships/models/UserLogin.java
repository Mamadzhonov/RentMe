package com.relationships.models;

import javax.validation.constraints.NotEmpty;

public class UserLogin {

	@NotEmpty(message = "This field can not be empty.")
	private String email;
	@NotEmpty(message = "This field can not be empty.")
	private String password;

	public UserLogin() {
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	};

}
