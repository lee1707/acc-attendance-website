package com.acc.attendance;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.acc.attendance.model.ProgressInput;

@WebServlet("/Progress-list")
public class ProgressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// public ProgressServlet() {
	// super();
	// // TODO Auto-generated constructor stub
	// }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		// 이 LAST SEQ NO가 어디서 온건지 모르겠음
		String strUpperSeqNo = request.getParameter("LAST_SEQ_NO");
		int upperSeqNo;
		if (strUpperSeqNo == null)
			upperSeqNo = Integer.MAX_VALUE;
		else
			upperSeqNo = Integer.parseInt(strUpperSeqNo);
		List<ProgressInput> list = readDB(upperSeqNo);
		request.setAttribute("Progress_ListBean", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("progress.jsp");
		dispatcher.forward(request, response);
	}

	private List<ProgressInput> readDB(int upperSeqNo) throws ServletException {
		List<ProgressInput> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		try {
			Class	.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb", "root", "1234");
			if (conn == null)
				throw new Exception("데이터 베이스에 연결할 수 없습니다");
			stmt = conn.createStatement();

			ResultSet rs = stmt
					.executeQuery("select * from progress where num < " + upperSeqNo + " order by num desc;");
			for (int cnt = 0; cnt < 6; cnt++) {
				if (!rs.next())
					break;
				ProgressInput row = new ProgressInput();
				
				row.setNum(rs.getInt("num"));
				row.setName(rs.getString("name"));
				row.setProgress(rs.getInt("progress"));
				list.add(row);
			}
//			if (!rs.next())
//				list.setLastPage(true);
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
