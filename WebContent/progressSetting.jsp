<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@page import="java.sql.*"%>
<%
	String name = request.getParameter("name");
	String progress = request.getParameter("progress");
	if(name == null || progress == null)
		throw new Exception("데이터를 입력하세요");
	Connection conn = null;
	Statement stmt = null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/webdb","root","1234");
		if(conn == null)
			throw new Exception("데이터베이스에 연결할 수 없습니다");
		stmt = conn.createStatement();
		String command = String.format("insert into progress " +
			"(name, progress) values ('%s', '%s');",
			name, progress);
		int rowNum = stmt.executeUpdate(command);
		if (rowNum < 1)
			throw new Exception("데이터를 DB에 입력할 수 없습니다.");
	}
	finally{
		try{
			stmt.close();
		}
		catch (Exception ignored){
		}
		try{
			conn.close();
		}
		catch (Exception ignored){
		}
	}
	response.sendRedirect("Main.jsp");
%>