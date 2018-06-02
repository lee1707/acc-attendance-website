package com.acc.attendance.model;

import java.util.ArrayList;

public class ProgressListBean {

	/* 자바빈에 property를 저장하기
	 * set메서드를 호출할때 인덱스 값을 파라미터로 받는 set메서드를 사용, 이를 위한 ArrayList 필요 
	 * int, name, progress(int)*/
	
	private ArrayList<Integer> numList = new ArrayList<Integer>();
											//순번
	private ArrayList<String> nameList = new ArrayList<String>();
											//progress 이름
	private ArrayList<Integer> progressList = new ArrayList<Integer>();
											//progress의 퍼센트
	private boolean lastPage = false;
	
	//생성자
	public ProgressListBean() {
	}
	//Servlet을 위한 set메서드, 데이터를 하나씩 읽을때마다 set메서드를 호출하니 인덱스 값을 파라미터로 받는 것
	//index는 numList상 숫자, num은 원래 표의 숫자 
	public void setNum(int index, Integer num) {
		this.numList.add(index,num);
	}
	public void setName(int index, String name) {
		this.nameList.add(index,name);
	}
	public void setProgress(int index, Integer progress) {
		this.progressList.add(index,progress);
	}
	public void setLastPage(boolean lastPage) {
		this.lastPage = lastPage;
	}
	
	//get임, JSP페이지에서는 get은 익스프레스 언어로 간접호출함
	//그때는 배열을 통째로 리턴하는 get메서드를 호출해야함
	public Integer[] getNum() {
		//toArray는 List 컨테이너의 인스턴스를 배열로 만들어줌. Integer배열 인스턴스가 파라미터로 들어감.
		return numList.toArray(new Integer[numList.size()]);
	}
	public String[] getName() {
		return nameList.toArray(new String[nameList.size()]);
	}
	public Integer[] getProgress() {
		return progressList.toArray(new Integer[numList.size()]);
	}
	public boolean isLastPage() {
		return lastPage;
	}
	public int getListSize() {
		return numList.size();
	}
}
