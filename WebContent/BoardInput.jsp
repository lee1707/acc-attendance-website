<%@page contentType="text/html; charset=utf-8" errorPage="DBError.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.*"%>

<jsp:include backg>
blah
</jsp:include>

<%

    String title = request.getParameter("title");
    String content = request.getParameter("content");
    
    public static void getCurrentTimeUsingCalendar() {
	    Calendar cal = Calendar.getInstance();
	    Date date=cal.getTime();
	    DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
	    String formattedDate=dateFormat.format(date);
	}

    String writer = writer;
    String wdate = java.time.LocalDate.now();
    String wtime = getCurrentTimeUsingCalendar();

    if(title == null || content==null)
        throw new Exception("입력하지 않은 데이터가 있어요");
    
    Connection conn = null;
    Statement stmt = null;

    try{
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/webdb", "root", "1234");
        if (conn == null)
            throw new Exception("데이터 베이스에 연결할 수 없습니다.<BR>");
        stmt = conn.createStatement();
           
        String command = String.format("insert into board (title, conetent, writer, wdate, wtime) values ('%s', '%s', '%s', '%s', '%s');",title,content,writer,wdate,wtime);    

        int rowNum = stmt.excuteUpdate(command);
        if(rowNum < 1)
            throw new Exception("데이터를 DB에 입력할 수 없습니다");
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
    response.sendRedirect("BoardInputResult.jsp");

%>