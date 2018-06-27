package com.acc.attendance;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.acc.attendance.model.APIResult;
import com.acc.attendance.model.AttendDto;
import com.google.gson.Gson;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/Board-Input")
public class BoardInputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String title;
	private String content;
	private String writer;
	private String wdate;
	private String wtime;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/plain;charset=UTF-8");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/webdb?useUnicode=true&characterEncoding=utf8", "root", "1234");
			if (conn == null)
				throw new Exception("데이터베이스에 연결할 수 없습니다");
			stmt = conn.createStatement();
			PreparedStatement ps = null;

			ps = (PreparedStatement) conn
					.prepareStatement("insert board set title=?, content=?, writer=?, wdate=?, wtime=? where num=?");

			ps.setString(1, title);
			ps.setString(2, content);
			ps.setString(3, writer);
			ps.setString(4, wdate);
			ps.setString(5, wtime);
			ps.setInt(6, Integer.parseInt(num));

			ps.execute();

		} finally {
			try {
				stmt.close();
			} catch (Exception ignored) {
			}
			try {
				conn.close();
			} catch (Exception ignored) {
			}
		}
	}
}
