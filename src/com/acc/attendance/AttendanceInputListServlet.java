package com.acc.attendance;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.acc.attendance.model.AttendDto;
import com.acc.attendance.model.AttendanceList;
import com.google.gson.Gson;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/Attendance-InputList")
public class AttendanceInputListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String attendance;
	private String num;
	private String extra;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/plain;charset=UTF-8");
		
		String json;
		try (Scanner scanner = new Scanner(request.getInputStream())) {
			StringBuilder builder = new StringBuilder();
			while(scanner.hasNextLine()) {
				builder.append(scanner.nextLine());
			}
			
			json = builder.toString();
		} catch(IOException e) {
			json = "{}";
		}
		
		System.out.println(json);
		Gson gson = new Gson();
		AttendDto[] dtoArray = gson.fromJson(json, AttendDto[].class);
		
		for(AttendDto dto : dtoArray) {
			System.out.println(dto);
			
			// dto - id, status,
			// status = O => member_info id = id count++;
			
			// update member_info set ~ where id = ?
		}
		
//		num = request.getParameter("num");
//		attendance = request.getParameter("att");
//		if (attendance == "o") {
//			attendance = "1";
//		} else {
//			attendance = "0";
//		}
//		extra = request.getParameter("memo");
//
//		AttendanceList list = writeDB(upperSeqNo);
//		request.setAttribute("AttendanceList", list);
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/Attendance-list");
//		dispatcher.forward(request, response);
	}

	private AttendanceList writeDB(int upperSeqNo) throws ServletException {
		// 1.자바빈 객체생성
		AttendanceList list = new AttendanceList();
		// 2. 커넥션과 statement변수 생성, null값 주기
		Connection conn = null;
		Statement stmt = null;
		try {
			// 3. jdbc 불러오기
			Class.forName("com.mysql.jdbc.Driver");
			// 4.conn에 넣기
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/webdb?useUnicode=true&characterEncoding=utf8", "root", "1234");
			if (conn == null)
				throw new Exception("데이터 베이스에 연결할 수 없습니다");
			// 5.stmt에 넣기
			// stmt = conn.createStatement();
			PreparedStatement ps = null;
			System.out.println(upperSeqNo);
			if(num!=null) {
			for (int cnt = 0; cnt < 6; cnt++) {
				//num으로 불러오는것 안됨, 다 null로 뜸
				//if(attendance==1) ps.setInt( attTotal=attTotal+1 );
				ps = (PreparedStatement) conn
						.prepareStatement("update member_info set attTotal=?, extra=? where num==?");
				ps.setInt(1, Integer.parseInt(attendance));
				ps.setString(2, extra);
				ps.setInt(3, Integer.parseInt(num));

				ps.execute();
			}
			}
		} catch (Exception e) {
			throw new ServletException(e);
		} finally {
			try {
				stmt.close();
			} catch (Exception ignored) {
			}
			try {
				conn.close();
			} catch (Exception ignore) {
			}
		}
		return list;
	}
}