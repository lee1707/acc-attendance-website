package com.acc.attendance.model;

public class ProgressInput {
	private int num;

	private String name;
	
	private int progress;

	private boolean lastPage = false;
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getProgress() {
		return progress;
	}

	public void setProgress(int progress) {
		this.progress = progress;
	}

	@Override
	public String toString() {
		return "name: " + name + ", progress: " + progress;
	}
	
	
}
