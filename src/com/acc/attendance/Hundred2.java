package com.acc.attendance;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hundred2
 */
@WebServlet("/Hundred2")
public class Hundred2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int total = 0;
		for(int cnt=1; cnt<101; cnt++) 
			total += cnt;
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD><TITLE>Hundred Servlet</HEAD></TITLE>");
		out.println("<BODY>");
		out.printf("1+2+3+...+100= %d",total);
		out.println("<BODY>");
		out.println("</HTML");
		
	}
}
