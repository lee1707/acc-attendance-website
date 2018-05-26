package com.acc.attendance.model;
import java.sql.*;

import javax.servlet.*;
public class BoardItem {
	private int seqNo;		//순번
	private String title; 	//제목
	private String content; //내용
	private String writer; 	//작성자
	private Date date;		//저장일자
	private Time time;		//저장시각
	public BoardItem(){
	}
	public void setSeqNo(int seqNo) {
		this.seqNo = seqNo;
	} 
	public String getTitle(){
		return title;
	}
	public String getContent(){
		return content;
	}
	public String getWriter(){
		return writer;
	}
	public Date getDate(){
		return date;
	}
	public Time getTime(){
		return time;
	}
	public void readDB() throws ServletException {
						//데이터베이스로부터 게시글을 읽는 메서드
	
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/webdb", "root", "1234");
			if(conn == null)
				throw new Exception("데이터베이스에 연결할 수 없습니다");
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from Board where seqNo = '"+seqNo+"';");
			if(rs.next()) {
				title = rs.getString("title");
				content = rs.getString("content");
				writer = rs.getString("writer");
				date = rs.getDate("wdate");
				time = rs.getTime("wtime");
			}
		}
		catch (Exception e) {
			throw new ServletException(e);
		}
		finally {
			try {
				stmt.close();
			}
			catch (Exception ignored) {
			}
			try {
				conn.close();
			}
			catch (Exception ignored) {
			}
		}
	}
}