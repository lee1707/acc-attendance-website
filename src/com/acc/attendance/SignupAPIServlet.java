package com.acc.attendance;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.acc.attendance.model.APIResult;
import com.acc.attendance.model.SignUp;
import com.google.gson.Gson;

@WebServlet("/SignupAPIServlet")
public class SignupAPIServlet extends HttpServlet {
	private static final Logger logger = Logger.getLogger(SignupAPIServlet.class.getName());
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//json을 자바객체로 바꾸기 위해 Gson을 씀
		Gson gson = new Gson();
 
		//client에서 올려준 requestbody를 string으로 가져옴 !인코딩문제###
		String requestBody = new String(request.getInputStream().readAllBytes());
		logger.info("Request Body : " + requestBody);

		//gson을 이용해서 json을 signup객체로 변환
		SignUp signUp = gson.fromJson(requestBody, SignUp.class);
		logger.info(signUp.toString());

		ServletOutputStream out = response.getOutputStream();
		APIResult result = new APIResult();
		
		// 유효성 여부 체크
		if (signUp.isInvalid()) {
			result.setResult("INVALID");
			result.setMessage("wrong input.");
		} else {
			result.setResult("OK");
			
			try {
				saveMember(signUp);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		response.setContentType("application/json");
		out.print(gson.toJson(result));
		out.flush();
		out.close();
	}

	private void saveMember(SignUp signUp) throws Exception {
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/webdb?useUnicode=true&characterEncoding=utf8", "root", "1234");
			if (conn == null)
				throw new Exception("데이터베이스에 연결할 수 없습니다");
			stmt = conn.createStatement();
			String command = String.format(
					"insert into member_info " + "(name, id, password) values ('%s', '%s', '%s');", signUp.getName(),
					signUp.getId(), signUp.getPassword());
			int rowNum = stmt.executeUpdate(command);
			if (rowNum < 1)
				throw new Exception("데이터를 DB에 입력할 수 없습니다.");
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
