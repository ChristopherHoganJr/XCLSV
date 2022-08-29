package com.xclsv.models;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class LoginUser {

	@NotEmpty(message = "Must enter an email address.")
	@Email(message = "Must enter a valid email.")
	private String email;

	@NotEmpty(message = "Must enter a password")
	@Size(min = 8, max = 30, message = "You did not enter a valid password.")
	private String password;

	public LoginUser() {

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
	}
}
