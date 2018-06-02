package com.acc.attendance;

import java.io.IOException;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.acc.attendance.model.ProgressListBean;

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
		ProgressListBean list = readDB(upperSeqNo);
		request.setAttribute("Progress_ListBean", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("progress.jsp");
		dispatcher.forward(request, response);
	}

	private ProgressListBean readDB(int upperSeqNo) throws ServletException {
		ProgressListBean list = new ProgressListBean();
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb", "root", "1234");
			if (conn == null)
				throw new Exception("데이터 베이스에 연결할 수 없습니다");
			stmt = conn.createStatement();

			ResultSet rs = stmt
					.executeQuery("select * from progress where num < " + upperSeqNo + " order by num desc;");
			for (int cnt = 0; cnt < 5; cnt++) {
				if (!rs.next())
					break;
				list.setNum(cnt, rs.getInt("num"));
				list.setName(cnt, toUnicode(rs.getString("name")));
				list.setProgress(cnt, rs.getInt("progress"));
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

	private String toUnicode(String str) {
		if (str == null)
			return null;
		try {
			byte[] b = str.getBytes("ISO-8859-1");
			return new String(b);
		} catch (java.io.UnsupportedEncodingException uee) {
			System.out.println(uee.getMessage());
			return null;
		}
	}
}
