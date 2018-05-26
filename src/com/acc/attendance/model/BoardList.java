package com.acc.attendance.model;

import java.sql.*;
import java.util.ArrayList;


public class BoardList {
	private ArrayList<Integer> seqNoList = new ArrayList<Integer>();	//순번
	private ArrayList<String> titleList = new ArrayList<String>(); 		//제목
	private ArrayList<String> writerList = new ArrayList<String>();		//작성자
	private ArrayList<Date> dateList = new ArrayList<Date>();		//저장일자
	private ArrayList<Time> timeList = new ArrayList<Time>(); 			//저장시각
	private boolean lastPage = false;
	private boolean firstPage = false;

	public BoardList(){
	}
	public void setSeqNo(int index, Integer seqNo){
		this.seqNoList.add(index, seqNo);
	}
	public void setTitle(int index, String title){
		this.titleList.add(index, title);
	}
	public void setWriter(int index, String writer){
		this.writerList.add(index, writer);
	}
	public void setDate(int index, Date date){
		this.dateList.add(index, date);
	}
	public void setTime(int index, Time time){
		this.timeList.add(index, time);
	}
	public void setLastPage(boolean lastPage){
		this.lastPage = lastPage;
	}
	public void setfirstPage(boolean firstPage){
		this.firstPage = firstPage;
	}

	public Integer[] getSeqNo() {
		return seqNoList.toArray(new Integer[seqNoList.size()]);
	}
	public String[] getTitle() {
		return titleList.toArray(new String[titleList.size()]);
	}
	public String[] getWriter(){
		return writerList.toArray(new String[writerList.size()]);
	}
	public Date[] getDate(){
		return dateList.toArray(new Date[dateList.size()]);
	}
	public Time[] getTime(){
		return timeList.toArray(new Time[timeList.size()]);
	}
	public boolean isLastPage(){
		return lastPage;
	}
	public boolean isfirstPage(){
		return firstPage;
	}
	public int getListSize(){
		return seqNoList.size();
	}
}