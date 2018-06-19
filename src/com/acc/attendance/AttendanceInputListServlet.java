package com.acc.attendance;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.acc.attendance.model.APIResult;
import com.acc.attendance.model.AttendDto;
import com.acc.attendance.model.AttendanceList;
import com.acc.attendance.model.SignUp;
import com.google.gson.Gson;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/Attendance-InputList")
public class AttendanceInputListServlet extends HttpServlet {
	private static final Logger logger = Logger.getLogger(AttendanceInputListServlet.class.getName());
	private static final long serialVersionUID = 1L;
	private int attendance;
	private String num;
	private String extra;
	private int attPercent;
	private int meetingHeldAfterJoin;

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
			while (scanner.hasNextLine()) {
				builder.append(scanner.nextLine());
			}

			json = builder.toString();
		} catch (IOException e) {
			json = "{}";
		}

		System.out.println(json);
		Gson gson = new Gson();
		AttendDto[] dtoArray = gson.fromJson(json, AttendDto[].class);

		for (AttendDto dto : dtoArray) {
			System.out.println(dto);

			if ((dto.getStatus()).contains("o")) {
				attendance = dto.getCount() + 1;
			} else {
				attendance = dto.getCount();
			}
			meetingHeldAfterJoin = dto.getMeetingHeldAfterJoin() + 1;
			extra = dto.getExtra();
			num = dto.getId();

			try {
				saveAttendance(dtoArray);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// dto - id, status,
			// status = O => member_info id = id count++;

			// update member_info set ~ where id = ?
		}

		ServletOutputStream out = response.getOutputStream();
		APIResult result = new APIResult();
		//
		// if (dtoArray.isInvalid()) {
		// result.setResult("INVALID");
		// result.setMessage("wrong input.");
		// } else {
		// result.setResult("OK");
		//
		// try {
		// saveAttendance(dtoArray);
		// } catch (Exception e) {
		// e.printStackTrace();
		// }
		// }

		response.setContentType("application/json");
		out.print(gson.toJson(result));
		out.flush();
		out.close();
	}

	private void saveAttendance(AttendDto[] dtoArray) throws Exception {
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
			// if(true) {
			// for (int cnt = 0; cnt < 6; cnt++) {
			// num으로 불러오는것 안됨, 다 null로 뜸
			// if(attendance==1) ps.setInt( attTotal=attTotal+1 );

			ps = (PreparedStatement) conn
					.prepareStatement("update member_info set attPercent=?, attTotal=?, extra=? where num=?");

			attendance = attendance + 1;
			ps.setInt(2, attendance);
			System.out.println("att:" + attendance);
			attPercent = (attendance / (meetingHeldAfterJoin + 1)) * 100;
			System.out.println("meetingHeldAfterJoin:"+meetingHeldAfterJoin);
			ps.setInt(1, attPercent);
			System.out.println("attPercent:" + attPercent);

			ps.setString(3, extra);
			System.out.println("extra:" + extra);
			ps.setInt(4, Integer.parseInt(num));
			System.out.println("num:" + num);

			ps.execute();

			// }
			// }
			// if (ps.execute()==true)
			// throw new Exception("데이터를 DB에 입력할 수 없습니다.");
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
