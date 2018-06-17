package com.acc.attendance.model;

public class AttendDto {
	String id;
	String status;
	
	AttendDto(String id, String status){
		this.id = id;
		this.status = status;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public String toString() {
		return "id: " + id + ", status: " + status;
	}
	
}
