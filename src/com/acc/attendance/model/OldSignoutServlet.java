package com.acc.attendance.model;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;

import java.io.*;
@SuppressWarnings("serial")
@WebServlet("/OldSignoutServlet")
public class OldSignoutServlet extends HttpServlet {
	public void doGet(HttpServletRequest request,
					  HttpServletResponse response)
					  throws IOException, ServletException {
		HttpSession session = request.getSession();
		session.removeAttribute("SIGNIN_ID");
		response.sendRedirect("Main.jsp?BODY_PATH=SignoutResult.jsp?SIGNOUT_RESULT=SUCCESS");
	}
}