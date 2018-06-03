package com.acc.attendance.model;

import com.acc.attendance.util.StringUtil;

public class SignUp {

	private String name;
	private String id;
	private String password;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String toString() {
		return "name=" + name + ", " + "id=" + id + "," + "password=" + password;
	}
	
	public boolean isInvalid() {
		return StringUtil.isEmpty(name)
				|| StringUtil.isEmpty(id)
				|| StringUtil.isEmpty(password);
	}
	
}