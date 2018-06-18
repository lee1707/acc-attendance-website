package com.acc.attendance.model;

public class AttendDto {
	String id;
	String status;
	int count;
	String extra;
	
	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getExtra() {
		return extra;
	}

	public void setExtra(String extra) {
		this.extra = extra;
	}

	AttendDto(String id, String status, int count, String extra){
		this.id = id;
		this.status = status;
		this.count = count;
		this.extra = extra;
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
		return "id: " + id + ", status: " + status +", count: "+count+", extra: "+extra;
	}
	
}
