package com.acc.attendance;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;

import java.io.*;
import java.sql.*;
import java.util.*;

@SuppressWarnings("serial")
@WebServlet("/oldSignin")
public class OldSigninServlet extends HttpServlet {
	@Override
    public void doPost(HttpServletRequest request,
                    HttpServletResponse response)
                    throws IOException, ServletException {
       String id = request.getParameter("ID");
       String password = request.getParameter("PASSWORD");
       String result;
       if (checkLoginInfo(id, password)){
            HttpSession session = request.getSession();
            session.setAttribute("SIGNIN_ID", id);
            result = "SUCCESS";
       }
       else {
            result = "FAIL";
       }
       response.sendRedirect("Main.jsp?BODY_PATH=SigninResult.jsp?SIGNIN_RESULT="+result);
    }
    private boolean checkLoginInfo(String id, String password) throws ServletException{
        Connection conn = null;
        Statement stmt = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/webdb", "root", "1234");
            if (conn == null)
                throw new Exception("데이터 베이스에 연결할 수 없습니다.<BR>");
            stmt = conn.createStatement();
            
            String query;
            if(Objects.isNull(id)) {
                query = "SELECT `password` FROM `member_info` WHERE id is null"; 
            } else {
                query = "SELECT `password` FROM `member_info` WHERE id = '"+id+"'"; 
            }
            
            System.out.println(query);

            ResultSet rs = stmt.executeQuery(query); 
                if (!rs.next()) 
                   return false;
                String correctPassword = rs.getString("password");
                if (password.equals(correctPassword))
                    return true;
                else
                    return false;
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
    }
}