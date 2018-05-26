package com.acc.attendance;

import javax.servlet.http.*;

import com.acc.attendance.model.BoardList;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;

import java.io.*;
import java.sql.*;
@SuppressWarnings("serial")
@WebServlet("/board-list")
public class BoardListServlet extends HttpServlet {
	public void doGet(HttpServletRequest request,
					HttpServletResponse response)
					throws IOException, ServletException {
		String strUpperSeqNo =
					request.getParameter("LAST_SEQ_NO");
		int upperSeqNo;
		if (strUpperSeqNo == null)
			upperSeqNo = Integer.MAX_VALUE;
		else 
			upperSeqNo = Integer.parseInt(strUpperSeqNo);
		BoardList list = readDB(upperSeqNo);
		request.setAttribute("BOARD_LIST", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("BoardListView.jsp");
		dispatcher.forward(request, response);
	}
	private BoardList readDB(int upperSeqNo) throws ServletException{
		BoardList list = new BoardList();
		Connection conn = null;
		Statement stmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/webdb", "root", "1234");
			if (conn == null)
	            throw new Exception("데이터베이스에 연결할 수 없습니다<BR>");
	        stmt = conn.createStatement();


	        ResultSet rs = stmt.executeQuery("select * from board where seqNo < " + 
	        								upperSeqNo + " order by seqno desc;");
	        for (int cnt = 0; cnt < 5; cnt++){
		        if (!rs.next()) 
		        		break;
				list.setSeqNo(cnt, rs.getInt("seqNo"));
				list.setTitle(cnt, rs.getString("title"));
				list.setWriter(cnt, rs.getString("writer"));
				list.setDate(cnt, rs.getDate("wdate"));
				list.setTime(cnt, rs.getTime("wtime"));			            
		    }
		    if (!rs.previous())
		    	list.setfirstPage(true);
		    if (!rs.next())
		    	list.setLastPage(true);
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
		return list;
	}
}
	 
