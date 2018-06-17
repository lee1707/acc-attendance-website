package com.acc.attendance;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.acc.attendance.model.AttendanceList;
import com.acc.attendance.model.ProgressInput;

@WebServlet("/Attendance-list")
public class AttendanceListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain;charset=UTF-8");
		String strUpperSeqNo = request.getParameter("LAST_SEQ_NO");
		int upperSeqNo;
		if (strUpperSeqNo == null)
			upperSeqNo = Integer.MAX_VALUE;
		else
			upperSeqNo = Integer.parseInt(strUpperSeqNo);
		AttendanceList list = readDB(upperSeqNo);
		request.setAttribute("AttendanceList", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("attendanceCheck.jsp");
		dispatcher.forward(request, response);
	}
	private AttendanceList readDB(int upperSeqNo) throws ServletException{
		//1.자바빈 객체생성
		AttendanceList list = new AttendanceList();
		//2. 커넥션과 statement변수 생성, null값 주기
		Connection conn = null;
		Statement stmt = null;
		try {
			//3. jdbc 불러오기
			Class.forName("com.mysql.jdbc.Driver");
			//4.conn에 넣기
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?useUnicode=true&characterEncoding=utf8", "root", "1234");
			if (conn == null)
				throw new Exception("데이터 베이스에 연결할 수 없습니다");
			//5.stmt에 넣기
			stmt = conn.createStatement();
			//6.rs에넣기
			ResultSet rs = stmt
					.executeQuery("select * from member_info where num < " 
								+ upperSeqNo + " order by num desc;");
			for (int cnt = 0; cnt < 6; cnt++) {
				if (!rs.next())
					break;
				list.setNum(cnt, rs.getInt("num"));
				list.setName(cnt, rs.getString("name"));
				list.setAttPercent(cnt, rs.getInt("attPercent"));
				list.setAttTotal(cnt, rs.getInt("attTotal"));
				list.setExtra(cnt, rs.getString("extra"));
			}
			if (!rs.next())
				list.setLastPage(true);
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
