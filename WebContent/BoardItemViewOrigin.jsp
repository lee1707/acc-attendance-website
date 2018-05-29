<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="boardItem" class="com.acc.attendance.model.BoardItem"/>
<jsp:setProperty name="boardItem" property="seqNo" value="${param.SEQ_NO}" />
<% boardItem.readDB(); %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>게시글 읽기</title>
</head>
<body>
	<h4>게시글 읽기</h4>
	[제목] ${boardItem.title}<br>
	[작성자] ${boardItem.writer}<br>
	[작성일지] ${boardItem.date} ${boardItem.time}<br>
	------------------------------------------------<br>
	${boardItem.content}
</body>
</html>