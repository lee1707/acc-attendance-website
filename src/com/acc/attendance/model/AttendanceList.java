package com.acc.attendance.model;

import java.util.ArrayList;

public class AttendanceList {
	//1. 값을 담을 ArrayList를 각각 만든다
	private ArrayList<Integer> numList = new ArrayList<Integer>();
	
	private ArrayList<String> nameList = new ArrayList<String>();
	
	private ArrayList<Integer> attPercentList = new ArrayList<Integer>();
	
	private ArrayList<Integer> attTotalList = new ArrayList<Integer>();
	
	private ArrayList<String> extraList = new ArrayList<String>();
	
	private boolean lastPage = false;
	//2. 생성자를 만든다
	public AttendanceList() {		
	}
	//3. set메서드를 만든다. 리턴값 없음
	public void setNum(int index, Integer num) {
		this.numList.add(index,num);
	}
	public void setName(int index, String name) {
		this.nameList.add(index,name);
	}
	public void setAttPercent(int index, Integer attPercent) {
		this.attPercentList.add(index,attPercent);
	}
	public void setAttTotal(int index, Integer attTotal) {
		this.attTotalList.add(index,attTotal);
	}
	public void setExtra(int index, String extra) {
		this.extraList.add(index, extra);
	}
	public void setLastPage(boolean lastPage) {
		this.lastPage = lastPage;
	}
	//4.get메서드를 만든다. 딱 요만큼의 배열을 만들기 위해(효율적!) new Integer[numList.size()]를 한다
	public Integer[] getNum() {
		return numList.toArray(new Integer[numList.size()]);
	}
	public String[] getName() {
		return nameList.toArray(new String[nameList.size()]);
	}
	public Integer[] getAttPercent() {
		return attPercentList.toArray(new Integer[attPercentList.size()]);
	}
	public Integer[] getAttTotal() {
		return attTotalList.toArray(new Integer[attTotalList.size()]);
	}
	public String[] getExtra() {
		return extraList.toArray(new String[extraList.size()]);
	}
	public boolean islastPage() {
		return lastPage;
	}
	public int getListSize() {
		return numList.size();
	}
}
