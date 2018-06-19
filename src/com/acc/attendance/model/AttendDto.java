package com.acc.attendance.model;

import com.acc.attendance.util.StringUtil;

public class AttendDto {
	private String id;
	private String status;
	private int count;
	private String extra;
	private int meetingHeldAfterJoin;
	
	public int getMeetingHeldAfterJoin() {
		return meetingHeldAfterJoin;
	}

	public void setMeetingHeldAfterJoin(int meetingHeldAfterJoin) {
		this.meetingHeldAfterJoin = meetingHeldAfterJoin;
	}

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

	AttendDto(String id, String status, int count, String extra, int meetingHeldAfterJoin){
		this.id = id;
		this.status = status;
		this.count = count;
		this.extra = extra;
		this.meetingHeldAfterJoin = meetingHeldAfterJoin;
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
		return "id: " + id + ", status: " + status +", count: "+count+", extra: "+extra+", meetingHeldAfterJoin: "+meetingHeldAfterJoin;
	}
	
	public boolean isInvalid() {
		return StringUtil.isEmpty(id)
				|| StringUtil.isEmpty(status);
	}
	
}
