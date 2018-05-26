package com.acc.attendance;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;

import java.io.*;
@SuppressWarnings("serial")
@WebServlet("/signout")
public class SignoutServlet extends HttpServlet {
	public void doPost(HttpServletRequest request,
					  HttpServletResponse response)
					  throws IOException, ServletException {
		String currentURL = request.getParameter("CURRENT_URL");
		System.out.println(currentURL);
		HttpSession session = request.getSession();
		session.removeAttribute("SIGNIN_ID");
		System.out.println("SIGNED OUT");
		response.sendRedirect(currentURL);
	}
}